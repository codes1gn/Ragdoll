#include "Math.h"

#include "mlir/Dialect/Arith/Utils/Utils.h"
#include "mlir/Dialect/Math/IR/Math.h"

namespace mlir {
namespace ragdoll {
namespace autodiff {

using namespace math;

class ExpAdjoint;
class LogAdjoint;
class SinAdjoint;
class RsqrtAdjoint;

void registerMathAdjointInterface(DialectRegistry& registry) {
  registry.addExtension(+[](MLIRContext* context, MathDialect*) {
    ExpOp::attachInterface<ExpAdjoint>(*context);
    LogOp::attachInterface<LogAdjoint>(*context);
    SinOp::attachInterface<SinAdjoint>(*context);
    RsqrtOp::attachInterface<RsqrtAdjoint>(*context);
  });
}

template <typename T, typename OpTy>
using Adjoint = AdjointInterface::ExternalModel<T, OpTy>;

class ExpAdjoint : public Adjoint<ExpAdjoint, ExpOp> {
public:
  SmallVector<Value> adjoint(Operation* op, Value dtarget,
                             OpBuilder& builder) const {
    ArithBuilder helper{builder, op->getLoc()};
    auto exp = cast<ExpOp>(op);
    return SmallVector<Value, 1>{helper.mul(dtarget, exp)};
  }
};

class LogAdjoint : public Adjoint<LogAdjoint, LogOp> {
public:
  SmallVector<Value> adjoint(Operation* op, Value dtarget,
                             OpBuilder& builder) const {
    ArithBuilder helper{builder, op->getLoc()};
    auto log = cast<LogOp>(op);
    auto x = log.getOperand();
    auto type = x.getType();
    auto attr = builder.getFloatAttr(type, 1.0);
    auto one = builder.create<arith::ConstantOp>(op->getLoc(), attr);
    auto div = builder.create<arith::DivFOp>(op->getLoc(), one, x);
    return SmallVector<Value, 1>{helper.mul(dtarget, div)};
  }
};

class SinAdjoint : public Adjoint<SinAdjoint, SinOp> {
public:
  SmallVector<Value> adjoint(Operation* op, Value dtarget,
                             OpBuilder& builder) const {
    ArithBuilder helper{builder, op->getLoc()};
    auto sin = cast<SinOp>(op);
    auto cos = builder.create<CosOp>(op->getLoc(), sin.getOperand());
    return SmallVector<Value, 1>{helper.mul(dtarget, cos)};
  }
};

class RsqrtAdjoint : public Adjoint<RsqrtAdjoint, RsqrtOp> {
public:
  SmallVector<Value> adjoint(Operation* op, Value dtarget,
                             OpBuilder& builder) const {
    ArithBuilder helper{builder, op->getLoc()};
    auto rsqrt = cast<RsqrtOp>(op);
    // dx^{-0.5}/dx = -0.5x^{-1.5}

    auto halfAttr = builder.getFloatAttr(rsqrt.getType(), -0.5);
    auto half = builder.create<arith::ConstantOp>(op->getLoc(), halfAttr);
    auto dx = helper.mul(half, helper.mul(rsqrt, helper.mul(rsqrt, rsqrt)));
    return SmallVector<Value, 1>{helper.mul(dtarget, dx)};
  }
};

} // namespace autodiff
} // namespace ragdoll 
} // namespace mlir
