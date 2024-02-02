#include "Conversion/NablaToFunc/NablaToFunc.h"

#include "mlir/Transforms/GreedyPatternRewriteDriver.h"

namespace mlir::ragdoll::autodiff {

#define GEN_PASS_DEF_NABLATOFUNC
#include "Conversion/Passes.h.inc"

// TODO(ccy): 实现这个 pass
class NablaToFunc : public impl::NablaToFuncBase<NablaToFunc> {
  void runOnOperation() override {
    RewritePatternSet patterns{&getContext()};
    (void)applyPatternsAndFoldGreedily(getOperation(), std::move(patterns));
  }
};

std::unique_ptr<Pass> createNablaToFunc() {
  return std::make_unique<NablaToFunc>();
}

} // namespace mlir::ragdoll::autodiff
