// RUN: ragdoll-opt %s --autodiff | FileCheck %s

func.func @avg_pool2d(%input : tensor<1x3x3x512xf32>) -> tensor<1x1x1x512xf32> {
  %result = "tosa.avg_pool2d"(%input) {
    kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>, acc_type=f32
  } : (tensor<1x3x3x512xf32>) -> tensor<1x1x1x512xf32>
  return %result : tensor<1x1x1x512xf32>
}

// CHECK: @davg_pool2d(%[[DTARGET:.*]]: tensor<1x1x1x512xf32>) -> tensor<1x3x3x512xf32>
// CHECK: %[[FACTOR:.*]] = arith.constant 0.111
