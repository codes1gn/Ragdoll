// RUN: ragdoll-opt %s --lower-tosa | FileCheck %s
// pass: --lower-tosa
// convert tosa.concat to tensor ops, by combining dimop, InsertSliceOp and addiop

func.func @concat_example(%arg0: tensor<2x3xf32>, %arg1: tensor<2x3xf32>) -> tensor<4x3xf32> {
  %0 = "tosa.concat"(%arg0, %arg1) {axis=0 : i32} : (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<4x3xf32>
  // CHECK: tensor.insert_slice
  return %0 : tensor<4x3xf32>
}

