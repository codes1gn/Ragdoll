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
#include "Dialect/Autodiff/GradientMap.h"
#include "Optimisation/Autodiff/AutodiffPasses.h"
// TODO: rename Graidnet Map to Gradient SymbolTable
#include "Utils/Compat.h"

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

#define DEBUG_TYPE "autodiff-vjp"

namespace mlir {
namespace ragdoll {
namespace autodiff {

//===----------------------------------------------------------------------===//
// Classes
//===----------------------------------------------------------------------===//
//
#define GEN_PASS_DEF_AUTODIFFVJP
#include "Optimisation/Passes.h.inc"

namespace {
class VjpTransformation;

/**
 * @brief 获得给定 `func.func` 对应的 `func.return`
 *
 * @param func
 * @return func::ReturnOp
 */
func::ReturnOp getReturnOp(func::FuncOp func) {
  return dyn_cast<func::ReturnOp>(func.getFunctionBody().back().back());
}

/**
 * @brief 为每一个输出准备梯度
 *
 * @param func
 */
void addGradientArguments(func::FuncOp func) {
  auto funcTy = func.getFunctionType();
  auto inTy = funcTy.getInputs();
  auto resTy = funcTy.getResults();

  SmallVector<Type> newInTy{inTy};

  for (auto ty : resTy) {
    newInTy.emplace_back(ty);
    func.insertArgument(func.getNumArguments(), ty, {}, func->getLoc());
  }

  auto newFuncTy = FunctionType::get(func->getContext(), newInTy, resTy);
  func.setFunctionType(newFuncTy);
}

/**
 * @brief 进行梯度的反向传播
 *
 * @param func
 * @param grads
 * @param builder
 */
void backprop(func::FuncOp func, GradientMap& grads, OpBuilder& builder) {
  SmallVector<Operation*> ops;

  for (auto& block : func) {
    for (auto& iter : block) {
      ops.emplace_back(&iter);
    }
  }

  backprop(ops, grads, builder);
}

/**
 * @brief 生成与给定 value 类型一致的零值
 *
 * @param in
 * @param builder
 * @return Value
 */
Value zeroslike(Value value, OpBuilder& builder) {
  auto type = value.getType();
  TypedAttr attr;

  if (isa<FloatType>(type)) {
    attr = builder.getFloatAttr(type, 0.0);
  } else if (isa<IntegerType>(type)) {
    attr = builder.getIntegerAttr(type, 0);
  } else if (isa<RankedTensorType>(type)) {
    attr = DenseElementsAttr::get(compat::type_as_tensor(type),
                                  llvm::ArrayRef(0.0F));
  }

  return builder.create<arith::ConstantOp>(value.getLoc(), attr);
}

class RemoveUnusedGlobals : public OpRewritePattern<ml_program::GlobalOp> {
  using OpRewritePattern<ml_program::GlobalOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(ml_program::GlobalOp op,
                                PatternRewriter& rewriter) const override {
    auto module = op->getParentOfType<ModuleOp>();
    if (op.symbolKnownUseEmpty(module)) {
      rewriter.eraseOp(op);
      return success();
    }

    auto uses = op.getSymbolUses(module);
    if (uses.has_value()) {
      using T = decltype(*uses->begin());
      auto allGlobalStore = llvm::all_of(*uses, [](T use) {
        return isa<ml_program::GlobalStoreOp>(use.getUser());
      });

      if (allGlobalStore) {
        // 删除所有 store
        for (auto use : *uses) {
          rewriter.eraseOp(use.getUser());
        }
        // 删除没有使用到的 global
        rewriter.eraseOp(op);
      }
    }

    return success();
  }
};

// Transformation Pattern to generate VJP function
// TODO: rename to vjp transformation patterns
//
class VjpTransformation : public OpRewritePattern<VjpOp> {
  using OpRewritePattern::OpRewritePattern;

