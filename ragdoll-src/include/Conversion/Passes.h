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

#ifndef TOSAEXT_CONVERSION_PASSES_H_
#define TOSAEXT_CONVERSION_PASSES_H_

#include "mlir/Dialect/Linalg/Transforms/Transforms.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassOptions.h"
#include "mlir/Support/LLVM.h"
#include "mlir/Transforms/DialectConversion.h"

// this is the include setting without the need to add extra include directory
// sourcing from ${PROJECT_SOURCE_DIR}/tosaext-src/include
// Advantage: allow for cross-module references
#include "Dialect/Autodiff/AutodiffDialect.h"
#include "Dialect/TosaExt/TosaExtDialect.h"

namespace mlir {
namespace tosaext {

// Declare your pass entry
std::unique_ptr<OperationPass<mlir::func::FuncOp>> createRagdollDummyPass();
std::unique_ptr<Pass> createLower();
std::unique_ptr<Pass> createParameterLower();

//===----------------------------------------------------------------------===//
// Handle table-gen pass decls and registrations
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// Declaration
//===----------------------------------------------------------------------===//

#define GEN_PASS_DECL
#include "Conversion/Passes.h.inc"

//===----------------------------------------------------------------------===//
// Registration
//===----------------------------------------------------------------------===//
//
#define GEN_PASS_REGISTRATION
#include "Conversion/Passes.h.inc"

} // namespace tosaext

} // namespace mlir

#endif // TOSAEXT_CONVERSION_PASSES_H_
