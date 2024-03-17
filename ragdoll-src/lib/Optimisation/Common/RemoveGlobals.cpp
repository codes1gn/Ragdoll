//===- autodiffDummyPattern.cpp --- Loop tiling pass
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

#include "Dialect/Autodiff/AutodiffOps.h"
#include "Optimisation/Autodiff/AutodiffPasses.h"
#include "Utils/Compat.h"

#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/MLProgram/IR/MLProgram.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/Debug.h"
#include <optional>

using namespace mlir;
using namespace mlir::ragdoll::autodiff;

#define DEBUG_TYPE "ragdoll-remove-globals"

namespace mlir {
namespace ragdoll {

//===----------------------------------------------------------------------===//
// Classes
//===----------------------------------------------------------------------===//
//
#define GEN_PASS_DEF_REMOVEGLOBALS
#include "Optimisation/Passes.h.inc"

namespace {

class RemoveGlobalLoad : public OpRewritePattern<ml_program::GlobalLoadOp> {
  using OpRewritePattern<ml_program::GlobalLoadOp>::OpRewritePattern;

  auto matchAndRewrite(ml_program::GlobalLoadOp op,
                       PatternRewriter& rewriter) const
      -> LogicalResult override {
    auto global = op.getResult();
    auto globalTy = global.getType();

    auto func = op->getParentOfType<func::FuncOp>();
    func.insertArgument(func.getNumArguments(), globalTy, {}, func->getLoc());

    global.replaceAllUsesWith(func.getArguments().back());
    rewriter.eraseOp(op);
    return success();
  }
};

class RemoveGlobalStore : public OpRewritePattern<ml_program::GlobalStoreOp> {
  using OpRewritePattern<ml_program::GlobalStoreOp>::OpRewritePattern;

  auto matchAndRewrite(ml_program::GlobalStoreOp op,
                       PatternRewriter& rewriter) const
      -> LogicalResult override {
    auto global = op.getOperand();

    auto func = op->getParentOfType<func::FuncOp>();

    auto& returnOp = func.back().back();
    returnOp.insertOperands(returnOp.getNumOperands(), global);
    auto resTy = returnOp.getOperandTypes();

    auto inTy = func.getFunctionType().getInputs();
    auto funcTy = rewriter.getFunctionType(inTy, resTy);
    func.setFunctionType(funcTy);

    rewriter.eraseOp(op);
    return success();
  }
};

class RemoveGlobal : public OpRewritePattern<ml_program::GlobalOp> {
  using OpRewritePattern<ml_program::GlobalOp>::OpRewritePattern;

  auto matchAndRewrite(ml_program::GlobalOp op, PatternRewriter& rewriter) const
      -> LogicalResult override {
    rewriter.eraseOp(op);
    return success();
  }
};

} // namespace

class RemoveGlobals : public impl::RemoveGlobalsBase<RemoveGlobals> {
public:
  auto runOnOperation() -> void override {
    RewritePatternSet patterns{&getContext()};
    patterns.insert<RemoveGlobalLoad, RemoveGlobalStore, RemoveGlobal>(
        &getContext());
    (void)applyPatternsAndFoldGreedily(getOperation(), std::move(patterns));
  }
};

auto createRemoveGlobalsPass() -> std::unique_ptr<Pass> {
  return std::make_unique<RemoveGlobals>();
}

} // namespace ragdoll
} // namespace mlir