  // TODO(ccy): 修改逻辑错误
  /**
   * @brief 判断是否能用给定的 values 调用 func
   *
   * @param func
   * @param values
   * @return true
   * @return false
   */
  [[nodiscard]] bool callable(func::FuncOp func, ValueRange values) const {
    // auto args = func.getArguments();
    // if (args.size() != values.size()) {
    //   return false;
    // }

    // for (auto [arg, in] : llvm::zip(args, values)) {
    //   if (arg.getType() != in.getType()) {
    //     return false;
    //   }
    // }
    return true;
  }

  void vjp(func::FuncOp func, PatternRewriter& rewriter) const {
    auto returnOp = getReturnOp(func);
    OpBuilder::InsertionGuard guard{rewriter};
    rewriter.setInsertionPoint(returnOp);

    // 记录原始输入输出
    SmallVector<Value> primalInputs, primalOutputs;
    copy(func.getArguments(), std::back_inserter(primalInputs));
    copy(returnOp.getOperands(), std::back_inserter(primalOutputs));

    // 初始化输出梯度
    addGradientArguments(func);
    auto grads = func.getArguments().take_back(primalOutputs.size());

    // 梯度反向传播
    GradientMap gradMap;
    for (auto [out, grad] : llvm::zip(primalOutputs, grads)) {
      gradMap.update(out, grad, rewriter);
    }
    backprop(func, gradMap, rewriter);

    // 修改 `func.return` 的输出和 func type
    auto returnValues = returnOp.getOperandsMutable();
    returnValues.clear();
    for (auto in : primalInputs) {
      if (auto grad = gradMap[in]; grad.has_value()) {
        returnValues.append(*grad);
      } else {
        returnValues.append(zeroslike(in, rewriter));
      }
    }

    auto funcTy = func.getFunctionType();
    auto inTy = funcTy.getInputs();
    auto resTy = returnOp->getOperandTypes();
    auto newFuncTy = rewriter.getFunctionType(inTy, resTy);
    func.setFunctionType(newFuncTy);
    func.setSymName((func.getSymName() + "_vjp").str());
    func.setVisibility(SymbolTable::Visibility::Private);
  }

  // TODO(ccy): 耗时太高
  /**
   * @brief 构造检查点，将 v1 存入全局变量中并使用该全局变量替代 v2
   *
   * @param v1
   * @param v2
   * @param module
   * @param rewriter
   */
  void createCheckpoint(Value v1, Value v2, ModuleOp module,
                        PatternRewriter& rewriter) const {
    static size_t counter = 0;

    OpBuilder::InsertionGuard guard{rewriter};
    auto globalVisibility = rewriter.getStringAttr("private");

    // auto type = v1.getType();
    // auto attr = DenseElementsAttr::get(type, ArrayRef(0.0F));

    // 创建全局变量
    rewriter.setInsertionPointToStart(module.getBody());
    auto globalName = "global" + std::to_string(counter++);
    // auto global = rewriter.create<ml_program::GlobalOp>(
    //     rewriter.getUnknownLoc(), globalName, type, true, attr,
    //     globalVisibility);
    auto global = rewriter.create<ml_program::GlobalOp>(
        rewriter.getUnknownLoc(), globalName, v1.getType(), true, Attribute{},
        globalVisibility);
    auto symbolRef = SymbolRefAttr::get(global.getSymNameAttr());

    // 前向保存
    rewriter.setInsertionPointAfterValue(v1);
    rewriter.create<ml_program::GlobalStoreOp>(rewriter.getUnknownLoc(),
                                               symbolRef, v1);

    // 反向读取
    rewriter.setInsertionPointAfterValue(v2);
    auto load = rewriter.create<ml_program::GlobalLoadOp>(
        rewriter.getUnknownLoc(), v2.getType(), symbolRef);
    v2.replaceAllUsesWith(load);
  }

