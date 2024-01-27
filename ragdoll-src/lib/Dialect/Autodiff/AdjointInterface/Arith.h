#ifndef LIB_AUTODIFF_ADJOINTINTERFACE_ARITH_H
#define LIB_AUTODIFF_ADJOINTINTERFACE_ARITH_H

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir::autodiff {
void registerArithAdjointInterface(DialectRegistry& registry);
} // namespace mlir::autodiff

#endif // LIB_AUTODIFF_ADJOINTINTERFACE_ARITH_H
