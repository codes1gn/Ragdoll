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

#ifndef RAGDOLL_OPTIMISATION_COMMON_COMMONPASSES_H_
#define RAGDOLL_OPTIMISATION_COMMON_COMMONPASSES_H_

#include "mlir/Dialect/Linalg/Transforms/Transforms.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassOptions.h"
#include "mlir/Support/LLVM.h"
#include "mlir/Transforms/DialectConversion.h"

namespace mlir {
namespace ragdoll {

// Declare your pass entry
std::unique_ptr<Pass> createFoldAvgPoolPass();
std::unique_ptr<Pass> createInitialisationPass();
std::unique_ptr<Pass> createLegaliseToIREECompatibilityPass();
std::unique_ptr<Pass> createMergeMultiResultsPass();
std::unique_ptr<Pass> createUnfoldAvgPoolPass();
std::unique_ptr<Pass> createRemoveGlobalsPass();

//===----------------------------------------------------------------------===//
// Declaration
//===----------------------------------------------------------------------===//
#define GEN_PASS_DECL_FOLDAVGPOOL
#define GEN_PASS_DECL_INITIALISATION
#define GEN_PASS_DECL_LEGALISETOIREECOMPATIBILITY
#define GEN_PASS_DECL_MERGEMULTIRESULTS
#define GEN_PASS_DECL_UNFOLDAVGPOOL
#define GEN_PASS_DECL_REMOVEGLOBALS
#include "Optimisation/Passes.h.inc"

} // namespace ragdoll
} // namespace mlir

#endif // RAGDOLL_OPTIMISATION_COMMON_COMMONPASSES_H_
