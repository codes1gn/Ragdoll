// RUN: ragdoll-opt %s --ragdoll-initialisation | FileCheck %s

func.func @empty() -> tensor<f32> {
  // CHECK-NOT: tensor.empty
  // CHECK: arith.constant
  %empty = tensor.empty() : tensor<f32>
  return %empty : tensor<f32>
}
