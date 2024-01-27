#include "../Tosa.h"
#include "Utils/Builder.h"
#include "Utils/Padding.h"
#include "mlir/Dialect/Utils/StructuredOpsUtils.h"

namespace mlir::autodiff::backward {

using T = tosa::MaxPool2dOp;
using Role = tosa::MaxPool2dRole;
using B = tosa::MaxPool2dBackward;
using IteratorType = mlir::utils::IteratorType;

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

  // 对 input 进行 padding
  auto input = op.getInput();
  auto padded = utils::pad4d(input, op.getPad(), builder,
                             std::numeric_limits<float>::lowest());
  auto paddedTy = padded.getType();
  auto dPaddedEmp = builder::tensor::empty(builder, paddedTy);

  auto kernel =
      builder::tensor::empty(builder, op.getKernel(), builder.getF32Type());

  // 再次进行 pooling 取得 indices
  auto result = op.getResult();
  auto indexEmpty = builder::tensor::empty_like(builder, result);

  auto maps = PoolingMap::from(op.getStride(), builder);

  SmallVector<Value> ins{padded, kernel};
  SmallVector<Value> outs(4, indexEmpty);
  SmallVector<Type, 4> types;

  llvm::transform(outs, std::back_inserter(types),
                  [](auto it) { return it.getType(); });

  SmallVector<IteratorType, 6> iteratorTypes;

  SmallVector<AffineMap, 6> indexingMaps;
}

template <> auto B::fn(Role role) -> Fn {
  switch (role) {
  case Role::INPUT:
    return backward<Role::INPUT>;
  }
}

} // namespace mlir::autodiff::backward
