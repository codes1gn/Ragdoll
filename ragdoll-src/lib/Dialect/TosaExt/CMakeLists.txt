add_mlir_dialect_library(TosaExtIR
        TosaExtDialect.cpp
        TosaExtOps.cpp

        ADDITIONAL_HEADER_DIRS
        ${PROJECT_SOURCE_DIR}/ragdoll-src/include/Dialect

        DEPENDS
        TosaExtOpsIncGen

	LINK_LIBS PUBLIC
	MLIRIR
        MLIRInferTypeOpInterface
	)
