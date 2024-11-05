
// RUN: ragdoll-opt %s | FileCheck %s

#map = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d4, d5, d6, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d6)>
module {
  ml_program.global private mutable @global1 : tensor<3x3x4x16xf32>
  ml_program.global private mutable @global0 : tensor<1x16x16x4xf32>
  func.func @conv_16433136(%arg0: tensor<1x16x16x4xf32>, %arg1: tensor<3x3x4x16xf32>, %arg2: tensor<1x14x14x16xf32>) -> tensor<1x14x14x16xf32> {
    ml_program.global_store @global1 = %arg1 : tensor<3x3x4x16xf32>
    ml_program.global_store @global0 = %arg0 : tensor<1x16x16x4xf32>
    %0 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%arg0, %arg1 : tensor<1x16x16x4xf32>, tensor<3x3x4x16xf32>) outs(%arg2 : tensor<1x14x14x16xf32>) -> tensor<1x14x14x16xf32>
    return %0 : tensor<1x14x14x16xf32>
  }
  func.func @dconv_16433136(%arg0: tensor<1x14x14x16xf32>) -> (tensor<1x16x16x4xf32>, tensor<3x3x4x16xf32>, tensor<1x14x14x16xf32>) {
    %cst = arith.constant dense<0.000000e+00> : tensor<1x14x14x16xf32>
    %global1 = ml_program.global_load @global1 : tensor<3x3x4x16xf32>
    %global0 = ml_program.global_load @global0 : tensor<1x16x16x4xf32>
    %0 = tensor.empty() : tensor<1x16x16x4xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1, #map2], iterator_types = ["parallel", "reduction", "reduction", "reduction", "reduction", "reduction", "parallel"]} ins(%global1, %arg0 : tensor<3x3x4x16xf32>, tensor<1x14x14x16xf32>) outs(%0 : tensor<1x16x16x4xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %4 = arith.mulf %in, %in_0 : f32
      %5 = arith.addf %4, %out : f32
      // CHECK: arith.addf
      linalg.yield %5 : f32
    } -> tensor<1x16x16x4xf32>
    %2 = tensor.empty() : tensor<3x3x4x16xf32>
    %3 = linalg.generic {indexing_maps = [#map2, #map1, #map], iterator_types = ["reduction", "reduction", "reduction", "parallel", "parallel", "parallel", "parallel"]} ins(%global0, %arg0 : tensor<1x16x16x4xf32>, tensor<1x14x14x16xf32>) outs(%2 : tensor<3x3x4x16xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %4 = arith.mulf %in, %in_0 : f32
      %5 = arith.addf %4, %out : f32
      linalg.yield %5 : f32
    } -> tensor<3x3x4x16xf32>
    return %1, %3, %cst : tensor<1x16x16x4xf32>, tensor<3x3x4x16xf32>, tensor<1x14x14x16xf32>
  }
}

