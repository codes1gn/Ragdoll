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

// TODO: what does it mean
#define DEBUG_TYPE "ragdoll-autodiff-vjp-public-function"

namespace mlir {
namespace ragdoll {
namespace autodiff {

//===----------------------------------------------------------------------===//
// Classes
//===----------------------------------------------------------------------===//
//
#define GEN_PASS_DEF_AUTODIFFVJPPUBLICFUNCTIONS
#include "Optimisation/Passes.h.inc"

class AutodiffVjpPublicFunctions
    : public impl::AutodiffVjpPublicFunctionsBase<AutodiffVjpPublicFunctions> {
  void runOnOperation() override {
    OpBuilder builder{&getContext()};
    OpBuilder::InsertionGuard guard{builder};

    // auto strategy = VjpStrategyFlags::invalid;
    // if (strcmp(this->strategy.c_str(),"storeall")==0) {
    //   strategy = VjpStrategyFlags::storeall;
    //   llvm::errs() << "hello";
    // }
    auto strategy = llvm::StringSwitch<VjpStrategyFlags>(this->strategy)
                        .Case("storeall", VjpStrategyFlags::storeall)
                        .Case("recompute", VjpStrategyFlags::recompute)
                        .Case("checkpoint", VjpStrategyFlags::checkpoint)
                        .Case("heuristic", VjpStrategyFlags::heuristic)
                        .Default(VjpStrategyFlags::invalid);

    getOperation()->walk([&](func::FuncOp func) {
      if (func.getVisibility() != SymbolTable::Visibility::Public) {
        return;
      }

      auto primalTy = func.getFunctionType();
      auto primalIn = primalTy.getInputs();
      auto primalRes = primalTy.getResults();

      // 调用 createDistanceNCheckpoints 时全局保存了前向参数，因此不再传入
      SmallVector<Type> vjpIn{primalRes}, vjpRes{primalIn};
      auto vjpType = builder.getFunctionType(vjpIn, vjpRes);
      auto vjpName = ("d" + func.getName()).str(); // TODO(ccy): 判断是否冲突

      builder.setInsertionPointAfter(func);
      auto loc = builder.getUnknownLoc();

      auto vjpFunc = builder.create<func::FuncOp>(loc, vjpName, vjpType);
      auto* entry = vjpFunc.addEntryBlock();
      builder.setInsertionPointToStart(entry);
      auto vjp = builder.create<autodiff::VjpOp>(
          loc, vjpRes, func.getName(), vjpFunc.getArguments(), strategy);
      builder.create<func::ReturnOp>(loc, vjp.getResults());
    });
  }
};

std::unique_ptr<Pass> createAutodiffVjpPublicFunctionsPass() {
  return std::make_unique<AutodiffVjpPublicFunctions>();
}

} // namespace autodiff
} // namespace ragdoll
} // namespace mlir
