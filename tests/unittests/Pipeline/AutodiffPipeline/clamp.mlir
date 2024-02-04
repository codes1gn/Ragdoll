// RUN: ragdoll-opt %s --autodiff | FileCheck %s

!type = tensor<5xf32>

func.func @relu(%input : !type) -> !type {
  %relued = "tosa.clamp"(%input) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (!type) -> (!type)
  return %relued : !type
}

// CHECK-LABEL: @drelu
// CHECK: %[[FLAG:.*]] = tosa.equal
// CHECK: %[[DTARGET:.*]] = tosa.select %[[FLAG]]
// CHECK: return %[[DTARGET]]
