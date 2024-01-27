#include "../Linalg.h"
#include "Utils/Builder.h"
#include "Utils/Compat.h"
#include "mlir/Dialect/Arith/Utils/Utils.h"

namespace mlir::autodiff::backward {

using Role = linalg::ElemwiseUnaryRole;
using mlir::linalg::AbsOp, linalg::AbsBackward;

template <>
template <>
auto AbsBackward::backward<Role::INPUT>(AbsOp unary, Value dtarget,
                                        OpBuilder& builder) -> Value {
  auto input = unary.getOperand(0);
  SmallVector<Value, 2> inputs{input, dtarget};

  auto empty =
      builder::tensor::empty_like(builder, compat::value_as_tensor(input));
  auto type = empty.getType();

  auto indexingMaps = unary.getIndexingMapsArray();
  indexingMaps.emplace_back(indexingMaps.back());

  auto iteratorTypes = unary.getIteratorTypesArray();
  auto zero = builder
                  .create<arith::ConstantOp>(dtarget.getLoc(),
                                             builder.getF32FloatAttr(0.0))
                  .getResult();

  auto body = [&](OpBuilder& builder, Location loc, ValueRange args) {
    ArithBuilder util{builder, loc};

    auto in = args[0];
    auto cond = util.sgt(in, zero);
    auto grad = util.select(cond, args[1], zero);
    builder.create<mlir::linalg::YieldOp>(loc, grad);
  };

  return builder
      .create<mlir::linalg::GenericOp>(dtarget.getLoc(), type, inputs, empty,
                                       indexingMaps, iteratorTypes, body)
      .getResult(0);
}

template <> auto AbsBackward::fn(Role role) -> Fn {
  switch (role) {
  case Role::INPUT:
    return backward<Role::INPUT>;
  }
}

using mlir::linalg::LogOp, linalg::LogBackward;

template <>
template <>
auto LogBackward::backward<Role::INPUT>(LogOp unary, Value dtarget,
                                        OpBuilder& builder) -> Value {
  auto input = unary.getOperand(0);
  SmallVector<Value, 2> inputs{input, dtarget};

  auto empty =
      builder::tensor::empty_like(builder, compat::value_as_tensor(input));
  auto type = empty.getType();

  auto indexingMaps = unary.getIndexingMapsArray();
  indexingMaps.emplace_back(indexingMaps.back());

  auto iteratorTypes = unary.getIteratorTypesArray();
  auto body = [&](OpBuilder& builder, Location loc, ValueRange args) {
    auto lhs = args[0];
    auto rhs = args[1];
    auto grad = builder.create<arith::DivFOp>(loc, rhs, lhs).getResult();
    builder.create<mlir::linalg::YieldOp>(loc, grad);
  };

  return builder
      .create<mlir::linalg::GenericOp>(dtarget.getLoc(), type, inputs, empty,
                                       indexingMaps, iteratorTypes, body)
      .getResult(0);
}

template <> auto LogBackward::fn(Role role) -> Fn {
  switch (role) {
  case Role::INPUT:
    return backward<Role::INPUT>;
  }
}

} // namespace mlir::autodiff::backward
