#include "Conversion/AutodiffToTosa/AutodiffToTosa.h"
#include "../Utils.h"

#include "Dialect/Autodiff/AutodiffDialect.h"
#include "Dialect/Autodiff/AutodiffOps.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"

namespace mlir::ragdoll::autodiff {

#define GEN_PASS_DEF_AUTODIFFTOTOSA
#include "Conversion/Passes.h.inc"

class AccumulateToTosaAdd;

class AutodiffToTosa : public impl::AutodiffToTosaBase<AutodiffToTosa> {
  void runOnOperation() override {
    RewritePatternSet patterns{&getContext()};
    patterns.insert<AccumulateToTosaAdd>(&getContext());
    (void)applyPatternsAndFoldGreedily(getOperation(), std::move(patterns));
  }
};

std::unique_ptr<Pass> createAutodiffToTosa() {
  return std::make_unique<AutodiffToTosa>();
}

class AccumulateToTosaAdd : public OpRewritePattern<AccumulateOp> {
  using OpRewritePattern<AccumulateOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(AccumulateOp op,
                                PatternRewriter& rewriter) const override {
    if (!op.getType().isa<TensorType>()) {
      return failure();
    }

    rewriter.replaceOp(op, accumulate<tosa::AddOp>(op.getOperands(), rewriter));
    return success();
  }
};

} // namespace mlir::ragdoll::autodiff
