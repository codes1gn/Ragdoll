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

#define DEBUG_TYPE "ragdoll-make-compatible"

namespace mlir {
namespace ragdoll {

//===----------------------------------------------------------------------===//
// Classes
//===----------------------------------------------------------------------===//
//
#define GEN_PASS_DEF_LEGALISETOIREECOMPATIBILITY
#include "Optimisation/Passes.h.inc"

namespace {

class TensorInsertToTensorInsertSlice
    : public OpRewritePattern<tensor::InsertOp> {
  using OpRewritePattern<tensor::InsertOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(tensor::InsertOp op,
                                PatternRewriter& rewriter) const override {
    auto scalar = op.getScalar();
    auto scalarTy = scalar.getType();

    auto loc = op->getLoc();
    auto tensorTy = RankedTensorType::get({}, scalarTy);
    auto tensor =
        rewriter.create<tensor::FromElementsOp>(loc, tensorTy, scalar);

    auto indices = op.getIndices();
    auto dest = op.getDest();
    auto rank = dest.getType().getRank();

    SmallVector<OpFoldResult> offsets, sizes, strides;
    offsets.resize(rank);
    sizes.resize(rank);
    strides.resize(rank);
    llvm::transform(indices, offsets.begin(), [](auto it) { return it; });
    std::fill(sizes.begin(), sizes.end(), rewriter.getIndexAttr(1));
    std::fill(strides.begin(), strides.end(), rewriter.getIndexAttr(1));
    rewriter.replaceOpWithNewOp<tensor::InsertSliceOp>(op, tensor, dest,
                                                       offsets, sizes, strides);

    return success();
  }
};

class AvgPool2dWithAccType : public OpRewritePattern<tosa::AvgPool2dOp> {
  using OpRewritePattern<tosa::AvgPool2dOp>::OpRewritePattern;

  auto matchAndRewrite(tosa::AvgPool2dOp op, PatternRewriter& rewriter) const
      -> LogicalResult override {
    op->setAttr("acc_type", TypeAttr::get(rewriter.getF32Type()));
    return success();
  }
};

} // namespace

class LegaliseToIREECompatibility
    : public impl::LegaliseToIREECompatibilityBase<
          LegaliseToIREECompatibility> {
public:
  void runOnOperation() override {
    RewritePatternSet patterns{&getContext()};
    patterns.insert<TensorInsertToTensorInsertSlice, AvgPool2dWithAccType>(
        &getContext());

    // 将 affine.for 转换为 scf.for
    populateAffineToStdConversionPatterns(patterns);
    (void)applyPatternsAndFoldGreedily(getOperation(), std::move(patterns));
  }
};

std::unique_ptr<Pass> createLegaliseToIREECompatibilityPass() {
  return std::make_unique<LegaliseToIREECompatibility>();
}

} // namespace ragdoll
} // namespace mlir
