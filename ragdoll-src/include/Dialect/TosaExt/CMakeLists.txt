# step 3: generate ops
set(LLVM_TARGET_DEFINITIONS TosaExtOps.td)
mlir_tablegen(TosaExtDialect.h.inc -gen-dialect-decls -dialect=tosaext)
mlir_tablegen(TosaExtDialect.cpp.inc -gen-dialect-defs -dialect=tosaext)
mlir_tablegen(TosaExtOps.h.inc -gen-op-decls)
mlir_tablegen(TosaExtOps.cpp.inc -gen-op-defs)
add_public_tablegen_target(TosaExtOpsIncGen)

# step 4: config docgen
add_mlir_doc(TosaExtDialect TosaExtDialect docs/TosaExt/ -gen-dialect-doc)
add_mlir_doc(TosaExtOps TosaExtOps docs/Dialect/TosaExt/ -gen-op-doc)
add_mlir_doc(TosaExtInterfaces TosaExtInterfaces docs/Dialect/TosaExt/ -gen-op-interface-doc)
add_mlir_doc(TosaExtAttrs TosaExtAttrs docs/Dialect/TosaExt/ -gen-attrdef-doc)
add_mlir_doc(TosaExtEnums TosaExtEnums docs/Dialect/TosaExt/ -gen-enum-doc)
