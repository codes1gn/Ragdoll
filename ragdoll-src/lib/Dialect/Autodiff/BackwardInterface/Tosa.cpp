#include "Tosa.hpp"

#include "Utils/Builder.hpp"
#include "Utils/Compat.hpp"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Linalg/IR/Linalg.h"
#include "mlir/Dialect/Tensor/IR/Tensor.h"
#include "mlir/Dialect/Tosa/IR/TosaOps.h"

namespace mlir::autodiff {
namespace tosa {
class AddBackward;
class SubBackward;
class MulBackward;
class ExpBackward;
class LogBackward;
class AbsBackward;
class PowBackward;
class TanhBackward;
class RsqrtBackward;
class ClampBackward;
class NegateBackward;
class SelectBackward;
class MatMulBackward;
class GatherBackward;
class ReshapeBackward;
class SigmoidBackward;
class ScatterBackward;
class ReduceSumBackward;
class ReduceMinBackward;
class ReduceMaxBackward;
class TransposeBackward;
class DeprecatedAvgPool2dBackward;
class DeprecatedMaxPool2dBackward;
class ReciprocalBackward;
} // namespace tosa

using namespace mlir::tosa;

Value getF32Scalar(float value, OpBuilder& builder);
Type getI1TypeLike(Value value, OpBuilder& builder);

void registerTosaBackwardInterface(DialectRegistry& registry) {
  using namespace autodiff::tosa;
  registry.addExtension(+[](MLIRContext* context, TosaDialect*) {
    AddOp::attachInterface<AddBackward>(*context);
    SubOp::attachInterface<SubBackward>(*context);
    MulOp::attachInterface<MulBackward>(*context);
    ExpOp::attachInterface<ExpBackward>(*context);
    LogOp::attachInterface<LogBackward>(*context);
    AbsOp::attachInterface<AbsBackward>(*context);
    PowOp::attachInterface<PowBackward>(*context);
    TanhOp::attachInterface<TanhBackward>(*context);
    RsqrtOp::attachInterface<RsqrtBackward>(*context);
    ClampOp::attachInterface<ClampBackward>(*context);
    NegateOp::attachInterface<NegateBackward>(*context);
    SelectOp::attachInterface<SelectBackward>(*context);
    MatMulOp::attachInterface<MatMulBackward>(*context);
    GatherOp::attachInterface<GatherBackward>(*context);
    Conv2DOp::attachInterface<backward::tosa::Conv2DBackward>(*context);
    MaximumOp::attachInterface<backward::tosa::MaximumBackward>(*context);
    MinimumOp::attachInterface<backward::tosa::MinimumBackward>(*context);
    ReshapeOp::attachInterface<ReshapeBackward>(*context);
    SigmoidOp::attachInterface<SigmoidBackward>(*context);
    ScatterOp::attachInterface<ScatterBackward>(*context);
    AvgPool2dOp::attachInterface<backward::tosa::AvgPool2dBackward>(*context);
    ReduceSumOp::attachInterface<ReduceSumBackward>(*context);
    ReduceMaxOp::attachInterface<ReduceMaxBackward>(*context);
    ReduceMinOp::attachInterface<ReduceMinBackward>(*context);
    TransposeOp::attachInterface<TransposeBackward>(*context);
    MaxPool2dOp::attachInterface<DeprecatedMaxPool2dBackward>(*context);
    ReciprocalOp::attachInterface<ReciprocalBackward>(*context);
    FullyConnectedOp::attachInterface<backward::tosa::FullyConnectedBackward>(
        *context);
  });
}

Value getF32Scalar(float value, OpBuilder& builder) {
  auto loc = builder.getUnknownLoc();
  auto type = RankedTensorType::get({}, builder.getF32Type());
  auto attr = DenseElementsAttr::get(type, ArrayRef(value));
  return builder.create<ConstOp>(loc, type, attr);
}

Type getI1TypeLike(Value value, OpBuilder& builder) {
  auto valueTy = dyn_cast<ShapedType>(value.getType());
  assert(valueTy && "value must be shaped type");

  auto shape = valueTy.getShape();
  return RankedTensorType::get(shape, builder.getI1Type());
}

namespace tosa {

template <typename T, typename OpTy>
using Backward = BackwardInterface::ExternalModel<T, OpTy>;

/**
 * @brief 简化 tosa.mul 的构造
 *
 * @param lhs
 * @param rhs
 * @param type
 * @param builder
 * @return Value
 */
Value tosaMul(Value lhs, Value rhs, Type type, OpBuilder& builder) {
  auto shift = builder.getI8IntegerAttr(0);
  auto loc = rhs.getLoc();
  return builder.create<MulOp>(loc, type, lhs, rhs, shift);
}

Value tosaMul(Value lhs, Value rhs, OpBuilder& builder) {
  auto lhsType = lhs.getType();
  auto rhsType = rhs.getType();
  assert(lhsType == rhsType && "lhs and rhs must have same type");
  return tosaMul(lhs, rhs, lhsType, builder);
}

/**
 * @brief 简化 tensor.empty 的构造
 *
 * @param shape
 * @param elemTy
 * @param builder
 * @return Value
 */
Value tensorEmpty(ArrayRef<int64_t> shape, Type elemTy, OpBuilder& builder) {
  auto loc = builder.getUnknownLoc();
  return builder.create<tensor::EmptyOp>(loc, shape, elemTy).getResult();
}

Value tensorEmpty(ShapedType type, OpBuilder& builder) {
  return tensorEmpty(type.getShape(), type.getElementType(), builder);
}

/**
 * @brief 简化 linalg.reduce 的构造
 *
 */
Value linalgReduceAdd(Value value, ArrayRef<int64_t> dims, OpBuilder& builder) {
  auto type = cast<TensorType>(value.getType());

  // TODO(ccy): 处理非法的 reduce dims
  DenseSet<int64_t> dimsSet;
  for (auto dim : dims) {
    dimsSet.insert(dim);
  }

  SmallVector<int64_t> newShape;
  for (auto [i, dim] : llvm::enumerate(type.getShape())) {
    if (!dimsSet.contains(i)) {
      newShape.emplace_back(dim);
    }
  }

  auto newType = RankedTensorType::get(newShape, type.getElementType());
  auto empty = tensorEmpty(newType, builder);

  constexpr auto add = [](OpBuilder& builder, Location loc, ValueRange args) {
    auto add = builder.create<arith::AddFOp>(loc, args[0], args[1]);
    builder.create<linalg::YieldOp>(loc, ValueRange{add});
  };

  auto loc = value.getLoc();
  return *builder.create<linalg::ReduceOp>(loc, value, empty, dims, add)
              ->result_begin();
}

/**
 * @brief 将高维 value 降低到 rank 维
 *
 * @param value
 * @param rank
 * @param builder
 * @return Value
 */
Value reduceDim(Value value, unsigned rank, OpBuilder& builder) {
  auto type = cast<TensorType>(value.getType());
  if (type.getRank() <= rank) {
    return value;
  }

  auto elemTy = type.getElementType();
  auto shape = type.getShape();
  auto newShape = shape.take_back(rank);

  auto loc = value.getLoc();
  auto empty = tensorEmpty(newShape, elemTy, builder);

  constexpr auto add = [](OpBuilder& builder, Location loc, ValueRange args) {
    auto add = builder.create<arith::AddFOp>(loc, args[0], args[1]);
    builder.create<linalg::YieldOp>(loc, ValueRange{add});
  };

  SmallVector<int64_t> reduceDims =
      llvm::to_vector(llvm::seq<int64_t>(0, type.getRank() - rank));
  return *builder.create<linalg::ReduceOp>(loc, value, empty, reduceDims, add)
              ->result_begin();
}

/**
 * @brief 在指定维度上对 value 进行求和
 *
 * @param value
 * @param dim
 * @param builder
 * @return Value
 */
Value reduceSum(Value value, unsigned dim, OpBuilder& builder) {
  auto type = cast<TensorType>(value.getType());
  assert(type.getRank() > dim && "dim must be less than rank");

  auto shape = llvm::to_vector(type.getShape());
  shape[dim] = 1;
  auto newType = RankedTensorType::get(shape, type.getElementType());

  auto loc = value.getLoc();
  return builder.create<ReduceSumOp>(loc, newType, value, dim);
}

/**
 * @brief 对 value 进行求和使其类型为 type
 *
 * @param value
 * @param type
 * @param builder
 * @return Value
 */
Value reduce(Value value, Type type, OpBuilder& builder) {
  auto fromTy = cast<TensorType>(value.getType());
  if (fromTy == type) {
    return value;
  }

  auto toTy = cast<TensorType>(type);

  // 如果 rank 不同，用 `linalg.reduce` 进行 keepdims=False 的 reduce
  if (fromTy.getRank() != toTy.getRank()) {
    value = reduceDim(value, toTy.getRank(), builder);
    fromTy = cast<TensorType>(value.getType());
  }

  // 如果 rank 相同，用 `tosa.reduce_sum` 进行 keepdims=True 的 reduce
  auto fromShape = fromTy.getShape();
  auto toShape = toTy.getShape();

  for (auto i = 0U; i < fromShape.size(); ++i) {
    if (fromShape[i] != toShape[i]) {
      value = reduceSum(value, i, builder);
    }
  }
  return value;
}

class AddBackward : public Backward<AddBackward, AddOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    return reduce(dtarget, operand.get().getType(), builder);
  }
};

