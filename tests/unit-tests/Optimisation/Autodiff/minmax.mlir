// RUN: ragdoll-opt %s --autodiff --ragdoll-autodiff-inline-function-call | FileCheck %s

func.func @maximum(%lhs : tensor<1x32x112x112xf32>, %rhs : tensor<1x1x1x1xf32>) -> tensor<1x32x112x112xf32> {
  %max = "tosa.maximum"(%lhs, %rhs) : (tensor<1x32x112x112xf32>, tensor<1x1x1x1xf32>) -> tensor<1x32x112x112xf32>
  return %max : tensor<1x32x112x112xf32>
}

// CHECK-LABEL: dmaximum
// CHECK: tosa.equal
// CHECK: tosa.select

func.func @minimum(%lhs : tensor<1x32x112x112xf32>, %rhs : tensor<1x1x1x1xf32>) -> tensor<1x32x112x112xf32> {
  %min = "tosa.minimum"(%lhs, %rhs) : (tensor<1x32x112x112xf32>, tensor<1x1x1x1xf32>) -> tensor<1x32x112x112xf32>
  return %min : tensor<1x32x112x112xf32>
}

// CHECK-LABEL: dminimum
// CHECK: tosa.equal
// CHECK: tosa.select
