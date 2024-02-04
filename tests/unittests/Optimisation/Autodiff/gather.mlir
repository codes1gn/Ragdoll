// RUN: ragdoll-opt %s --autodiff --ragdoll-autodiff-inline-function-call | FileCheck %s

func.func @gather(%values : tensor<1x10x1xf32>, %indices : tensor<1x5xi32>) -> tensor<1x5x1xf32> {
  %gathered = "tosa.gather"(%values, %indices) : (tensor<1x10x1xf32>, tensor<1x5xi32>) -> tensor<1x5x1xf32>
  return %gathered : tensor<1x5x1xf32>
}

// CHECK-LABEL: @dgather

// CHECK: %[[DINDICES:.*]] = arith.constant dense<0>
// CHECK: %[[DVALUES:.*]] = tosa.scatter

// CHECK: return %[[DVALUES]], %[[DINDICES]]
