add_mlir_conversion_library(RagdollConversion
  Ragdoll/RagdollDummyPass.cpp

  LINK_COMPONENTS
  Core
  MC

  DEPENDS
  RagdollConversionPassesIncGen

  LINK_LIBS PUBLIC
  MLIRIR
  RagdollUtils
  )

