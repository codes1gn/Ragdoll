add_mlir_dialect_library(RagdollConversion
  Ragdoll/RagdollDummyPass.cpp
  TosaExt/TosaExtLowerings.cpp

  LINK_COMPONENTS
  Core
  MC

  DEPENDS
  RagdollConversionPassesIncGen

  LINK_LIBS PUBLIC
  MLIRIR
  TosaExtIR
  )

