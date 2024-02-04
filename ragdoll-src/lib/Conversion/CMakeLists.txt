add_mlir_conversion_library(RagdollConversion
  LinalgToTosa/LinalgToTosa.cpp
  LinalgToTosa/Raise.cpp
  AutodiffToArith/AutodiffToArith.cpp
  AutodiffToFunc/AutodiffToFunc.cpp
  AutodiffToTosa/AutodiffToTosa.cpp
  TosaExtToTosa/TosaExtToTosa.cpp
  TosaToTensor/TosaToTensor.cpp

  LINK_COMPONENTS
  Core
  MC

  DEPENDS
  RagdollConversionPassesIncGen

  LINK_LIBS PUBLIC
  MLIRIR
  RagdollUtils
  TosaExtIR
  AutodiffIR
  )

