#include "Dialect/Autodiff/AutodiffInterface.h"

#include "AdjointInterface/Arith.hpp"
#include "AdjointInterface/Linalg.hpp"
#include "AdjointInterface/Math.hpp"
#include "AdjointInterface/Tensor.hpp"
#include "BackwardInterface/Arith.hpp"
#include "BackwardInterface/Func.hpp"
#include "BackwardInterface/Linalg.hpp"
#include "BackwardInterface/Math.hpp"
#include "BackwardInterface/NablaExperimental.hpp"
#include "BackwardInterface/SCF.hpp"
#include "BackwardInterface/Tensor.hpp"
#include "BackwardInterface/Tosa.hpp"
#include "BackwardSourceInterface/BackwardSourceInterface.hpp"

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

}  // namespace mlir::autodiff
