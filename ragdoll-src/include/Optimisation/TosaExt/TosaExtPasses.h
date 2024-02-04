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

#ifndef RAGDOLL_OPTIMISATION_TOSAEXT_TOSAEXTPASSES_H_
#define RAGDOLL_OPTIMISATION_TOSAEXT_TOSAEXTPASSES_H_

#include "mlir/Dialect/Linalg/Transforms/Transforms.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassOptions.h"
#include "mlir/Support/LLVM.h"
#include "mlir/Transforms/DialectConversion.h"

namespace mlir {
namespace ragdoll {
namespace tosaext {

// Declare your pass entry
// TODO move to conversions
// std::unique_ptr<Pass> createTosaExtToMLProgramPass();

//===----------------------------------------------------------------------===//
// Handle table-gen pass decls and registrations
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// Declaration
//===----------------------------------------------------------------------===//

// #define GEN_PASS_DECL_TOSAEXTTOMLPROGRAM
// #include "Optimisation/Passes.h.inc"

} // namespace tosaext
} // namespace ragdoll
} // namespace mlir

#endif // RAGDOLL_OPTIMISATION_TOSAEXT_TOSAEXTPASSES_H_
