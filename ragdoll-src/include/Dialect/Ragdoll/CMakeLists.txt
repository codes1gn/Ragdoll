# method 1(default): use add_mlir_dialect to drive template generate in default style
# downside: this method normally does not fit for production quality,
# we recommend to use the later way
# 
# add_mlir_dialect(RagdollOps ragdoll)
# add_mlir_doc(RagdollDialect RagdollDialect Ragdoll/ -gen-dialect-doc)
# add_mlir_doc(RagdollOps RagdollOps Ragdoll/ -gen-op-doc)

# method 2(advanced): use custom style to drive template code generating
# step 1: generate attrs, if has attrs.td
set(LLVM_TARGET_DEFINITIONS RagdollAttrs.td)
mlir_tablegen(RagdollAttrs.h.inc -gen-attrdef-decls)
mlir_tablegen(RagdollAttrs.cpp.inc -gen-attrdef-defs)
mlir_tablegen(RagdollEnums.h.inc -gen-attrdef-decls)
mlir_tablegen(RagdollEnums.cpp.inc -gen-attrdef-defs)
add_public_tablegen_target(RagdollAttrsIncGen)

# step 2: generate interfaces, if has interface.td
set(LLVM_TARGET_DEFINITIONS RagdollInterfaces.td)
mlir_tablegen(RagdollInterfaces.h.inc -gen-op-interface-decls)
mlir_tablegen(RagdollInterfaces.cpp.inc -gen-op-interface-defs)
add_public_tablegen_target(RagdollInterfacesIncGen)

# step 3: generate ops
set(LLVM_TARGET_DEFINITIONS RagdollOps.td)
mlir_tablegen(RagdollDialect.h.inc -gen-dialect-decls -dialect=ragdoll)
mlir_tablegen(RagdollDialect.cpp.inc -gen-dialect-defs -dialect=ragdoll)
mlir_tablegen(RagdollOps.h.inc -gen-op-decls)
mlir_tablegen(RagdollOps.cpp.inc -gen-op-defs)
add_public_tablegen_target(RagdollOpsIncGen)

# step 4: config docgen
add_mlir_doc(RagdollDialect RagdollDialect docs/Ragdoll/ -gen-dialect-doc)
add_mlir_doc(RagdollOps RagdollOps docs/Dialect/Ragdoll/ -gen-op-doc)
add_mlir_doc(RagdollInterfaces RagdollInterfaces docs/Dialect/Ragdoll/ -gen-op-interface-doc)
add_mlir_doc(RagdollAttrs RagdollAttrs docs/Dialect/Ragdoll/ -gen-attrdef-doc)
add_mlir_doc(RagdollEnums RagdollEnums docs/Dialect/Ragdoll/ -gen-enum-doc)
