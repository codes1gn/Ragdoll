#include "Tensor.h"

#include "mlir/Dialect/Tensor/IR/Tensor.h"

namespace mlir::autodiff {

using namespace tensor;

class CollapseShapeAdjoint;
class ExpandShapeAdjoint;
class PadAdjoint;

void registerTensorAdjointInterface(DialectRegistry& registry) {
  registry.addExtension(+[](MLIRContext* context, TensorDialect*) {
    CollapseShapeOp::attachInterface<CollapseShapeAdjoint>(*context);
    ExpandShapeOp::attachInterface<ExpandShapeAdjoint>(*context);
    PadOp::attachInterface<PadAdjoint>(*context);
  });
}

template <typename T, typename OpTy>
using Adjoint = AdjointInterface::ExternalModel<T, OpTy>;

class CollapseShapeAdjoint
    : public Adjoint<CollapseShapeAdjoint, CollapseShapeOp> {
public:
  SmallVector<Value> adjoint(Operation* op, Value dtarget,
                             OpBuilder& builder) const {
    auto cs = cast<CollapseShapeOp>(op);
    auto re = cs.getReassociation();
    auto type = *cs->operand_type_begin();
    auto grad = builder.create<ExpandShapeOp>(op->getLoc(), type, dtarget, re);
    return SmallVector<Value, 1>{grad};
  }
};

class ExpandShapeAdjoint : public Adjoint<ExpandShapeAdjoint, ExpandShapeOp> {
public:
  SmallVector<Value> adjoint(Operation* op, Value dtarget,
                             OpBuilder& builder) const {
    auto es = cast<ExpandShapeOp>(op);
    auto re = es.getReassociation();
    auto type = *es->operand_type_begin();
    auto grad =
        builder.create<CollapseShapeOp>(op->getLoc(), type, dtarget, re);
    return SmallVector<Value, 1>{grad};
  }
};

class PadAdjoint : public Adjoint<PadAdjoint, PadOp> {
public:
  SmallVector<Value> adjoint(Operation* op, Value dtarget,
                             OpBuilder& builder) const {
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
    return SmallVector<Value, 1>{grad};
  }
};

} // namespace mlir::autodiff
