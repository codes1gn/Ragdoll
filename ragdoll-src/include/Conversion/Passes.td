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


// def RagdollDummyPass : Pass<"ragdoll-dummy-pass", "mlir::func::FuncOp"> {
//   let summary = "Dummy pass boilerplate";
//   let constructor = "mlir::ragdoll::foobar::createRagdollDummyPass()";
//   let options = [
//     Option<"optionName", "option-name", "uint64_t", /*default=*/"512",
//            "Set the option for in KiB (default: 512)">,
//   ];
//   let dependentDialects = ["RagdollDialect"];
// }

def AutodiffToTosa : Pass<"convert-autodiff-to-tosa"> {
    let summary = "Convert Autodiff dialect to Tosa dialect";

    let constructor = "mlir::ragdoll::autodiff::createAutodiffToTosa()";
    let dependentDialects = ["mlir::tosa::TosaDialect"];
}

def AutodiffToArith : Pass<"convert-autodiff-to-arith"> {
    let summary = "Convert Autodiff dialect to Arith dialect";

    let constructor = "mlir::ragdoll::autodiff::createAutodiffToArith()";
    let dependentDialects = ["mlir::arith::ArithDialect"];
}

def LinalgToTosa : Pass<"raise-linalg-to-tosa"> {
    let summary = "Raise Linalg dialect to Tosa dialect";

    let constructor = "mlir::ragdoll::autodiff::createLinalgToTosa()";
    let dependentDialects = ["mlir::tosa::TosaDialect", "mlir::linalg::LinalgDialect"];
}

// ========================================================================
// FUNCTION: tosa op to tensor op supplements for autodiff
// 1. tosa.concat-op -> tensor.insert-slice-op
// ========================================================================
def TosaToTensor : Pass<"convert-tosa-to-tensor"> {
    let summary = "Lower Tosa dialect partially";

    let constructor = "mlir::ragdoll::autodiff::createTosaToTensorPass()";
    let dependentDialects = ["mlir::tosa::TosaDialect"];
}

def AutodiffToFunc : Pass<"convert-autodiff-to-func"> {
    let summary = "Convert Autodiff dialect to Func dialect";

    let constructor = "mlir::ragdoll::autodiff::createAutodiffToFunc()";
    let dependentDialects = ["mlir::func::FuncDialect"];
}

def TosaExtToTosa : Pass<"ragdoll-tosaext-to-tosa"> {
  let summary = "lowering TosaExt dialect to TOSA dialect";
  let constructor = "mlir::ragdoll::tosaext::createTosaExtToTosaPass()";
  let dependentDialects = ["mlir::tosa::TosaDialect"];
}


#endif // RAGDOLL_CONVERSION_PASSES


