// RUN: ragdoll-opt %s --ragdoll-autodiff --ragdoll-autodiff-inline-function-call | FileCheck %s

func.func @scatter(%values_in : tensor<1x10x1xf32>, %indices : tensor<1x5xi32>, %input : tensor<1x5x1xf32>) -> tensor<1x10x1xf32> {
  %scattered = "tosa.scatter"(%values_in, %indices, %input) : (tensor<1x10x1xf32>, tensor<1x5xi32>, tensor<1x5x1xf32>) -> tensor<1x10x1xf32>
  return %scattered : tensor<1x10x1xf32>
}

// CHECK-LABEL: @dscatter

// CHECK: %[[DINDICES:.*]] = arith.constant dense<0>
// CHECK: %[[DVALUESIN:.*]] = tosa.select
// CHECK: %[[DINPUT:.*]] = tosa.gather

// CHECK: return %[[DVALUESIN]], %[[DINDICES]], %[[DINPUT]]
