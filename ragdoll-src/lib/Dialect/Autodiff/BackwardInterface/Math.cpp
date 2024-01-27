#include "Math.h"

#include "mlir/Dialect/Arith/Utils/Utils.h"
#include "mlir/Dialect/Math/IR/Math.h"

namespace mlir::autodiff {
namespace math {
class RsqrtBackward;
class SinBackward;
class LogBackward;
class ExpBackward;
} // namespace math

using namespace mlir::math;

void registerMathBackwardInterface(DialectRegistry& registry) {
  using namespace autodiff::math;
  registry.addExtension(+[](MLIRContext* context, MathDialect*) {
    RsqrtOp::attachInterface<RsqrtBackward>(*context);
    SinOp::attachInterface<SinBackward>(*context);
    LogOp::attachInterface<LogBackward>(*context);
    ExpOp::attachInterface<ExpBackward>(*context);
  });
}

namespace math {

template <typename T, typename OpTy>
using Backward = BackwardInterface::ExternalModel<T, OpTy>;

class RsqrtBackward : public Backward<RsqrtBackward, RsqrtOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    ArithBuilder util{builder, op->getLoc()};

    auto x = *op->operand_begin();
    auto type = x.getType();

    auto expoAttr = builder.getFloatAttr(type, -1.5);
    auto expo = builder.create<arith::ConstantOp>(op->getLoc(), expoAttr);
    auto pow = builder.create<PowFOp>(op->getLoc(), x, expo);

    auto factorAttr = builder.getFloatAttr(type, -0.5);
    auto factor = builder.create<arith::ConstantOp>(op->getLoc(), factorAttr);
    auto mul = util.mul(pow, factor);
    return util.mul(dtarget, mul);
  }
};

class SinBackward : public Backward<SinBackward, SinOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    ArithBuilder util{builder, op->getLoc()};
    auto x = *op->operand_begin();
    auto cos = builder.create<CosOp>(op->getLoc(), x);
    return util.mul(dtarget, cos);
  }
};

class LogBackward : public Backward<LogBackward, LogOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    ArithBuilder util{builder, op->getLoc()};
    auto x = *op->operand_begin();
    return builder.create<arith::DivFOp>(op->getLoc(), dtarget, x);
  }
};

class ExpBackward : public Backward<ExpBackward, ExpOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto exp = op->getResult(0);
    return builder.create<arith::MulFOp>(op->getLoc(), dtarget, exp);
  }
};

} // namespace math
} // namespace mlir::autodiff
