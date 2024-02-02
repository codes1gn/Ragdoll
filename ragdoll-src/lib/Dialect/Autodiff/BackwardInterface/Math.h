#ifndef RAGDOLL_DIALECT_AUTODIFF_BACKWARDINTERFACE_MATH_H
#define RAGDOLL_DIALECT_AUTODIFF_BACKWARDINTERFACE_MATH_H

#include "Dialect/Autodiff/AutodiffInterface.h"

namespace mlir {
namespace ragdoll {
namespace autodiff {

void registerMathBackwardInterface(DialectRegistry& registry);

} // namespace autodiff
} // namespace ragdoll
} // namespace mlir

#endif // RAGDOLL_DIALECT_AUTODIFF_BACKWARDINTERFACE_MATH_H
