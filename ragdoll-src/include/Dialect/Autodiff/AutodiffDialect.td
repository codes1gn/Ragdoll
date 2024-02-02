//===- RagdollDialect.td - Ragdoll dialect -----------*- tablegen -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef AUTODIFF_DIALECT
#define AUTODIFF_DIALECT

include "mlir/IR/OpBase.td"

//===----------------------------------------------------------------------===//
// Autodiff dialect definition.
//===----------------------------------------------------------------------===//

def Autodiff_Dialect : Dialect {
  let name = "autodiff";
  let summary = "Dialect to handle autodiff.";
  let description = [{
      TODO: write intro. to autodiff dialect.
  }];

  let cppNamespace = "::mlir::ragdoll::autodiff";
  // let useDefaultAttributePrinterParser = 1;
}


//===----------------------------------------------------------------------===//
// Basic Autodiff operation definition.
//===----------------------------------------------------------------------===//

class Autodiff_Op<string mnemonic, list<Trait> traits = []> : 
        Op<Autodiff_Dialect, mnemonic, traits>;

#endif // AUTODIFF_DIALECT
