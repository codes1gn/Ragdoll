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

#define DEBUG_TYPE "ragdoll-autodiff-optimise"

namespace mlir {
namespace ragdoll {
namespace autodiff {

// #define GEN_PASS_DEF_EXTLOWER
// #define GEN_PASS_DEF_EXTPARAMETERLOWER
// #include "Optimisation/Passes.h.inc"

//===----------------------------------------------------------------------===//
// Classes
//===----------------------------------------------------------------------===//
//
#define GEN_PASS_DEF_AUTODIFFOPTIMISE
#include "Optimisation/Passes.h.inc"

namespace {

/**
 * @brief 移除 payload 中不必要的 x + 0 运算
 *
 */
class RemoveAddToZero;

/**
 * @brief 移除 payload 中不必要的 x * 1 运算
 *
 */
class RemoveMulByOne;

/**
 * @brief 移除 payload 中不必要 x * 0 的运算
 *
 */
class RemoveMulByZero;

/**
 * @brief 循环不变式外提
 *
 */
class LICM;

using linalg::GenericOp;

bool isZeroScalar(Value value) {
  auto constant = value.getDefiningOp<arith::ConstantOp>();
  if (!constant) {
    return false;
  }

  auto constAttr = constant.getValueAttr();
  auto floatAttr = dyn_cast<FloatAttr>(constAttr);
  return floatAttr && floatAttr.getValue().isZero();
}

bool isOneScalar(Value value) {
  auto constant = value.getDefiningOp<arith::ConstantOp>();
  if (!constant) {
    return false;
  }

  auto constAttr = constant.getValueAttr();
  auto floatAttr = dyn_cast<FloatAttr>(constAttr);
  return floatAttr && floatAttr.getValue().convertToDouble() == 1.0;
}

bool isZeroTensor(Value value) {
  auto constant = value.getDefiningOp<arith::ConstantOp>();
  if (constant) {
    auto constArtt = constant.getValueAttr();
    auto denseAttr = dyn_cast<DenseElementsAttr>(constArtt);
    if (!denseAttr) {
      return false;
    }

    auto floatAttr = denseAttr.getSplatValue<FloatAttr>();
    return floatAttr && floatAttr.getValue().isZero();
  }

  auto generic = value.getDefiningOp<linalg::GenericOp>();
  if (generic) {
    for (auto i = 0U; i < generic->getNumResults(); i++) {
      if (generic.getResult(i) == value) {
        auto yield = generic.getBody()->back().getOperand(i);
        return isZeroScalar(yield);
      }
    }
  }

  return false;
}

bool isOnesTensor(Value value) {
  auto constant = value.getDefiningOp<arith::ConstantOp>();
  if (constant) {
    auto constArtt = constant.getValueAttr();
    auto denseAttr = dyn_cast<DenseElementsAttr>(constArtt);
    if (!denseAttr) {
      return false;
    }

    auto floatAttr = denseAttr.getSplatValue<FloatAttr>();
    return floatAttr && floatAttr.getValue().convertToDouble() == 1.0;
  }

  auto generic = value.getDefiningOp<GenericOp>();
  if (generic) {
    for (auto i = 0U; i < generic->getNumResults(); i++) {
      if (generic.getResult(i) == value) {
        auto yield = generic.getBody()->back().getOperand(i);
        return isOneScalar(yield);
      }
    }
  }

  return false;
}

class RemoveAddToZero : public OpRewritePattern<GenericOp> {
  using OpRewritePattern<GenericOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(GenericOp op,
                                PatternRewriter& rewriter) const override {
    DenseSet<Value> zeroArgs;
    for (auto& ope : op->getOpOperands().take_front(op.getInputs().size())) {
      if (isZeroTensor(ope.get())) {
        zeroArgs.insert(op.getMatchingBlockArgument(&ope));
      }
    }

    op->walk([&](arith::AddFOp add) {
      auto lhs = add.getLhs();
      auto rhs = add.getRhs();
      if (isZeroScalar(lhs) || zeroArgs.contains(lhs)) {
        rewriter.replaceOp(add, rhs);
      } else if (isZeroScalar(rhs) || zeroArgs.contains(rhs)) {
        rewriter.replaceOp(add, lhs);
      }
    });
    return success();
  }
};

class RemoveMulByOne : public OpRewritePattern<GenericOp> {
  using OpRewritePattern<GenericOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(GenericOp op,
                                PatternRewriter& rewriter) const override {
    DenseSet<Value> oneArgs;
    for (auto& ope : op->getOpOperands().take_front(op.getInputs().size())) {
      if (isOnesTensor(ope.get())) {
        oneArgs.insert(op.getMatchingBlockArgument(&ope));
      }
    }

    op->walk([&](arith::MulFOp mul) {
      auto lhs = mul.getLhs();
      auto rhs = mul.getRhs();
      if (isOneScalar(lhs) || oneArgs.contains(lhs)) {
        rewriter.replaceOp(mul, rhs);
      } else if (isOneScalar(rhs) || oneArgs.contains(rhs)) {
        rewriter.replaceOp(mul, lhs);
      }
    });
    return success();
  }
};

class RemoveMulByZero : public OpRewritePattern<GenericOp> {
  using OpRewritePattern<GenericOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(GenericOp op,
                                PatternRewriter& rewriter) const override {
    DenseSet<Value> zeroArgs;
    for (auto& ope : op->getOpOperands().take_front(op.getInputs().size())) {
      if (isZeroTensor(ope.get())) {
        zeroArgs.insert(op.getMatchingBlockArgument(&ope));
      }
    }

    op->walk([&](arith::MulFOp mul) {
      auto lhs = mul.getLhs();
      auto rhs = mul.getRhs();
      if (isZeroScalar(lhs) || zeroArgs.contains(lhs)) {
        rewriter.replaceOp(mul, lhs);
      } else if (isZeroScalar(rhs) || zeroArgs.contains(rhs)) {
        rewriter.replaceOp(mul, rhs);
      }
    });
    return success();
  }
};

class LICM : public OpRewritePattern<GenericOp> {
  using OpRewritePattern<GenericOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(GenericOp op,
                                PatternRewriter& rewriter) const override {
    OpBuilder::InsertionGuard guard{rewriter};
    rewriter.setInsertionPoint(op);

    DenseSet<Value> loopDependent;
    for (auto arg : op.getBody()->getArguments()) {
      loopDependent.insert(arg);
    }

    for (auto& ref : *op.getBody()) {
      if (isa<linalg::YieldOp>(ref)) {
        continue;
      }

      bool isLoopDependent = false;
      for (auto ope : ref.getOperands()) {
        if (loopDependent.contains(ope)) {
          for (auto res : ref.getResults()) {
            loopDependent.insert(res);
          }
          isLoopDependent = true;
          break;
        }
      }

      if (isLoopDependent) {
        continue;
      }

      auto* motion = rewriter.clone(ref);
      ref.replaceAllUsesWith(motion->getResults());
      for (auto res : ref.getResults()) {
        loopDependent.erase(res);
      }
    }

    return success();
  }
};

} // namespace

class AutodiffOptimise : public impl::AutodiffOptimiseBase<AutodiffOptimise> {
  /**
   * @brief 启用 arith 的 fastmath
   *
   */
  void enableArithFastMath();

