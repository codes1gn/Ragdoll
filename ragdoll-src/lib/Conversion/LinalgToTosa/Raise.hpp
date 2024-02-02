#pragma once

#include "mlir/Dialect/Linalg/IR/Linalg.h"

namespace mlir::ragdoll::autodiff {

template <typename T>
Operation* raise(linalg::GenericOp generic, OpBuilder& builder);

}  // namespace mlir::ragdoll::autodiff
