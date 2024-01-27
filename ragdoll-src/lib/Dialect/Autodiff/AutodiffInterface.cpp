#include "Dialect/Autodiff/AutodiffInterface.h"

#include "AdjointInterface/Arith.h"
#include "AdjointInterface/Linalg.h"
#include "AdjointInterface/Math.h"
#include "AdjointInterface/Tensor.h"
#include "BackwardInterface/Arith.h"
#include "BackwardInterface/AutodiffExperimental.h"
#include "BackwardInterface/Func.h"
#include "BackwardInterface/Linalg.h"
#include "BackwardInterface/Math.h"
#include "BackwardInterface/SCF.h"
#include "BackwardInterface/Tensor.h"
#include "BackwardInterface/Tosa.h"
#include "BackwardSourceInterface/BackwardSourceInterface.h"

#include "Dialect/Autodiff/AutodiffInterfaces.cpp.inc"

namespace mlir::autodiff {

void registerAdjointInterface(DialectRegistry& registry) {
  registerArithAdjointInterface(registry);
  registerMathAdjointInterface(registry);
  registerLinalgAdjointInterface(registry);
  registerTensorAdjointInterface(registry);
}

void registerBackwardInterface(DialectRegistry& registry) {
  registerArithBackwardInterface(registry);
  registerMathBackwardInterface(registry);
  registerLinalgBackwardInterface(registry);
  registerTensorBackwardInterface(registry);
  registerTosaBackwardInterface(registry);
  registerFuncBackwardInterface(registry);
  registerSCFBackwardInterface(registry);
  registerAutodiffBackwardInterface(registry);
}

void registerBackwardSourceInterface(DialectRegistry& registry) {
  backward_source::registerLinalg(registry);
}

} // namespace mlir::autodiff
