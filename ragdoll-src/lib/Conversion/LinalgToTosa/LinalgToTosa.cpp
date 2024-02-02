#include "Conversion/LinalgToTosa/LinalgToTosa.h"

#include "Raise.hpp"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Math/IR/Math.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"

namespace mlir::ragdoll::autodiff {

#define GEN_PASS_DEF_LINALGTOTOSA
#include "Conversion/Passes.h.inc"

class ElementwiseToTosa;

class LinalgToTosa : public impl::LinalgToTosaBase<LinalgToTosa> {
  void runOnOperation() override {
    RewritePatternSet patterns{&getContext()};
    patterns.insert<ElementwiseToTosa>(&getContext());
    (void)applyPatternsAndFoldGreedily(getOperation(), std::move(patterns));
  }
};

std::unique_ptr<Pass> createLinalgToTosa() {
  return std::make_unique<LinalgToTosa>();
}

using linalg::GenericOp;
using namespace tosa;

template <typename T, typename... Ts>
Operation* raise(Operation* op, GenericOp generic, OpBuilder& builder) {
  if (auto t = dyn_cast<T>(op); t) {
    return raise<T>(generic, builder);
  }
  if constexpr (sizeof...(Ts) > 0) {
    return raise<Ts...>(op, generic, builder);
  }
  return nullptr;
}

class ElementwiseToTosa : public OpRewritePattern<GenericOp> {
  using OpRewritePattern<GenericOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(GenericOp generic,
                                PatternRewriter& rewriter) const override {
    auto* body = generic.getBody();

    // elementwise 的 generic op 中只有一个 arith/math op 和 linalg.yield
    if (std::distance(body->begin(), body->end()) != 2) {
      return failure();
    }

    auto* begin = &*body->begin();

    auto* tosa =
        raise<arith::AddFOp, arith::MulFOp, arith::SubFOp, arith::DivFOp,
              arith::NegFOp, arith::SelectOp, arith::CmpFOp, math::AbsFOp,
              math::LogOp, math::FloorOp, math::Log1pOp, math::TanhOp>(
            begin, generic, rewriter);

    if (tosa == nullptr) {
      return failure();
    }

    rewriter.replaceOp(generic, tosa->getResults());
    return success();
  }
};

} // namespace mlir::ragdoll::autodiff
