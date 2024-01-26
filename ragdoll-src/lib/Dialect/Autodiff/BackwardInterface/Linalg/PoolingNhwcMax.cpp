#include "../Linalg.hpp"
#include "Utils/Builder.hpp"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include <ranges>

#include "Utils/Compat.hpp"

namespace mlir::autodiff::backward {

using Role = linalg::PoolingNhwcMaxRole;
using T = linalg::PoolingNhwcMaxOp;
using B = linalg::PoolingNhwcMaxBackward;

template <>
template <>
auto B::backward<Role::INPUT>(T pool, Value dtarget, OpBuilder& builder)
    -> Value {
  SmallVector<Value, 4> inputs{pool.getInputs()};
  inputs.emplace_back(pool.getResult(0));
  inputs.emplace_back(dtarget);

  // 在编译时开启 --iree-flow-zero-fill-empty-tensors 实现初始化
  auto empty = builder::tensor::empty_like(
      builder, compat::value_as_tensor(pool->getOperand(0)));
  auto type = empty.getType();

  auto operands = pool->getOpOperands();
  SmallVector<AffineMap, 5> indexingMaps;
  std::ranges::for_each(ArrayRef<int64_t>{0, 1, 2, 2, 0}, [&](auto it) {
    indexingMaps.emplace_back(pool.getMatchingIndexingMap(&operands[it]));
  });

  auto iteratorTypes = linalg::getIterTypes({indexingMaps.back()});
  auto zero = builder
                  .create<arith::ConstantOp>(dtarget.getLoc(),
                                             builder.getF32FloatAttr(0.0))
                  .getResult();

  // FIXME: 这个 loop body 会向同一个 filter 中所有的最大值传播梯度
  auto body = [&](OpBuilder& builder, Location loc, ValueRange args) {
    auto in = args[0];
    auto res = args[2];
    auto grad = args[3];
    auto out = args[4];
    auto ge = builder::arith::greater_equal(builder, in, res);
    auto val = builder::arith::select(builder, ge, grad, zero);
    auto sum = builder::arith::add(builder, val, out);
    builder.create<mlir::linalg::YieldOp>(loc, sum);
  };

  return builder
      .create<mlir::linalg::GenericOp>(dtarget.getLoc(), type, inputs, empty,
                                       indexingMaps, iteratorTypes, body)
      .getResult(0);
}

template <> auto B::fn(Role role) -> Fn {
  switch (role) {
  case Role::INPUT:
    return backward<Role::INPUT>;
  }
}

} // namespace mlir::autodiff::backward
