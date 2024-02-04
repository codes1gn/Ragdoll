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

#define DEBUG_TYPE "ragdoll-merge-multiple-results"

namespace mlir {
namespace ragdoll {

//===----------------------------------------------------------------------===//
// Classes
//===----------------------------------------------------------------------===//
//
#define GEN_PASS_DEF_MERGEMULTIRESULTS
#include "Optimisation/Passes.h.inc"

using func::CallOp;
using func::FuncOp;
using func::ReturnOp;

class MergeMultiResults
    : public impl::MergeMultiResultsBase<MergeMultiResults> {
public:
  void runOnOperation() override {
    OpBuilder builder{&getContext()};
    OpBuilder::InsertionGuard guard{builder};
    getOperation()->walk([&](FuncOp func) {
      auto funcTy = func.getFunctionType();
      auto numResults = funcTy.getNumResults();
      if (numResults < 1) {
        return;
      }
      builder.setInsertionPointAfter(func);

      SmallVector<FuncOp> dupFuncs;
      dupFuncs.reserve(numResults);

      for (auto i = 0U; i < numResults; ++i) {
        auto dupFunc = cast<FuncOp>(builder.clone(*func));
        dupFunc.setSymName((func.getName() + "_" + std::to_string(i)).str());

        auto dupReturn = cast<ReturnOp>(&*dupFunc.getBody().rbegin()->rbegin());
        dupReturn->setOperands(dupReturn->getOperand(i));

        auto dupFuncTy =
            builder.getFunctionType(dupFunc.getFunctionType().getInputs(),
                                    dupReturn->getOperandTypes());
        dupFunc.setFunctionType(dupFuncTy);
        dupFunc.setVisibility(SymbolTable::Visibility::Private);
        dupFuncs.emplace_back(dupFunc);
      }

      auto funcReturn = cast<ReturnOp>(&*func.getBody().rbegin()->rbegin());
      builder.setInsertionPoint(funcReturn);

      for (auto [i, dupFunc] : llvm::enumerate(dupFuncs)) {
        auto call = builder.create<CallOp>(funcReturn->getLoc(), dupFunc,
                                           func.getArguments());
        funcReturn->setOperand(i, call->getResult(0));
      }
    });

    RewritePatternSet patterns{&getContext()};
    func::FuncOp::getCanonicalizationPatterns(patterns, &getContext());
    (void)applyPatternsAndFoldGreedily(getOperation(), std::move(patterns));
  }
};

std::unique_ptr<Pass> createMergeMultiResults() {
  return std::make_unique<MergeMultiResults>();
}

} // namespace ragdoll
} // namespace mlir