class SubBackward : public Backward<SubBackward, SubOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto index = operand.getOperandNumber();
    if (index == 1) {
      auto loc = dtarget.getLoc();
      auto type = dtarget.getType();
      auto neg = builder.create<NegateOp>(loc, type, dtarget);
      return reduce(neg, operand.get().getType(), builder);
    }
    return reduce(dtarget, operand.get().getType(), builder);
  }
};

class MulBackward : public Backward<MulBackward, MulOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto index = operand.getOperandNumber();
    auto factor = op->getOperand(1 - index);

    auto type = dtarget.getType();
    auto grad = tosaMul(factor, dtarget, type, builder);
    return reduce(grad, operand.get().getType(), builder);
  }
};

class ExpBackward : public Backward<ExpBackward, ExpOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto res = *op->result_begin();
    return tosaMul(res, dtarget, builder);
  }
};

class ReduceSumBackward : public Backward<ReduceSumBackward, ReduceSumOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto rs = cast<ReduceSumOp>(op);
    auto type = cast<TensorType>(rs.getInput().getType());
    auto rank = type.getRank();
    auto axis = rs.getAxis();

    auto map1 = builder.getMultiDimIdentityMap(rank + 1);
    map1 = map1.dropResult(rank);

    DenseMap<AffineExpr, AffineExpr> replace;
    replace[builder.getAffineDimExpr(axis)] = builder.getAffineDimExpr(rank);

    auto map2 = builder.getMultiDimIdentityMap(rank + 1);
    map2 = map2.dropResult(rank);
    map2 = map2.replace(replace);

    SmallVector<AffineMap, 2> indexingMaps{map1, map2};

    using utils::IteratorType;
    SmallVector<IteratorType> iteratorTypes(rank + 1, IteratorType::parallel);
    iteratorTypes[axis] = IteratorType::reduction;

    constexpr auto payload = [](OpBuilder& builder, Location loc,
                                ValueRange args) {
      builder.create<linalg::YieldOp>(loc, args[0]);
    };

    auto loc = dtarget.getLoc();
    auto empty = tensorEmpty(type, builder);
    return *builder
                .create<linalg::GenericOp>(loc, type, dtarget, empty,
                                           indexingMaps, iteratorTypes, payload)
                ->result_begin();
  }
};

