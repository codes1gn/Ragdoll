#ifndef RAGDOLL_CONVERSION_AUTODIFFTOARITH_AUTODIFFTOARITH_H_
#define RAGDOLL_CONVERSION_AUTODIFFTOARITH_AUTODIFFTOARITH_H_

#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/IR/DialectRegistry.h"
#include "mlir/Pass/Pass.h"

namespace mlir::ragdoll::autodiff {

#define GEN_PASS_DECL_AUTODIFFTOARITH
#include "Conversion/Passes.h.inc"

std::unique_ptr<Pass> createAutodiffToArith();

} // namespace mlir::ragdoll::autodiff

#endif // RAGDOLL_CONVERSION_AUTODIFFTOARITH_AUTODIFFTOARITH_H_
