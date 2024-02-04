// RUN: ragdoll-opt %s --ragdoll-fold-avgpool | FileCheck %s

func.func @avgpool(%in : tensor<1x7x7x512xf32>) -> tensor<1x1x1x512xf32> {
  // CHECK: autodiff.dummy "tosa.avg_pool2d"
  %res = "tosa.avg_pool2d"(%in) {kernel = array<i64: 7, 7>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>, acc_type=f32} : (tensor<1x7x7x512xf32>) -> tensor<1x1x1x512xf32>
  return %res : tensor<1x1x1x512xf32>
}