class TransposeBackward : public Backward<TransposeBackward, TransposeOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto transpose = cast<TransposeOp>(op);
    auto perms = transpose.getPerms();
    auto tosaConst = perms.getDefiningOp<ConstOp>();
    auto arithConst = perms.getDefiningOp<arith::ConstantOp>();
    assert((tosaConst || arithConst) && "perms must be a constant");

    DenseElementsAttr attr =
        tosaConst ? cast<DenseElementsAttr>(tosaConst.getValue())
                  : cast<DenseElementsAttr>(arithConst.getValue());
    auto values = attr.getValues<IntegerAttr>();
    auto size = values.size();

    SmallVector<int32_t> permTo, permBack(size);
    permTo.reserve(size);

    for (auto iter = values.begin(); iter != values.end(); ++iter) {
      permTo.emplace_back((*iter).getInt());
    }

    for (auto i : llvm::seq(0UL, size)) {
      permBack[permTo[i]] = i;
    }

    auto permsTy = perms.getType();
    DenseElementsAttr newAttr;
    auto permsElemTy = cast<IntegerType>(permsTy.getElementType());
    if (32 == permsElemTy.getWidth()) {
      ArrayRef<int32_t> ref(permBack);
      newAttr = DenseElementsAttr::get(permsTy, ref);
    } else {
      SmallVector<int64_t> ref;
      ref.reserve(permBack.size());
      llvm::copy(permBack, std::back_inserter(ref));
      newAttr = DenseElementsAttr::get(permsTy, ArrayRef<int64_t>(ref));
    }

    auto loc = dtarget.getLoc();
    auto newPerm = builder.create<ConstOp>(loc, permsTy, newAttr);

    auto resTy = operand.get().getType();
    return builder.create<TransposeOp>(loc, resTy, dtarget, newPerm);
  }
};

