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

#ifndef TOSAEXT_OPTIMISATION_PASSES_H_
#define TOSAEXT_OPTIMISATION_PASSES_H_

#include "mlir/Dialect/Linalg/Transforms/Transforms.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassOptions.h"
#include "mlir/Support/LLVM.h"
#include "mlir/Transforms/DialectConversion.h"

namespace mlir {
namespace tosaext {

// Declare your pass entry
std::unique_ptr<Pass> createLower();
std::unique_ptr<Pass> createParameterLower();

//===----------------------------------------------------------------------===//
// Handle table-gen pass decls and registrations
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// Declaration
//===----------------------------------------------------------------------===//

#define GEN_PASS_DECL_TOSAEXTLOWER
#define GEN_PASS_DECL_TOSAEXTPARAMETERLOWER
#include "Optimisation/Passes.h.inc"

} // namespace tosaext
} // namespace mlir

#endif // TOSAEXT_OPTIMISATION_PASSES_H_
