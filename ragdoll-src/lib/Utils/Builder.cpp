#include "Utils/Builder.h"
#include "Utils/Compat.h"

#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Arith/Utils/Utils.h"
#include "mlir/Dialect/Linalg/IR/Linalg.h"
#include "mlir/Dialect/Tensor/IR/Tensor.h"
#include "mlir/Dialect/Tosa/IR/TosaOps.h"

#include <ranges>

namespace mlir {
namespace ragdoll {
namespace autodiff {

namespace format {

NHWC::NHWC(ArrayRef<int64_t> shape) {
  assert(shape.size() == 4);
  batch = shape[0];
  height = shape[1];
  width = shape[2];
  channel = shape[3];
}

NHWC::NHWC(ShapedType type) : NHWC{type.getShape()} {}
NHWC::NHWC(Tensor tensor) : NHWC{tensor.getType()} {}

} // namespace format

namespace builder {
namespace tensor {

auto empty(OpBuilder& builder, ArrayRef<int64_t> shape, Type elem = nullptr)
    -> Tensor {
  if (elem == nullptr) {
    elem = builder.getF32Type();
  }

  return compat::value_as_tensor(
      builder
          .create<mlir::tensor::EmptyOp>(builder.getUnknownLoc(), shape, elem)
          .getResult());
}

auto empty(OpBuilder& builder, ShapedType type) -> Tensor {
  return empty(builder, type.getShape(), type.getElementType());
}

auto empty_like(OpBuilder& builder, Tensor tensor) -> Tensor {
  return empty(builder, tensor.getType());
}

auto pad(OpBuilder& builder, Tensor tensor, ArrayRef<int64_t> lo,
         ArrayRef<int64_t> hi, float value) -> Tensor {
  auto type = tensor.getType();
  auto rank = type.getRank();
  assert(rank == static_cast<int64_t>(lo.size()));
  assert(rank == static_cast<int64_t>(hi.size()));

  if (llvm::all_of(lo, [](auto it) { return it == 0; }) &&
      llvm::all_of(hi, [](auto it) { return it == 0; })) {
    return tensor;
  }

  auto shape = llvm::to_vector(type.getShape());
  for (auto i : std::views::iota(0, rank)) {
    shape[i] += lo[i] + hi[i];
  }

  auto loc = tensor.getLoc();

  auto padType = RankedTensorType::get(shape, type.getElementType());
  auto padded = builder.create<mlir::tensor::PadOp>(
      loc, padType, tensor, ValueRange{}, ValueRange{}, lo, hi);

  auto cst = builder.create<mlir::arith::ConstantOp>(
      loc, builder.getF32FloatAttr(value));

  auto* region = &padded.getRegion();
  SmallVector<Type> blockArgTypes(rank, builder.getIndexType());
  SmallVector<Location> blockArgLocs(rank, loc);

  OpBuilder::InsertionGuard guard{builder};
  builder.createBlock(region, region->end(), blockArgTypes, blockArgLocs);
  builder.create<mlir::tensor::YieldOp>(loc, cst);
  return compat::value_as_tensor(padded.getResult());
}

auto extract_slice(OpBuilder& builder, Tensor tensor, ArrayRef<int64_t> offsets,
                   ArrayRef<int64_t> sizes, ArrayRef<int64_t> strides)
    -> Tensor {
  auto inTy = tensor.getType();
  auto rank = inTy.getRank();
  assert(static_cast<int64_t>(offsets.size()) == rank);
  assert(sizes.empty() || sizes.size() == offsets.size());
  assert(strides.empty() || strides.size() == offsets.size());

  auto toIndex = [&](ArrayRef<int64_t> vals) {
    SmallVector<OpFoldResult> res;
    res.reserve(vals.size());
    llvm::transform(vals, std::back_inserter(res),
                    [&](auto it) { return builder.getIndexAttr(it); });
    return res;
  };

  auto offsetVec = toIndex(offsets);
  auto sizeVec = toIndex(sizes);
  auto strideVec = toIndex(strides);

  if (sizeVec.empty()) {
    sizeVec.reserve(rank);
    for (auto [dim, offset] : llvm::zip(inTy.getShape(), offsets)) {
      sizeVec.emplace_back(builder.getIndexAttr(dim - offset));
    }
  }

  if (strideVec.empty()) {
    strideVec.reserve(rank);
    std::fill_n(std::back_inserter(strideVec), rank, builder.getIndexAttr(1));
  }

  return compat::value_as_tensor(
      builder
          .create<mlir::tensor::ExtractSliceOp>(builder.getUnknownLoc(), tensor,
                                                offsetVec, sizeVec, strideVec)
          .getResult());
}

} // namespace tensor

namespace linalg {

template <typename T>
auto reduce(OpBuilder& builder, Tensor tensor, ArrayRef<int64_t> dimentions)
    -> Tensor {
  auto type = tensor.getType();

  auto min = std::ranges::min(dimentions);
  auto max = std::ranges::max(dimentions);
  assert(min >= 0 && max < type.getRank());

  DenseSet<int64_t> set{dimentions.begin(), dimentions.end()};

  SmallVector<int64_t> newShape;
  std::ranges::for_each(
      std::views::iota(0, type.getRank()) |
          std::views::filter([&](auto it) { return !set.contains(it); }),
      [&](auto it) { newShape.emplace_back(type.getDimSize(it)); });

  auto empty = tensor::empty(builder, newShape, type.getElementType());
  auto payload = [](OpBuilder& builder, Location loc, ValueRange args) {
    auto res = builder.create<T>(loc, args[0], args[1]).getResult();
    builder.create<mlir::linalg::YieldOp>(loc, res);
  };

  return compat::value_as_tensor(
      builder
          .create<mlir::linalg::ReduceOp>(tensor.getLoc(), tensor, empty,
                                          dimentions, payload)
          ->getResult(0));
}

template auto reduce<mlir::arith::AddFOp>(OpBuilder&, Tensor, ArrayRef<int64_t>)
    -> Tensor;

template <typename T>
requires std::is_floating_point<T>::value auto fill(OpBuilder& builder,
                                                    Tensor empty, T value)
    -> Tensor {
  FloatAttr attr;

  if constexpr (std::is_same<T, float>::value) {
    attr = builder.getF32FloatAttr(value);
  } else if constexpr (std::is_same<T, double>::value) {
    attr = builder.getF64FloatAttr(value);
  } else {
    llvm_unreachable("unsupported type");
  }

  auto loc = empty.getLoc();
  auto cst = builder.create<mlir::arith::ConstantOp>(loc, attr);
  return compat::value_as_tensor(
      builder
          .create<mlir::linalg::FillOp>(loc, ValueRange{cst}, ValueRange{empty})
          ->getResult(0));
}

template auto fill<float>(OpBuilder&, Tensor, float) -> Tensor;
} // namespace linalg

namespace tosa {

auto bias_or_zero(OpBuilder& builder, TensorType type4d,
                  std::optional<Tensor> bias = std::nullopt) -> Tensor {
  if (bias.has_value()) {
    return *bias;
  }

  auto [n, h, w, c] = format::NHWC{type4d};

  return tensor::empty(builder, {c}, type4d.getElementType());
}

auto conv2d(OpBuilder& builder, Tensor input, Tensor weight, TensorType type,
            std::optional<Tensor> bias, ArrayRef<int64_t> pad,
            ArrayRef<int64_t> stride, ArrayRef<int64_t> dilation) -> Tensor {
  return compat::value_as_tensor(
      builder
          .create<mlir::tosa::Conv2DOp>(
              builder.getUnknownLoc(), type, input, weight,
              bias_or_zero(builder, type, bias), pad, stride, dilation, nullptr)
          .getResult());
}

auto transpose_conv2d(OpBuilder& builder, Tensor input, Tensor filter,
                      TensorType type, std::optional<Tensor> bias,
                      ArrayRef<int64_t> pad, ArrayRef<int64_t> stride)
    -> Tensor {
  return compat::value_as_tensor(builder
                                     .create<mlir::tosa::TransposeConv2DOp>(
                                         builder.getUnknownLoc(), type, input,
                                         filter,
                                         bias_or_zero(builder, type, bias), pad,
                                         stride, type.getShape(), nullptr)
                                     .getResult());
}

auto transpose(OpBuilder& builder, Tensor input, ArrayRef<int64_t> perms)
    -> Tensor {
  auto inTy = input.getType();
  auto rank = inTy.getRank();
  assert(std::ranges::is_permutation(std::views::iota(0, rank), perms));

  SmallVector<int64_t> shape(rank, -1);
  for (auto i : std::views::iota(0, rank)) {
    shape[i] = inTy.getDimSize(perms[i]);
  }
  auto type = RankedTensorType::get(shape, inTy.getElementType());

  auto permsTy = RankedTensorType::get({static_cast<int64_t>(perms.size())},
                                       builder.getI64Type());
  auto permsAttr = DenseElementsAttr::get(permsTy, perms);
  auto permsCst = builder.create<mlir::tosa::ConstOp>(builder.getUnknownLoc(),
                                                      permsTy, permsAttr);

  return builder
      .create<mlir::tosa::TransposeOp>(builder.getUnknownLoc(), type, input,
                                       permsCst)
      .getResult();
}

auto concat(OpBuilder& builder, ArrayRef<Tensor> tensors, int64_t axis)
    -> Tensor {
  assert(!tensors.empty());

  auto first = tensors[0];
  auto firstTy = first.getType();
  auto elemTy = firstTy.getElementType();
  auto rank = firstTy.getRank();
  auto shape = llvm::to_vector(firstTy.getShape());

  for (auto i : std::views::iota(1U, tensors.size())) {
    auto tensor = tensors[i];
    auto tensorTy = tensor.getType();
    assert(tensorTy.getElementType() == elemTy);

    auto tensorShape = tensorTy.getShape();
    for (auto j : std::views::iota(0, rank)) {
      if (j == axis) {
        shape[j] += tensorShape[j];
      } else {
        assert(shape[j] == tensorShape[j]);
      }
    }
  }

  SmallVector<Value> values{tensors};

  auto type = RankedTensorType::get(shape, elemTy);
  return builder
      .create<mlir::tosa::ConcatOp>(builder.getUnknownLoc(), type, values, axis)
      .getResult();
}

auto reduce_sum(OpBuilder& builder, Tensor input, int64_t axis) -> Tensor {
  auto inTy = input.getType();
  assert(axis >= 0 && axis < inTy.getRank());

  if (inTy.getDimSize(axis) == 1) {
    return input;
  }

  auto shape = llvm::to_vector(inTy.getShape());
  shape[axis] = 1;
  auto newTy = RankedTensorType::get(shape, inTy.getElementType());

  return builder
      .create<mlir::tosa::ReduceSumOp>(builder.getUnknownLoc(), newTy, input,
                                       axis)
      .getResult();
}

} // namespace tosa

namespace arith {

using mlir::ArithBuilder;

auto add(OpBuilder& builder, Value lhs, Value rhs) -> Value {
  return ArithBuilder{builder, builder.getUnknownLoc()}.add(lhs, rhs);
}

auto mul(OpBuilder& builder, Value lhs, Value rhs) -> Value {
  return ArithBuilder{builder, builder.getUnknownLoc()}.mul(lhs, rhs);
}

auto greater_equal(OpBuilder& builder, Value lhs, Value rhs) -> Value {
  return builder.create<mlir::arith::CmpFOp>(
      builder.getUnknownLoc(), mlir::arith::CmpFPredicate::OGE, lhs, rhs);
}

auto select(OpBuilder& builder, Value cond, Value on_true, Value on_false)
    -> Value {
  return ArithBuilder{builder, builder.getUnknownLoc()}.select(cond, on_true,
                                                               on_false);
}

} // namespace arith
} // namespace builder

} // namespace autodiff
} // namespace ragdoll 
} // namespace mlir
