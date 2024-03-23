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

// TODO: what does it mean
#define DEBUG_TYPE "ragdoll-autodiff-prepare-batch-size"

namespace mlir {
namespace ragdoll {
namespace autodiff {

//===----------------------------------------------------------------------===//
// Classes
//===----------------------------------------------------------------------===//
//
#define GEN_PASS_DEF_AUTODIFFPREPAREBATCHSIZE
#include "Optimisation/Passes.h.inc"

// Track the old type for each operand whose type was updated
// during inference. This information is used to introduce casts
// back to the type expected by the operand after inference.
struct TypeRewriteInfo {
  OpOperand *operand;
  Type oldType;
};

void printShapedTypeComponents(const SmallVector<ShapedTypeComponents> &components) {
  for (const auto &component : components) {
    // 打印张量的形状
    llvm::errs() << "Shape: [";
    if (component.hasRank()) {
      auto shape = component.getDims();
      for (size_t i = 0, e = shape.size(); i < e; ++i) {
        llvm::errs() << shape[i];
        if (i < e - 1) llvm::errs() << ", ";
      }
    } else {
      llvm::errs() << "Unranked";
    }
    llvm::errs() << "], ";

    // 打印元素类型
    auto elementType = component.getElementType();
    if (elementType) {
      llvm::errs() << "Element Type: ";
      elementType.print(llvm::errs());
    } else {
      llvm::errs() << "Element Type: Unknown";
    }

    llvm::errs() << "\n";
  }
}

void propagateShapesInRegion(Region &region) {
  // // Check whether this use case is replaceable. We define an op as
  // // being replaceable if it is used by a TosaOp, or an op with a
  // // type-inference related interface.
  // // When a non-replaceable use is encountered, the value is wrapped in a
  // // cast back to the original type after inference.
  // auto isReplaceableUser = [](Operation *user) -> bool {
  //   return user->getDialect()->getNamespace() ==
  //              TosaDialect::getDialectNamespace() ||
  //          isa<InferTypeOpInterface, InferShapedTypeOpInterface>(user);
  // };

  llvm::SmallVector<TypeRewriteInfo> requiresUpdate;
  for (auto &block : region) {
    for (Operation &op : block) {
      if (op.getDialect()->getNamespace() != TosaDialect::getDialectNamespace())
        continue;

      // propagateShapesToTosaIf(op);
      // propagateShapesToTosaWhile(op);

      InferShapedTypeOpInterface shapeInterface =
          dyn_cast<InferShapedTypeOpInterface>(op);
      if (!shapeInterface)
        continue;

      SmallVector<ShapedTypeComponents> returnedShapes;

      if (shapeInterface
              .inferReturnTypeComponents(
                  op.getContext(), op.getLoc(), op.getOperands(),
                  op.getDiscardableAttrDictionary(), op.getPropertiesStorage(),
                  op.getRegions(), returnedShapes)
              .succeeded()) {
        // printShapedTypeComponents(returnedShapes);
        for (auto it : llvm::zip(op.getResults(), returnedShapes)) {
          Value result = std::get<0>(it);
          ShapedTypeComponents predictedShape = std::get<1>(it);

          // Determine the knowledge based on the output type.
          // TODO: should also query WIP type probably
          Type resultTy = result.getType();

          // Compute the knowledge based on the inferred type.
          auto inferredKnowledge = ValueKnowledge::getPessimisticValueState();
          inferredKnowledge.dtype = cast<ShapedType>(resultTy).getElementType();
          inferredKnowledge.hasRank = predictedShape.hasRank();
          if (predictedShape.hasRank()) {
            for (auto dim : predictedShape.getDims()) {
              inferredKnowledge.sizes.push_back(dim);
            }
          }

          // Set new type
          result.setType(inferredKnowledge.getType());

          // Collect all uses of the operation which require update.
          // for (auto &user : result.getUses()) {
          //   requiresUpdate.push_back({&user, inferredKnowledge.getType()});
          // }
        }
      }
    }
  }

  // ALBERT: no need to recast since we change the batch-size, which is side-effect
  //
  // For each use whose type changed, cast the value with the new type back to
  // the old type.
  // IRRewriter rewriter(region.getContext());
  // for (auto [user_operand, newType] : requiresUpdate) {
  //   auto userOp = user_operand->getOwner();
  //   rewriter.setInsertionPoint(userOp);
  //
  //   auto oldValue = operand->get();
  //
  //   auto loc = oldValue.getLoc();
  //   auto castOp = rewriter.create<tensor::CastOp>(loc, oldType, oldValue);
  //   operand->set(castOp);
  // }
}

class AutodiffPrepareBatchSize
    : public impl::AutodiffPrepareBatchSizeBase<AutodiffPrepareBatchSize> {
  void runOnOperation() override {
    OpBuilder builder{&getContext()};
    OpBuilder::InsertionGuard guard{builder};
    // llvm::errs() << "albert\n";


    // TODO(albert): refactor this change shape and gen to other place and use option to set batchsize
    int32_t batch_size = this->batchsize;
    getOperation()->walk([&](func::FuncOp funcOp) {
      FunctionType funcType = funcOp.getFunctionType();

      // HARDCODED FOR DIMS
      SmallVector<Type, 4> newInputTypes;
      SmallVector<Type, 4> newResultTypes;

      // handle inputs
      for (size_t i = 0; i < funcType.getNumInputs(); ++i) {
        Type inputType = funcType.getInput(i);
        // if this is a input tensor, do modification
        if (auto tensorType = inputType.dyn_cast<RankedTensorType>()) {
          if (tensorType.getRank() == 4) {
            SmallVector<int64_t, 4> newShape(tensorType.getShape().begin(), tensorType.getShape().end());
            newShape[0] = batch_size;
            auto newTensorType = RankedTensorType::get(newShape, tensorType.getElementType());
            newInputTypes.push_back(newTensorType);
            continue;
          }
        }
        // fallback for non-modification
        newInputTypes.push_back(inputType);
      }
      // auto newFuncType = FunctionType::get(funcOp.getContext(), newInputTypes, funcType.getResults());

      // handle results
      for (Type resultType : funcType.getResults()) {
        // if has bs in dims, modify it
        if (auto tensorType = resultType.dyn_cast<RankedTensorType>()) {
          if (tensorType.getRank() >= 1) { // 确保至少有一个维度可以修改
            SmallVector<int64_t, 4> newShape(tensorType.getShape().begin(), tensorType.getShape().end());
            newShape[0] = batch_size; // 修改第一个维度
            auto newTensorType = RankedTensorType::get(newShape, tensorType.getElementType());
            newResultTypes.push_back(newTensorType);
            continue;
          }
        }
        // fallback for non-modification
        newResultTypes.push_back(resultType);
      }

      auto newFuncType = FunctionType::get(funcOp.getContext(), newInputTypes, newResultTypes);
      funcOp.setType(newFuncType);

      // Assuming the first input's type is modified, find and update all uses.
      if (!newInputTypes.empty() && newInputTypes.front() != funcType.getInput(0)) {
        Block& entryBlock = funcOp.getBody().front();
        BlockArgument oldArg = entryBlock.getArgument(0);
        BlockArgument newArg = entryBlock.addArgument(newInputTypes.front(), oldArg.getLoc());

        oldArg.replaceAllUsesWith(newArg);

        // Now, you need to adjust all operations within the function that used this argument,
        // This may involve creating new operations or updating existing ones to reflect the change.
        // The specific adjustments will depend on how the argument is used in each operation.
        
        // After updating all uses, remove the old argument.
        entryBlock.eraseArgument(0);
      }

      // funcOp.dump();

      // Handle made shape inference (deprecated), use official utils instead
      //
      // funcOp.walk([&](Operation *op) {
      //   // tosa::AddOp
      //   if (auto addOp = dyn_cast<tosa::AddOp>(op)) {
      //     auto inputType = addOp.getOperand(0).getType().cast<TensorType>();
      //     // replace outTy if require update
      //     if (addOp.getType() != inputType) {
      //       auto loc = addOp.getLoc();
      //       auto newAddOp = builder.create<tosa::AddOp>(loc, inputType, addOp.getOperand(0), addOp.getOperand(1));
      //       addOp.getResult().replaceAllUsesWith(newAddOp.getResult());
      //       addOp.erase();
      //     }
      //   }
      //
      //   // tosa::TransposeOp
      //   if (auto transposeOp = dyn_cast<tosa::TransposeOp>(op)) {
      //     auto inputType = transposeOp.getOperand(0).getType().cast<RankedTensorType>();
      //     ShapeAdaptor inputShape(transposeOp.getInput1().getType());
      //     ShapeAdaptor permsShape(transposeOp.getPerms().getType());
      //     auto permsAttr = transposeOp.getPerms();
      //     
      //     SmallVector<int64_t, 4> newShape(inputShape.getRank());
      //     inputShape.dump();
      //     permsShape.dump();
      //     for (size_t i = 0; i < inputShape.getRank(); ++i) {
      //       auto perm = permsAttr[i];
      //       // newShape[i] = inputType.getShape()[perm];
      //       newShape[i] = inputShape.getDimSize(perm);
      //     }
      //     
      //     auto newOutputType = RankedTensorType::get(newShape, inputType.getElementType());
      //     newOutputType.dump();
      //
      //     if (transposeOp.getResult().getType() != newOutputType) {
      //       builder.setInsertionPoint(transposeOp);
      //       auto loc = transposeOp.getLoc();
      //       auto newTransposeOp = builder.create<tosa::TransposeOp>(loc, newOutputType, transposeOp.getOperand(0), transposeOp.getPerms());
      //       transposeOp.getResult().replaceAllUsesWith(newTransposeOp.getResult());
      //       transposeOp.erase();
      //     }
      //   }
      //
      // });
      //
      propagateShapesInRegion(funcOp.getBody());
      funcOp.verify();
    });



  }
};

std::unique_ptr<Pass> createAutodiffPrepareBatchSizePass() {
  return std::make_unique<AutodiffPrepareBatchSize>();
}

} // namespace autodiff
} // namespace ragdoll
} // namespace mlir
