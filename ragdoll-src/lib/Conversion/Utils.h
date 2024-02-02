#ifndef RAGDOLL_CONVERSION_UTILS_H
#define RAGDOLL_CONVERSION_UTILS_H

#include "mlir/IR/Builders.h"

namespace mlir::ragdoll::autodiff {

template <typename OpTy>
Value accumulate(ValueRange values, OpBuilder& builder) {
  auto accumulation = values[0];
  auto type = accumulation.getType();
  auto loc = builder.getUnknownLoc();

  for (auto i : llvm::seq(1UL, values.size())) {
    accumulation = builder.create<OpTy>(loc, type, accumulation, values[i]);
  }
  return accumulation;
}

} // namespace mlir::ragdoll::autodiff

#endif // RAGDOLL_CONVERSION_UTILS_H
