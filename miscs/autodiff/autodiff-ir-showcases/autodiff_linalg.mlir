#map = affine_map<(d0, d1, d2, d3) -> (d0, d3, d2)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
module {
  ml_program.global private mutable @global1(dense<1.000000e+00> : tensor<8x1024x512xf32>) : tensor<8x1024x512xf32>
  ml_program.global private mutable @global0(dense<1.000000e+00> : tensor<8x512x1024xf32>) : tensor<8x512x1024xf32>
  func.func @matmul(%arg0: tensor<8x512x1024xf32>, %arg1: tensor<8x1024x512xf32>) -> tensor<8x512x512xf32> {
    %cst = arith.constant dense<0.000000e+00> : tensor<8x512x512xf32>
    %cst_0 = arith.constant 0.000000e+00 : f32
    ml_program.global_store @global1 = %arg1 : tensor<8x1024x512xf32>
    ml_program.global_store @global0 = %arg0 : tensor<8x512x1024xf32>
    %0 = linalg.fill ins(%cst_0 : f32) outs(%cst : tensor<8x512x512xf32>) -> tensor<8x512x512xf32>
    %1 = linalg.batch_matmul ins(%arg0, %arg1 : tensor<8x512x1024xf32>, tensor<8x1024x512xf32>) outs(%0 : tensor<8x512x512xf32>) -> tensor<8x512x512xf32>
    return %1 : tensor<8x512x512xf32>
  }
  func.func @dmatmul(%arg0: tensor<8x512x512xf32>) -> (tensor<8x512x1024xf32>, tensor<8x1024x512xf32>) {
    %cst = arith.constant dense<0.000000e+00> : tensor<8x1024x512xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<8x512x1024xf32>
    %global1 = ml_program.global_load @global1 : tensor<8x1024x512xf32>
    %global0 = ml_program.global_load @global0 : tensor<8x512x1024xf32>
    %0 = linalg.generic {indexing_maps = [#map, #map1, #map2], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%global1, %arg0 : tensor<8x1024x512xf32>, tensor<8x512x512xf32>) outs(%cst_0 : tensor<8x512x1024xf32>) {
    ^bb0(%in: f32, %in_1: f32, %out: f32):
      %2 = arith.mulf %in, %in_1 : f32
      %3 = arith.addf %2, %out : f32
      linalg.yield %3 : f32
    } -> tensor<8x512x1024xf32>
    %1 = linalg.generic {indexing_maps = [#map2, #map1, #map], iterator_types = ["parallel", "reduction", "parallel", "parallel"]} ins(%global0, %arg0 : tensor<8x512x1024xf32>, tensor<8x512x512xf32>) outs(%cst : tensor<8x1024x512xf32>) {
    ^bb0(%in: f32, %in_1: f32, %out: f32):
      %2 = arith.mulf %in, %in_1 : f32
      %3 = arith.addf %2, %out : f32
      linalg.yield %3 : f32
    } -> tensor<8x1024x512xf32>
    return %0, %1 : tensor<8x512x1024xf32>, tensor<8x1024x512xf32>
  }
}

