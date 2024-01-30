get_property(dialect_libs GLOBAL PROPERTY MLIR_DIALECT_LIBS)
get_property(conversion_libs GLOBAL PROPERTY MLIR_CONVERSION_LIBS)
add_mlir_library(RagdollPipeline
  Pipelines.cpp

  LINK_COMPONENTS
  Core

  LINK_LIBS PUBLIC
  RagdollIR
  AutodiffIR
  TosaExtIR
  RagdollOptimisation
  # RagdollConversion
  ${dialect_libs}
  ${conversion_libs}
  )

