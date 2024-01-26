
#ifndef RAGDOLL_ATTRS
#define RAGDOLL_ATTRS

include "AutodiffDialect.td"

include "mlir/IR/OpBase.td"
include "mlir/IR/AttrTypeBase.td"
include "mlir/IR/EnumAttr.td"
include "mlir/Interfaces/InferTypeOpInterface.td"
include "mlir/Interfaces/SideEffectInterfaces.td"

// TODO add your ods implementation
def VJP_STRATEGY_RECOMPUTE : I32BitEnumAttrCaseBit<"recompute", 0>;
def VJP_STRATEGY_STORE : I32BitEnumAttrCaseBit<"storeall", 1>;
def VJP_STRATEGY_CHECKPOINT : I32BitEnumAttrCaseBit<"checkpoint", 2>;
def VJP_STRATEGY_HEURISTIC : I32BitEnumAttrCaseBit<"heuristic", 3>;

def VJP_STRATEGY : I32BitEnumAttrCaseGroup<"vjp_strategy", [
  VJP_STRATEGY_RECOMPUTE,
  VJP_STRATEGY_STORE,
  VJP_STRATEGY_CHECKPOINT,
  VJP_STRATEGY_HEURISTIC
]>;

def VjpStrategyFlags : I32BitEnumAttr<
  "VjpStrategyFlags",
  "Strategy taken for reverse mode automatic differentiation",
  [
    VJP_STRATEGY_RECOMPUTE,
    VJP_STRATEGY_STORE,
    VJP_STRATEGY_CHECKPOINT,
    VJP_STRATEGY_HEURISTIC
  ]
> {
  let cppNamespace = "::mlir::autodiff";
  let genSpecializedAttr = 0;
  let printBitEnumPrimaryGroups = 1;
}

def Autodiff_VjpStrategyAttr : EnumAttr<Autodiff_Dialect, VjpStrategyFlags, "vjp_strategy"> {
  let assemblyFormat = "`<` $value `>`";
}

#endif // RAGDOLL_ATTRS
