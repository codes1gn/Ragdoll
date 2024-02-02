#ifndef RAGDOLL_UTILS_BUILDER_H
#define RAGDOLL_UTILS_BUILDER_H

#include "mlir/Dialect/Arith/IR/Arith.h"

namespace mlir {
namespace ragdoll {
namespace autodiff {

using Tensor = TypedValue<TensorType>;

namespace format {
struct NHWC {
  int64_t batch;
  int64_t height;
  int64_t width;
  int64_t channel;

  explicit NHWC(ArrayRef<int64_t> shape);
  explicit NHWC(ShapedType type);
  explicit NHWC(Tensor tensor);
};

} // namespace format

namespace builder {
namespace tensor {
auto empty(OpBuilder& builder, ShapedType type) -> Tensor;
auto empty(OpBuilder& builder, ArrayRef<int64_t> shape, Type elem) -> Tensor;
auto empty_like(OpBuilder& builder, Tensor tensor) -> Tensor;
auto pad(OpBuilder& builder, Tensor tensor, ArrayRef<int64_t> lo,
         ArrayRef<int64_t> hi, float value = 0.0) -> Tensor;
auto extract_slice(OpBuilder& builder, Tensor tensor, ArrayRef<int64_t> offsets,
                   ArrayRef<int64_t> sizes = {}, ArrayRef<int64_t> strides = {})
    -> Tensor;
} // namespace tensor

namespace linalg {
// TODO(ccy): 添加 concept
template <typename T = arith::AddFOp>
auto reduce(OpBuilder& builder, Tensor tensor, ArrayRef<int64_t> dimentions)
    -> Tensor;

template <typename T = float>
requires std::is_floating_point<T>::value auto fill(OpBuilder& builder,
                                                    Tensor empty, T value = 0.0)
    -> Tensor;
} // namespace linalg

namespace tosa {
// TODO(ccy): infer shape
auto conv2d(OpBuilder& builder, Tensor input, Tensor weight, TensorType type,
            std::optional<Tensor> bias = std::nullopt,
            ArrayRef<int64_t> pad = {0, 0, 0, 0},
            ArrayRef<int64_t> stride = {1, 1},
            ArrayRef<int64_t> dilation = {1, 1}) -> Tensor;

auto transpose_conv2d(OpBuilder& builder, Tensor input, Tensor filter,
                      TensorType type,
                      std::optional<Tensor> bias = std::nullopt,
                      ArrayRef<int64_t> pad = {0, 0, 0, 0},
                      ArrayRef<int64_t> stride = {1, 1}) -> Tensor;

auto transpose(OpBuilder& builder, Tensor input, ArrayRef<int64_t> perms)
    -> Tensor;

auto concat(OpBuilder& builder, ArrayRef<Tensor> tensors, int64_t axis)
    -> Tensor;

auto reduce_sum(OpBuilder& builder, Tensor input, int64_t axis) -> Tensor;
} // namespace tosa

namespace arith {
auto add(OpBuilder& builder, Value lhs, Value rhs) -> Value;
auto mul(OpBuilder& builder, Value lhs, Value rhs) -> Value;
auto greater_equal(OpBuilder& builder, Value lhs, Value rhs) -> Value;
auto select(OpBuilder& builder, Value cond, Value on_true, Value on_false)
    -> Value;
} // namespace arith
} // namespace builder

} // namespace autodiff
} // namespace ragdoll 
} // namespace mlir

#endif // RAGDOLL_UTILS_BUILDER_H
