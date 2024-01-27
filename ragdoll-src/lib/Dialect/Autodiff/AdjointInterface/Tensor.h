#ifndef LIB_AUTODIFF_ADJOINTINTERFACE_TENSOR_H
#define LIB_AUTODIFF_ADJOINTINTERFACE_TENSOR_H

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir::autodiff {
void registerTensorAdjointInterface(DialectRegistry& registry);
} // namespace mlir::autodiff

#endif // LIB_AUTODIFF_ADJOINTINTERFACE_TENSOR_H
