add_mlir_library(RagdollAutodiffAdjointInterface
    Arith.cpp
    Math.cpp
    Linalg.cpp
    Tensor.cpp

    DEPENDS
    AutodiffEnumsAndAttrsIncGen
    AutodiffOpsIncGen
    AutodiffInterfacesIncGen
    RagdollUtils
)
