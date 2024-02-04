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

#ifndef RAGDOLL_CONVERSION_PASSES_H_
#define RAGDOLL_CONVERSION_PASSES_H_

#include "mlir/Dialect/Linalg/Transforms/Transforms.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassOptions.h"
#include "mlir/Support/LLVM.h"
#include "mlir/Transforms/DialectConversion.h"

// this is the include setting without the need to add extra include directory
// sourcing from ${PROJECT_SOURCE_DIR}/ragdoll-src/include
// Advantage: allow for cross-module references
#include "Conversion/AutodiffToArith/AutodiffToArith.h"
#include "Conversion/AutodiffToFunc/AutodiffToFunc.h"
#include "Conversion/AutodiffToTosa/AutodiffToTosa.h"
#include "Conversion/LinalgToTosa/LinalgToTosa.h"
#include "Conversion/TosaExtToTosa/TosaExtToTosa.h"
#include "Conversion/TosaToTensor/TosaToTensor.h"

#include "Dialect/Autodiff/AutodiffDialect.h"
#include "Dialect/Ragdoll/RagdollDialect.h"

namespace mlir {
namespace ragdoll {

//===----------------------------------------------------------------------===//
// Registration
//===----------------------------------------------------------------------===//
//
#define GEN_PASS_REGISTRATION
#include "Conversion/Passes.h.inc"

} // namespace ragdoll
} // namespace mlir

#endif // RAGDOLL_CONVERSION_PASSES_H_
