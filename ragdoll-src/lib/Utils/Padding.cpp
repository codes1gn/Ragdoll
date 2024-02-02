#include "Utils/Builder.h"
#include "Utils/Compat.h"
#include "mlir/Dialect/Tensor/IR/Tensor.h"

namespace mlir {
namespace ragdoll {
namespace autodiff {
namespace utils {

auto pad4d(Value input, ArrayRef<int64_t> pad, OpBuilder& builder,
           float padValue) -> TypedValue<TensorType> {
  if (llvm::all_of(pad, [](auto v) { return v == 0; })) {
    return compat::value_as_tensor(input);
  }

  auto loH = pad[0];
  auto hiH = pad[1];
  auto loW = pad[2];
  auto hiW = pad[3];

  auto loc = input.getLoc();
  auto cst =
      builder.create<arith::ConstantOp>(loc, builder.getF32FloatAttr(padValue))
          .getResult();

  auto type = cast<TensorType>(input.getType());
  auto shape = llvm::to_vector(type.getShape());
  shape[1] += loH + hiH;
  shape[2] += loW + hiW;
  auto padType = RankedTensorType::get(shape, type.getElementType());
  SmallVector<int64_t> lo{0, loH, loW, 0}, hi{0, hiH, hiW, 0};
  auto padded = builder.create<tensor::PadOp>(loc, padType, input, ValueRange{},
                                              ValueRange{}, lo, hi);

  auto* region = &padded.getRegion();
  SmallVector<Type> blockArgTypes(4, builder.getIndexType());
  SmallVector<Location> blockArgLocs(4, loc);

  OpBuilder::InsertionGuard guard{builder};
  builder.createBlock(region, region->end(), blockArgTypes, blockArgLocs);
  builder.create<tensor::YieldOp>(loc, cst);
  return compat::value_as_tensor(padded.getResult());
}

auto unpad4d(Value input, ArrayRef<int64_t> pad, OpBuilder& builder)
    -> TypedValue<TensorType> {
  if (llvm::all_of(pad, [](auto v) { return v == 0; })) {
    return compat::value_as_tensor(input);
  }

  auto loH = pad[0];
  auto hiH = pad[1];
  auto loW = pad[2];
  auto hiW = pad[3];

  auto loc = input.getLoc();

  auto type = cast<TensorType>(input.getType());
  auto shape = llvm::to_vector(type.getShape());
  shape[1] -= loH + hiH;
  shape[2] -= loW + hiW;
  auto unpadType = RankedTensorType::get(shape, type.getElementType());

  SmallVector<int64_t> offsets{0, loH, loW, 0};
  SmallVector<int64_t> strides(4, 1);

  return compat::value_as_tensor(
      builder
          .create<tensor::ExtractSliceOp>(loc, unpadType, input, ValueRange{},
                                          ValueRange{}, ValueRange{}, offsets,
                                          shape, strides)
          .getResult());
}

} // namespace utils
} // namespace autodiff
} // namespace ragdoll 
} // namespace mlir
