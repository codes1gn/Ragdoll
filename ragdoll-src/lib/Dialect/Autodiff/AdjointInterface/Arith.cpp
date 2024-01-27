#include "Arith.h"

#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Arith/Utils/Utils.h"

namespace mlir::autodiff {

using namespace arith;

class AddFAdjoint;
class MulFAdjoint;
class SubFAdjoint;
class DivFAdjoint;
class MaxFAdjoint;
class MinFAdjoint;

void registerArithAdjointInterface(DialectRegistry& registry) {
  registry.addExtension(+[](MLIRContext* context, ArithDialect*) {
    AddFOp::attachInterface<AddFAdjoint>(*context);
    MulFOp::attachInterface<MulFAdjoint>(*context);
    SubFOp::attachInterface<SubFAdjoint>(*context);
    DivFOp::attachInterface<DivFAdjoint>(*context);
    MaximumFOp::attachInterface<MaxFAdjoint>(*context);
    MinimumFOp::attachInterface<MinFAdjoint>(*context);
  });
}

template <typename T, typename OpTy>
using Adjoint = AdjointInterface::ExternalModel<T, OpTy>;

class AddFAdjoint : public Adjoint<AddFAdjoint, AddFOp> {
public:
  SmallVector<Value> adjoint(Operation* op, Value dtarget,
                             OpBuilder& builder) const {
    return SmallVector<Value, 2>{dtarget, dtarget};
  }
};

class MulFAdjoint : public Adjoint<MulFAdjoint, MulFOp> {
public:
  SmallVector<Value> adjoint(Operation* op, Value dtarget,
                             OpBuilder& builder) const {
    ArithBuilder helper{builder, op->getLoc()};
    auto mul = cast<MulFOp>(op);
    return SmallVector<Value, 2>{helper.mul(dtarget, mul.getRhs()),
                                 helper.mul(dtarget, mul.getLhs())};
  }
};

class SubFAdjoint : public Adjoint<SubFAdjoint, SubFOp> {
public:
  SmallVector<Value> adjoint(Operation* op, Value dtarget,
                             OpBuilder& builder) const {
    auto neg = builder.create<NegFOp>(op->getLoc(), dtarget);
    return SmallVector<Value, 2>{dtarget, neg};
  }
};

class DivFAdjoint : public Adjoint<DivFAdjoint, DivFOp> {
public:
  SmallVector<Value> adjoint(Operation* op, Value dtarget,
                             OpBuilder& builder) const {
    ArithBuilder helper{builder, op->getLoc()};
    auto div = cast<DivFOp>(op);
    auto lhs = div.getLhs();

    // dlhs
    auto reciprocal = builder.create<arith::DivFOp>(op->getLoc(), div, lhs);
    auto drhs = builder.create<arith::NegFOp>(op->getLoc(),
                                              helper.mul(div, reciprocal));
    return SmallVector<Value, 2>{helper.mul(dtarget, reciprocal),
                                 helper.mul(dtarget, drhs)};
  }
};

class MaxFAdjoint : public Adjoint<MaxFAdjoint, MaximumFOp> {
public:
  SmallVector<Value> adjoint(Operation* op, Value dtarget,
                             OpBuilder& builder) const {
    ArithBuilder helper{builder, op->getLoc()};
    auto max = cast<MaximumFOp>(op);
    auto lhs = max.getLhs();
    auto rhs = max.getRhs();

    auto type = max.getType();
    auto oneAttr = builder.getFloatAttr(type, 1.0);
    auto halfAttr = builder.getFloatAttr(type, 0.5);
    auto zeroAttr = builder.getFloatAttr(type, 0.0);
    auto one = builder.create<arith::ConstantOp>(op->getLoc(), oneAttr);
    auto half = builder.create<arith::ConstantOp>(op->getLoc(), halfAttr);
    auto zero = builder.create<arith::ConstantOp>(op->getLoc(), zeroAttr);

    // lhs > rhs -> dlhs = 1.0, drhs = 0.0
    auto lhsGtRhs = helper.sgt(lhs, rhs);

    // lhs == rhs -> dlhs = 0.5, drhs = 0.5 (why?)
    auto lhsEqRhs = builder.create<arith::CmpFOp>(op->getLoc(),
                                                  CmpFPredicate::OEQ, lhs, rhs);

    auto dlhs =
        helper.select(lhsEqRhs, half, helper.select(lhsGtRhs, one, zero));
    auto drhs =
        helper.select(lhsEqRhs, half, helper.select(lhsGtRhs, zero, one));

    return SmallVector<Value, 2>{helper.mul(dtarget, dlhs),
                                 helper.mul(dtarget, drhs)};
  }
};

class MinFAdjoint : public Adjoint<MinFAdjoint, MinimumFOp> {
public:
  SmallVector<Value> adjoint(Operation* op, Value dtarget,
                             OpBuilder& builder) const {
    ArithBuilder helper{builder, op->getLoc()};
    auto min = cast<MinimumFOp>(op);
    auto lhs = min.getLhs();
    auto rhs = min.getRhs();

    auto type = min.getType();
    auto oneAttr = builder.getFloatAttr(type, 1.0);
    auto halfAttr = builder.getFloatAttr(type, 0.5);
    auto zeroAttr = builder.getFloatAttr(type, 0.0);
    auto one = builder.create<arith::ConstantOp>(op->getLoc(), oneAttr);
    auto half = builder.create<arith::ConstantOp>(op->getLoc(), halfAttr);
    auto zero = builder.create<arith::ConstantOp>(op->getLoc(), zeroAttr);

    // lhs > rhs -> dlhs = 1.0, drhs = 0.0
    auto lhsLtRhs = helper.slt(lhs, rhs);

    // lhs == rhs -> dlhs = 0.5, drhs = 0.5 (why?)
    auto lhsEqRhs = builder.create<arith::CmpFOp>(op->getLoc(),
                                                  CmpFPredicate::OEQ, lhs, rhs);

    auto dlhs =
        helper.select(lhsEqRhs, half, helper.select(lhsLtRhs, one, zero));
    auto drhs =
        helper.select(lhsEqRhs, half, helper.select(lhsLtRhs, zero, one));

    return SmallVector<Value, 2>{helper.mul(dtarget, dlhs),
                                 helper.mul(dtarget, drhs)};
  }
};

} // namespace mlir::autodiff
