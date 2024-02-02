#include "../Tosa.h"
#include "Utils/Builder.h"
#include <ranges>

namespace mlir::ragdoll::autodiff::backward {

namespace tosa {

template <typename T>
requires std::is_same<T, mlir::tosa::MaximumOp>::value ||
    std::is_same<T, mlir::tosa::MinimumOp>::value auto
    minmax_backward(T op, Value dtarget, Value wrt, OpBuilder& builder)
        -> Value {
  auto lhs = op.getInput1();
  auto rhs = op.getInput2();
  auto lhsTy = lhs.getType();
  auto rhsTy = rhs.getType();

  // TODO(ccy): 实现不同 rank 的 maximum
  assert(lhsTy.getRank() == rhsTy.getRank());

  auto res = op.getResult();
  auto resTy = op.getType();
  auto shape = resTy.getShape();

  auto loc = op->getLoc();
  auto eqTy = RankedTensorType::get(shape, builder.getI1Type());
  auto eq = builder.create<mlir::tosa::EqualOp>(loc, eqTy, wrt, res);

  auto zeroTy = RankedTensorType::get({}, builder.getF32Type());
  auto zeroAt = DenseElementsAttr::get(zeroTy, ArrayRef(0.0));
  auto zero = builder.create<mlir::tosa::ConstOp>(loc, zeroTy, zeroAt);

  Tensor select =
      builder.create<mlir::tosa::SelectOp>(loc, resTy, eq, dtarget, zero)
          .getResult();

  auto wrtTy = cast<TensorType>(wrt.getType());
  for (auto i : std::views::iota(0, resTy.getRank())) {
    if (resTy.getDimSize(i) != wrtTy.getDimSize(i)) {
      select = builder::tosa::reduce_sum(builder, select, i);
    }
  }

  return select;
}

} // namespace tosa

using MaT = tosa::MaximumOp;
using MaRole = tosa::MaximumRole;
using MaB = tosa::MaximumBackward;

template <>
template <>
auto MaB::backward<MaRole::LHS>(MaT op, Value dtarget, OpBuilder& builder)
    -> Value {
  return tosa::minmax_backward(op, dtarget, op.getInput1(), builder);
}

template <>
template <>
auto MaB::backward<MaRole::RHS>(MaT op, Value dtarget, OpBuilder& builder)
    -> Value {
  return tosa::minmax_backward(op, dtarget, op.getInput2(), builder);
}

template <>
auto MaB::fn(MaRole role) -> Fn {
  switch (role) {
  case MaRole::LHS:
    return backward<MaRole::LHS>;
  case MaRole::RHS:
    return backward<MaRole::RHS>;
  }
}

using MiT = tosa::MinimumOp;
using MiRole = tosa::MinimumRole;
using MiB = tosa::MinimumBackward;

template <>
template <>
auto MiB::backward<MiRole::LHS>(MiT op, Value dtarget, OpBuilder& builder)
    -> Value {
  return tosa::minmax_backward(op, dtarget, op.getInput1(), builder);
}

template <>
template <>
auto MiB::backward<MiRole::RHS>(MiT op, Value dtarget, OpBuilder& builder)
    -> Value {
  return tosa::minmax_backward(op, dtarget, op.getInput2(), builder);
}

template <>
auto MiB::fn(MiRole role) -> Fn {
  switch (role) {
  case MiRole::LHS:
    return backward<MiRole::LHS>;
  case MiRole::RHS:
    return backward<MiRole::RHS>;
  }
}

} // namespace mlir::ragdoll::autodiff::backward
