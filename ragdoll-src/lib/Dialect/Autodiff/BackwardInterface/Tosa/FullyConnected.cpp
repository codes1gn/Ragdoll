#include "../Tosa.h"
#include "Utils/Builder.h"
#include "Utils/Compat.h"
#include "mlir/Dialect/Linalg/IR/Linalg.h"

namespace mlir::ragdoll::autodiff::backward {

using T = tosa::FullyConnectedOp;
using Role = tosa::FullyConnectedRole;
using B = tosa::FullyConnectedBackward;

template <>
template <>
auto B::backward<Role::INPUT>(T op, Value dtarget, OpBuilder& builder)
    -> Value {
  auto empty = builder::tensor::empty_like(
      builder, compat::value_as_tensor(op.getInput()));
  return builder
      .create<linalg::MatmulOp>(dtarget.getLoc(),
                                ValueRange{dtarget, op.getWeight()}, empty)
      ->getResult(0);
}

template <>
template <>
auto B::backward<Role::WEIGHT>(T op, Value dtarget, OpBuilder& builder)
    -> Value {
  auto trans = builder::tosa::transpose(
      builder, compat::value_as_tensor(dtarget), {1, 0});
  auto empty = builder::tensor::empty_like(
      builder, compat::value_as_tensor(op.getWeight()));
  return builder
      .create<linalg::MatmulOp>(dtarget.getLoc(),
                                ValueRange{trans, op.getInput()}, empty)
      ->getResult(0);
}

template <>
template <>
auto B::backward<Role::BIAS>(T op, Value dtarget, OpBuilder& builder) -> Value {
  return builder::linalg::reduce(builder, compat::value_as_tensor(dtarget),
                                 {0});
}

template <>
auto B::fn(Role role) -> Fn {
  switch (role) {
  case Role::INPUT:
    return backward<Role::INPUT>;
  case Role::WEIGHT:
    return backward<Role::WEIGHT>;
  case Role::BIAS:
    return backward<Role::BIAS>;
  }
}

} // namespace mlir::ragdoll::autodiff::backward
