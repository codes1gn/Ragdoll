
#map = affine_map<(d0, d1, d2) -> ()>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map2 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d4)> // BMK
#map3 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d4, d3)> // BKN -> BMN
#map4 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d3, d2)> // BNQ
#map5 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2)> // BMQ
module {
  func.func @matmul(%arg0: tensor<4x1024x1024xf32>, %arg1: tensor<4x1024x1024xf32>, %arg2: tensor<4x1024x1024xf32>) -> tensor<4x1024x1024xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %1 = tensor.empty() : tensor<4x1024x1024xf32>
    %3 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst : f32) outs(%1 : tensor<4x1024x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x1024x1024xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map3, #map4, #map5], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%arg0, %arg1, %arg2 : tensor<4x1024x1024xf32>, tensor<4x1024x1024xf32>, tensor<4x1024x1024xf32>) outs(%3 : tensor<4x1024x1024xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %out: f32):
      %6 = arith.mulf %in, %in_0 : f32 // MN
      %8 = arith.mulf %6, %in_1 : f32 // MN * NQ = MQ
      %7 = arith.addf %out, %8 : f32
      linalg.yield %7 : f32
    } -> tensor<4x1024x1024xf32>
    return %5 : tensor<4x1024x1024xf32>
  }
}
