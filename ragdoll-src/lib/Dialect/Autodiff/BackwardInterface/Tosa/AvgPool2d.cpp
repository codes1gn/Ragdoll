#include "../Tosa.hpp"
#include "Utils/Builder.hpp"
#include "Utils/Padding.hpp"
#include "mlir/Dialect/Linalg/IR/Linalg.h"
#include <numeric>

namespace mlir::autodiff::backward {

using T = tosa::AvgPool2dOp;
using Role = tosa::AvgPool2dRole;
using B = tosa::AvgPool2dBackward;
using mlir::utils::IteratorType;

template <>
template <>
auto B::backward<Role::INPUT>(T op, Value dtarget, OpBuilder& builder)
    -> Value {
  struct PoolingMap {
    AffineMap input;
    AffineMap kernel;
    AffineMap result;

    static auto from(ArrayRef<int64_t> strides, OpBuilder& builder)
        -> PoolingMap {
      auto identity = builder.getMultiDimIdentityMap(6);
      auto kernel = identity.getMinorSubMap(2);
      auto result = identity.getMajorSubMap(4);

      // affine_map<(i, j, k, l, m, n) -> (i, j * s[0] + m, k * s[1] + n, l)>
      auto dims = identity.getResults();
      auto input = AffineMap::get(6, 0, builder.getContext())
                       .insertResult(dims[0], 0)
                       .insertResult(dims[1] * strides[0] + dims[4], 1)
                       .insertResult(dims[2] * strides[1] + dims[5], 2)
                       .insertResult(dims[3], 3);

      return PoolingMap{input, kernel, result};
    }
  };

  auto loc = dtarget.getLoc();

  // 对 input 进行 padding
  auto input = op.getInput();
  auto padded = autodiff::utils::pad4d(input, op.getPad(), builder);
  auto dpaddedEmp = builder::tensor::empty_like(builder, padded);
  auto kernelSize = op.getKernel();
  auto kernel =
      builder::tensor::empty(builder, kernelSize, builder.getF32Type());

  auto cstVal = 1.0F / std::reduce(kernelSize.begin(), kernelSize.end(), 1.0F,
                                   std::multiplies<>());
  auto cstAttr = builder.getF32FloatAttr(cstVal);
  auto cst = builder.create<arith::ConstantOp>(loc, cstAttr);

  // 进行 dtarget 的 unpooling
  auto maps = PoolingMap::from(op.getStride(), builder);
  SmallVector<Value> ins{padded, kernel, dtarget};
  SmallVector<Value> outs{dpaddedEmp};
  SmallVector<Type> types{dpaddedEmp.getType()};

  SmallVector<IteratorType> iteratorTypes(6, IteratorType::reduction);
  iteratorTypes[0] = IteratorType::parallel;
  iteratorTypes[3] = IteratorType::parallel;

  SmallVector<AffineMap> indexingMaps{maps.input, maps.kernel, maps.result,
                                      maps.input};

  auto payload = [&](OpBuilder& builder, Location loc, ValueRange args) {
    auto in = args[2];
    auto out = args[3];
    auto prod = builder.create<arith::MulFOp>(loc, in, cst);
    auto sum = builder.create<arith::AddFOp>(loc, prod, out);
    builder.create<linalg::YieldOp>(loc, ValueRange{sum});
  };

  auto generic = builder.create<linalg::GenericOp>(
      loc, types, ins, outs, indexingMaps, iteratorTypes, payload);

  return autodiff::utils::unpad4d(generic->getResult(0), op.getPad(), builder);
}

template <> auto B::fn(Role role) -> Fn {
  switch (role) {
  case Role::INPUT:
    return backward<Role::INPUT>;
  }
}

} // namespace mlir::autodiff::backward
