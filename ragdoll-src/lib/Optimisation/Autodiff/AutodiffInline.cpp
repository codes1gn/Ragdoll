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
using namespace mlir::ragdoll::autodiff;

#define DEBUG_TYPE "autodiff-inline"

namespace mlir {
namespace ragdoll {
namespace autodiff {

//===----------------------------------------------------------------------===//
// Classes
//===----------------------------------------------------------------------===//
//
#define GEN_PASS_DEF_AUTODIFFINLINE
#include "Optimisation/Passes.h.inc"

namespace {

class FuncCallInliner : public OpRewritePattern<func::CallOp> {
  using OpRewritePattern<func::CallOp>::OpRewritePattern;

  auto matchAndRewrite(func::CallOp caller, PatternRewriter& rewriter) const
      -> LogicalResult override {
    auto module = caller->getParentOfType<ModuleOp>();
    SymbolTable table{module};

    auto callee = table.lookup<func::FuncOp>(caller.getCallee());

    OpBuilder::InsertionGuard _{rewriter};
    rewriter.setInsertionPointAfter(caller);

    IRMapping mapping;
    mapping.map(callee.getArguments(), caller.getOperands());

    for (auto& old_op : callee.getBody().front()) {
      auto* new_op = rewriter.clone(old_op, mapping);

      if (isa<func::ReturnOp>(new_op)) {
        rewriter.replaceOp(caller, new_op->getOperands());
        rewriter.eraseOp(new_op);
      }
    }

    return success();
  }
};

} // namespace

class AutodiffInline : public impl::AutodiffInlineBase<AutodiffInline> {
public:
  /**
   * @brief 移除未使用的 private 函数
   *
   */
  auto removeUnusedPrivateFunctions() -> void {
    auto* module = getOperation();
    SymbolTable table{module};

    DenseSet<StringAttr> privateFuncs;
    module->walk([&](func::FuncOp func) {
      if (func.isPrivate()) {
        privateFuncs.insert(func.getSymNameAttr());
      }
    });

    DenseSet<StringAttr> usedFuncs;
    module->walk(
        [&](func::CallOp call) { usedFuncs.insert(call.getCalleeAttrName()); });

    for (auto privateFunc : privateFuncs) {
      if (usedFuncs.contains(privateFunc)) {
        continue;
      }
      table.lookup<func::FuncOp>(privateFunc).erase();
    }
  }

  auto runOnOperation() -> void override {
    RewritePatternSet patterns{&getContext()};
    patterns.insert<FuncCallInliner>(&getContext());
    (void)applyPatternsAndFoldGreedily(getOperation(), std::move(patterns));
    removeUnusedPrivateFunctions();
  }
};

auto createAutodiffInline() -> std::unique_ptr<Pass> {
  return std::make_unique<AutodiffInline>();
}

} // namespace autodiff
} // namespace ragdoll 
} // namespace mlir
