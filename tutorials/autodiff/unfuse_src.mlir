
#map = affine_map<(d0, d1, d2) -> ()>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, d3, d2)>
#map4 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
module {
  func.func @matmul(%arg0: tensor<4x1024x1024xf32>, %arg1: tensor<4x1024x1024xf32>, %arg2: tensor<4x1024x1024xf32>) -> tensor<4x1024x1024xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = tensor.empty() : tensor<4x1024x1024xf32>
    %1 = tensor.empty() : tensor<4x1024x1024xf32>
    %2 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst : f32) outs(%0 : tensor<4x1024x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x1024x1024xf32>
    %3 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst : f32) outs(%1 : tensor<4x1024x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x1024x1024xf32>
    %4 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%arg0, %arg1 : tensor<4x1024x1024xf32>, tensor<4x1024x1024xf32>) outs(%2 : tensor<4x1024x1024xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %6 = arith.mulf %in, %in_0 : f32
      %7 = arith.addf %out, %6 : f32
      linalg.yield %7 : f32
    } -> tensor<4x1024x1024xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%4, %arg2 : tensor<4x1024x1024xf32>, tensor<4x1024x1024xf32>) outs(%3 : tensor<4x1024x1024xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %6 = arith.mulf %in, %in_0 : f32
      %7 = arith.addf %out, %6 : f32
      linalg.yield %7 : f32
    } -> tensor<4x1024x1024xf32>
    return %5 : tensor<4x1024x1024xf32>
  }
}
