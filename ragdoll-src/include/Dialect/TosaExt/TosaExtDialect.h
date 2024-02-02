//===- TosaExtDialect.h - TosaExt dialect -----------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef RAGDOLL_DIALECT_TOSAEXT_TOSAEXTDIALECT_H
#define RAGDOLL_DIALECT_TOSAEXT_TOSAEXTDIALECT_H

// clang-format off
#include "mlir/IR/Dialect.h"

#include "mlir/Bytecode/BytecodeOpInterface.h"
#include "mlir/IR/OpImplementation.h"
#include "mlir/Interfaces/ControlFlowInterfaces.h"
#include "mlir/Interfaces/FunctionImplementation.h"
#include "mlir/Interfaces/InferTypeOpInterface.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"

#include "Dialect/TosaExt/TosaExtDialect.h.inc"

// clang-format on

#endif // RAGDOLL_DIALECT_TOSAEXT_TOSAEXTDIALECT_H
