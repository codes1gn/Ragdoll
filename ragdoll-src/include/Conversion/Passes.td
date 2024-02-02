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

def NablaToTosa : Pass<"convert-autodiff-to-tosa"> {
    let summary = "Convert Nabla dialect to Tosa dialect";

    let constructor = "mlir::ragdoll::autodiff::createNablaToTosa()";
    let dependentDialects = ["mlir::tosa::TosaDialect"];
}

def NablaToArith : Pass<"convert-autodiff-to-arith"> {
    let summary = "Convert Nabla dialect to Arith dialect";

    let constructor = "mlir::ragdoll::autodiff::createNablaToArith()";
    let dependentDialects = ["mlir::arith::ArithDialect"];
}

def LinalgToTosa : Pass<"raise-linalg-to-tosa"> {
    let summary = "Raise Linalg dialect to Tosa dialect";

    let constructor = "mlir::ragdoll::autodiff::createLinalgToTosa()";
    let dependentDialects = ["mlir::tosa::TosaDialect", "mlir::linalg::LinalgDialect"];
}

def LowerTosa : Pass<"lower-tosa"> {
    let summary = "Lower Tosa dialect partially";

    let constructor = "mlir::ragdoll::autodiff::createLowerTosa()";
    let dependentDialects = ["mlir::tosa::TosaDialect"];
}

def NablaToFunc : Pass<"convert-autodiff-to-func"> {
    let summary = "Convert Nabla dialect to Func dialect";

    let constructor = "mlir::ragdoll::autodiff::createNablaToFunc()";
    let dependentDialects = ["mlir::func::FuncDialect"];
}

def TosaExtToTosa : Pass<"ragdoll-tosaext-to-tosa"> {
  let summary = "lowering TosaExt dialect to TOSA dialect";
  let constructor = "mlir::ragdoll::tosaext::createTosaExtToTosaPass()";
  let dependentDialects = ["mlir::tosa::TosaDialect"];
}


#endif // RAGDOLL_CONVERSION_PASSES


