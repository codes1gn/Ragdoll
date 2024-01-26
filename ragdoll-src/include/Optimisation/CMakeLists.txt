set(LLVM_TARGET_DEFINITIONS Passes.td)
mlir_tablegen(Passes.h.inc -gen-pass-decls -name RagdollOptimisation)
# mlir_tablegen(Passes.capi.h.inc -gen-pass-capi-header --prefix GPU)
# mlir_tablegen(Passes.capi.cpp.inc -gen-pass-capi-impl --prefix GPU)
add_public_tablegen_target(RagdollOptimisationPassesIncGen)

# boilerplate code for generating docs
# add_mlir_doc(Passes RagdollOptimisationPasses docs/OptimisationPasses/Ragdoll -gen-pass-doc)