class ReshapeBackward : public Backward<ReshapeBackward, ReshapeOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto type = cast<TensorType>(operand.get().getType());
    auto loc = dtarget.getLoc();
    return builder.create<ReshapeOp>(loc, type, dtarget, type.getShape());
  }
};

// TODO(ccy): 处理有多个最大值的情况
class ReduceMaxBackward : public Backward<ReduceMaxBackward, ReduceMaxOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto rm = cast<ReduceMaxOp>(op);
    auto in = rm.getInput();
    auto zero = getF32Scalar(0.0, builder);

    auto loc = dtarget.getLoc();
    auto flagTy = getI1TypeLike(in, builder);
    auto flag = builder.create<EqualOp>(loc, flagTy, in, rm.getResult());

    return builder.create<SelectOp>(loc, in.getType(), flag, dtarget, zero);
  }
};

class ReduceMinBackward : public Backward<ReduceMinBackward, ReduceMinOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto rm = cast<ReduceMinOp>(op);
    auto in = rm.getInput();
    auto zero = getF32Scalar(0.0, builder);

    auto loc = dtarget.getLoc();
    auto flagTy = getI1TypeLike(in, builder);
    auto flag = builder.create<EqualOp>(loc, flagTy, in, rm.getResult());

    return builder.create<SelectOp>(loc, in.getType(), flag, dtarget, zero);
  }
};

class LogBackward : public Backward<LogBackward, LogOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto in = operand.get();
    auto loc = dtarget.getLoc();
    auto reciprocal = builder.create<ReciprocalOp>(loc, in.getType(), in);
    return tosaMul(reciprocal, dtarget, builder);
  }
};

class NegateBackward : public Backward<NegateBackward, NegateOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    return builder.create<NegateOp>(dtarget.getLoc(), dtarget.getType(),
                                    dtarget);
  }
};

class AbsBackward : public Backward<AbsBackward, AbsOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto x = operand.get();
    auto zero = getF32Scalar(0.0, builder);

    auto loc = dtarget.getLoc();
    auto flagTy = getI1TypeLike(x, builder);
    auto flag = builder.create<GreaterEqualOp>(loc, flagTy, x, zero);
    return builder.create<SelectOp>(loc, x.getType(), flag, dtarget, zero);
  }
};

class ReciprocalBackward : public Backward<ReciprocalBackward, ReciprocalOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto x = operand.get();
    auto type = x.getType();
    auto loc = dtarget.getLoc();

    auto sqr = tosaMul(x, x, builder);
    auto neg = builder.create<NegateOp>(loc, type, sqr);
    auto rec = builder.create<ReciprocalOp>(loc, type, neg);
    return tosaMul(rec, dtarget, builder);
  }
};

class RsqrtBackward : public Backward<RsqrtBackward, RsqrtOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto x = operand.get();
    auto type = x.getType();
    auto loc = dtarget.getLoc();

    constexpr auto HALF = 0.5;
    constexpr auto ONE_AND_A_HALF = 1.5;

    auto negHalf = getF32Scalar(-HALF, builder);
    auto negOneAndAHalf = getF32Scalar(-ONE_AND_A_HALF, builder);
    auto pow = builder.create<PowOp>(loc, type, x, negOneAndAHalf);
    auto mul = tosaMul(pow, negHalf, type, builder);
    return tosaMul(mul, dtarget, builder);
  }
};

class SelectBackward : public Backward<SelectBackward, SelectOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto select = cast<SelectOp>(op);
    auto type = select.getType();
    auto loc = dtarget.getLoc();

    auto pred = select.getPred();
    if (operand.getOperandNumber() == 2) {
      pred = builder.create<LogicalNotOp>(loc, pred.getType(), pred);
    }

    auto zero = getF32Scalar(0.0, builder);
    return builder.create<SelectOp>(loc, type, pred, dtarget, zero);
  }
};

