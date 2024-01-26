
add_mlir_conversion_library(RagdollPipeline
  Pipelines.cpp

  LINK_COMPONENTS
  Core

  LINK_LIBS PUBLIC
  MLIRIR
  RagdollIR

  )

