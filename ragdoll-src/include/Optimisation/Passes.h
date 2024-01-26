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

#ifndef RAGDOLL_OPTIMISATION_PASSES_H_
#define RAGDOLL_OPTIMISATION_PASSES_H_

#include "mlir/Dialect/Linalg/Transforms/Transforms.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassOptions.h"
#include "mlir/Support/LLVM.h"
#include "mlir/Transforms/DialectConversion.h"

// this is the include setting without the need to add extra include directory
// sourcing from ${PROJECT_SOURCE_DIR}/ragdoll-src/include
// Advantage: allow for cross-module references
#include "Dialect/Ragdoll/RagdollDialect.h"


namespace mlir {
namespace ragdoll {

// Declare your pass entry
std::unique_ptr<OperationPass<mlir::func::FuncOp>> createRagdollDummyPass();

//===----------------------------------------------------------------------===//
// Handle table-gen pass decls and registrations
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// Declaration 
//===----------------------------------------------------------------------===//

#define GEN_PASS_DECL
#include "Optimisation/Passes.h.inc"

//===----------------------------------------------------------------------===//
// Registration
//===----------------------------------------------------------------------===//
//
#define GEN_PASS_REGISTRATION
#include "Optimisation/Passes.h.inc"


//===----------------------------------------------------------------------===//
// Classes 
//===----------------------------------------------------------------------===//
//
#define GEN_PASS_CLASSES
#include "Optimisation/Passes.h.inc"

} // namespace ragdoll

} // namespace mlir

#endif // RAGDOLL_OPTIMISATION_PASSES_H_
