#ifndef LIB_AUTODIFF_BACKWARDINTERFACE_FUNC_H
#define LIB_AUTODIFF_BACKWARDINTERFACE_FUNC_H

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir::autodiff {
void registerFuncBackwardInterface(DialectRegistry& registry);
} // namespace mlir::autodiff

#endif // LIB_AUTODIFF_BACKWARDINTERFACE_FUNC_H
