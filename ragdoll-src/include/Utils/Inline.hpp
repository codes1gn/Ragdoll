#pragma once

#include "mlir/IR/PatternMatch.h"

namespace mlir::autodiff {
auto populateAutodiffInlinePatterns(RewritePatternSet& patterns) -> void;
} // namespace mlir::autodiff
