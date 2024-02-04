// RUN: ragdoll-opt %s --ragdoll-initialisation | FileCheck %s

func.func @const() -> tensor<f32> {
  %cst = "tosa.const"() {value = dense<1.0> : tensor<f32>, global_name = "ones"} : () -> tensor<f32>
  // CHECK: tosa.const 
  return %cst : tensor<f32>
}
