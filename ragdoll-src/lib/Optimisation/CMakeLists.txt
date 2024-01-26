add_mlir_dialect_library(RagdollOptimisation
  Ragdoll/RagdollDummyPass.cpp

  LINK_COMPONENTS
  Core
  MC

  DEPENDS
  RagdollOptimisationPassesIncGen

  LINK_LIBS PUBLIC
  MLIRIR
  )

