#include "Raise.hpp"

#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Linalg/IR/Linalg.h"
#include "mlir/Dialect/Math/IR/Math.h"
#include "mlir/Dialect/Tosa/IR/TosaOps.h"

namespace mlir::ragdoll::autodiff {

using linalg::GenericOp;
using namespace tosa;

template <>
Operation* raise<arith::MulFOp>(GenericOp generic, OpBuilder& builder) {
  auto loc = generic.getLoc();
  auto type = generic.getResultTypes();
  auto opes = generic.getInputs();
  auto shift = builder.getNamedAttr("shift", builder.getI8IntegerAttr(0));
  return builder.create<MulOp>(loc, type, opes, shift);
}

template <>
Operation* raise<arith::DivFOp>(GenericOp generic, OpBuilder& builder) {
  auto loc = generic->getLoc();
  auto type = generic.getResultTypes();
  auto lhs = generic.getOperand(0);
  auto rhs = generic.getOperand(1);
  auto rec = builder.create<ReciprocalOp>(loc, rhs.getType(), rhs);
  return builder.create<MulOp>(loc, type, lhs, rec, 0);
}

template <>
Operation* raise<arith::CmpFOp>(GenericOp generic, OpBuilder& builder) {
  auto loc = generic->getLoc();
  auto type = generic.getResultTypes();
  auto lhs = generic.getOperand(0);
  auto rhs = generic.getOperand(1);

  auto cmp = cast<arith::CmpFOp>(&*generic.getBody()->begin());
  auto predicate = cmp.getPredicate();

  using Predicate = arith::CmpFPredicate;
  if (predicate == Predicate::OEQ) {
    return builder.create<EqualOp>(loc, type, lhs, rhs);
  } else if (predicate == Predicate::OGE) {
    return builder.create<GreaterEqualOp>(loc, type, lhs, rhs);
  } else if (predicate == Predicate::OGT) {
    return builder.create<GreaterOp>(loc, type, lhs, rhs);
  } else if (predicate == Predicate::OLE) {
    return builder.create<GreaterEqualOp>(loc, type, rhs, lhs);
  } else if (predicate == Predicate::OLT) {
    return builder.create<GreaterOp>(loc, type, rhs, lhs);
  }

  return nullptr;
}

// TODO(ccy): 检查 maps 是否合法
template <typename To>
To defaultRaise(GenericOp generic, OpBuilder& builder) {
  auto loc = generic.getLoc();
  auto type = generic.getResultTypes();
  auto opes = generic.getInputs();
  return builder.create<To>(loc, type, opes);
}

template <>
Operation* raise<arith::AddFOp>(GenericOp generic, OpBuilder& builder) {
  return defaultRaise<AddOp>(generic, builder);
}

template <>
Operation* raise<arith::SubFOp>(GenericOp generic, OpBuilder& builder) {
  return defaultRaise<SubOp>(generic, builder);
}

template <>
Operation* raise<arith::NegFOp>(GenericOp generic, OpBuilder& builder) {
  return defaultRaise<NegateOp>(generic, builder);
}

template <>
Operation* raise<arith::SelectOp>(GenericOp generic, OpBuilder& builder) {
  return defaultRaise<SelectOp>(generic, builder);
}

template <>
Operation* raise<math::AbsFOp>(GenericOp generic, OpBuilder& builder) {
  return defaultRaise<AbsOp>(generic, builder);
}

template <>
Operation* raise<math::LogOp>(GenericOp generic, OpBuilder& builder) {
  return defaultRaise<LogOp>(generic, builder);
}

template <>
Operation* raise<math::FloorOp>(GenericOp generic, OpBuilder& builder) {
  return defaultRaise<FloorOp>(generic, builder);
}

template <>
Operation* raise<math::Log1pOp>(GenericOp generic, OpBuilder& builder) {
  auto loc = generic.getLoc();
  auto type = generic.getResultTypes();
  auto x = *generic.operand_begin();

  auto oneType = RankedTensorType::get({}, builder.getF32Type());
  auto oneAttr = DenseElementsAttr::get(oneType, ArrayRef(1.0));
  auto one = builder.create<ConstOp>(loc, oneType, oneAttr);

  auto add = builder.create<AddOp>(loc, type, x, one);
  return builder.create<LogOp>(loc, type, add);
}

template <>
Operation* raise<math::TanhOp>(GenericOp generic, OpBuilder& builder) {
  return defaultRaise<TanhOp>(generic, builder);
}

} // namespace mlir::ragdoll::autodiff
