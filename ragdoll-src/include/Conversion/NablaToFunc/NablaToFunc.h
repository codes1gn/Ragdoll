#ifndef RAGDOLL_CONVERSION_NABLATOFUNC_NABLATOFUNC_H_
#define RAGDOLL_CONVERSION_NABLATOFUNC_NABLATOFUNC_H_

#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/IR/DialectRegistry.h"
#include "mlir/Pass/Pass.h"

namespace mlir::ragdoll::autodiff {

#define GEN_PASS_DECL_NABLATOFUNC
#include "Conversion/Passes.h.inc"

std::unique_ptr<Pass> createNablaToFunc();

} // namespace mlir::ragdoll::autodiff

#endif // RAGDOLL_CONVERSION_NABLATOFUNC_NABLATOFUNC_H_
