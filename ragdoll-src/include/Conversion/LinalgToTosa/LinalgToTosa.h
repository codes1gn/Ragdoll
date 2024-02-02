#ifndef RAGDOLL_CONVERSION_LINALGTOTOSA_LINALGTOTOSA_H_
#define RAGDOLL_CONVERSION_LINALGTOTOSA_LINALGTOTOSA_H_

#include "mlir/Dialect/Linalg/IR/Linalg.h"
#include "mlir/Dialect/Tosa/IR/TosaOps.h"
#include "mlir/IR/DialectRegistry.h"
#include "mlir/Pass/Pass.h"

namespace mlir::ragdoll::autodiff {

#define GEN_PASS_DECL_LINALGTOTOSA
#include "Conversion/Passes.h.inc"

std::unique_ptr<Pass> createLinalgToTosa();

} // namespace mlir::ragdoll::autodiff

#endif // RAGDOLL_CONVERSION_LINALGTOTOSA_LINALGTOTOSA_H_