class MatMulBackward : public Backward<MatMulBackward, MatMulOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto loc = dtarget.getLoc();
    auto lhs = op->getOperand(0);
    auto rhs = op->getOperand(1);

    auto permsTy = RankedTensorType::get({3}, builder.getI32Type());
    auto permsAttr = DenseElementsAttr::get(permsTy, {0, 2, 1});
    auto perms = builder.create<ConstOp>(loc, permsTy, permsAttr);

    auto getTransposeType = [](Type type) {
      auto newType = type.cast<TensorType>();
      auto shape = newType.getShape();
      SmallVector<int64_t, 3> newShape;
      for (auto i : {0, 2, 1}) {
        newShape.emplace_back(shape[i]);
      }
      return RankedTensorType::get(newShape, newType.getElementType());
    };

    if (operand.getOperandNumber() == 0) {
      // A @ B = C -> dA = dC @ B^T
      auto rhsTy = cast<TensorType>(rhs.getType());
      auto newTy = getTransposeType(rhsTy);
      auto transRhs = builder.create<TransposeOp>(loc, newTy, rhs, perms);
      return builder.create<MatMulOp>(loc, lhs.getType(), dtarget, transRhs);
    }

    // A @ B = C -> dB = A^T @ dC
    auto lhsTy = cast<TensorType>(lhs.getType());
    auto newTy = getTransposeType(lhsTy);
    auto transLhs = builder.create<TransposeOp>(loc, newTy, lhs, perms);
    return builder.create<MatMulOp>(loc, rhs.getType(), transLhs, dtarget);
  }
};

class Pool2dUtils {
public:
  static auto pad(Value input, ArrayRef<int64_t> pad, OpBuilder& builder,
                  float padValue = 0.0) -> TypedValue<TensorType> {
    if (llvm::all_of(pad, [](auto v) { return v == 0; })) {
      return compat::value_as_tensor(input);
    }

    auto loH = pad[0];
    auto hiH = pad[1];
    auto loW = pad[2];
    auto hiW = pad[3];

    auto loc = input.getLoc();
    auto cst =
        builder
            .create<arith::ConstantOp>(loc, builder.getF32FloatAttr(padValue))
            .getResult();

    auto type = cast<TensorType>(input.getType());
    auto shape = llvm::to_vector(type.getShape());
    shape[1] += loH + hiH;
    shape[2] += loW + hiW;
    auto padType = RankedTensorType::get(shape, type.getElementType());
    SmallVector<int64_t> lo{0, loH, loW, 0}, hi{0, hiH, hiW, 0};
    auto padded = builder.create<tensor::PadOp>(
        loc, padType, input, ValueRange{}, ValueRange{}, lo, hi);

    auto* region = &padded.getRegion();
    SmallVector<Type> blockArgTypes(4, builder.getIndexType());
    SmallVector<Location> blockArgLocs(4, loc);

    OpBuilder::InsertionGuard guard{builder};
    builder.createBlock(region, region->end(), blockArgTypes, blockArgLocs);
    builder.create<tensor::YieldOp>(loc, cst);
    return compat::value_as_tensor(padded.getResult());
  }

  static auto unpad(Value input, ArrayRef<int64_t> pad, OpBuilder& builder)
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

  struct Pool2dMaps {
    AffineMap input;
    AffineMap kernel;
    AffineMap result;

    static auto from(ArrayRef<int64_t> strides, OpBuilder& builder)
        -> Pool2dMaps {
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

      return Pool2dMaps{input, kernel, result};
    }
  };
};
class SigmoidBackward : public Backward<SigmoidBackward, SigmoidOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto sigmoid = cast<SigmoidOp>(op);
    auto lhs = sigmoid.getResult();
    auto one = getF32Scalar(1.0, builder);
    auto loc = dtarget.getLoc();
    auto type = dtarget.getType();
    auto rhs = builder.create<SubOp>(loc, type, one, lhs);
    return tosaMul(tosaMul(lhs, rhs, builder), dtarget, builder);
  }
};

