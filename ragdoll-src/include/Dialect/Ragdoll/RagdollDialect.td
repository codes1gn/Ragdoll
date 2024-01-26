//===- RagdollDialect.td - Ragdoll dialect -----------*- tablegen -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef RAGDOLL_DIALECT
#define RAGDOLL_DIALECT

include "mlir/IR/OpBase.td"

//===----------------------------------------------------------------------===//
// Ragdoll dialect definition.
//===----------------------------------------------------------------------===//

def Ragdoll_Dialect : Dialect {
    let name = "ragdoll";
    let summary = "A ragdoll out-of-tree MLIR dialect.";
    let description = [{
        This dialect is an example of an out-of-tree MLIR dialect designed to
        illustrate the basic setup required to develop MLIR-based tools without
        working inside of the LLVM source tree.
    }];
    let cppNamespace = "::mlir::ragdoll";
}

//===----------------------------------------------------------------------===//
// Base ragdoll operation definition.
//===----------------------------------------------------------------------===//

class Ragdoll_Op<string mnemonic, list<Trait> traits = []> :
        Op<Ragdoll_Dialect, mnemonic, traits>;

#endif // RAGDOLL_DIALECT
