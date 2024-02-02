add_mlir_library(RagdollAutodiffBackwardSourceInterface
  Linalg.cpp

  DEPENDS
  AutodiffEnumsAndAttrsIncGen
  AutodiffOpsIncGen
  AutodiffInterfacesIncGen
  RagdollUtils
)
