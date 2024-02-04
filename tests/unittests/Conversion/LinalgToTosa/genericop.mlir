// RUN: ragdoll-opt %s --ragdoll-raise-linalg-to-tosa | FileCheck %s

// TODO: support complex structure raise
func.func @scalar_generic_fusion
  (%arg0: tensor<5x1x1xf32>, %arg1 : tensor<i32>) -> tensor<10xf32>
{
  %c0 = arith.constant 0 : index
  %cst = arith.constant dense<1.000000e+00> : tensor<10xf32>
  %0 = tensor.empty() : tensor<f32>
  %1 = linalg.generic
    {indexing_maps = [affine_map<() -> ()>, affine_map<() -> ()>],
     iterator_types = []}
    ins(%arg1 : tensor<i32>) outs(%0 : tensor<f32>) {
    ^bb0(%arg2: i32, %arg3: f32):
      %3 = arith.index_cast %arg2 : i32 to index
      %4 = tensor.extract %arg0[%3, %c0, %c0] : tensor<5x1x1xf32>
      linalg.yield %4 : f32
    } -> tensor<f32>
  %2 = tensor.empty() : tensor<10xf32>
  %3 = linalg.generic
   {indexing_maps = [affine_map<(d0) -> ()>, affine_map<(d0) -> (d0)>,
                     affine_map<(d0) -> (d0)>],
    iterator_types = ["parallel"]}
    ins(%1, %cst : tensor<f32>, tensor<10xf32>) outs(%2 : tensor<10xf32>) {
    ^bb0(%arg2: f32, %arg3: f32, %arg4: f32):
      %4 = arith.mulf %arg2, %arg3 : f32
      linalg.yield %4 : f32
    } -> tensor<10xf32>
  // CHECK: tosa.mul
  return %3 : tensor<10xf32>
}
