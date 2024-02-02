#ifndef RAGDOLL_CONVERSION_NABLATOARITH_NABLATOARITH_H_
#define RAGDOLL_CONVERSION_NABLATOARITH_NABLATOARITH_H_

#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/IR/DialectRegistry.h"
#include "mlir/Pass/Pass.h"

namespace mlir::ragdoll::autodiff {

#define GEN_PASS_DECL_NABLATOARITH
#include "Conversion/Passes.h.inc"

std::unique_ptr<Pass> createNablaToArith();

} // namespace mlir::ragdoll::autodiff

#endif // RAGDOLL_CONVERSION_NABLATOARITH_NABLATOARITH_H_
