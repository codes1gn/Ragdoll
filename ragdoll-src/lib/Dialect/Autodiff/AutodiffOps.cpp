//===- AutodiffOps.cpp - Autodiff dialect ops ---------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "Dialect/Autodiff/AutodiffDialect.h"
#include "Dialect/Autodiff/AutodiffOps.h"
#include "Dialect/Autodiff/AutodiffInterface.h"

#include "llvm/ADT/StringExtras.h"
#include "llvm/ADT/TypeSwitch.h"
#include "mlir/Dialect/Linalg/IR/Linalg.h"
#include "mlir/IR/OpImplementation.h"
#include "mlir/Interfaces/FunctionImplementation.h"

#define GET_OP_CLASSES
#include "Dialect/Autodiff/AutodiffOps.cpp.inc"

using namespace mlir;
using namespace mlir::autodiff;

//===----------------------------------------------------------------------===//
// AdjointOp
//===----------------------------------------------------------------------===//

LogicalResult AdjointOp::verify() {
  auto target = getTarget();
  if (!target.isa<OpResult>()) {
    return emitOpError("target must be an op result");
  }

  auto dtarget = getDtarget();
  if (dtarget && dtarget.getType() != target.getType()) {
    return emitOpError("dtarget must have the same type as target");
  }

  auto *definingOp = target.getDefiningOp();

  // `linalg.generic` 只有 ins 视为 inputs
  auto generic = dyn_cast<linalg::GenericOp>(definingOp);
  auto sources = generic ? generic.getInputs() : definingOp->getOperands();

  auto dsources = getDsources();
  if (sources.size() != dsources.size()) {
    return emitOpError("dsources must have the same size as sources");
  }

  auto dsourcesTy = dsources.getTypes();
  for (auto [src, dsrcTy] : llvm::zip(sources, dsourcesTy)) {
    if (src.getType() != dsrcTy) {
      return emitOpError("dsources must have the same type as sources");
    }
  }

  return success();
}

//===----------------------------------------------------------------------===//
// AccumulateOp
//===----------------------------------------------------------------------===//

LogicalResult AccumulateOp::verify() {
  if (getNumOperands() == 0) {
    return emitOpError("must have at least one operand");
  }

  return success();
}

//===----------------------------------------------------------------------===//
// AutodiffFuncOp
//===----------------------------------------------------------------------===//

// FIXME: 以 math ops 开始会引起 segment fault
ParseResult AutodiffFuncOp::parse(OpAsmParser &parser, OperationState &result) {
  auto buildFuncType =
      [](Builder &builder, ArrayRef<Type> argTypes, ArrayRef<Type> results,
         function_interface_impl::VariadicFlag,
         std::string &) { return builder.getFunctionType(argTypes, results); };

  return function_interface_impl::parseFunctionOp(
      parser, result, /*allowVariadic=*/false,
      getFunctionTypeAttrName(result.name), buildFuncType,
      getArgAttrsAttrName(result.name), getResAttrsAttrName(result.name));
}

void AutodiffFuncOp::print(OpAsmPrinter &p) {
  function_interface_impl::printFunctionOp(
      p, *this, /*isVariadic=*/false, getFunctionTypeAttrName(),
      getArgAttrsAttrName(), getResAttrsAttrName());
}

LogicalResult AutodiffFuncOp::verify() {
  auto supArg = getNumArguments();
  auto argnums = getArgnums();
  for (auto i = 0U; i < argnums.size(); ++i) {
    auto argnum = cast<IntegerAttr>(argnums[i]).getInt();
    if (argnum >= supArg || argnum < 0) {
      return emitOpError("argnums[") << i << "] is out of bounds";
    }
  }

  auto supRes = getNumResults();
  auto resnums = getResnums();
  for (auto i = 0U; i < argnums.size(); ++i) {
    auto resnum = cast<IntegerAttr>(resnums[i]).getInt();
    if (resnum >= supRes || resnum < 0) {
      return emitOpError("resnums[") << i << "] is out of bounds";
    }
  }
  return success();
}

//===----------------------------------------------------------------------===//
// AutodiffReturnOp
//===----------------------------------------------------------------------===//

LogicalResult AutodiffReturnOp::verify() {
  auto function = cast<AutodiffFuncOp>((*this)->getParentOp());

  // The operand number and types must match the function signature.
  const auto &results = function.getFunctionType().getResults();
  if (getNumOperands() != results.size()) {
    return emitOpError("has ")
           << getNumOperands() << " operands, but enclosing function (@"
           << function.getName() << ") returns " << results.size();
  }

  for (unsigned i = 0, e = results.size(); i != e; ++i) {
    if (getOperand(i).getType() != results[i]) {
      return emitError() << "type of return operand " << i << " ("
                         << getOperand(i).getType()
                         << ") doesn't match function result type ("
                         << results[i] << ")"
                         << " in function @" << function.getName();
    }
  }

  return success();
}

//===----------------------------------------------------------------------===//
// DummyOp
//===----------------------------------------------------------------------===//

auto DummyOp::build(OpBuilder& odsBuilder, OperationState& odsState,
                    Operation* real) -> void {
  auto operands = real->getOperands();
  auto types = real->getResultTypes();
  auto attrs = llvm::to_vector(real->getAttrs());
  auto opname = odsBuilder.getStringAttr(real->getName().getStringRef());
  attrs.emplace_back(odsBuilder.getNamedAttr("opname", opname));
  build(odsBuilder, odsState, types, operands, attrs);
}
