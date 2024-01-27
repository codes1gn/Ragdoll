
#ifndef AUTODIFF_INTERFACES
#define AUTODIFF_INTERFACES

include "mlir/IR/OpBase.td"
include "mlir/Interfaces/CallInterfaces.td"
include "mlir/Interfaces/SideEffectInterfaces.td"

// generate adjoint op for input op
// TODO rename to AdjointableTrait
def Autodiff_AdjointInterface : OpInterface<"AdjointInterface"> {
  let cppNamespace = "::mlir::autodiff";

  let methods = [
    InterfaceMethod<
      /*desc*/ "generate adjoint operation",
      /*retTy*/ "::mlir::SmallVector<::mlir::Value>",
      /*methodName*/ "adjoint",
      /*args*/ (ins "::mlir::Value": $dtarget, "::mlir::OpBuilder&": $builder)
    >
  ];
}

// TODO rename to BackwardableTrait 
def Autodiff_BackwardInterface : OpInterface<"BackwardInterface"> {
  let cppNamespace = "::mlir::autodiff";

  let methods = [
    InterfaceMethod<
      "generate backward operation",
      "::mlir::Value",
      "backward",
      (ins "::mlir::Value": $dtarget, "::mlir::OpOperand&": $operand, "::mlir::OpBuilder&": $builder)
    >
  ];
}

// TODO rename to BackwardSourcableTrait 
// TODO what is source? users? or operands?
def Autodiff_BackwardSourceInterface : OpInterface<"BackwardSourceInterface"> {
  let cppNamespace = "::mlir::autodiff";

  let methods = [
    InterfaceMethod<
      "get source values for backward operation",
      "::mlir::MutableArrayRef<::mlir::OpOperand>",
      "getSources"
    >
  ];
}

#endif // AUTODIFF_INTERFACES

