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

#include "mlir/Conversion/AffineToStandard/AffineToStandard.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/Tensor/IR/Tensor.h"
#include "mlir/Dialect/Tosa/IR/TosaOps.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/Debug.h"
#include <optional>

using namespace mlir;
using namespace mlir::ragdoll::autodiff;

#define DEBUG_TYPE "ragdoll-fold-and-unfold-avgpool"

namespace mlir {
namespace ragdoll {

//===----------------------------------------------------------------------===//
// Classes
//===----------------------------------------------------------------------===//
//
#define GEN_PASS_DEF_FOLDAVGPOOL
#define GEN_PASS_DEF_UNFOLDAVGPOOL
#include "Optimisation/Passes.h.inc"

class FoldAvgPool : public impl::FoldAvgPoolBase<FoldAvgPool> {
public:
  auto runOnOperation() -> void override {
    RewritePatternSet patterns{&getContext()};
    patterns.insert<Pattern<tosa::AvgPool2dOp>>(&getContext());
    (void)applyPatternsAndFoldGreedily(getOperation(), std::move(patterns));
  }

private:
  template <typename T>
  class Pattern : public OpRewritePattern<T> {
    using OpRewritePattern<T>::OpRewritePattern;

    auto matchAndRewrite(T op, PatternRewriter& rewriter) const
        -> LogicalResult override {
      rewriter.replaceOpWithNewOp<DummyOp>(op, op);
      return success();
    }
  };
};

class UnfoldAvgPool : public impl::UnfoldAvgPoolBase<UnfoldAvgPool> {
public:
  auto runOnOperation() -> void override {
    RewritePatternSet patterns{&getContext()};
    patterns.insert<Pattern<tosa::AvgPool2dOp>>(&getContext());
    (void)applyPatternsAndFoldGreedily(getOperation(), std::move(patterns));
  }

private:
  template <typename... OpTy>
  class Pattern : public OpRewritePattern<DummyOp> {
    using OpRewritePattern::OpRewritePattern;

    auto matchAndRewrite(DummyOp op, PatternRewriter& rewriter) const
        -> LogicalResult override {
      auto newOp = fromDummy<OpTy...>(op, rewriter);

      if (newOp.has_value()) {
        rewriter.replaceOp(op, (*newOp)->getResults());
        return success();
      }

      return failure();
    }

  private:
    template <typename T, typename... Ts>
    auto fromDummy(DummyOp op, PatternRewriter& rewriter) const
        -> std::optional<Operation*> {
      auto opname = op.getOpname();
      if (opname == T::getOperationName()) {
        auto operands = op->getOperands();
        auto types = op->getResultTypes();
        SmallVector<NamedAttribute> attrs;
        attrs.reserve(op->getAttrs().size() - 1);
        llvm::copy_if(op->getAttrs(), std::back_inserter(attrs),
                      [](auto it) { return it.getName() != "opname"; });
        return rewriter.create<T>(op->getLoc(), types, operands, attrs);
      }

      if constexpr (sizeof...(Ts) > 0) {
        return fromDummy<Ts...>(op, rewriter);
      }

      return std::nullopt;
    }
  };
};

auto createFoldAvgPoolPass() -> std::unique_ptr<Pass> {
  return std::make_unique<FoldAvgPool>();
}

auto createUnfoldAvgPoolPass() -> std::unique_ptr<Pass> {
  return std::make_unique<UnfoldAvgPool>();
}

} // namespace ragdoll
} // namespace mlir
