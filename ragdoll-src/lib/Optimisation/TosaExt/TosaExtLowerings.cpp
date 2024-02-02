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
using namespace mlir::ragdoll::tosaext;

#define DEBUG_TYPE "tosaext-lowerings"

namespace mlir {
namespace ragdoll {
namespace tosaext {

//===----------------------------------------------------------------------===//
// Classes
//===----------------------------------------------------------------------===//
//
#define GEN_PASS_DEF_TOSAEXTPARAMETERLOWER
#include "Optimisation/Passes.h.inc"

namespace {

class ParameterPattern;
class ParameterUpdatePattern;

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

struct TosaExtParameterLower
    : public impl::TosaExtParameterLowerBase<TosaExtParameterLower> {
  void runOnOperation() override {
    RewritePatternSet patterns{&getContext()};
    patterns.insert<ParameterPattern, ParameterUpdatePattern>(&getContext());
    (void)applyPatternsAndFoldGreedily(getOperation(), std::move(patterns));
  }
};

// TODO: should be move to mlir::ragdoll
std::unique_ptr<Pass> createParameterLower() {
  return std::make_unique<TosaExtParameterLower>();
}

} // namespace tosaext
} // namespace ragdoll
} // namespace mlir
