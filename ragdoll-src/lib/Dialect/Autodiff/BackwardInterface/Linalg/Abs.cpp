#include "../Linalg.h"
#include "Utils/Builder.h"
#include "Utils/Compat.h"
#include "mlir/Dialect/Arith/Utils/Utils.h"

namespace mlir::ragdoll::autodiff::backward {

using Role = linalg::ElemwiseUnaryRole;
using T = linalg::AbsOp;
using B = linalg::AbsBackward;

template <>
template <>
auto B::backward<Role::INPUT>(T abs, Value dtarget, OpBuilder& builder)
    -> Value {
  SmallVector<Value, 2> inputs{abs.getInputs()};
  inputs.emplace_back(dtarget);

  auto empty = builder::tensor::empty_like(
      builder, compat::value_as_tensor(abs->getOperand(0)));
  auto type = empty.getType();

  auto indexingMaps = abs.getIndexingMapsArray();
  indexingMaps.emplace_back(indexingMaps.back());

  auto iteratorTypes = abs.getIteratorTypesArray();
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

template <>
auto B::fn(Role role) -> Fn {
  switch (role) {
  case Role::INPUT:
    return backward<Role::INPUT>;
  }
}

} // namespace mlir::ragdoll::autodiff::backward
