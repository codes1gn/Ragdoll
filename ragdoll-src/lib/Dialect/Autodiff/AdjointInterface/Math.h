#ifndef LIB_AUTODIFF_ADJOINTINTERFACE_MATH_H
#define LIB_AUTODIFF_ADJOINTINTERFACE_MATH_H

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir::autodiff {
void registerMathAdjointInterface(DialectRegistry& registry);
} // namespace mlir::autodiff

#endif // LIB_AUTODIFF_ADJOINTINTERFACE_MATH_H
