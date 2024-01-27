#include "Arith.h"

#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Arith/Utils/Utils.h"

namespace mlir::autodiff {
namespace arith {
class AddFBackward;
class MulFBackward;
class SubFBackward;
class DivFBackward;
class MaxFBackward;
class MinFBackward;
class NegFBackward;
class SelectBackward;
class IndexCastBackward;
} // namespace arith

using namespace mlir::arith;

void registerArithBackwardInterface(DialectRegistry& registry) {
  using namespace autodiff::arith;
  registry.addExtension(+[](MLIRContext* context, ArithDialect*) {
    AddFOp::attachInterface<AddFBackward>(*context);
    MulFOp::attachInterface<MulFBackward>(*context);
    SubFOp::attachInterface<SubFBackward>(*context);
    DivFOp::attachInterface<DivFBackward>(*context);
    MaximumFOp::attachInterface<MaxFBackward>(*context);
    MinimumFOp::attachInterface<MinFBackward>(*context);
    NegFOp::attachInterface<NegFBackward>(*context);
    SelectOp::attachInterface<SelectBackward>(*context);
    IndexCastOp::attachInterface<IndexCastBackward>(*context);
  });
}

namespace arith {

template <typename T, typename OpTy>
using Backward = BackwardInterface::ExternalModel<T, OpTy>;

class AddFBackward : public Backward<AddFBackward, AddFOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    return dtarget;
  }
};

class MulFBackward : public Backward<MulFBackward, MulFOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    ArithBuilder util{builder, op->getLoc()};
    auto index = operand.getOperandNumber();
    auto factor = op->getOperand(1 - index);
    return util.mul(dtarget, factor);
  }
};

class SubFBackward : public Backward<SubFBackward, SubFOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto index = operand.getOperandNumber();
    if (index == 1) {
      return builder.create<NegFOp>(op->getLoc(), dtarget);
    }
    return dtarget;
  }
};

class DivFBackward : public Backward<DivFBackward, DivFOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    ArithBuilder util{builder, op->getLoc()};
    auto div = cast<DivFOp>(op);
    auto lhs = div.getLhs();
    auto rhs = div.getRhs();
    auto index = operand.getOperandNumber();

    if (index == 0) {
      auto factor = builder.create<DivFOp>(op->getLoc(), div, lhs);
      return util.mul(dtarget, factor);
    }

    auto neg = builder.create<NegFOp>(op->getLoc(), div);
    auto factor = builder.create<DivFOp>(op->getLoc(), neg, rhs);
    return util.mul(dtarget, factor);
  }
};

Value constant(double value, Type type, OpBuilder& builder) {
  auto attr = builder.getFloatAttr(type, value);
  return builder.create<ConstantOp>(builder.getUnknownLoc(), attr);
}

class MaxFBackward : public Backward<MaxFBackward, MaximumFOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    ArithBuilder util{builder, op->getLoc()};
    auto max = cast<MaximumFOp>(op);
    auto opeEqRes = builder.create<CmpFOp>(op->getLoc(), CmpFPredicate::OEQ,
                                           max, operand.get());

    auto type = max.getType();
    auto one = constant(1.0, type, builder);
    auto zero = constant(0.0, type, builder);

    auto factor = util.select(opeEqRes, one, zero);
    return util.mul(dtarget, factor);
  }
};

class MinFBackward : public Backward<MinFBackward, MinimumFOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    ArithBuilder util{builder, op->getLoc()};
    auto min = cast<MinimumFOp>(op);
    auto opeEqRes = builder.create<CmpFOp>(op->getLoc(), CmpFPredicate::OEQ,
                                           min, operand.get());

    auto type = min.getType();
    auto one = constant(1.0, type, builder);
    auto zero = constant(0.0, type, builder);

    auto factor = util.select(opeEqRes, one, zero);
    return util.mul(dtarget, factor);
  }
};

class NegFBackward : public Backward<NegFBackward, NegFOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    return builder.create<NegFOp>(op->getLoc(), dtarget);
  }
};

class SelectBackward : public Backward<SelectBackward, SelectOp> {
public:
  static auto backward(Operation* op, Value dtarget, OpOperand& operand,
                       OpBuilder& builder) -> Value {
    ArithBuilder util{builder, op->getLoc()};
    auto select = cast<SelectOp>(op);
    auto cond = select.getCondition();
    auto zero = constant(0.0, select.getType(), builder);
    switch (operand.getOperandNumber()) {
    case 1:
      return util.select(cond, dtarget, zero);
    case 2:
      return util.select(cond, zero, dtarget);
    default:
      return nullptr;
    }
  }
};

class IndexCastBackward : public Backward<IndexCastBackward, IndexCastOp> {
public:
  static auto backward(Operation* op, Value dtarget, OpOperand& operand,
                       OpBuilder& builder) -> Value {
    // 整型不应该影响梯度
    return nullptr;
  }
};

} // namespace arith
} // namespace mlir::autodiff
