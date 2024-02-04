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


// ========================================================================
// FUNCTION: autodiff op to tosa op
// 1. autodiff.accumulateop to tosa.addop
// ========================================================================
def AutodiffToTosa : Pass<"ragdoll-convert-autodiff-to-tosa"> {
    let summary = "Convert Autodiff dialect to Tosa dialect";

    let constructor = "mlir::ragdoll::autodiff::createAutodiffToTosa()";
    let dependentDialects = ["mlir::tosa::TosaDialect"];
}

// ========================================================================
// FUNCTION: autodiff op to arith op
// 1. autodiff.accumulate-op -> arith.addi/addf-op
// ========================================================================
def AutodiffToArith : Pass<"ragdoll-convert-autodiff-to-arith"> {
    let summary = "Convert Autodiff dialect to Arith dialect";

    let constructor = "mlir::ragdoll::autodiff::createAutodiffToArith()";
    let dependentDialects = ["mlir::arith::ArithDialect"];
}

// ========================================================================
// FUNCTION: raise linalg to tosa
// 1. arith/math.element-op -> tosa.element-op
// ========================================================================
def LinalgToTosa : Pass<"ragdoll-raise-linalg-to-tosa"> {
    let summary = "Raise Linalg dialect to Tosa dialect";

    let constructor = "mlir::ragdoll::autodiff::createLinalgToTosa()";
    let dependentDialects = ["mlir::tosa::TosaDialect", "mlir::linalg::LinalgDialect"];
}

// ========================================================================
// FUNCTION: tosa op to tensor op supplements for autodiff
// 1. tosa.concat-op -> tensor.insert-slice-op
// ========================================================================
def TosaToTensor : Pass<"ragdoll-convert-tosa-to-tensor"> {
    let summary = "Lower Tosa dialect partially";

    let constructor = "mlir::ragdoll::autodiff::createTosaToTensorPass()";
    let dependentDialects = ["mlir::tosa::TosaDialect"];
}

// ========================================================================
// FUNCTION: autodiff op to func op
// ========================================================================
def AutodiffToFunc : Pass<"ragdoll-convert-autodiff-to-func"> {
    let summary = "Convert Autodiff dialect to Func dialect";

    let constructor = "mlir::ragdoll::autodiff::createAutodiffToFunc()";
    let dependentDialects = ["mlir::func::FuncDialect"];
}

// ========================================================================
// FUNCTION: lower tosa-ext to tosa
// 1. softmax
// 2. nllloss
// 3. cross-entropy
// ========================================================================
def TosaExtToTosa : Pass<"ragdoll-convert-tosaext-to-tosa"> {
  let summary = "lowering TosaExt dialect to TOSA dialect";
  let constructor = "mlir::ragdoll::tosaext::createTosaExtToTosaPass()";
  let dependentDialects = ["mlir::tosa::TosaDialect"];
}

// ========================================================================
// FUNCTION: lower tosa-ext to mlprogram
// 1. parameter -> global load
// 2. parameter update -> global store
// ========================================================================
def TosaExtToMLProgram : Pass<"ragdoll-convert-tosaext-to-mlprogram"> {
  let summary = "lowering TosaExt parameters to MLProgram parameters";
  let constructor = "mlir::ragdoll::tosaext::createTosaExtToMLProgramPass()";
  let dependentDialects = ["mlir::ml_program::MLProgramDialect"];
}

#endif // RAGDOLL_CONVERSION_PASSES


