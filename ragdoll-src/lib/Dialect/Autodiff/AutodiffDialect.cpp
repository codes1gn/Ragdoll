//===- AutodiffDialect.cpp - Autodiff dialect ---------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "Dialect/Autodiff/AutodiffDialect.h"
#include "Dialect/Autodiff/AutodiffOps.h"
#include "mlir/IR/DialectImplementation.h"
#include "llvm/ADT/StringExtras.h"
#include "llvm/ADT/TypeSwitch.h"

using namespace mlir;
using namespace mlir::autodiff;

//===----------------------------------------------------------------------===//
// Autodiff dialect.
//===----------------------------------------------------------------------===//

#include "Dialect/Autodiff/AutodiffDialect.cpp.inc"

#define GET_ATTRDEF_CLASSES
#include "Dialect/Autodiff/AutodiffEnums.cpp.inc"

#define GET_ATTRDEF_CLASSES
#include "Dialect/Autodiff/AutodiffAttrs.cpp.inc"

void AutodiffDialect::initialize() {
  addOperations<
#define GET_OP_LIST
#include "Dialect/Autodiff/AutodiffOps.cpp.inc"
      >();

  addAttributes<
#define GET_ATTRDEF_LIST
#include "Dialect/Autodiff/AutodiffAttrs.cpp.inc"
      >();
}
