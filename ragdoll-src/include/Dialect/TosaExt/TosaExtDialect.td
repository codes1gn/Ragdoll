//===- AutodiffOps.td - Autodiff dialect ops -----------*- tablegen -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef TOSAEXT_DIALECT
#define TOSAEXT_DIALECT

include "mlir/IR/OpBase.td"
include "mlir/Interfaces/InferTypeOpInterface.td"

def TosaExt_Dialect : Dialect {
  let name = "tosaext";
  let cppNamespace = "::mlir::tosaext";
}

class TosaExt_Op<string mnemonic, list<Trait> traits = []> : Op<TosaExt_Dialect, mnemonic, traits>;


#endif  // TOSAEXT_DIALECT

