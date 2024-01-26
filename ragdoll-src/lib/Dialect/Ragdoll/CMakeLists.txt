add_mlir_dialect_library(RagdollIR
        RagdollDialect.cpp
        RagdollOps.cpp

        ADDITIONAL_HEADER_DIRS
        ${PROJECT_SOURCE_DIR}/ragdoll-src/include/Dialect

        DEPENDS
        RagdollOpsIncGen

	LINK_LIBS PUBLIC
	MLIRIR
        MLIRInferTypeOpInterface
	)

# add ragdoll-src/include/Dialect INTO header search path
target_include_directories(
        RagdollIR
        PRIVATE
        ${PROJECT_SOURCE_DIR}/ragdoll-src/include/Dialect
        )
