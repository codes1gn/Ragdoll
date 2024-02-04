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

#include "mlir/Conversion/AffineToStandard/AffineToStandard.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/MLProgram/IR/MLProgram.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/Tensor/IR/Tensor.h"
#include "mlir/Dialect/Tosa/IR/TosaOps.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/Debug.h"
#include <optional>

using namespace mlir;
using namespace mlir::ragdoll::autodiff;

#define DEBUG_TYPE "ragdoll-initialisation"

namespace mlir {
namespace ragdoll {

//===----------------------------------------------------------------------===//
// Classes
//===----------------------------------------------------------------------===//
//
#define GEN_PASS_DEF_INITIALISATION
#include "Optimisation/Passes.h.inc"

namespace {

class EmptyTensorInitialiser : public OpRewritePattern<tensor::EmptyOp> {
  using OpRewritePattern<tensor::EmptyOp>::OpRewritePattern;

  auto matchAndRewrite(tensor::EmptyOp op, PatternRewriter& rewriter) const
      -> LogicalResult override {
    auto type = op.getType();

    // TODO(ccy): 实现其他 elem type 的支持
    assert(isa<FloatType>(type.getElementType()));
    assert(cast<FloatType>(type.getElementType()).getWidth() == 32);

    auto attr = DenseElementsAttr::get(type, ArrayRef(0.0F));
    rewriter.replaceOpWithNewOp<arith::ConstantOp>(op, attr);

    return success();
  }
};

class GlobalsInitialiser : public OpRewritePattern<ml_program::GlobalOp> {
  using OpRewritePattern<ml_program::GlobalOp>::OpRewritePattern;

  auto matchAndRewrite(ml_program::GlobalOp op, PatternRewriter& rewriter) const
      -> LogicalResult override {
    auto type = op.getType();
    auto attr = DenseElementsAttr::get(compat::type_as_tensor(type),
                                       llvm::ArrayRef(1.0F));
    op.setValueAttr(attr);

    return success();
  }
};

} // namespace

class Initialisation : public impl::InitialisationBase<Initialisation> {
public:
  auto runOnOperation() -> void override {
    // getOperation()->walk([&](ml_program::GlobalOp op) {
    //   auto type = op.getType();
    //   auto attr = DenseElementsAttr::get(compat::type_as_tensor(type),
    //                                      llvm::ArrayRef(1.0F));
    //   op.setValueAttr(attr);
    // });
    RewritePatternSet patterns{&getContext()};
    patterns.insert<EmptyTensorInitialiser, GlobalsInitialiser>(&getContext());
    (void)applyPatternsAndFoldGreedily(getOperation(), std::move(patterns));
  }
};

auto createInitialisationPass() -> std::unique_ptr<Pass> {
  return std::make_unique<Initialisation>();
}

} // namespace ragdoll
} // namespace mlir
