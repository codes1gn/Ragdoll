#pragma once

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir::autodiff {
void registerArithBackwardInterface(DialectRegistry& registry);
}  // namespace mlir::autodiff
