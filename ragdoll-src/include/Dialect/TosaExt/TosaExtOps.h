//===- TosaExtOps.h - TosaExt dialect ops -----------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef TOSAEXT_TOSAEXTOPS_H
#define TOSAEXT_TOSAEXTOPS_H

#include "mlir/Bytecode/BytecodeOpInterface.h"
#include "mlir/Interfaces/InferTypeOpInterface.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/Dialect.h"
#include "mlir/IR/OpDefinition.h"
#include "mlir/IR/OpImplementation.h"

#include "Dialect/TosaExt/TosaExtDialect.h"

#define GET_OP_CLASSES
#include "Dialect/TosaExt/TosaExtOps.h.inc"

#endif // TOSAEXT_TOSAEXTOPS_H
