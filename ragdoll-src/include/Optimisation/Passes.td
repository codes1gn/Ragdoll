//===-- Passes.td - GPU pass definition file ---------------*- tablegen -*-===//
// Copyright 2023 Enflame Revolutionary Academy
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef RAGDOLL_OPTIMISATION_PASSES
#define RAGDOLL_OPTIMISATION_PASSES

include "mlir/Pass/PassBase.td"

// --------------------------------------------------------------------------
// Dummy Passes
// --------------------------------------------------------------------------

// NOTE: moved to conversions
// def TosaExtToMLProgram : Pass<"ragdoll-tosaext-to-mlprogram"> {
//   let summary = "lowering TosaExt parameters to MLProgram parameters";
//   let constructor = "mlir::ragdoll::tosaext::createTosaExtToMLProgramPass()";
//   let dependentDialects = ["mlir::ml_program::MLProgramDialect"];
// }

// ========================================================================
// FUNCTION: symbolic optimisation on autodiff dialect
// 1. enable fast math
// 2. remove meaningless symbolic calc: x + 0, x * 1
// 3. invariant code motion at autodiff level
// ========================================================================
def AutodiffOptimise : Pass<"ragdoll-autodiff-optimise"> {
  let summary = "Apply optimisations on `linalg.generic` and some other ops";
  let constructor = "mlir::ragdoll::autodiff::createAutodiffOptimisePass()";
}

// ========================================================================
// FUNCTION: build vjp func for input-func
// ========================================================================
def AutodiffVjp : Pass<"ragdoll-autodiff-vjp"> {
  let summary = "Lower `autodiff.vjp` to mlir core dialects";
  let constructor = "mlir::ragdoll::autodiff::createAutodiffVjpPass()";
  let dependentDialects = ["mlir::ragdoll::autodiff::AutodiffDialect", "mlir::ml_program::MLProgramDialect"];
}

// ========================================================================
// FUNCTION: package vjp func to public entry func for export
// ========================================================================
def AutodiffVjpPublicFunctions : Pass<"ragdoll-autodiff-vjp-public-functions"> {
  let summary = "Call `autodiff.vjp` for each public function";
  let constructor = "mlir::ragdoll::autodiff::createAutodiffVjpPublicFunctionsPass()";
  let options = [
    Option<"strategy", "strategy", "std::string", "\"recompute\"", "Set the strategy for vjp">
  ];
  let dependentDialects = ["mlir::ragdoll::autodiff::AutodiffDialect"];
}

// ========================================================================
// FUNCTION: merge the multi-output function into single result one
// purpose = make this function canonicalised for autodiff generation
// ========================================================================
def MergeMultiResults : Pass<"ragdoll-merge-multiple-results"> {
  let summary = "Convert multi-output functions to single-output functions";
  let constructor = "mlir::ragdoll::createMergeMultiResults()";
}

// ========================================================================
// FUNCTION: inline a function call at autodiff level
// purpose = reduce function call overhead
// ========================================================================
def AutodiffInlineFunctionCall : Pass<"ragdoll-autodiff-inline-function-call"> {
  let summary = "Inline functions";
  let constructor = "mlir::ragdoll::autodiff::createAutodiffInlineFunctionCall()";
}

// // TODO: check if ready
// def MakeCompatible : Pass<"autodiff-make-compatible"> {
//   let summary = "Make the IR compatible with IREE runtime";
//   let constructor = "mlir::ragdoll::autodiff::createMakeCompatible()";
//   let dependentDialects = ["mlir::scf::SCFDialect"];
// }


