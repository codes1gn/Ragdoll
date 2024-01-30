set(LLVM_TARGET_DEFINITIONS Passes.td)
mlir_tablegen(Passes.h.inc -gen-pass-decls -name RagdollConversion)
# mlir_tablegen(Passes.capi.h.inc -gen-pass-capi-header --prefix GPU)
# mlir_tablegen(Passes.capi.cpp.inc -gen-pass-capi-impl --prefix GPU)
add_public_tablegen_target(RagdollConversionPassesIncGen)

# boilerplate code for generating docs
add_mlir_doc(Passes RagdollConversionPasses docs/ConversionPasses/Ragdoll -gen-pass-doc)
