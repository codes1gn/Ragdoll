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

#include "Dialect/TosaExt/TosaExtOps.h"
#include "Optimisation/Passes.h"

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
using namespace mlir::tosaext;

#define DEBUG_TYPE "tosaext-lowerings"

namespace mlir {
namespace tosaext {

// #define GEN_PASS_DEF_EXTLOWER
// #define GEN_PASS_DEF_EXTPARAMETERLOWER
// #include "Optimisation/Passes.h.inc"

//===----------------------------------------------------------------------===//
// Classes
//===----------------------------------------------------------------------===//
//
#define GEN_PASS_DEF_TOSAEXTLOWER
#define GEN_PASS_DEF_TOSAEXTPARAMETERLOWER
#include "Optimisation/Passes.h.inc"

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

auto process_symbol(Operation* op, PatternRewriter& rewriter, StringRef name,
                    Type type) -> LogicalResult {
  OpBuilder::InsertionGuard _{rewriter};
  auto module = op->getParentOfType<ModuleOp>();
  SymbolTable table{module};
  auto* symbol = table.lookup(name);

  if (symbol == nullptr) {
    auto loc = op->getLoc();
    auto visibility = rewriter.getStringAttr("private");

    rewriter.setInsertionPointToStart(module.getBody());
    rewriter.create<ml_program::GlobalOp>(loc, name, type, true, Attribute{},
                                          visibility);
  } else {
    auto global = dyn_cast<ml_program::GlobalOp>(symbol);
    if (global == nullptr) {
      op->emitError() << "symbol must be a `ml_program.global`";
      return failure();
    }

    if (global.getType() != type) {
      op->emitError() << "symbol type mismatch";
      return failure();
    }
  }

  return success();
}

class ParameterPattern : public OpRewritePattern<ParameterOp> {
  using OpRewritePattern<ParameterOp>::OpRewritePattern;

  auto matchAndRewrite(ParameterOp op, PatternRewriter& rewriter) const
      -> LogicalResult override {
    auto name = op.getName();
    auto type = op.getType();

    if (failed(process_symbol(op, rewriter, name, type))) {
      return failure();
    }

    OpBuilder::InsertionGuard _{rewriter};
    auto global_ref = SymbolRefAttr::get(op->getContext(), name);
    rewriter.setInsertionPoint(op);
    rewriter.replaceOpWithNewOp<ml_program::GlobalLoadOp>(op, type, global_ref);
    return success();
  }
};

class ParameterUpdatePattern : public OpRewritePattern<ParameterUpdateOp> {
  using OpRewritePattern<ParameterUpdateOp>::OpRewritePattern;

  auto matchAndRewrite(ParameterUpdateOp op, PatternRewriter& rewriter) const
      -> LogicalResult override {
    auto name = op.getName();
    auto value = op.getValue();
    auto type = value.getType();

    if (failed(process_symbol(op, rewriter, name, type))) {
      return failure();
    }

    OpBuilder::InsertionGuard _{rewriter};
    auto global_ref = SymbolRefAttr::get(op->getContext(), name);
    rewriter.setInsertionPoint(op);
    rewriter.replaceOpWithNewOp<ml_program::GlobalStoreOp>(op, global_ref,
                                                           value);
    return success();
  }
};

} // namespace

struct TosaExtLower : public impl::TosaExtLowerBase<TosaExtLower> {
  void runOnOperation() override {
    RewritePatternSet patterns{&getContext()};
    patterns.insert<NllLossPattern, SoftmaxPattern, CrossEntropyLossPattern>(
        &getContext());
    (void)applyPatternsAndFoldGreedily(getOperation(), std::move(patterns));
  }
};
struct TosaExtParameterLower
    : public impl::TosaExtParameterLowerBase<TosaExtParameterLower> {
  void runOnOperation() override {
    RewritePatternSet patterns{&getContext()};
    patterns.insert<ParameterPattern, ParameterUpdatePattern>(&getContext());
    (void)applyPatternsAndFoldGreedily(getOperation(), std::move(patterns));
  }
};

// TODO: should be move to mlir::ragdoll
// std::unique_ptr<OperationPass<mlir::func::FuncOp>> createLower()
std::unique_ptr<Pass> createLower() { return std::make_unique<TosaExtLower>(); }
std::unique_ptr<Pass> createParameterLower() {
  return std::make_unique<TosaExtParameterLower>();
}

} // namespace tosaext

} // namespace mlir
