#ifndef RAGDOLL_UTILS_INLINE_H
#define RAGDOLL_UTILS_INLINE_H

#include "mlir/IR/PatternMatch.h"

namespace mlir {
namespace ragdoll {
namespace autodiff {

auto populateAutodiffInlinePatterns(RewritePatternSet& patterns) -> void;

} // namespace autodiff
} // namespace ragdoll 
} // namespace mlir

#endif // RAGDOLL_UTILS_INLINE_H
