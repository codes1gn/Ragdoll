add_mlir_library(NablaBackwardInterface
    Arith.cpp
    Math.cpp
    Linalg.cpp
    Linalg/Conv2DNhwcHwcf.cpp
    Linalg/BatchMatmul.cpp
    Linalg/PoolingNhwcMax.cpp
    Linalg/Fill.cpp
    Linalg/ElemwiseUnary.cpp
    Linalg/ElemwiseBinary.cpp
    Tensor.cpp
    Tosa.cpp
    Tosa/Conv2D.cpp
    Tosa/MinMax.cpp
    Tosa/AvgPool2d.cpp
    Tosa/FullyConnected.cpp
    Func.cpp
    SCF.cpp
    AutodiffExperimental.cpp
    GradientMap.cpp

    DEPENDS
    RagdollUtils

    LINK_LIBS PRIVATE
    RagdollUtils
)
