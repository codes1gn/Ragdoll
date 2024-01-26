#pragma once

#include "mlir/Dialect/Tensor/IR/Tensor.h"

namespace mlir::autodiff::utils {

auto pad4d(Value input, ArrayRef<int64_t> pad, OpBuilder& builder,
           float padValue = 0.0) -> TypedValue<TensorType>;

auto unpad4d(Value input, ArrayRef<int64_t> pad, OpBuilder& builder)
    -> TypedValue<TensorType>;

} // namespace mlir::autodiff::utils
