#pragma once

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir::autodiff {
void registerFuncBackwardInterface(DialectRegistry& registry);
}  // namespace mlir::autodiff
