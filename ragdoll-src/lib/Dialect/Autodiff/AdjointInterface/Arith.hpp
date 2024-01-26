#pragma once

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir::autodiff {
void registerArithAdjointInterface(DialectRegistry& registry);
}  // namespace mlir::autodiff
