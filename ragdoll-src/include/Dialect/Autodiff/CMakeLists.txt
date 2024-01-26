# method 1(default): use add_mlir_dialect to drive template generate in default style
# downside: this method normally does not fit for production quality,
# we recommend to use the later way
# 
# add_mlir_dialect(AutodiffOps autodiff)
# add_mlir_doc(AutodiffDialect AutodiffDialect Autodiff/ -gen-dialect-doc)
# add_mlir_doc(AutodiffOps AutodiffOps Autodiff/ -gen-op-doc)

# method 2(advanced): use custom style to drive template code generating
# step 1: generate attrs, if has attrs.td
set(LLVM_TARGET_DEFINITIONS AutodiffAttrs.td)
mlir_tablegen(AutodiffAttrs.h.inc -gen-attrdef-decls)
mlir_tablegen(AutodiffAttrs.cpp.inc -gen-attrdef-defs)
mlir_tablegen(AutodiffEnums.h.inc -gen-enum-decls)
mlir_tablegen(AutodiffEnums.cpp.inc -gen-enum-defs)
add_public_tablegen_target(AutodiffEnumsAndAttrsIncGen)

# step 2: generate interfaces, if has interface.td
set(LLVM_TARGET_DEFINITIONS AutodiffInterfaces.td)
mlir_tablegen(AutodiffInterfaces.h.inc -gen-op-interface-decls)
mlir_tablegen(AutodiffInterfaces.cpp.inc -gen-op-interface-defs)
add_public_tablegen_target(AutodiffInterfacesIncGen)

# step 3: generate ops
set(LLVM_TARGET_DEFINITIONS AutodiffOps.td)
mlir_tablegen(AutodiffDialect.h.inc -gen-dialect-decls -dialect=autodiff)
mlir_tablegen(AutodiffDialect.cpp.inc -gen-dialect-defs -dialect=autodiff)
mlir_tablegen(AutodiffOps.h.inc -gen-op-decls)
mlir_tablegen(AutodiffOps.cpp.inc -gen-op-defs)
add_public_tablegen_target(AutodiffOpsIncGen)

# step 4: config docgen
add_mlir_doc(AutodiffDialect AutodiffDialect docs/Autodiff/ -gen-dialect-doc)
add_mlir_doc(AutodiffOps AutodiffOps docs/Dialect/Autodiff/ -gen-op-doc)
add_mlir_doc(AutodiffInterfaces AutodiffInterfaces docs/Dialect/Autodiff/ -gen-op-interface-doc)
add_mlir_doc(AutodiffAttrs AutodiffAttrs docs/Dialect/Autodiff/ -gen-attrdef-doc)
add_mlir_doc(AutodiffEnums AutodiffEnums docs/Dialect/Autodiff/ -gen-enum-doc)
