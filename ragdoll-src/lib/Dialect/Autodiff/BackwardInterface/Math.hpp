#pragma once

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir::autodiff {
void registerMathBackwardInterface(DialectRegistry& registry);
}  // namespace mlir::autodiff
