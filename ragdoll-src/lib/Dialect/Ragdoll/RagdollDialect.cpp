//===- RagdollDialect.cpp - Ragdoll dialect ---------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "Dialect/Ragdoll/RagdollDialect.h"
#include "Dialect/Ragdoll/RagdollOps.h"

using namespace mlir;
using namespace mlir::ragdoll;

//===----------------------------------------------------------------------===//
// Ragdoll dialect.
//===----------------------------------------------------------------------===//

#include "Dialect/Ragdoll/RagdollDialect.cpp.inc"

void RagdollDialect::initialize() {
  addOperations<
#define GET_OP_LIST
#include "Dialect/Ragdoll/RagdollOps.cpp.inc"
      >();
}
