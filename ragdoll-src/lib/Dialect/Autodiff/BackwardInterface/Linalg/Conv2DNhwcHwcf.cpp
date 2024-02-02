#include "../Linalg.h"

namespace mlir::ragdoll::autodiff::backward {

using Role = linalg::Conv2DNhwcHwcfRole;
using T = linalg::Conv2DNhwcHwcfOp;
using B = linalg::Conv2DNhwcHwcfBackward;

template <>
template <>
auto B::backward<Role::INPUT>(T conv, Value dtarget, OpBuilder& builder)
    -> Value {
  return linalg::getMulAddValue(conv, dtarget,
                                static_cast<unsigned>(Role::WEIGHT), builder);
}

template <>
template <>
auto B::backward<Role::WEIGHT>(T conv, Value dtarget, OpBuilder& builder)
    -> Value {
  return linalg::getMulAddValue(conv, dtarget,
                                static_cast<unsigned>(Role::INPUT), builder);
}

template <>
auto B::fn(Role role) -> Fn {
  switch (role) {
  case Role::INPUT:
    return backward<Role::INPUT>;
  case Role::WEIGHT:
    return backward<Role::WEIGHT>;
  }
}

} // namespace mlir::autodiff::backward
