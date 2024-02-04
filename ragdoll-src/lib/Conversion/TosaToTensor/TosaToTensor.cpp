#include "Conversion/TosaToTensor/TosaToTensor.h"

#include "mlir/Conversion/TosaToLinalg/TosaToLinalg.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Tensor/IR/Tensor.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"

namespace mlir::ragdoll::autodiff {

#define GEN_PASS_DEF_TOSATOTENSOR
#include "Conversion/Passes.h.inc"

struct ConcatConverter;
class ConcatToTensor;

class TosaToTensor : public impl::TosaToTensorBase<TosaToTensor> {
  void runOnOperation() override {
    RewritePatternSet patterns{&getContext()};
    patterns.insert<ConcatToTensor>(&getContext());
    (void)applyPatternsAndFoldGreedily(getOperation(), std::move(patterns));
  }
};

std::unique_ptr<Pass> createTosaToTensorPass() {
  return std::make_unique<TosaToTensor>();
}

class ConcatToTensor : public OpRewritePattern<tosa::ConcatOp> {
  using OpRewritePattern<tosa::ConcatOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(tosa::ConcatOp op,
                                PatternRewriter& rewriter) const override {
    tosa::ConcatOp::Adaptor adaptor{op};

    auto inputType = op.getOperand(0).getType().template cast<ShapedType>();
    auto resultType = op.getType().dyn_cast<RankedTensorType>();

    Location loc = op.getLoc();
    int axis = op.getAxis();
    Value axisValue = rewriter.createOrFold<arith::ConstantOp>(
        loc, rewriter.getIndexAttr(axis));
    int rank = resultType.getRank();
    SmallVector<Value, 3> offsets, sizes, strides;
    sizes.reserve(rank);
    strides.resize(rank, rewriter.create<arith::ConstantIndexOp>(loc, 1));
    offsets.resize(rank, rewriter.create<arith::ConstantIndexOp>(loc, 0));

    SmallVector<Value> dynDims;
    for (int i = 0; i < rank; ++i) {
      sizes.push_back(rewriter.createOrFold<tensor::DimOp>(
          loc, adaptor.getOperands()[0], i));
      if (inputType.isDynamicDim(i)) {
        dynDims.push_back(
            rewriter.create<tensor::DimOp>(loc, op.getOperand(0), i));
      }
    }

    Value resultDimSize = sizes[axis];
    for (auto arg : adaptor.getOperands().drop_front()) {
      auto size = rewriter.createOrFold<tensor::DimOp>(loc, arg, axisValue);
      resultDimSize =
          rewriter.createOrFold<arith::AddIOp>(loc, resultDimSize, size);
    }
    sizes[axis] = resultDimSize;

    Value emptyTensor = rewriter.create<tensor::EmptyOp>(
        loc, resultType.getShape(), resultType.getElementType(), dynDims);

    auto toOpFoldResult = [](Value v) -> OpFoldResult {
      auto op = v.getDefiningOp<arith::ConstantIndexOp>();
      if (!op)
        return v;
      return op.getValue();
    };
    Value result = emptyTensor;
    for (auto arg : adaptor.getOperands()) {
      sizes[axis] = rewriter.createOrFold<tensor::DimOp>(loc, arg, axisValue);
      result = rewriter.createOrFold<tensor::InsertSliceOp>(
          loc, arg, result,
          llvm::to_vector(llvm::map_range(offsets, toOpFoldResult)),
          llvm::to_vector(llvm::map_range(sizes, toOpFoldResult)),
          llvm::to_vector(llvm::map_range(strides, toOpFoldResult)));
      offsets[axis] =
          rewriter.createOrFold<arith::AddIOp>(loc, offsets[axis], sizes[axis]);
    }
    rewriter.replaceOp(op, result);
    return success();
  }
};

} // namespace mlir::ragdoll::autodiff
