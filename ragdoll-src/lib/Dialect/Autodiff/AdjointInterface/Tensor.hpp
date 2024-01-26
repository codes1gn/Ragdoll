#pragma once

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir::autodiff {
void registerTensorAdjointInterface(DialectRegistry& registry);
}  // namespace mlir::autodiff
