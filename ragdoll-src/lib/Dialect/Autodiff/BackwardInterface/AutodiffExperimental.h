#ifndef LIB_AUTODIFF_BACKWARDINTERFACE_AUTODIFFEXPERIMENTAL_H
#define LIB_AUTODIFF_BACKWARDINTERFACE_AUTODIFFEXPERIMENTAL_H

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir::autodiff {
auto registerAutodiffBackwardInterface(DialectRegistry& registry) -> void;
} // namespace mlir::autodiff

#endif // LIB_AUTODIFF_BACKWARDINTERFACE_AUTODIFFEXPERIMENTAL_H
