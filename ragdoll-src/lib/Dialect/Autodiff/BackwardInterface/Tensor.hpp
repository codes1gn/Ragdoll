#pragma once

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir::autodiff {
void registerTensorBackwardInterface(DialectRegistry& registry);
}  // namespace mlir::autodiff
