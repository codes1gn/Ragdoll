#include "Conversion/AutodiffToFunc/AutodiffToFunc.h"

#include "mlir/Transforms/GreedyPatternRewriteDriver.h"

namespace mlir::ragdoll::autodiff {

#define GEN_PASS_DEF_AUTODIFFTOFUNC
#include "Conversion/Passes.h.inc"

// TODO(ccy): 实现这个 pass
class AutodiffToFunc : public impl::AutodiffToFuncBase<AutodiffToFunc> {
  void runOnOperation() override {
    RewritePatternSet patterns{&getContext()};
    (void)applyPatternsAndFoldGreedily(getOperation(), std::move(patterns));
  }
};

std::unique_ptr<Pass> createAutodiffToFunc() {
  return std::make_unique<AutodiffToFunc>();
}

} // namespace mlir::ragdoll::autodiff