  /**
   * @brief 构造一组距离为 n 的检查点
   *
   * @param forward
   * @param vjp
   * @param rewriter
   * @param n 检查点间距，如果 n 为 0 则不构造检查点
   */
  void createDistanceNCheckpoints(func::FuncOp forward, func::FuncOp vjp,
                                  PatternRewriter& rewriter, size_t n) const {
    auto module = forward->getParentOfType<ModuleOp>();
    auto& fBlock = *forward.getBody().begin();
    auto& vBlock = *vjp.getBody().begin();

    // 保存函数参数
    for (auto [fArg, vArg] :
         llvm::zip(forward.getArguments(), vjp.getArguments())) {
      createCheckpoint(fArg, vArg, module, rewriter);
    }

    // 修改函数签名
    for (auto i = 0U; i < forward.getNumArguments(); ++i) {
      vjp.eraseArgument(0);
    }

    // 如果间距为 0 则不构造检查点
    if (n == 0U) {
      return;
    }

    auto counter = 0U;

    // 保存前向 op
    for (auto [fOp, vOp] : llvm::zip(fBlock, vBlock)) {
      if (isa<func::ReturnOp>(fOp)) {
        continue;
      }

      // 仅当 index 是 n 的倍数时构造检查点
      counter = (counter + 1) % n;
      if (counter == 0U) {
        for (auto [fRes, vRes] :
             llvm::zip(fOp.getResults(), vOp.getResults())) {
          createCheckpoint(fRes, vRes, module, rewriter);
        }
      }
    }
  }

  /**
   * @brief 启发式方法构造检查点
   *
   * @param forward
   * @param vjp
   * @param rewriter
   */
  auto heuristic(func::FuncOp forward, func::FuncOp vjp,
                 PatternRewriter& rewriter) const -> void {
    auto module = forward->getParentOfType<ModuleOp>();
    auto& fBlock = *forward.getBody().begin();
    auto& vBlock = *vjp.getBody().begin();

    // 保存函数参数
    for (auto [fArg, vArg] :
         llvm::zip(forward.getArguments(), vjp.getArguments())) {
      createCheckpoint(fArg, vArg, module, rewriter);
    }

    // 修改函数签名
    for (auto i = 0U; i < forward.getNumArguments(); ++i) {
      vjp.eraseArgument(0);
    }

    /**
     * @brief 判断某个 operation 是否值得缓存
     *
     */
    // TODO(ccy): 重构为优先级
    static auto isWorthyStoring = [](Operation* op) -> bool {
      // 不缓存常量
      if (isa<tosa::ConstOp>(op)) {
        return false;
      }

      // 不缓存变形
      // if (isa<tosa::ReshapeOp>(op) || isa<tosa::TransposeOp>(op) ||
      //     isa<tosa::ConcatOp>(op)) {
      //   return false;
      // }

      // 不缓存 elemwise unary
      // if (isa<tosa::ClampOp>(op) || isa<tosa::RsqrtOp>(op)) {
      //   return false;
      // }

      // TODO(ccy): elemwise binary 与 shape 相关
      return true;
    };

    // 保存前向 op
    for (auto [fOp, vOp] : llvm::zip(fBlock, vBlock)) {
      if (isa<func::ReturnOp>(fOp)) {
        continue;
      }

      if (isWorthyStoring(&fOp)) {
        for (auto [fRes, vRes] :
             llvm::zip(fOp.getResults(), vOp.getResults())) {
          createCheckpoint(fRes, vRes, module, rewriter);
        }
      }
    }
  }

  // TODO(ccy): refactor
  void storeall(func::FuncOp forward, func::FuncOp vjp,
                PatternRewriter& rewriter) const {
    auto module = forward->getParentOfType<ModuleOp>();
    auto& fBlock = *forward.getBody().begin();
    auto& vBlock = *vjp.getBody().begin();

    // 保存函数参数
    for (auto [fArg, vArg] :
         llvm::zip(forward.getArguments(), vjp.getArguments())) {
      createCheckpoint(fArg, vArg, module, rewriter);
    }

    // 修改函数签名
    for (auto i = 0U; i < forward.getNumArguments(); ++i) {
      vjp.eraseArgument(0);
    }

    // 保存前向 ops
    for (auto [fOp, vOp] : llvm::zip(fBlock, vBlock)) {
      if (isa<func::ReturnOp>(fOp)) {
        continue;
      }

      for (auto [fRes, vRes] : llvm::zip(fOp.getResults(), vOp.getResults())) {
        createCheckpoint(fRes, vRes, module, rewriter);
      }
    }
  }

