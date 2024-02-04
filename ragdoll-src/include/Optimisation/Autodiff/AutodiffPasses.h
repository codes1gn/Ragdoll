//===- Passes.h - Pass Entrypoints ------------------------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This header file defines prototypes that expose pass constructors.
//
//===----------------------------------------------------------------------===//

#ifndef RAGDOLL_OPTIMISATION_AUTODIFF_AUTODIFFPASSES_H_
#define RAGDOLL_OPTIMISATION_AUTODIFF_AUTODIFFPASSES_H_

#include "mlir/Dialect/Linalg/Transforms/Transforms.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassOptions.h"
#include "mlir/Support/LLVM.h"
#include "mlir/Transforms/DialectConversion.h"

namespace mlir {
namespace ragdoll {
namespace autodiff {

// Declare your pass entry
std::unique_ptr<Pass> createAutodiffInline();
std::unique_ptr<Pass> createAutodiffOptimisePass();
std::unique_ptr<Pass> createAutodiffVjpPass();
std::unique_ptr<Pass> createAutodiffVjpPublicFunctionsPass();

//===----------------------------------------------------------------------===//
// Handle table-gen pass decls and registrations
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// Declaration
//===----------------------------------------------------------------------===//

#define GEN_PASS_DECL_AUTODIFFINLINE
#define GEN_PASS_DECL_AUTODIFFOPTIMISE
#define GEN_PASS_DECL_AUTODIFFVJP
#define GEN_PASS_DECL_AUTODIFFVJPPUBLICFUNCTIONS
#include "Optimisation/Passes.h.inc"

} // namespace autodiff
} // namespace ragdoll
} // namespace mlir

#endif // RAGDOLL_OPTIMISATION_AUTODIFF_AUTODIFFPASSES_H_
