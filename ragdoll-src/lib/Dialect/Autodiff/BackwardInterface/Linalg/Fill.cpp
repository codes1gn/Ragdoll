#include "../Linalg.h"

namespace mlir::autodiff::backward {

using Role = linalg::FillRole;
using T = linalg::FillOp;
using B = linalg::FillBackward;

template <> auto B::fn(Role role) -> Fn { return nullptr; }

} // namespace mlir::autodiff::backward
