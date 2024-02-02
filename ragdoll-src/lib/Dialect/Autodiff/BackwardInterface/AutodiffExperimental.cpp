#include "AutodiffExperimental.h"
#include "Dialect/Autodiff/AutodiffOps.h"
#include "mlir/Dialect/Tosa/IR/TosaOps.h"

namespace mlir {
namespace ragdoll {
namespace autodiff {

namespace experimental {
class DropoutBackward;
} // namespace experimental

auto registerAutodiffBackwardInterface(DialectRegistry& registry) -> void {
  registry.addExtension(+[](MLIRContext* context, AutodiffDialect*) {
    ExperimentalDropoutOp::attachInterface<experimental::DropoutBackward>(
        *context);
  });
}

namespace experimental {

class DropoutBackward
    : public BackwardInterface::ExternalModel<DropoutBackward,
                                              ExperimentalDropoutOp> {
public:
  static auto backward(Operation* op, Value dtarget, OpOperand& operand,
                       OpBuilder& builder) -> Value {
    auto dropout = cast<ExperimentalDropoutOp>(op);
    auto type = cast<TensorType>(dropout.getType());

    auto loc = dtarget.getLoc();
    auto eqTy = RankedTensorType::get(type.getShape(), builder.getI1Type());
    auto eq = builder.create<tosa::EqualOp>(loc, eqTy, dropout.getInput(),
                                            dropout.getResult());

    auto zeroTy = RankedTensorType::get({}, builder.getF32Type());
    auto zeroAt = DenseElementsAttr::get(zeroTy, ArrayRef(0.0));
    auto zero = builder.create<tosa::ConstOp>(loc, zeroTy, zeroAt);

    return builder.create<tosa::SelectOp>(loc, type, eq, dtarget, zero);
  }
};

} // namespace experimental

} // namespace autodiff
} // namespace ragdoll 
} // namespace mlir
