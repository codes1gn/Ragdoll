#ifndef RAGDOLL_DIALECT_AUTODIFF_ADJOINTINTERFACE_TENSOR_H
#define RAGDOLL_DIALECT_AUTODIFF_ADJOINTINTERFACE_TENSOR_H

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir {
namespace ragdoll {
namespace autodiff {

void registerTensorAdjointInterface(DialectRegistry& registry);

} // namespace autodiff
} // namespace ragdoll 
} // namespace mlir

#endif // RAGDOLL_DIALECT_AUTODIFF_ADJOINTINTERFACE_TENSOR_H