  template <typename T>
  void applyPattern() {
    RewritePatternSet pattern{&getContext()};
    pattern.add<T>(&getContext());
    (void)applyPatternsAndFoldGreedily(getOperation(), std::move(pattern));
  }

  void runOnOperation() override {
    enableArithFastMath();

    applyPattern<RemoveAddToZero>();
    applyPattern<RemoveMulByOne>();
    applyPattern<RemoveMulByZero>();
    applyPattern<LICM>();

    RewritePatternSet pattern{&getContext()};
    linalg::populateEraseUnusedOperandsAndResultsPatterns(pattern);
    (void)applyPatternsAndFoldGreedily(getOperation(), std::move(pattern));
  }
};

void AutodiffOptimise::enableArithFastMath() {
  using namespace arith;

  OpBuilder builder{&getContext()};
  auto fast = FastMathFlagsAttr::get(&getContext(), FastMathFlags::fast);
  auto none = FastMathFlagsAttr::get(&getContext(), FastMathFlags::none);

  getOperation()->walk([&](Operation* op) {
    auto fastmath = dyn_cast<ArithFastMathInterface>(op);
    if (!fastmath || fastmath.getFastMathFlagsAttr() != none) {
      return;
    }

    fastmath->setAttr(fastmath.getFastMathAttrName(), fast);
  });
}

std::unique_ptr<Pass> createAutodiffOptimisePass() {
  return std::make_unique<AutodiffOptimise>();
}

} // namespace autodiff
} // namespace ragdoll
} // namespace mlir
