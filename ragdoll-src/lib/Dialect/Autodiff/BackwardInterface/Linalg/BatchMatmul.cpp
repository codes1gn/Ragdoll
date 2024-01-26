#include "../Linalg.hpp"

namespace mlir::autodiff::backward {

using Role = linalg::BatchMatmulRole;
using T = linalg::BatchMatmulOp;
using B = linalg::BatchMatmulBackward;

template <>
template <>
auto B::backward<Role::LHS>(T mm, Value dtarget, OpBuilder& builder) -> Value {
  return linalg::getMulAddValue<T>(mm, dtarget,
                                   static_cast<unsigned>(Role::RHS), builder);
}

template <>
template <>
auto B::backward<Role::RHS>(T mm, Value dtarget, OpBuilder& builder) -> Value {
  return linalg::getMulAddValue<T>(mm, dtarget,
                                   static_cast<unsigned>(Role::LHS), builder);
}

template <> auto B::fn(Role role) -> Fn {
  switch (role) {
  case Role::LHS:
    return backward<Role::LHS>;
  case Role::RHS:
    return backward<Role::RHS>;
  }
}

} // namespace mlir::autodiff::backward
