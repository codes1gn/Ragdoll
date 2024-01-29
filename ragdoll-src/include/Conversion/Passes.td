//===-- Passes.td - GPU pass definition file ---------------*- tablegen -*-===//
// Copyright 2023 Enflame Revolutionary Academy
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef RAGDOLL_CONVERSION_PASSES
#define RAGDOLL_CONVERSION_PASSES

include "mlir/Pass/PassBase.td"

// --------------------------------------------------------------------------
// Dummy Passes
// --------------------------------------------------------------------------

// TODO rename to TosaExtToTosaLowering
def TosaExtLower : Pass<"ext-lower"> {
  let summary = "lowering TosaExt dialect to TOSA dialect";
  let constructor = "mlir::tosaext::createLower()";
  let dependentDialects = ["mlir::tosa::TosaDialect"];
}

// TODO rename to MLProgramToTosaExtLowering
def TosaExtParameterLower : Pass<"tosaext-parameter-lower"> {
  let summary = "lowering TosaExt parameters to TOSA parameters";
  let constructor = "mlir::tosaext::createParameterLower()";
  let dependentDialects = ["mlir::ml_program::MLProgramDialect"];
}


#endif // RAGDOLL_CONVERSION_PASSES
