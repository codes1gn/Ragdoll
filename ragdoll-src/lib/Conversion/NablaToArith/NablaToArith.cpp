#include "Conversion/NablaToArith/NablaToArith.h"

#include "../Utils.h"
#include "Dialect/Autodiff/AutodiffDialect.h"
#include "Dialect/Autodiff/AutodiffInterface.h"
#include "Dialect/Autodiff/AutodiffOps.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"

namespace mlir::ragdoll::autodiff {

#define GEN_PASS_DEF_NABLATOARITH
#include "Conversion/Passes.h.inc"

class AccumulateToArithAddF;
class AccumulateToArithAddI;

class NablaToArith : public impl::NablaToArithBase<NablaToArith> {
  void runOnOperation() override {
    RewritePatternSet patterns{&getContext()};
    patterns.insert<AccumulateToArithAddF, AccumulateToArithAddI>(
        &getContext());
    (void)applyPatternsAndFoldGreedily(getOperation(), std::move(patterns));
  }
};

std::unique_ptr<Pass> createNablaToArith() {
  return std::make_unique<NablaToArith>();
}

class AccumulateToArithAddF : public OpRewritePattern<AccumulateOp> {
  using OpRewritePattern<AccumulateOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(AccumulateOp op,
                                PatternRewriter& rewriter) const override {
    if (!op.getType().isa<FloatType>()) {
      return failure();
    }

    rewriter.replaceOp(op,
                       accumulate<arith::AddFOp>(op.getOperands(), rewriter));
    return success();
  }
};

class AccumulateToArithAddI : public OpRewritePattern<AccumulateOp> {
  using OpRewritePattern<AccumulateOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(AccumulateOp op,
                                PatternRewriter& rewriter) const override {
    if (!op.getType().isa<IntegerType>()) {
      return failure();
    }

    rewriter.replaceOp(op,
                       accumulate<arith::AddIOp>(op.getOperands(), rewriter));
    return success();
  }
};

} // namespace mlir::ragdoll::autodiff
