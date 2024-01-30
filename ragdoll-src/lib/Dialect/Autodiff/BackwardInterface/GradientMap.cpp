
#include <ranges>

#include "Dialect/Autodiff/AutodiffInterface.h"
#include "Dialect/Autodiff/GradientMap.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Linalg/IR/Linalg.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/Tosa/IR/TosaOps.h"

namespace mlir::autodiff {

std::optional<Value> GradientMap::operator[](Value value) const {
  auto grad = map.lookup(value);
  return grad == Value{} ? std::nullopt : std::optional(grad);
}

template <typename Ty>
Value add(Value lhs, Value rhs, OpBuilder& builder);

template <>
Value add<FloatType>(Value lhs, Value rhs, OpBuilder& builder) {
  return builder.create<arith::AddFOp>(rhs.getLoc(), lhs, rhs);
}

// TODO(ccy): 使用 in-place add 代替
template <>
Value add<RankedTensorType>(Value lhs, Value rhs, OpBuilder& builder) {
  return builder.create<tosa::AddOp>(rhs.getLoc(), rhs.getType(), lhs, rhs);
}

void GradientMap::update(Value value, Value grad, OpBuilder& builder) {
  if (grad == Value{}) {
    return;
  }

  auto curr = map.lookup(value);
  if (curr == Value{}) {
    map[value] = grad;
    return;
  }

  auto type = curr.getType();
  if (auto realTy = dyn_cast<FloatType>(type); realTy) {
    map[value] = add<FloatType>(curr, grad, builder);
  } else if (auto realTy = dyn_cast<RankedTensorType>(type); realTy) {
    map[value] = add<RankedTensorType>(curr, grad, builder);
  } else {
    // TODO(ccy)
  }
}

void backprop(SmallVector<Operation*> ops, GradientMap& grads,
              OpBuilder& builder) {
  for (auto* curr : std::ranges::reverse_view(ops)) {
    auto result = *curr->result_begin();
    auto grad = grads[result];
    if (!grad) {
      continue;
    }

    auto back = dyn_cast<BackwardInterface>(curr);
    if (!back && curr->getNumOperands() != 0) {
      curr->emitWarning() << "not implement BackwardInterface\n";
      // return;
      continue;
    }

    // 如果实现了 BackwardSourceInterface，对给定的 sources 进行梯度传播
    auto sources = dyn_cast<BackwardSourceInterface>(curr);
    if (sources) {
      for (auto& source : sources.getSources()) {
        auto dope = back.backward(*grad, source, builder);
        grads.update(source.get(), dope, builder);
      }
      continue;
    }

    // 其他 op 对所有 operands 进行梯度传播
    for (auto& ope : curr->getOpOperands()) {
      auto dope = back.backward(*grad, ope, builder);
      grads.update(ope.get(), dope, builder);
    }
  }
}

} // namespace mlir::autodiff
