#ifndef RAGDOLL_DIALECT_AUTODIFF_BACKWARDINTERFACE_FUNC_H
#define RAGDOLL_DIALECT_AUTODIFF_BACKWARDINTERFACE_FUNC_H

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir {
namespace ragdoll {
namespace autodiff {

void registerFuncBackwardInterface(DialectRegistry& registry);

} // namespace autodiff
} // namespace ragdoll 
} // namespace mlir

#endif // RAGDOLL_DIALECT_AUTODIFF_BACKWARDINTERFACE_FUNC_H
