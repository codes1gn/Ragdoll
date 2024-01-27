//===- TosaExtDialect.cpp - TosaExt dialect ---------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "llvm/ADT/StringExtras.h"
#include "llvm/ADT/TypeSwitch.h"
#include "Dialect/TosaExt/TosaExtDialect.h"
#include "Dialect/TosaExt/TosaExtOps.h"
#include "mlir/IR/DialectImplementation.h"

using namespace mlir;
using namespace mlir::tosaext;


//===----------------------------------------------------------------------===//
// TosaExt dialect.
//===----------------------------------------------------------------------===//

#include "Dialect/TosaExt/TosaExtDialect.cpp.inc"

#define GET_OP_CLASSES
#include "Dialect/TosaExt/TosaExtOps.cpp.inc"


void TosaExtDialect::initialize() {
  addOperations<
#define GET_OP_LIST
#include "Dialect/TosaExt/TosaExtOps.cpp.inc"
      >();
}