class TanhBackward : public Backward<TanhBackward, TanhOp> {
public:
  static Value backward(Operation* op, Value dtarget, OpOperand& operand,
                        OpBuilder& builder) {
    auto tanh = cast<TanhOp>(op);
    auto square = tosaMul(tanh, tanh, builder);
    auto one = getF32Scalar(1.0, builder);
    auto loc = dtarget.getLoc();
    auto type = square.getType();
    auto sub = builder.create<SubOp>(loc, type, one, square);
    return tosaMul(sub, dtarget, builder);
  }
};

class GatherBackward : public Backward<GatherBackward, GatherOp> {
public:
  static auto backward(Operation* op, Value dtarget, OpOperand& operand,
                       OpBuilder& builder) -> Value {
    if (operand.getOperandNumber() == 1) {
      return nullptr;
    }
    auto gather = cast<GatherOp>(op);
    auto values = gather.getValues();
    auto valuesTy = cast<TensorType>(values.getType());
    auto empty = tensorEmpty(valuesTy, builder);
    auto indices = gather.getIndices();
    return builder.create<ScatterOp>(dtarget.getLoc(), valuesTy, empty, indices,
                                     dtarget);
  }
};

class ScatterBackward : public Backward<ScatterBackward, ScatterOp> {
private:
  static auto dValuesIn(ScatterOp scatter, Value dtarget, OpBuilder& builder)
      -> Value {
    auto valuesIn = scatter.getValuesIn();
    auto result = scatter.getResult();

    auto loc = dtarget.getLoc();
    auto type = valuesIn.getType();
    auto flagTy = getI1TypeLike(valuesIn, builder);
    auto isEqual = builder.create<EqualOp>(loc, flagTy, valuesIn, result);

    auto zero = getF32Scalar(0.0, builder);
    return builder.create<SelectOp>(loc, type, isEqual, dtarget, zero);
  }

  static auto dInput(ScatterOp scatter, Value dtarget, OpBuilder& builder)
      -> Value {
    auto input = scatter.getInput();
    auto inputTy = input.getType();
    auto indices = scatter.getIndices();
    return builder.create<GatherOp>(dtarget.getLoc(), inputTy, dtarget,
                                    indices);
  }

public:
  static auto backward(Operation* op, Value dtarget, OpOperand& operand,
                       OpBuilder& builder) -> Value {
    auto scatter = cast<ScatterOp>(op);
    switch (operand.getOperandNumber()) {
    case 0:
      return dValuesIn(scatter, dtarget, builder);
    case 2:
      return dInput(scatter, dtarget, builder);
    default:
      return nullptr;
    }
  }
};

// TODO(ccy): 使用 Pool2dUtils 重写
class DeprecatedAvgPool2dBackward
    : public Backward<DeprecatedAvgPool2dBackward, AvgPool2dOp> {
public:
  static auto backward(Operation* op, Value dtarget, OpOperand& operand,
                       OpBuilder& builder) -> Value {
    auto avgpool = cast<AvgPool2dOp>(op);
    auto dinput = limitedImplementation(avgpool, dtarget, builder);

    if (!dinput.has_value()) {
      op->emitError()
          << "only supported with kernel = (H, W) and padding = 0\n";
      return nullptr;
    }

    return *dinput;
  }

private:
  /**
   * @brief 仅支持对 kernel = (H, W), padding = 0 的反向
   *
   * @param avgpool
   * @param dtarget
   * @param builder
   * @return Value
   */
  static auto limitedImplementation(AvgPool2dOp avgpool, Value dtarget,
                                    OpBuilder& builder)
      -> std::optional<Value> {
    auto input = avgpool.getInput();
    auto inputTy = cast<TensorType>(input.getType());
    auto height = inputTy.getDimSize(1);
    auto width = inputTy.getDimSize(2);

    auto kernel = avgpool.getKernel();
    if (kernel[0] != height || kernel[1] != width) {
      return std::nullopt;
    }

    auto pad = avgpool.getPad();
    if (llvm::any_of(pad, [](auto size) { return size != 0; })) {
      return std::nullopt;
    }

    auto loc = dtarget.getLoc();

    auto kernelArea = 1.0 / static_cast<double>(height * width);
    auto constant = builder.create<ConstOp>(
        loc, inputTy,
        DenseElementsAttr::get(inputTy, static_cast<float>(kernelArea)));
    return tosaMul(constant, dtarget, inputTy, builder);
  }
};

