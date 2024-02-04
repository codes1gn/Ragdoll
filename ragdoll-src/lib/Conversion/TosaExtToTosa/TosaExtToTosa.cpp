//===- TosaextDummyPattern.cpp --- Loop tiling pass
//------------------------------*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements a pass to tile loop nests.
//
//===----------------------------------------------------------------------===//

#include "Conversion/Passes.h"
#include "Dialect/TosaExt/TosaExtOps.h"

#include "mlir/Dialect/Affine/Analysis/AffineAnalysis.h"
#include "mlir/Dialect/Affine/Analysis/AffineStructures.h"
#include "mlir/Dialect/Affine/Analysis/LoopAnalysis.h"
#include "mlir/Dialect/Affine/Analysis/Utils.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Affine/IR/AffineValueMap.h"
#include "mlir/Dialect/Affine/LoopUtils.h"
#include "mlir/Dialect/Affine/Passes.h"
#include "mlir/Dialect/Affine/Utils.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/MLProgram/IR/MLProgram.h"
#include "mlir/Dialect/Tosa/IR/TosaOps.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/BuiltinAttributes.h"
#include "mlir/Support/LLVM.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/Debug.h"
#include <optional>

using namespace mlir;
using namespace mlir::ragdoll::tosaext;

#define DEBUG_TYPE "tosaext-lowerings"

namespace mlir {
namespace ragdoll {
namespace tosaext {

//===----------------------------------------------------------------------===//
// Classes
//===----------------------------------------------------------------------===//
//
#define GEN_PASS_DEF_TOSAEXTTOTOSA
#include "Conversion/Passes.h.inc"

namespace {

class NllLossPattern;
class SoftmaxPattern;
class CrossEntropyLossPattern;
class ParameterPattern;
class ParameterUpdatePattern;

class NllLossPattern : public OpRewritePattern<NllLossOp> {
  using OpRewritePattern<NllLossOp>::OpRewritePattern;

  auto matchAndRewrite(NllLossOp op, PatternRewriter& rewriter) const
      -> LogicalResult override {
    auto loc = op.getLoc();

    auto inputs = op.getInputs();
    auto target = op.getTarget();

    auto inputs_type = inputs.getType();
    auto target_type = target.getType();
    auto elem_type = inputs_type.getElementType();

    SmallVector<int64_t> inputs_shape{inputs_type.getShape()};
    SmallVector<int64_t> target_shape{target_type.getShape()};

    inputs_shape.emplace_back(1);
    target_shape.emplace_back(1);

    auto reshaped_inputs =
        rewriter.create<tosa::ReshapeOp>(loc, inputs, inputs_shape);
    auto reshaped_target =
        rewriter.create<tosa::ReshapeOp>(loc, target, target_shape);

    SmallVector<int64_t> gathered_shape{inputs_shape[0], target_shape[1],
                                        inputs_shape[2]};
    auto gathered_type = RankedTensorType::get(gathered_shape, elem_type);
    auto gathered = rewriter.create<tosa::GatherOp>(
        loc, gathered_type, reshaped_inputs, reshaped_target);

    auto sum = rewriter.create<tosa::ReduceSumOp>(loc, gathered, 0);

    auto cst_value = -1.0F / static_cast<float>(inputs_shape[0]);
    auto cst_type = RankedTensorType::get({}, elem_type);
    auto cst_attr = DenseElementsAttr::get(cst_type, cst_value);
    auto cst = rewriter.create<tosa::ConstOp>(loc, cst_type, cst_attr);

    Value loss = rewriter.create<tosa::MulOp>(loc, sum.getType(), sum, cst, 0);
    if (loss.getType() != op.getType()) {
      loss =
          rewriter.create<tosa::ReshapeOp>(loc, loss, op.getType().getShape());
    }

    rewriter.replaceOp(op, loss);
    return success();
  }
};

class SoftmaxPattern : public OpRewritePattern<SoftmaxOp> {
  using OpRewritePattern<SoftmaxOp>::OpRewritePattern;

  auto matchAndRewrite(SoftmaxOp op, PatternRewriter& rewriter) const
      -> LogicalResult override {
    auto loc = op.getLoc();
    auto dim = op.getDim();
    auto input = op.getInput();
    auto type = op.getType();

    auto exp = rewriter.create<tosa::ExpOp>(loc, type, input);
    auto sum = rewriter.create<tosa::ReduceSumOp>(loc, exp, dim);

    auto recip = rewriter.create<tosa::ReciprocalOp>(loc, sum.getType(), sum);
    auto mul = rewriter.create<tosa::MulOp>(loc, type, exp, recip, 0);

    rewriter.replaceOp(op, mul);
    return success();
  }
};

class CrossEntropyLossPattern : public OpRewritePattern<CrossEntropyLossOp> {
  using OpRewritePattern<CrossEntropyLossOp>::OpRewritePattern;

  auto matchAndRewrite(CrossEntropyLossOp op, PatternRewriter& rewriter) const
      -> LogicalResult override {
    constexpr auto dim = 1;

    auto loc = op.getLoc();
    auto inputs = op.getInputs();
    auto target = op.getTarget();
    auto type = op.getType();
    auto softmax = rewriter.create<tosaext::SoftmaxOp>(loc, inputs, dim);

    auto softmax_type = softmax.getType();
    auto log_softmax = rewriter.create<tosa::LogOp>(loc, softmax_type, softmax);
    auto loss =
        rewriter.create<tosaext::NllLossOp>(loc, type, log_softmax, target);

    rewriter.replaceOp(op, loss);
    return success();
  }
};

} // namespace

struct TosaExtToTosa : public impl::TosaExtToTosaBase<TosaExtToTosa> {
  void runOnOperation() override {
    RewritePatternSet patterns{&getContext()};
    patterns.insert<NllLossPattern, SoftmaxPattern, CrossEntropyLossPattern>(
        &getContext());
    (void)applyPatternsAndFoldGreedily(getOperation(), std::move(patterns));
  }
};

// TODO: should be move to mlir::ragdoll
// std::unique_ptr<OperationPass<mlir::func::FuncOp>> createLower()
std::unique_ptr<Pass> createTosaExtToTosaPass() {
  return std::make_unique<TosaExtToTosa>();
}

} // namespace tosaext
} // namespace ragdoll
} // namespace mlir
