#ifndef RAGDOLL_DIALECT_AUTODIFF_BACKWARDINTERFACE_TOSA_H
#define RAGDOLL_DIALECT_AUTODIFF_BACKWARDINTERFACE_TOSA_H

#include "Dialect/Autodiff/AutodiffInterface.h"
#include "mlir/Dialect/Tosa/IR/TosaOps.h"

namespace mlir {
namespace ragdoll {
namespace autodiff {

void registerTosaBackwardInterface(DialectRegistry& registry);

namespace backward::tosa {

// tosa.conv2d
using mlir::tosa::Conv2DOp;
enum class Conv2DRole : unsigned { INPUT = 0, WEIGHT = 1, BIAS = 2 };
using Conv2DBackward = BackwardTemplate<Conv2DOp, Conv2DRole>;

// tosa.maximum
using mlir::tosa::MaximumOp;
enum class MaximumRole : unsigned { LHS = 0, RHS = 1 };
using MaximumBackward = BackwardTemplate<MaximumOp, MaximumRole>;

// tosa.minumum
using mlir::tosa::MinimumOp;
enum class MinimumRole : unsigned { LHS = 0, RHS = 1 };
using MinimumBackward = BackwardTemplate<MinimumOp, MinimumRole>;

// tosa.max_pool2d
using mlir::tosa::MaxPool2dOp;
enum class MaxPool2dRole : unsigned { INPUT = 0 };
using MaxPool2dBackward = BackwardTemplate<MaxPool2dOp, MaxPool2dRole>;

// tosa.avg_pool2d
using mlir::tosa::AvgPool2dOp;
enum class AvgPool2dRole : unsigned { INPUT = 0 };
using AvgPool2dBackward = BackwardTemplate<AvgPool2dOp, AvgPool2dRole>;

// tosa.fully_connected
using mlir::tosa::FullyConnectedOp;
enum class FullyConnectedRole : unsigned { INPUT = 0, WEIGHT = 1, BIAS = 2 };
using FullyConnectedBackward =
    BackwardTemplate<FullyConnectedOp, FullyConnectedRole>;

} // namespace backward::tosa

} // namespace autodiff
} // namespace ragdoll 
} // namespace mlir

#endif // RAGDOLL_DIALECT_AUTODIFF_BACKWARDINTERFACE_TOSA_H
