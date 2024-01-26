#pragma once

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir::autodiff {
auto registerAutodiffBackwardInterface(DialectRegistry& registry) -> void;
} // namespace mlir::autodiff
