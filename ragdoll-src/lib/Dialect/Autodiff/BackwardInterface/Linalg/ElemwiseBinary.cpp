#include "../Linalg.hpp"
#include "Utils/Builder.hpp"
#include "Utils/Compat.hpp"

namespace mlir::autodiff::backward {

using Role = linalg::ElemwiseBinaryRole;
using mlir::linalg::AddOp, linalg::AddBackward;

template <>
template <>
auto AddBackward::backward<Role::LHS>(AddOp binary, Value dtarget,
                                      OpBuilder& builder) -> Value {
  return dtarget;
}

template <>
template <>
auto AddBackward::backward<Role::RHS>(AddOp binary, Value dtarget,
                                      OpBuilder& builder) -> Value {
  return dtarget;
}

template <> auto AddBackward::fn(Role role) -> Fn {
  switch (role) {
  case Role::LHS:
    return backward<Role::LHS>;
  case Role::RHS:
    return backward<Role::RHS>;
  }
}

using mlir::linalg::MulOp, linalg::MulBackward;

template <>
template <>
auto MulBackward::backward<Role::LHS>(MulOp binary, Value dtarget,
                                      OpBuilder& builder) -> Value {
  auto rhs = binary->getOperand(1);
  auto empty =
      builder::tensor::empty_like(builder, compat::value_as_tensor(rhs));
  return builder
      .create<MulOp>(dtarget.getLoc(), SmallVector<Value>{rhs, dtarget},
                     SmallVector<Value>{empty})
      .getResult(0);
}

template <>
template <>
auto MulBackward::backward<Role::RHS>(MulOp binary, Value dtarget,
                                      OpBuilder& builder) -> Value {
  auto lhs = binary->getOperand(0);
  auto empty =
      builder::tensor::empty_like(builder, compat::value_as_tensor(lhs));
  return builder
      .create<MulOp>(dtarget.getLoc(), SmallVector<Value>{lhs, dtarget},
                     SmallVector<Value>{empty})
      .getResult(0);
}

template <> auto MulBackward::fn(Role role) -> Fn {
  switch (role) {
  case Role::LHS:
    return backward<Role::LHS>;
  case Role::RHS:
    return backward<Role::RHS>;
  }
}

} // namespace mlir::autodiff::backward
