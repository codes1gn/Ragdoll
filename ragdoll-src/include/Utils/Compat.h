#ifndef UTILS_COMPAT_H
#define UTILS_COMPAT_H

#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/Value.h"

namespace mlir::autodiff::compat {

// TODO(ccy): refactor
inline auto value_as_tensor(Value value) -> TypedValue<TensorType> {
  return dyn_cast<TypedValue<TensorType>>(value);
}

inline auto type_as_tensor(Type type) -> TensorType {
  return dyn_cast<TensorType>(type);
}

} // namespace mlir::autodiff::compat

#endif // UTILS_COMPAT_H
