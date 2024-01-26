#pragma once

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir::autodiff {
void registerLinalgAdjointInterface(DialectRegistry& registry);
}  // namespace mlir::autodiff
