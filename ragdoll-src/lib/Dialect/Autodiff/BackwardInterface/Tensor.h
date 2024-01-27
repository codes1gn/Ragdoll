#ifndef LIB_AUTODIFF_BACKWARDINTERFACE_TENSOR_H
#define LIB_AUTODIFF_BACKWARDINTERFACE_TENSOR_H

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir::autodiff {
void registerTensorBackwardInterface(DialectRegistry& registry);
}  // namespace mlir::autodiff

#endif // LIB_AUTODIFF_BACKWARDINTERFACE_TENSOR_H