class ClampBackward : public Backward<ClampBackward, ClampOp> {
public:
  static auto backward(Operation* op, Value dtarget, OpOperand& operand,
                       OpBuilder& builder) -> Value {
    auto clamp = cast<ClampOp>(op);
    auto input = clamp.getInput();
    auto output = clamp.getOutput();

    auto loc = dtarget.getLoc();
    auto isEqual = builder.create<EqualOp>(loc, getI1TypeLike(input, builder),
                                           input, output);
    auto onFalse = getF32Scalar(0.0, builder);
    return builder.create<SelectOp>(loc, input.getType(), isEqual, dtarget,
                                    onFalse);
  }
};

class DeprecatedMaxPool2dBackward
    : public Backward<DeprecatedMaxPool2dBackward, MaxPool2dOp> {
public:
  static auto backward(Operation* op, Value dtarget, OpOperand& operand,
                       OpBuilder& builder) -> Value {
    auto maxpool = cast<MaxPool2dOp>(op);
    auto input = maxpool.getInput();
    auto padded = Pool2dUtils::pad(input, maxpool.getPad(), builder,
                                   std::numeric_limits<float>::lowest());
    auto paddedTy = padded.getType();
    auto dPaddedEmp = tensorEmpty(paddedTy, builder);

    auto kernelArray = maxpool.getKernel();
    auto kernel = tensorEmpty(kernelArray, paddedTy.getElementType(), builder);

    // 构建 linalg.generic 进行反向计算
    SmallVector<utils::IteratorType, 6> iteratorTypes;
    iteratorTypes.emplace_back(utils::IteratorType::parallel);
    iteratorTypes.emplace_back(utils::IteratorType::reduction);
    iteratorTypes.emplace_back(utils::IteratorType::reduction);
    iteratorTypes.emplace_back(utils::IteratorType::parallel);
    iteratorTypes.emplace_back(utils::IteratorType::reduction);
    iteratorTypes.emplace_back(utils::IteratorType::reduction);

    SmallVector<Value> inputs{padded, kernel, maxpool.getResult(), dtarget};
    SmallVector<Value> outputs{dPaddedEmp};
    SmallVector<Type> types{dPaddedEmp.getType()};

    auto [paddedMap, kernelMap, resultMap] =
        Pool2dUtils::Pool2dMaps::from(maxpool.getStride(), builder);
    SmallVector<AffineMap> indexingMaps{paddedMap, kernelMap, resultMap,
                                        resultMap, paddedMap};

    auto loc = dtarget.getLoc();
    auto zero =
        builder.create<arith::ConstantOp>(loc, builder.getF32FloatAttr(0.0));

    auto payload = [&](OpBuilder& builder, Location loc, ValueRange args) {
      auto paddedValue = args[0];
      auto resultValue = args[2];
      auto dresultValue = args[3];
      auto dpaddedValue = args[4];

      auto isEqual = builder.create<arith::CmpFOp>(
          loc, arith::CmpFPredicate::OGE, paddedValue, resultValue);
      auto select =
          builder.create<arith::SelectOp>(loc, isEqual, dresultValue, zero);
      auto sum = builder.create<arith::AddFOp>(loc, dpaddedValue, select);
      builder.create<linalg::YieldOp>(loc, sum.getResult());
    };

    auto generic = builder.create<linalg::GenericOp>(
        loc, types, inputs, outputs, indexingMaps, iteratorTypes, payload);

    return Pool2dUtils::unpad(generic.getResult(0), maxpool.getPad(), builder);
  }
};

class PowBackward : public Backward<PowBackward, PowOp> {
public:
  static auto backward(Operation* op, Value dtarget, OpOperand& operand,
                       OpBuilder& builder) -> Value {
    auto pow = cast<PowOp>(op);
    auto index = operand.getOperandNumber();

    if (index == 0) {
      auto lhs = pow.getInput1();
      auto rhs = pow.getInput2();
      auto one = getF32Scalar(1.0, builder);
      // rhs - 1
      auto diff =
          builder.create<SubOp>(dtarget.getLoc(), rhs.getType(), rhs, one);
      // lhs ^ (rhs - 1)
      auto pow =
          builder.create<PowOp>(dtarget.getLoc(), lhs.getType(), lhs, diff);
      // lhs ^ (rhs - 1) * rhs
      return tosaMul(pow, rhs, builder);
    }

    // index == 1
    return reduce(dtarget, operand.get().getType(), builder);
  }
};

} // namespace tosa
} // namespace mlir::autodiff
