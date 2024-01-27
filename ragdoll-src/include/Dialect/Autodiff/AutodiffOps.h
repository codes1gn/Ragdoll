//===- AutodiffOps.h - Autodiff dialect ops -----------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef AUTODIFF_AUTODIFFOPS_H
#define AUTODIFF_AUTODIFFOPS_H

#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/Dialect.h"
#include "mlir/IR/OpDefinition.h"
#include "mlir/Interfaces/InferTypeOpInterface.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"

#include "Dialect/Autodiff/AutodiffDialect.h"

#define GET_ATTRDEF_CLASSES
#include "Dialect/Autodiff/AutodiffEnums.h.inc"
#include "Dialect/Autodiff/AutodiffAttrs.h.inc"

#define GET_OP_CLASSES
#include "Dialect/Autodiff/AutodiffOps.h.inc"

#endif // AUTODIFF_AUTODIFFOPS_H
