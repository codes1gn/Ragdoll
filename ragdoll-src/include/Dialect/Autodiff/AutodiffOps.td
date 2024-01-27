//===- AutodiffOps.td - Autodiff dialect ops -----------*- tablegen -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef AUTODIFF_OPS
#define AUTODIFF_OPS

include "AutodiffDialect.td"
include "AutodiffAttrs.td"

include "mlir/IR/OpBase.td"
include "mlir/IR/AttrTypeBase.td"
include "mlir/IR/EnumAttr.td"
include "mlir/Interfaces/InferTypeOpInterface.td"
include "mlir/Interfaces/SideEffectInterfaces.td"

// Generate the adjoint function F*(X, Y*) = X* for given input function F(X) = Y 
def Autodiff_AdjointOp : Autodiff_Op<"adjoint", [Pure]> {
  let summary = "generate adjoint of given operation";

  let arguments = (ins
    AnyType: $target,
    Optional<AnyType>: $dtarget
  );
  
  let results = (outs
    Variadic<AnyType>: $dsources
  );

  let hasVerifier = 1;
}

def Autodiff_AccumulateOp : Autodiff_Op<"accumulate", [SameOperandsAndResultType, Pure]> {
  let summary = "accumulate operation";

  let arguments = (ins
    Variadic<AnyType>: $inputs
  );

  let results = (outs
    AnyType: $accumulation
  );

  let hasVerifier = 1;
}

// Construct the backward DAG from given op/node in reverse-DAG-order, similar to torch.Tensor.backward
def Autodiff_BackwardOp : Autodiff_Op<"backward", [SameOperandsShape, SameOperandsElementType]> {
  let summary = "backprop from target";

  let arguments = (ins
    AnyType: $target,
    Optional<AnyType>: $dtarget
  );
}

// Record the gradient proportion from a value users
def Autodiff_TapeOp : Autodiff_Op<"tape", [SameOperandsAndResultType]> {
  let summary = "tape gradient contributions from value users";

  let arguments = (ins
    AnyType: $target,
    Variadic<AnyType>: $gradients
  );

  let results = (outs
    AnyType: $dtarget
  );
}


// generate the VJP function for input function
def Autodiff_VjpOp : Autodiff_Op<"vjp", [Pure]> {
  let summary = "generate vjp of given function";

  let arguments = (ins
    FlatSymbolRefAttr: $func,
    Variadic<AnyType>: $inputs,
    DefaultValuedAttr<Autodiff_VjpStrategyAttr, "VjpStrategyFlags::recompute">: $strategy
  );

  let results = (outs
    Variadic<AnyType>: $outputs
  );

  let assemblyFormat =[{
    $func `(` $inputs `)` $strategy attr-dict `:` functional-type($inputs, $outputs)
  }];
}

// include "mlir/IR/FunctionInterfaces.td"
include "mlir/Interfaces/FunctionInterfaces.td"
include "mlir/Interfaces/ControlFlowInterfaces.td"

// FuncOp to contain the backward autodiff graph
def Autodiff_AutodiffFuncOp : Autodiff_Op<"func", [
  AutomaticAllocationScope, FunctionOpInterface, IsolatedFromAbove
]> {
  let summary = "autodiff function";

  let arguments = (ins SymbolNameAttr:$sym_name,
                        TypeAttrOf<FunctionType>:$function_type,
                        OptionalAttr<StrAttr>:$sym_visibility,
                        OptionalAttr<DictArrayAttr>:$arg_attrs,
                        OptionalAttr<DictArrayAttr>:$res_attrs,
                        DefaultValuedAttr<I64ArrayAttr, "{}">: $argnums,
                        DefaultValuedAttr<I64ArrayAttr, "{}">: $resnums,
                        DefaultValuedAttr<Autodiff_VjpStrategyAttr, "VjpStrategyFlags::recompute">: $strategy);
  let regions = (region AnyRegion:$body);

  let builders = [OpBuilder<(ins
    "StringRef":$name, "FunctionType":$type,
    CArg<"ArrayRef<NamedAttribute>", "{}">:$attrs,
    CArg<"ArrayRef<DictionaryAttr>", "{}">:$argAttrs)
  >];

  let extraClassDeclaration = [{
    static AutodiffFuncOp create(Location location, StringRef name, FunctionType type,
                          ArrayRef<NamedAttribute> attrs = {});
    static AutodiffFuncOp create(Location location, StringRef name, FunctionType type,
                          Operation::dialect_attr_range attrs);
    static AutodiffFuncOp create(Location location, StringRef name, FunctionType type,
                          ArrayRef<NamedAttribute> attrs,
                          ArrayRef<DictionaryAttr> argAttrs);

    //===------------------------------------------------------------------===//
    // FunctionOpInterface Methods
    //===------------------------------------------------------------------===//

    /// Returns the region on the current operation that is callable. This may
    /// return null in the case of an external callable object, e.g. an external
    /// function.
    ::mlir::Region *getCallableRegion() { return isExternal() ? nullptr : &getBody(); }

    /// Returns the argument types of this function.
    ArrayRef<Type> getArgumentTypes() { return getFunctionType().getInputs(); }

    /// Returns the result types of this function.
    ArrayRef<Type> getResultTypes() { return getFunctionType().getResults(); }
  }];

  let hasCustomAssemblyFormat = 1;
  let hasVerifier = 1;
}

// Terminator for autodiff FuncOp
def Autodiff_AutodiffReturnOp : Autodiff_Op<"return", [
  Pure,
  HasParent<"AutodiffFuncOp">,
  ReturnLike,
  Terminator
]> {
  let summary = "autodiff return";

  let arguments = (ins Variadic<AnyType>:$operands);

  let builders = [OpBuilder<(ins), [{
    build($_builder, $_state, std::nullopt);
  }]>];

  let assemblyFormat = "attr-dict ($operands^ `:` type($operands))?";
  let hasVerifier = 1;
}

// TODO: what is this
def Autodiff_DummyOp : Autodiff_Op<"dummy", [Pure]> {
  let summary = "Make an operation a dummy to avoid unexpected lowering";
  let arguments = (ins Variadic<AnyType>: $inputs, StrAttr: $opname);
  let results = (outs Variadic<AnyType>: $results);
  
  let builders = [
    OpBuilder<(ins "::mlir::Operation*": $real)>
  ];

  let assemblyFormat = [{
    $opname $inputs attr-dict `:` functional-type($inputs, $results)
  }];
}

def Autodiff_ExperimentalDropoutOp : Autodiff_Op<"experimental.dropout", [SameOperandsAndResultType, Pure]> {
  let summary = "Placeholder for `dropout` operation for experimental purpose only.";
  let arguments = (ins AnyType: $input, F64Attr: $p);
  let results = (outs AnyType: $result);

  let assemblyFormat = [{
    $input attr-dict `:` type($result)
  }];
}

#endif // AUTODIFF_OPS
