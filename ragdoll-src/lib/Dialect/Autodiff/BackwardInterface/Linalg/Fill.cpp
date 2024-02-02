#include "../Linalg.h"

namespace mlir::ragdoll::autodiff::backward {

using Role = linalg::FillRole;
using T = linalg::FillOp;
using B = linalg::FillBackward;

template <>
auto B::fn(Role role) -> Fn {
  return nullptr;
}

} // namespace mlir::ragdoll::autodiff::backward
