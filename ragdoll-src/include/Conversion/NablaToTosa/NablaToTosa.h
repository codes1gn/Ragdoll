#ifndef RAGDOLL_CONVERSION_NABLATOTOSA_NABLATOTOSA_H_
#define RAGDOLL_CONVERSION_NABLATOTOSA_NABLATOTOSA_H_

#include "mlir/Dialect/Tosa/IR/TosaOps.h"
#include "mlir/IR/DialectRegistry.h"
#include "mlir/Pass/Pass.h"

namespace mlir::ragdoll::autodiff {

#define GEN_PASS_DECL_NABLATOTOSA
#include "Conversion/Passes.h.inc"

std::unique_ptr<Pass> createNablaToTosa();

} // namespace mlir::ragdoll::autodiff

#endif // RAGDOLL_CONVERSION_NABLATOTOSA_NABLATOTOSA_H_
