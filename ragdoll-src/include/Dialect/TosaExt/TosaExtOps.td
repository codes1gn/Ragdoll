//===- AutodiffOps.td - Autodiff dialect ops -----------*- tablegen -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef TOSAEXT_OPS
#define TOSAEXT_OPS

include "TosaExtDialect.td"
include "mlir/IR/OpBase.td"
include "mlir/Interfaces/InferTypeOpInterface.td"


def TosaExt_NllLossOp : TosaExt_Op<"nll_loss"> {
  let arguments = (ins 2DTensorOf<[AnyType]>: $inputs, 1DTensorOf<[I<32>]>: $target);
  let results = (outs 0DTensorOf<[AnyType]>: $loss);

  let hasVerifier = 1;

  let assemblyFormat = [{
    $inputs `,` $target attr-dict `:` `(` type($inputs) `,` type($target) `)` `->` type($loss)
  }];

  let extraClassDefinition = [{
    ::mlir::LogicalResult NllLossOp::verify() {
      auto inputs_type = getInputs().getType();
      auto target_type = getTarget().getType();
      auto inputs_dims = inputs_type.getShape();
      auto target_dims = target_type.getShape();
      if (inputs_dims[0] != target_dims[0]) {
        emitError() << "inputs and target must have the same batch size";
        return failure();
      }
      return success();
    }
  }];
}

def TosaExt_CrossEntropyLossOp : TosaExt_Op<"cross_entropy_loss"> {
  let arguments = (ins 2DTensorOf<[AnyType]>: $inputs, 1DTensorOf<[I<32>]>: $target);
  let results = (outs 0DTensorOf<[AnyType]>: $loss);

  let hasVerifier = 1;

  let assemblyFormat = [{
    $inputs `,` $target attr-dict `:` `(` type($inputs) `,` type($target) `)` `->` type($loss)
  }];

  let extraClassDefinition = [{
    ::mlir::LogicalResult CrossEntropyLossOp::verify() {
      auto inputs_type = getInputs().getType();
      auto target_type = getTarget().getType();
      auto inputs_dims = inputs_type.getShape();
      auto target_dims = target_type.getShape();
      if (inputs_dims[0] != target_dims[0]) {
        emitError() << "inputs and target must have the same batch size";
        return failure();
      }
      return success();
    }
  }];
}

def TosaExt_SoftmaxOp : TosaExt_Op<"softmax", [SameOperandsAndResultType]> {
  let arguments = (ins TensorOf<[AnyFloat]>: $input, I64Attr: $dim);
  let results = (outs TensorOf<[AnyFloat]>: $result);

  let hasVerifier = 1;

  let assemblyFormat = [{
    $input `dim` `(` $dim `)` attr-dict `:` functional-type($input, $result)
  }];

  let extraClassDefinition = [{
    ::mlir::LogicalResult SoftmaxOp::verify() {
      auto dim = getDim();
      auto rank = getInput().getType().getRank();
      if (dim >= rank) {
        emitError() << "dim given is out of bounds";
        return failure();
      }
      return success();
    }
  }];
}

def TosaExt_ParameterOp : TosaExt_Op<"parameter"> {
  let arguments = (ins StrAttr: $name);
  let results = (outs AnyType: $value);

  let assemblyFormat = [{
    $name attr-dict `:` type($value)
  }];
}

def TosaExt_ParameterUpdateOp : TosaExt_Op<"parameter_update"> {
  let arguments = (ins StrAttr: $name, AnyType: $value);

  let assemblyFormat = [{
    $name `=` $value attr-dict `:` type($value)
  }];
}

#endif  // TOSAEXT_OPS

