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

void propagateShapesInRegion(Region &region, int32_t batch_size) {
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
  region.walk([&](mlir::arith::ConstantOp constOp) {
    mlir::OpBuilder builder(constOp.getContext());
    builder.setInsertionPoint(constOp);
    auto resultType = constOp.getResult().getType().dyn_cast<mlir::RankedTensorType>();
    // 确保结果是RankedTensorType且至少有一个维度
    if (!resultType || resultType.getRank() == 0) return;
    
    auto shape = resultType.getShape();
    // 如果第一个维度不为1，不做修改
    if (shape[0] != 1) return;
    
    // 修改第一个维度为batchSize
    SmallVector<int64_t, 4> newShape(shape.begin(), shape.end());
    newShape[0] = batch_size;

    SmallVector<Attribute, 4> newData;
    auto originalAttr = constOp.getValue().dyn_cast<mlir::DenseElementsAttr>();
    for (auto value : originalAttr.getValues<Attribute>()) {
      newData.push_back(value);
    }
    
    // 创建新的结果类型
    auto newResultType = mlir::RankedTensorType::get(newShape, resultType.getElementType());
    auto newAttr = mlir::DenseElementsAttr::get(newResultType, newData);
    auto newConstOp = builder.create<mlir::tosa::ConstOp>(constOp.getLoc(), newResultType, newAttr);
    
    // constOp.dump();
    // 替换所有对原操作的使用为新操作
    constOp.getResult().replaceAllUsesWith(newConstOp.getResult());
    // newConstOp.dump();
    
    // 删除原操作
    constOp.erase();
  });

  // ALBERT: we need to handle const op first
  region.walk([&](mlir::tosa::ConstOp constOp) {
    mlir::OpBuilder builder(constOp.getContext());
    builder.setInsertionPoint(constOp);
    auto resultType = constOp.getResult().getType().dyn_cast<mlir::RankedTensorType>();
    // 确保结果是RankedTensorType且至少有一个维度
    if (!resultType || resultType.getRank() == 0) return;
    
    auto shape = resultType.getShape();
    // 如果第一个维度不为1，不做修改
    if (shape[0] != 1) return;
    
    // 修改第一个维度为batchSize
    SmallVector<int64_t, 4> newShape(shape.begin(), shape.end());
    newShape[0] = batch_size;

    SmallVector<Attribute, 4> newData;
    auto originalAttr = constOp.getValue().dyn_cast<mlir::DenseElementsAttr>();
    for (auto value : originalAttr.getValues<Attribute>()) {
      newData.push_back(value);
    }
    
    // 创建新的结果类型
    auto newResultType = mlir::RankedTensorType::get(newShape, resultType.getElementType());
    auto newAttr = mlir::DenseElementsAttr::get(newResultType, newData);
    auto newConstOp = builder.create<mlir::tosa::ConstOp>(constOp.getLoc(), newResultType, newAttr);
    
    // constOp.dump();
    // 替换所有对原操作的使用为新操作
    constOp.getResult().replaceAllUsesWith(newConstOp.getResult());
    // newConstOp.dump();
    
    // 删除原操作
    constOp.erase();
  });

  llvm::SmallVector<Operation*, 16> opsToErase;
  for (auto &block : region) {
    for (Operation &op : block) {
      // ALBERT: I muted this skill logic, since we are not doing tosa-only shape ifnerence
      // we need to handle special ops emerges in model
      // like tensor.insert_slice and tensor.extract_slice in vision transformers
      //
      // if (op.getDialect()->getNamespace() != TosaDialect::getDialectNamespace())
      //   continue;
      // op.dump();

      // ALBERT: special treatment for reshapeOp
      if (auto reshapeOp = llvm::dyn_cast<tosa::ReshapeOp>(op)) {
        // 获取newshape的attribute
        auto newShapeAttr = reshapeOp.getNewShape();
        
        // 将Attribute转换为具体的数组
        SmallVector<int64_t, 4> newShapeValues;
        for (int64_t dim : newShapeAttr) {
          newShapeValues.push_back(dim);
        }

        // 修改batch size
        if (!newShapeValues.empty()) {
          // 如果第一个维度不为1，则修改为batch size
          if (newShapeValues[0] == 1) {
            newShapeValues[0] = batch_size;
          } else {
            // 否则，查找并修改第一个为1的维度
            bool expand_dim_0 = false;
            for (auto &dim : newShapeValues) {
              if (dim == 1) {
                expand_dim_0 = true;
                dim = batch_size;
                break; // 修改后退出循环
              }
            }
            // for shape like 12, 197, 768; batchsize dim is not seperately pointed
            // use first dim to contains
            if (!expand_dim_0) {
              newShapeValues[0] = batch_size * newShapeValues[0];
            }
          }
        }

        // deprecated api: 创建新的newshape attribute
        // auto newNewShapeAttr = mlir::DenseIntElementsAttr::get(
        //   mlir::RankedTensorType::get(newShapeValues.size(), mlir::IntegerType::get(op.getContext(), 64)),
        //   newShapeValues);

        // 更新ReshapeOp的newshape attribute
        reshapeOp.setNewShape(newShapeValues);
      }

      // ALBERT: special treatment for tensor.insert_slice
      if (auto extractSliceOp = llvm::dyn_cast<mlir::tensor::ExtractSliceOp>(op)) {
        mlir::OpBuilder builder(op.getContext());
        builder.setInsertionPoint(extractSliceOp);
        // 获取sizes属性
        auto sizesAttr = extractSliceOp.getStaticSizes();
        auto stridesAttr = extractSliceOp.getStaticStrides();
        
        // 将sizes属性转换为vector以便修改
        SmallVector<int64_t, 4> newSizes;
        for (auto size : sizesAttr) {
          newSizes.push_back(size);
        }
        SmallVector<int64_t, 4> newStrides;
        for (auto stride : stridesAttr) {
          newStrides.push_back(stride);
        }

        // 检查并修改sizes的第一个维度
        if (!newSizes.empty()) {
          newSizes[0] = batch_size; // 直接将第一个维度修改为batchSize
        }
        if (!newStrides.empty()) {
          newStrides[0] = batch_size; // 直接将第一个维度修改为batchSize
        }

        // 使用修改后的sizes创建一个新的Attribute
        // mlir::OpBuilder::InsertionGuard guard{builder};
        auto newSizesAttr = builder.getDenseI64ArrayAttr(newSizes);
        auto newStridesAttr = builder.getDenseI64ArrayAttr(newStrides);

        // 更新tensor.extract_slice操作的sizes属性
        extractSliceOp.setStaticSizesAttr(newSizesAttr);
        extractSliceOp.setStaticStridesAttr(newStridesAttr);

        auto newExtractSliceOp = builder.create<mlir::tensor::ExtractSliceOp>(
          extractSliceOp.getLoc(),
          extractSliceOp.getSource(),
          extractSliceOp.getMixedOffsets(),
          extractSliceOp.getMixedSizes(),
          extractSliceOp.getMixedStrides());

        extractSliceOp.getResult().replaceAllUsesWith(newExtractSliceOp.getResult());
        // emptyOp.erase();
        opsToErase.push_back(extractSliceOp.getOperation());
        // newExtractSliceOp.dump();
      }
      if (auto insertSliceOp = llvm::dyn_cast<mlir::tensor::InsertSliceOp>(op)) {
        mlir::OpBuilder builder(op.getContext());
        // mlir::OpBuilder::InsertionGuard guard{builder};
        builder.setInsertionPoint(insertSliceOp);

        // insertSliceOp.dump();
        // 获取sizes属性
        auto sizesAttr = insertSliceOp.getStaticSizes();
        auto stridesAttr = insertSliceOp.getStaticStrides();
        
        // 将sizes属性转换为vector以便修改
        SmallVector<int64_t, 4> newSizes;
        for (auto size : sizesAttr) {
          newSizes.push_back(size);
        }
        SmallVector<int64_t, 4> newStrides;
        for (auto stride : stridesAttr) {
          newStrides.push_back(stride);
        }

        // 检查并修改sizes的第一个维度
        if (!newSizes.empty()) {
          newSizes[0] = batch_size; // 直接将第一个维度修改为batchSize
        }
        if (!newStrides.empty()) {
          newStrides[0] = batch_size; // 直接将第一个维度修改为batchSize
        }

        // 使用修改后的sizes创建一个新的Attribute
        // mlir::OpBuilder::InsertionGuard guard{builder};
        auto newSizesAttr = builder.getDenseI64ArrayAttr(newSizes);
        auto newStridesAttr = builder.getDenseI64ArrayAttr(newStrides);
        // insertSliceOp.getOperand(0).dump();
        // newSizesAttr.dump();

        // 更新tensor.insert_slice操作的sizes属性
        insertSliceOp.setStaticSizesAttr(newSizesAttr);
        insertSliceOp.setStaticStridesAttr(newStridesAttr);
        // insertSliceOp.dump();

        // SmallVector<int64_t, 4> newShape(originalResultType.getShape().begin(), originalResultType.getShape().end());
        // newShape[1] = batch_size;
        // auto newResultType = mlir::RankedTensorType::get(newShape, originalResultType.getElementType());

        auto newInsertSliceOp = builder.create<mlir::tensor::InsertSliceOp>(
          insertSliceOp.getLoc(),
          // newResultType,
          insertSliceOp.getSource(),
          insertSliceOp.getDest(),
          insertSliceOp.getMixedOffsets(),
          insertSliceOp.getMixedSizes(),
          insertSliceOp.getMixedStrides());

        insertSliceOp.getResult().replaceAllUsesWith(newInsertSliceOp.getResult());
        // emptyOp.erase();
        opsToErase.push_back(insertSliceOp.getOperation());
        // newInsertSliceOp.dump();
      }

      // ALBERT: handle tensor.empty special case
      if (auto emptyOp = llvm::dyn_cast<mlir::tensor::EmptyOp>(op)) {
        // auto sizesAttr = emptyOp.getDynamicSizes();
        // sizesAttr.dump();
        // SmallVector<int64_t, 4> newSizes;
        // for (auto size : sizesAttr) {
        //   newSizes.push_back(size.cast<IntegerAttr>().getInt());
        // }
        // if (!newSizes.empty()) {
        //   newSizes[0] = batch_size;
        // }
        //
        // mlir::OpBuilder builder(op.getContext());
        // auto newSizesAttr = builder.getI64ArrayAttr(newSizes);
        // emptyOp.setStaticSizes(newSizesAttr);
        // auto newEmptyOp = builder.create<tensor::EmptyOp>(emptyOp.getLoc(), newSizesAttr, emptyOp.getType(), ValueRange{}).getResult();
        // emptyOp.replaceAllUsesWith(newEmptyOp);
        // emptyOp.erase();
        mlir::OpBuilder builder(op.getContext());
        // mlir::OpBuilder::InsertionGuard guard{builder};
        builder.setInsertionPoint(emptyOp);
        auto originalType = emptyOp.getType().dyn_cast<mlir::RankedTensorType>();
        if (!originalType) return; // 只处理RankedTensorType

        // 构建新的形状尺寸
        SmallVector<int64_t, 4> newShape(originalType.getShape().begin(), originalType.getShape().end());
        if (!newShape.empty()) {
          newShape[0] = batch_size;  // 修改第一个维度的大小
        }

        // 创建新的结果类型
        auto newType = mlir::RankedTensorType::get(newShape, originalType.getElementType());

        // 使用新类型创建一个新的tensor.empty操作
        auto newEmptyOp = builder.create<mlir::tensor::EmptyOp>(
          emptyOp.getLoc(), newType, emptyOp.getDynamicSizes());
        // newEmptyOp.dump();
        emptyOp.getResult().replaceAllUsesWith(newEmptyOp.getResult());
        // emptyOp.erase();
        opsToErase.push_back(emptyOp.getOperation());
        // has to break this loop since op has been removed
        continue;
      }

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
          // op.dump();

          // Set new type
          result.setType(inferredKnowledge.getType());
          // op.dump();

        }
      }
      // op.dump();
    }
  }
  for (auto opToErase : opsToErase) {
    opToErase->erase();
  }


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

      propagateShapesInRegion(funcOp.getBody(), batch_size);
      // funcOp.dump();
      funcOp.verify();

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
    });



  }
};

std::unique_ptr<Pass> createAutodiffPrepareBatchSizePass() {
  return std::make_unique<AutodiffPrepareBatchSize>();
}

} // namespace autodiff
} // namespace ragdoll
} // namespace mlir
