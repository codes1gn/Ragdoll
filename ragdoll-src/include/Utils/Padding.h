#ifndef RAGDOLL_UTILS_PADDING_H
#define RAGDOLL_UTILS_PADDING_H

#include "mlir/Dialect/Tensor/IR/Tensor.h"

namespace mlir {
namespace ragdoll {
namespace autodiff {
namespace utils {

auto pad4d(Value input, ArrayRef<int64_t> pad, OpBuilder& builder,
           float padValue = 0.0) -> TypedValue<TensorType>;

auto unpad4d(Value input, ArrayRef<int64_t> pad, OpBuilder& builder)
    -> TypedValue<TensorType>;

} // namespace utils
} // namespace autodiff
} // namespace ragdoll 
} // namespace mlir

#endif // RAGDOLL_UTILS_PADDING_H
