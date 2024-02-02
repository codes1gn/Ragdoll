#ifndef RAGDOLL_DIALECT_AUTODIFF_BACKWARDINTERFACE_AUTODIFFEXPERIMENTAL_H
#define RAGDOLL_DIALECT_AUTODIFF_BACKWARDINTERFACE_AUTODIFFEXPERIMENTAL_H

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir {
namespace ragdoll {
namespace autodiff {

auto registerAutodiffBackwardInterface(DialectRegistry& registry) -> void;

} // namespace autodiff
} // namespace ragdoll
} // namespace mlir

#endif // RAGDOLL_DIALECT_AUTODIFF_BACKWARDINTERFACE_AUTODIFFEXPERIMENTAL_H
