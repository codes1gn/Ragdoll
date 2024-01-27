#ifndef LIB_AUTODIFF_BACKWARDINTERFACE_MATH_H
#define LIB_AUTODIFF_BACKWARDINTERFACE_MATH_H

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir::autodiff {
void registerMathBackwardInterface(DialectRegistry& registry);
} // namespace mlir::autodiff

#endif // LIB_AUTODIFF_BACKWARDINTERFACE_MATH_H
