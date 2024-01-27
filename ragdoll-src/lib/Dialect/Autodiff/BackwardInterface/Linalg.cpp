#include "Linalg.h"

#include "GradientMap.h"
#include "Utils/Builder.h"
#include "Utils/Compat.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Linalg/IR/Linalg.h"
#include "mlir/Dialect/Tensor/IR/Tensor.h"
#include <bits/ranges_algo.h>

namespace mlir::autodiff {
namespace backward::linalg {
class GenericBackward;
} // namespace backward::linalg

using namespace mlir::linalg;

void registerLinalgBackwardInterface(DialectRegistry& registry) {
  using namespace autodiff::backward::linalg;
  registry.addExtension(+[](MLIRContext* context, LinalgDialect*) {
    GenericOp::attachInterface<GenericBackward>(*context);
    // FIXME: linalg.generic 比 tosa 或 linalg named 要慢
    Conv2DNhwcHwcfOp::attachInterface<Conv2DNhwcHwcfBackward>(*context);
    BatchMatmulOp::attachInterface<BatchMatmulBackward>(*context);
    PoolingNhwcMaxOp::attachInterface<PoolingNhwcMaxBackward>(*context);
    FillOp::attachInterface<FillBackward>(*context);
    AbsOp::attachInterface<AbsBackward>(*context);
    LogOp::attachInterface<LogBackward>(*context);
    AddOp::attachInterface<AddBackward>(*context);
    MulOp::attachInterface<MulBackward>(*context);
  });
}

namespace backward::linalg {

using utils::IteratorType;

/**
 * @brief 根据输出的 affine maps 确定 iterator types
 *
 * @param outMaps 输出的 affine maps
 * @return SmallVector<IteratorType> `linalg.generic` 的 iterator types
 */
SmallVector<IteratorType> getIterTypes(SmallVector<AffineMap> outMaps) {
  if (outMaps.empty()) {
    return {};
  }

  auto rank = outMaps[0].getNumInputs();
  auto range = llvm::seq(0U, rank);
  DenseSet<decltype(rank)> parallel;
  auto* context = outMaps[0].getContext();

  for (auto map : outMaps) {
    for (auto expr : map.getResults()) {
      for (auto i : range) {
        if (parallel.contains(i)) {
          continue;
        }
        if (expr == getAffineDimExpr(i, context)) {
          parallel.insert(i);
        }
      }
    }
  }

  SmallVector<IteratorType> iteratorTypes;
  for (auto i : range) {
    if (parallel.contains(i)) {
      iteratorTypes.emplace_back(utils::IteratorType::parallel);
    } else {
      iteratorTypes.emplace_back(utils::IteratorType::reduction);
    }
  }
  return iteratorTypes;
}

class GenericBackward
    : public BackwardInterface::ExternalModel<GenericBackward, GenericOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto generic = cast<GenericOp>(op);
    assert(generic->getNumResults() == 1 && "Not support");

    if (generic.getMatchingBlockArgument(&operand).use_empty()) {
      return Value{};
    }

    auto ope = operand.get();
    auto empty =
        builder
            .create<tensor::EmptyOp>(op->getLoc(), ope.getType(), ValueRange{})
            .getResult();

    auto inputs = llvm::to_vector(generic.getInputs());
    inputs.emplace_back(dtarget);

    auto indexingMaps = generic.getIndexingMapsArray();
    auto operandMap = generic.getMatchingIndexingMap(&operand);
    indexingMaps.emplace_back(operandMap);

    auto iteratorTypes = getIterTypes({operandMap});

    auto* forwardBody = generic.getBody();
    auto payload = [&](OpBuilder& builder, Location loc, ValueRange args) {
      // 将正向的 operands 映射到反向的 inputs
      IRMapping mapping;
      for (auto [fArg, arg] : llvm::zip(forwardBody->getArguments(), args)) {
        mapping.map(fArg, arg);
      }

      // 复制正向 op
      SmallVector<Operation*> ops;
      for (auto& fOp : *forwardBody) {
        ops.emplace_back(builder.clone(fOp, mapping));
      }
      auto* yield = ops.back();

      OpBuilder::InsertionGuard guard{builder};
      builder.setInsertionPoint(yield);

      auto& fout = generic->getOpOperands().back();
      auto foutArg = generic.getMatchingBlockArgument(&fout);
      auto gradArg = mapping.lookup(foutArg);

      // 初始化梯度
      GradientMap grads;
      grads.update(*yield->operand_begin(), gradArg, builder);

      // 梯度反向传播
      backprop(ops, grads, builder);

      // 修改 yield 的值
      auto fope = generic.getMatchingBlockArgument(&operand);
      auto bope = mapping.lookup(fope);
      auto grad = *grads[bope];

      // 梯度累加
      auto sum = builder.create<arith::AddFOp>(loc, grad, args.back());
      yield->setOperand(0, sum);
    };

    auto backward =
        builder.create<GenericOp>(generic->getLoc(), ope.getType(), inputs,
                                  empty, indexingMaps, iteratorTypes, payload);
    return *backward->result_begin();
  }
};

auto buildMulAddBody(OpBuilder& builder, Location loc, ValueRange args)
    -> void {
  assert(args.size() == 3);
  auto lhs = args[0];
  auto rhs = args[1];
  auto out = args[2];
  auto prod = builder::arith::mul(builder, lhs, rhs);
  auto sum = builder::arith::add(builder, prod, out);
  builder.create<YieldOp>(loc, sum);
}

template <typename T>
auto getMulAddValue(T op, Value dtarget, unsigned index, OpBuilder& builder)
    -> Value {
  assert(op.getInputs().size() == 2 && op.getNumResults() == 1);
  assert(op.getResult(0).getType() == dtarget.getType());
  assert(index == 0 || index == 1);

  auto operands = op->getOpOperands();

  // inputs = {lhs = op.inputs[index], dtarget}
  SmallVector<Value, 2> inputs{op->getOperand(index), dtarget};

  // output = empty_like(rhs)
  auto output = builder::tensor::empty_like(
      builder, compat::value_as_tensor(op->getOperand(1 - index)));
  auto type = output.getType();

  // 重新排列 operands 对应的 indexing maps
  SmallVector<AffineMap, 3> indexingMaps;
  std::ranges::for_each(ArrayRef<int64_t>{index, 2, 1 - index}, [&](auto it) {
    indexingMaps.emplace_back(op.getMatchingIndexingMap(&operands[it]));
  });

  // 根据 out map 推算 iterator types
  auto iteratorTypes = getIterTypes({indexingMaps.back()});

  return builder
      .create<GenericOp>(dtarget.getLoc(), type, inputs, output, indexingMaps,
                         iteratorTypes, buildMulAddBody)
      .getResult(0);
}

template auto getMulAddValue<Conv2DNhwcHwcfOp>(Conv2DNhwcHwcfOp, Value,
                                               unsigned, OpBuilder&) -> Value;
template auto getMulAddValue<BatchMatmulOp>(BatchMatmulOp, Value, unsigned,
                                            OpBuilder&) -> Value;

} // namespace backward::linalg
} // namespace mlir::autodiff