  void checkpoint(func::FuncOp forward, func::FuncOp vjp,
                  PatternRewriter& rewriter) const {
    auto module = forward->getParentOfType<ModuleOp>();
    auto& fBlock = *forward.getBody().begin();
    auto& vBlock = *vjp.getBody().begin();

    // 保存函数参数
    for (auto [fArg, vArg] :
         llvm::zip(forward.getArguments(), vjp.getArguments())) {
      createCheckpoint(fArg, vArg, module, rewriter);
    }

    // 修改函数签名
    for (auto i = 0U; i < forward.getNumArguments(); ++i) {
      vjp.eraseArgument(0);
    }

    auto n = std::distance(fBlock.begin(), fBlock.end());
    auto sqrtn = static_cast<int>(std::sqrt(n));

    // 保存前向 ops
    for (auto [fOp, vOp, index] :
         llvm::zip(fBlock, vBlock, llvm::seq<int>(0, n))) {
      if ((index % sqrtn) != 0) {
        continue;
      }

      if (isa<func::ReturnOp>(fOp)) {
        continue;
      }

      for (auto [fRes, vRes] : llvm::zip(fOp.getResults(), vOp.getResults())) {
        createCheckpoint(fRes, vRes, module, rewriter);
      }
    }
  }

  LogicalResult matchAndRewrite(VjpOp op,
                                PatternRewriter& rewriter) const override {
    auto module = op->getParentOfType<ModuleOp>();
    auto primalName = op.getFunc();

    // TODO(ccy): 内联并删除生成的 vjp
    // 如果已经有 vjp 函数，直接调用
    auto* vjpOp = op->getParentOfType<ModuleOp>().lookupSymbol(
        (primalName + "_vjp").str());
    if ((vjpOp != nullptr) && isa<func::FuncOp>(vjpOp)) {
      auto vjpFunc = cast<func::FuncOp>(vjpOp);
      if (callable(vjpFunc, op.getInputs())) {
        rewriter.replaceOpWithNewOp<func::CallOp>(op, vjpFunc, op.getInputs());
        return success();
      }
    }

    // 如果没有 vjp 函数，生成 vjp 函数
    auto* primalOp = op->getParentOfType<ModuleOp>().lookupSymbol(primalName);

    // 如果没有 primal 函数则报错
    if ((primalOp == nullptr) || !isa<func::FuncOp>(primalOp)) {
      op->emitError() << "cannot find function " << primalName;
      return failure();
    }

    OpBuilder::InsertionGuard guard{rewriter};
    rewriter.setInsertionPointToEnd(module.getBody());

    auto primalFunc = cast<func::FuncOp>(primalOp);
    auto vjpFunc = cast<func::FuncOp>(rewriter.clone(*primalFunc));

    vjp(vjpFunc, rewriter);
    auto argnumsAttr = op->getAttrOfType<ArrayAttr>("argnums");
    if (argnumsAttr) {
      SmallVector<Value> results;
      results.reserve(argnumsAttr.size());

      auto returnOp = getReturnOp(vjpFunc);
      for (auto argnumAttr : argnumsAttr) {
        if (auto intAttr = dyn_cast<IntegerAttr>(argnumAttr); intAttr) {
          results.emplace_back(returnOp.getOperand(intAttr.getInt()));
        }
      }

      auto returnValues = returnOp.getOperandsMutable();
      returnValues.clear();

      for (auto result : results) {
        returnValues.append(result);
      }

      auto funcTy = vjpFunc.getFunctionType();
      auto inTy = funcTy.getInputs();
      auto resTy = returnOp->getOperandTypes();
      auto newFuncTy = rewriter.getFunctionType(inTy, resTy);
      vjpFunc.setFunctionType(newFuncTy);
    }

    rewriter.setInsertionPoint(op);

    switch (op.getStrategy()) {
    case VjpStrategyFlags::heuristic: // TODO(ccy): 实现 heuristic
      heuristic(primalFunc, vjpFunc, rewriter);
      break;
    case VjpStrategyFlags::storeall:
      createDistanceNCheckpoints(primalFunc, vjpFunc, rewriter, 1);
      break;
    case VjpStrategyFlags::checkpoint: {
      auto n = std::distance(primalFunc.getBody().begin()->begin(),
                             primalFunc.getBody().begin()->end());
      auto sqrtn = static_cast<int>(std::sqrt(n));
      createDistanceNCheckpoints(primalFunc, vjpFunc, rewriter, sqrtn);
      break;
    }
    default:
      createDistanceNCheckpoints(primalFunc, vjpFunc, rewriter, 0);
      break;
    }

    // 如果 vjp 函数不能用 inputs 调用则报错
    if (!callable(vjpFunc, op.getInputs())) {
      op->emitError() << "cannot vjp with given values";
      rewriter.eraseOp(vjpFunc);
      return failure();
    }

    rewriter.replaceOpWithNewOp<func::CallOp>(
        op, vjpFunc, op.getInputs().take_back(vjpFunc.getNumArguments()));

    return success();
  }
};

} // namespace

class AutodiffVjp : public impl::AutodiffVjpBase<AutodiffVjp> {
  void runOnOperation() override {
    OpBuilder builder{&getContext()};

    getOperation()->walk([&](func::FuncOp func) {
      if (!func->hasAttr("autodiff_vjp")) {
        return;
      }

      auto returnOp = getReturnOp(func);
      OpBuilder::InsertionGuard guard{builder};
      builder.setInsertionPoint(returnOp);

      // 记录原始输入输出
      SmallVector<Value> primalInputs;
      SmallVector<Value> primalOutputs;
      copy(func.getArguments(), std::back_inserter(primalInputs));
      copy(returnOp.getOperands(), std::back_inserter(primalOutputs));

      // 初始化输出梯度
      addGradientArguments(func);
      auto grads = func.getArguments().take_back(primalOutputs.size());

      // 梯度反向传播
      GradientMap gradMap;
      for (auto [out, grad] : llvm::zip(primalOutputs, grads)) {
        gradMap.update(out, grad, builder);
      }
      backprop(func, gradMap, builder);

      // 修改 `func.return` 的输出和 func type
      auto returnValues = returnOp.getOperandsMutable();
      for (auto in : primalInputs) {
        if (auto grad = gradMap[in]; grad.has_value()) {
          returnValues.append(*grad);
        } else {
          returnValues.append(zeroslike(in, builder));
        }
      }
      auto funcTy = func.getFunctionType();
      auto inTy = funcTy.getInputs();
      auto resTy = returnOp->getOperandTypes();
      auto newFuncTy = builder.getFunctionType(inTy, resTy);
      func.setFunctionType(newFuncTy);

      func.setSymName((func.getSymName() + "_vjp").str());
      func->removeAttr("autodiff_vjp");
    });

    RewritePatternSet pattern{&getContext()};
    pattern.add<VjpTransformation, RemoveUnusedGlobals>(&getContext());
    (void)applyPatternsAndFoldGreedily(getOperation(), std::move(pattern));
  }
};

// TODO: should be move to mlir::ragdoll
std::unique_ptr<Pass> createAutodiffVjpPass() {
  return std::make_unique<AutodiffVjp>();
}

} // namespace autodiff
} // namespace ragdoll
} // namespace mlir
