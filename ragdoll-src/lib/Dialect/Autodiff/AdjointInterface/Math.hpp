#pragma once

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir::autodiff {
void registerMathAdjointInterface(DialectRegistry& registry);
}  // namespace mlir::autodiff