// def LinalgSpecialize : Pass<"autodiff-linalg-specialize"> {
//   let summary = "Transform linalg.generic to named ops";
//   let constructor = "mlir::ragdoll::autodiff::createLinalgSpecialize()";
// }
// 
// def ToDummy : Pass<"autodiff-to-dummy"> {
//   let summary = "Convert primal operations to dummy operations";
//   let constructor = "mlir::ragdoll::autodiff::createToDummy()";
//   let dependentDialects = ["mlir::ragdoll::autodiff::AutodiffDialect"];
// }
// 
// def FromDummy : Pass<"autodiff-from-dummy"> {
//   let summary = "Convert dummy operations to primal operations";
//   let constructor = "mlir::ragdoll::autodiff::createFromDummy()";
//   let dependentDialects = ["mlir::tosa::TosaDialect"];
// }
// 
// def Fuse : Pass<"autodiff-fuse"> {
//   let summary = "Fuse operations";
//   let constructor = "mlir::ragdoll::autodiff::createFuse()";
//   let dependentDialects = ["mlir::ragdoll::autodiff::AutodiffDialect", "mlir::linalg::LinalgDialect", "mlir::arith::ArithDialect"];
// }
// 
// def RemoveGlobals : Pass<"autodiff-remove-globals"> {
//   let summary = "Remove `ml_program.global_store` and `ml_program.global_load` operations";
//   let constructor = "mlir::ragdoll::autodiff::createRemoveGlobals()";
// }
// 
// def TestMakeEmpty : Pass<"autodiff-test-make-empty"> {
//   let summary = "Replace certain operation with `tensor.empty` for test purpose only";
//   let constructor = "mlir::ragdoll::autodiff::createTestMakeEmpty()";
//   let options = [
//     Option<"operation", "operation", "std::string", "\"\"", "The operation to be replaced">
//   ];
//   let dependentDialects = ["mlir::tensor::TensorDialect"];
// }
// 
// def Canonicalize : Pass<"autodiff-canonicalize"> {
//   let summary = "Canonicalize operations";
//   let constructor = "mlir::ragdoll::autodiff::createCanonicalize()";
// }
// 
// def InitializeEmpty : Pass<"autodiff-initialize-empty"> {
//   let summary = "Initialize empty tensors";
//   let constructor = "mlir::ragdoll::autodiff::createInitializeEmpty()";
//   let dependentDialects = ["mlir::arith::ArithDialect"];
// }
// 
// def SetGlobals : Pass<"autodiff-set-globals"> {
//   let summary = "Set constant values as mutable global values";
//   let constructor = "mlir::ragdoll::autodiff::createSetGlobals()";
//   let dependentDialects = ["mlir::ml_program::MLProgramDialect"];
// }
// 
// def InitGlobals : Pass<"autodiff-init-globals-as-ones"> {
//   let summary = "Set global variables to ones";
//   let constructor = "mlir::ragdoll::autodiff::createInitGlobals()";
//   let dependentDialects = ["mlir::ml_program::MLProgramDialect"];
// }

// def Conv2DNhwcToNchw : Pass<"autodiff-conv2d-nhwc-to-nchw"> {
//   let summary = "Fuse transpose-conv2d-transpose to conv2d";
//   let constructor = "mlir::ragdoll::autodiff::createConv2DNhwcToNchw()";
//   let dependentDialects = ["mlir::linalg::LinalgDialect"];
// }

// def DifferentiateArgs : Pass<"autodiff-differentiate-args"> {
//   let summary = "Differentiate arguments of functions with `autodiff.differentiated_args` attr";
//   let constructor = "mlir::ragdoll::autodiff::createDifferentiateArgs()";
// 
//   let options = [
//     Option<"strategy", "strategy", "std::string", "\"recompute\"", "Set the strategy for vjp">
//   ];
// 
//   let dependentDialects = ["mlir::ragdoll::autodiff::AutodiffDialect"];
// }
// 
// def LossBackward : Pass<"autodiff-loss-backward"> {
//   let summary = "Differentiate loss functions";
//   let constructor = "mlir::ragdoll::autodiff::createLossBackward()";
// }
// 
// def MLProgramBufferize : Pass<"autodiff-mlprogram-bufferize"> {
//   let summary = "Bufferize ml_program operations";
//   let constructor = "mlir::ragdoll::autodiff::createMLProgramBufferize()";
//   let dependentDialects = ["mlir::memref::MemRefDialect", "mlir::bufferization::BufferizationDialect"];
// }

#endif // RAGDOLL_OPTIMISATION_PASSES
