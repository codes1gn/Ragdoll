#ifndef LIB_AUTODIFF_ADJOINTINTERFACE_LINALG_H
#define LIB_AUTODIFF_ADJOINTINTERFACE_LINALG_H

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir::autodiff {
void registerLinalgAdjointInterface(DialectRegistry& registry);
} // namespace mlir::autodiff

#endif // LIB_AUTODIFF_ADJOINTINTERFACE_LINALG_H
