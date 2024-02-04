#ifndef RAGDOLL_CONVERSION_AUTODIFFTOFUNC_AUTODIFFTOFUNC_H_
#define RAGDOLL_CONVERSION_AUTODIFFTOFUNC_AUTODIFFTOFUNC_H_

#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/IR/DialectRegistry.h"
#include "mlir/Pass/Pass.h"

namespace mlir::ragdoll::autodiff {

#define GEN_PASS_DECL_AUTODIFFTOFUNC
#include "Conversion/Passes.h.inc"

std::unique_ptr<Pass> createAutodiffToFunc();

} // namespace mlir::ragdoll::autodiff

#endif // RAGDOLL_CONVERSION_AUTODIFFTOFUNC_AUTODIFFTOFUNC_H_
