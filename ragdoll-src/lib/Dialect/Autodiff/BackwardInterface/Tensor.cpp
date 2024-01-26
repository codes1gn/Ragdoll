#include "Tensor.hpp"

#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Linalg/IR/Linalg.h"
#include "mlir/Dialect/Tensor/IR/Tensor.h"

namespace mlir::autodiff {
namespace tensor {
class PadBackward;
class ExpandShapeBackward;
class InsertSliceBackward;
class ExtractSliceBackward;
class CollapseShapeBackward;
} // namespace tensor

using namespace mlir::tensor;

void registerTensorBackwardInterface(DialectRegistry& registry) {
  using namespace autodiff::tensor;
  registry.addExtension(+[](MLIRContext* context, TensorDialect*) {
    PadOp::attachInterface<PadBackward>(*context);
    ExpandShapeOp::attachInterface<ExpandShapeBackward>(*context);
    InsertSliceOp::attachInterface<InsertSliceBackward>(*context);
    ExtractSliceOp::attachInterface<ExtractSliceBackward>(*context);
    CollapseShapeOp::attachInterface<CollapseShapeBackward>(*context);
  });
}

namespace tensor {

template <typename T, typename OpTy>
using Backward = BackwardInterface::ExternalModel<T, OpTy>;

class CollapseShapeBackward
    : public Backward<CollapseShapeBackward, CollapseShapeOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto cs = cast<CollapseShapeOp>(op);
    auto re = cs.getReassociation();
    auto type = *cs->operand_type_begin();
    auto grad = builder.create<ExpandShapeOp>(op->getLoc(), type, dtarget, re);
    return grad;
  }
};

class ExpandShapeBackward
    : public Backward<ExpandShapeBackward, ExpandShapeOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto es = cast<ExpandShapeOp>(op);
    auto re = es.getReassociation();
    auto type = *es->operand_type_begin();
    auto grad =
        builder.create<CollapseShapeOp>(op->getLoc(), type, dtarget, re);
    return grad;
  }
};

class PadBackward : public Backward<PadBackward, PadOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto pad = cast<PadOp>(op);
    auto sourceTy = pad.getSourceType();
    auto staticLow = pad.getStaticLow();

    SmallVector<int64_t> offsets, sizes, strides;
    for (auto dim : llvm::seq(0L, sourceTy.getRank())) {
      strides.emplace_back(1);
      sizes.emplace_back(sourceTy.getDimSize(dim));
      offsets.emplace_back(staticLow[dim]);
    }

    auto grad = builder.create<ExtractSliceOp>(
        op->getLoc(), sourceTy, dtarget, ValueRange{}, ValueRange{},
        ValueRange{}, offsets, sizes, strides);
    return grad;
  }
};

class ExtractSliceBackward
    : public Backward<ExtractSliceBackward, ExtractSliceOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto es = cast<ExtractSliceOp>(op);
    auto source = es.getSource();
    auto sourceTy = source.getType();

    auto loc = dtarget.getLoc();
    auto dest = builder.create<EmptyOp>(loc, sourceTy, ValueRange{});

    // 将 empty 初始化为 0 避免运算错误
    auto zero =
        builder.create<arith::ConstantOp>(loc, builder.getF32FloatAttr(0.0));
    auto init =
        builder.create<linalg::FillOp>(loc, ValueRange{zero}, ValueRange{dest});

    auto offsets = es.getOffsets();
    auto sizes = es.getSizes();
    auto strides = es.getStrides();
    auto staticOffsets = es.getStaticOffsets();
    auto staticSizes = es.getStaticSizes();
    auto staticStrides = es.getStaticStrides();

    auto grad = builder.create<InsertSliceOp>(
        loc, sourceTy, dtarget, init->getResult(0), offsets, sizes, strides,
        staticOffsets, staticSizes, staticStrides);
    return grad;
  }
};

class InsertSliceBackward
    : public Backward<InsertSliceBackward, InsertSliceOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto is = cast<InsertSliceOp>(op);
    auto source = is.getSource();
    auto sourceTy = source.getType();

    auto loc = dtarget.getLoc();
    auto offsets = is.getOffsets();
    auto sizes = is.getSizes();
    auto strides = is.getStrides();
    auto staticOffsets = is.getStaticOffsets();
    auto staticSizes = is.getStaticSizes();
    auto staticStrides = is.getStaticStrides();

    // 如果 primal 中有连续 insert slice 的 (i.e. tosa.concat)
    // 会导致 dtarget 指向错误，需要找到真正的 dtarget
    auto resultTy = *op->result_type_begin();
    while (dtarget.getType() != resultTy) {
      auto extract = dtarget.getDefiningOp<ExtractSliceOp>();
      assert(extract && "invalid dtarget type");
      dtarget = extract.getSource();
    }

    auto grad = builder.create<ExtractSliceOp>(loc, sourceTy, dtarget, offsets,
                                               sizes, strides, staticOffsets,
                                               staticSizes, staticStrides);
    return grad;
  }
};

} // namespace tensor
} // namespace mlir::autodiff
