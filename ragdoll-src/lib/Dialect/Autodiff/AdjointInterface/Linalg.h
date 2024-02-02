#ifndef RAGDOLL_DIALECT_AUTODIFF_ADJOINTINTERFACE_LINALG_H
#define RAGDOLL_DIALECT_AUTODIFF_ADJOINTINTERFACE_LINALG_H

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir {
namespace ragdoll {
namespace autodiff {

void registerLinalgAdjointInterface(DialectRegistry& registry);

} // namespace autodiff
} // namespace ragdoll 
} // namespace mlir

#endif // RAGDOLL_DIALECT_AUTODIFF_ADJOINTINTERFACE_LINALG_H
