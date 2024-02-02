#include "Linalg.h"

#include "Dialect/Autodiff/AutodiffOps.h"
#include "mlir/Dialect/Arith/Utils/Utils.h"
#include "mlir/Dialect/Linalg/IR/Linalg.h"
#include "mlir/Dialect/Tensor/IR/Tensor.h"
#include "mlir/IR/IRMapping.h"

namespace mlir {
namespace ragdoll {
namespace autodiff {

using namespace linalg;

class GenericAdjoint;

void registerLinalgAdjointInterface(DialectRegistry& registry) {
  registry.addExtension(+[](MLIRContext* context, LinalgDialect*) {
    GenericOp::attachInterface<GenericAdjoint>(*context);
  });
}

using utils::IteratorType;

/**
 * @brief 根据输出的 affine maps 确定 iterator types
 *
 * @param outMaps 输出的 affine maps
 * @return SmallVector<IteratorType> `linalg.generic` 的 iterator types
 */
SmallVector<IteratorType> getIteratorTypes(SmallVector<AffineMap> outMaps) {
  if (outMaps.empty()) {
    return {};
  }

  auto rank = outMaps[0].getNumInputs();
  auto range = llvm::seq(0U, rank);
  DenseSet<decltype(rank)> parallel;
  auto context = outMaps[0].getContext();

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

class GenericAdjoint
    : public AdjointInterface::ExternalModel<GenericAdjoint, GenericOp> {
public:
  Value adjointInput(GenericOp generic, OpOperand& input, Value dtarget,
                     OpBuilder& builder) const {
    auto inValue = input.get();
    auto inType = cast<ShapedType>(inValue.getType());
    auto inMap = generic.getMatchingIndexingMap(&input);
    auto output =
        builder.create<tensor::EmptyOp>(generic->getLoc(), inType, ValueRange{})
            .getResult();

    auto inputs = llvm::to_vector(generic.getInputs());
    inputs.emplace_back(dtarget);
    auto indexingMaps = generic.getIndexingMapsArray();
    indexingMaps.emplace_back(inMap);
    auto iteratorTypes = getIteratorTypes({inMap});

    auto forwardBody = generic.getBody();

    auto payload = [&](OpBuilder& builder, Location loc, ValueRange args) {
      // 将正向的 operands 映射到反向的 inputs
      IRMapping mapping;
      for (auto [fArg, arg] : llvm::zip(forwardBody->getArguments(), args)) {
        mapping.map(fArg, arg);
      }

      auto finArg = generic.getMatchingBlockArgument(&input);
      auto rinArg = mapping.lookup(finArg);
      auto result = builder.create<TapeOp>(loc, rinArg.getType(), rinArg);

      SmallVector<Operation*> ops;
      for (auto& fOp : *forwardBody) {
        ops.emplace_back(builder.clone(fOp, mapping));
      }
      auto yield = ops.back();

      // 生成反向循环
      auto& fout = generic->getOpOperands().back();
      auto foutArg = generic.getMatchingBlockArgument(&fout);
      auto gradArg = mapping.lookup(foutArg);

      builder.create<BackwardOp>(loc, *yield->operand_begin(), gradArg);
      yield->erase();

      // 梯度累加
      ArithBuilder helper{builder, loc};
      auto sum = helper.add(result->getResult(0), args.back());
      builder.create<YieldOp>(loc, sum);
    };

    auto adjoint =
        builder.create<GenericOp>(generic->getLoc(), inType, inputs, output,
                                  indexingMaps, iteratorTypes, payload);
    return *adjoint.result_begin();
  }

  SmallVector<Value> adjoint(Operation* op, Value dtarget,
                             OpBuilder& builder) const {
    auto generic = cast<GenericOp>(op);

    SmallVector<Value> adjoints;
    for (auto [_, input] :
         llvm::zip(generic.getInputs(), generic->getOpOperands())) {
      adjoints.emplace_back(adjointInput(generic, input, dtarget, builder));
    }
    return adjoints;
  }
};

} // namespace autodiff
} // namespace ragdoll
} // namespace mlir
