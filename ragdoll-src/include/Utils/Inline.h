#ifndef UTILS_INLINE_H
#define UTILS_INLINE_H

#include "mlir/IR/PatternMatch.h"

namespace mlir::autodiff {
auto populateAutodiffInlinePatterns(RewritePatternSet& patterns) -> void;
} // namespace mlir::autodiff

#endif // UTILS_INLINE_H
