add_subdirectory(AdjointInterface)
add_subdirectory(BackwardInterface)
add_subdirectory(BackwardSourceInterface)

add_mlir_dialect_library(AutodiffIR
    AutodiffDialect.cpp
    AutodiffInterface.cpp
    AutodiffOps.cpp
    
    ADDITIONAL_HEADER_DIRS
    ${PROJECT_SOURCE_DIR}/ragdoll-src/include/Dialect
    
    DEPENDS
    AutodiffEnumsAndAttrsIncGen
    AutodiffOpsIncGen
    AutodiffInterfacesIncGen
    
    LINK_LIBS PUBLIC
    MLIRIR
    MLIRInferTypeOpInterface
    RagdollUtils
    RagdollAutodiffBackwardInterface
    RagdollAutodiffBackwardSourceInterface
    RagdollAutodiffAdjointInterface
)
