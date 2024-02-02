add_mlir_conversion_library(RagdollConversion
  LinalgToTosa/LinalgToTosa.cpp
  LinalgToTosa/Raise.cpp
  LowerTosa/LowerTosa.cpp
  NablaToArith/NablaToArith.cpp
  NablaToFunc/NablaToFunc.cpp
  NablaToTosa/NablaToTosa.cpp
  TosaExtToTosa/TosaExtToTosa.cpp

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

