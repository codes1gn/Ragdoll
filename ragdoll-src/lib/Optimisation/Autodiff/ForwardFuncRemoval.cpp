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

#include "mlir/Dialect/Tosa/Transforms/Passes.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/Tensor/IR/Tensor.h"
#include "mlir/Dialect/Tosa/IR/TosaOps.h"
#include "mlir/Dialect/Tosa/Utils/ShapeUtils.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/IRMapping.h"
#include "mlir/IR/Matchers.h"
#include "mlir/Interfaces/InferTypeOpInterface.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "llvm/Support/FormatVariadic.h"
#include "mlir/Dialect/Tosa/Utils/ShapeUtils.h"
#include "mlir/Dialect/Utils/IndexingUtils.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/DialectImplementation.h"
#include "mlir/IR/Matchers.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/IR/TypeUtilities.h"
#include "mlir/Interfaces/InferTypeOpInterface.h"
#include "mlir/Transforms/InliningUtils.h"
#include "llvm/ADT/APFloat.h"
#include "llvm/ADT/DenseMap.h"
#include "llvm/ADT/TypeSwitch.h"

namespace mlir {
namespace tosa {
#define GEN_PASS_DEF_TOSAINFERSHAPES
#include "mlir/Dialect/Tosa/Transforms/Passes.h.inc"
} // namespace tosa
} // namespace mlir

using namespace mlir;
using namespace mlir::tosa;
using namespace mlir::ragdoll::autodiff;

#define DEBUG_TYPE "ragdoll-identical-transpose-removal"

namespace mlir {
namespace ragdoll {
namespace autodiff {

//===----------------------------------------------------------------------===//
// Classes
//===----------------------------------------------------------------------===//
//
#define GEN_PASS_DEF_FORWARDFUNCREMOVAL
#include "Optimisation/Passes.h.inc"


class ForwardFuncRemoval
    : public impl::ForwardFuncRemovalBase<ForwardFuncRemoval> {
  void runOnOperation() override {
    auto module = getOperation();

    // 用于收集需要删除的函数
    SmallVector<mlir::func::FuncOp, 4> funcsToRemove;

    // 遍历模块中的所有函数
    module->walk([&](mlir::func::FuncOp funcOp) {
      if (funcOp.getName() == "forward") {
        funcsToRemove.push_back(funcOp);
      }
    });

    // 删除收集到的函数
    for (auto funcOp : funcsToRemove) {
      funcOp.erase();
    }

  }
};

std::unique_ptr<Pass> createForwardFuncRemovalPass() {
  return std::make_unique<ForwardFuncRemoval>();
}

} // namespace autodiff
} // namespace ragdoll
} // namespace mlir
