# TODO: consider to split this CMAKE target once the volume become too bold
add_mlir_conversion_library(RagdollOptimisation
  # TosaExt/TosaExtLowerings.cpp
  Autodiff/AutodiffInline.cpp
  Autodiff/AutodiffOptimise.cpp
  Autodiff/AutodiffVjp.cpp
  Autodiff/AutodiffVjpPublicFunctions.cpp
  Common/MergeMultiResults.cpp

  LINK_COMPONENTS
  Core
  MC

  DEPENDS
  RagdollOptimisationPassesIncGen

  LINK_LIBS PUBLIC
  MLIRIR
  TosaExtIR
  AutodiffIR
  RagdollUtils
  RagdollAutodiffBackwardInterface
  RagdollAutodiffBackwardSourceInterface
  RagdollAutodiffAdjointInterface
)

