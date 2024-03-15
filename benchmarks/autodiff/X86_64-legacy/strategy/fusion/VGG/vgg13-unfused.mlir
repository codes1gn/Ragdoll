#map = affine_map<(d0, d1, d2) -> (d0, d2, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> ()>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map4 = affine_map<(d0, d1, d2, d3) -> (d0, d3, d2)>
#map5 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#map6 = affine_map<(d0, d1) -> (d0, d1)>
#map7 = affine_map<(d0, d1) -> (d0)>
#map8 = affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>
#map9 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map10 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map11 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map12 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#map13 = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3, d1)>
#map14 = affine_map<(d0, d1, d2, d3) -> (d0)>
#map15 = affine_map<(d0, d1, d2, d3) -> (d3, d1, d2, d0)>
#map16 = affine_map<(d0, d1, d2, d3) -> (d3, d0, d1, d2)>
#map17 = affine_map<(d0, d1, d2, d3) -> ()>
#map18 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d6)>
#map19 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d4, d5, d6, d3)>
#map20 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>
#map21 = affine_map<(d0, d1, d2, d3) -> (d3)>
module attributes {torch.debug_module_name = "VGG"} {
  ml_program.global private mutable @global78 : tensor<1x4096xf32>
  ml_program.global private mutable @global77 : tensor<1x4096xf32>
  ml_program.global private mutable @global76 : tensor<1x4096xf32>
  ml_program.global private mutable @global72 : tensor<1x4096xf32>
  ml_program.global private mutable @global71 : tensor<1x4096xf32>
  ml_program.global private mutable @global70 : tensor<1x4096xf32>
  ml_program.global private mutable @global65 : tensor<1x7x7x512xf32>
  ml_program.global private mutable @global64 : tensor<1x14x14x512xf32>
  ml_program.global private mutable @global63 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global62 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global59 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global58 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global56 : tensor<1x14x14x512xf32>
  ml_program.global private mutable @global55 : tensor<1x28x28x512xf32>
  ml_program.global private mutable @global54 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global53 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global50 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global49 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global47 : tensor<1x28x28x256xf32>
  ml_program.global private mutable @global46 : tensor<1x56x56x256xf32>
  ml_program.global private mutable @global45 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global44 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global41 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global40 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global38 : tensor<1x56x56x128xf32>
  ml_program.global private mutable @global37 : tensor<1x112x112x128xf32>
  ml_program.global private mutable @global36 : tensor<1x128x112x112xf32>
  ml_program.global private mutable @global35 : tensor<1x128x112x112xf32>
  ml_program.global private mutable @global32 : tensor<1x128x112x112xf32>
  ml_program.global private mutable @global31 : tensor<1x128x112x112xf32>
  ml_program.global private mutable @global29 : tensor<1x112x112x64xf32>
  ml_program.global private mutable @global28 : tensor<1x224x224x64xf32>
  ml_program.global private mutable @global27 : tensor<1x64x224x224xf32>
  ml_program.global private mutable @global26 : tensor<1x64x224x224xf32>
  ml_program.global private mutable @global23 : tensor<1x64x224x224xf32>
  ml_program.global private mutable @global22 : tensor<1x64x224x224xf32>
  ml_program.global private mutable @global19 : tensor<64x3x3x3xf32>
  ml_program.global private mutable @global18 : tensor<64x3x3x64xf32>
  ml_program.global private mutable @global17 : tensor<128x3x3x64xf32>
  ml_program.global private mutable @global16 : tensor<128x3x3x128xf32>
  ml_program.global private mutable @global15 : tensor<256x3x3x128xf32>
  ml_program.global private mutable @global14 : tensor<256x3x3x256xf32>
  ml_program.global private mutable @global13 : tensor<512x3x3x256xf32>
  ml_program.global private mutable @global12 : tensor<512x3x3x512xf32>
  ml_program.global private mutable @global11 : tensor<1x25088x4096xf32>
  ml_program.global private mutable @global9 : tensor<1x4096x4096xf32>
  ml_program.global private mutable @global8 : tensor<1x4096x1000xf32>
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %c2 = arith.constant 2 : index
    %cst = arith.constant dense<0.000000e+00> : tensor<1xf32>
    %cst_0 = arith.constant 0.000000e+00 : f32
    %0 = ml_program.global_load @global8 : tensor<1x4096x1000xf32>
    %1 = ml_program.global_load @global9 : tensor<1x4096x4096xf32>
    %2 = ml_program.global_load @global11 : tensor<1x25088x4096xf32>
    %3 = ml_program.global_load @global12 : tensor<512x3x3x512xf32>
    %4 = ml_program.global_load @global13 : tensor<512x3x3x256xf32>
    %5 = ml_program.global_load @global14 : tensor<256x3x3x256xf32>
    %6 = ml_program.global_load @global15 : tensor<256x3x3x128xf32>
    %7 = ml_program.global_load @global16 : tensor<128x3x3x128xf32>
    %8 = ml_program.global_load @global17 : tensor<128x3x3x64xf32>
    %9 = ml_program.global_load @global18 : tensor<64x3x3x64xf32>
    %10 = ml_program.global_load @global19 : tensor<64x3x3x3xf32>
    %11 = ml_program.global_load @global22 : tensor<1x64x224x224xf32>
    %12 = ml_program.global_load @global23 : tensor<1x64x224x224xf32>
    %13 = ml_program.global_load @global26 : tensor<1x64x224x224xf32>
    %14 = ml_program.global_load @global27 : tensor<1x64x224x224xf32>
    %15 = ml_program.global_load @global28 : tensor<1x224x224x64xf32>
    %16 = ml_program.global_load @global29 : tensor<1x112x112x64xf32>
    %17 = ml_program.global_load @global31 : tensor<1x128x112x112xf32>
    %18 = ml_program.global_load @global32 : tensor<1x128x112x112xf32>
    %19 = ml_program.global_load @global35 : tensor<1x128x112x112xf32>
    %20 = ml_program.global_load @global36 : tensor<1x128x112x112xf32>
    %21 = ml_program.global_load @global37 : tensor<1x112x112x128xf32>
    %22 = ml_program.global_load @global38 : tensor<1x56x56x128xf32>
    %23 = ml_program.global_load @global40 : tensor<1x256x56x56xf32>
    %24 = ml_program.global_load @global41 : tensor<1x256x56x56xf32>
    %25 = ml_program.global_load @global44 : tensor<1x256x56x56xf32>
    %26 = ml_program.global_load @global45 : tensor<1x256x56x56xf32>
    %27 = ml_program.global_load @global46 : tensor<1x56x56x256xf32>
    %28 = ml_program.global_load @global47 : tensor<1x28x28x256xf32>
    %29 = ml_program.global_load @global49 : tensor<1x512x28x28xf32>
    %30 = ml_program.global_load @global50 : tensor<1x512x28x28xf32>
    %31 = ml_program.global_load @global53 : tensor<1x512x28x28xf32>
    %32 = ml_program.global_load @global54 : tensor<1x512x28x28xf32>
    %33 = ml_program.global_load @global55 : tensor<1x28x28x512xf32>
    %34 = ml_program.global_load @global56 : tensor<1x14x14x512xf32>
    %35 = ml_program.global_load @global58 : tensor<1x512x14x14xf32>
    %36 = ml_program.global_load @global59 : tensor<1x512x14x14xf32>
    %37 = ml_program.global_load @global62 : tensor<1x512x14x14xf32>
    %38 = ml_program.global_load @global63 : tensor<1x512x14x14xf32>
    %39 = ml_program.global_load @global64 : tensor<1x14x14x512xf32>
    %40 = ml_program.global_load @global65 : tensor<1x7x7x512xf32>
    %41 = ml_program.global_load @global70 : tensor<1x4096xf32>
    %42 = ml_program.global_load @global71 : tensor<1x4096xf32>
    %43 = ml_program.global_load @global72 : tensor<1x4096xf32>
    %44 = ml_program.global_load @global76 : tensor<1x4096xf32>
    %45 = ml_program.global_load @global77 : tensor<1x4096xf32>
    %46 = ml_program.global_load @global78 : tensor<1x4096xf32>
    %expanded = tensor.expand_shape %arg0 [[0, 1], [2]] : tensor<1x1000xf32> into tensor<1x1x1000xf32>
    %47 = tensor.empty() : tensor<1x1000x4096xf32>
    %48 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<1x4096x1000xf32>) outs(%47 : tensor<1x1000x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1000x4096xf32>
    %49 = tensor.empty() : tensor<1x1x4096xf32>
    %50 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%49 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x4096xf32>
    %51 = linalg.generic {indexing_maps = [#map3, #map4, #map5], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded, %48 : tensor<1x1x1000xf32>, tensor<1x1000x4096xf32>) outs(%50 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.mulf %in, %in_15 : f32
      %305 = arith.addf %out, %304 : f32
      linalg.yield %305 : f32
    } -> tensor<1x1x4096xf32>
    %collapsed = tensor.collapse_shape %51 [[0, 1], [2]] : tensor<1x1x4096xf32> into tensor<1x4096xf32>
    %52 = tensor.empty() : tensor<1x4096xi1>
    %53 = linalg.generic {indexing_maps = [#map6, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%45, %46 : tensor<1x4096xf32>, tensor<1x4096xf32>) outs(%52 : tensor<1x4096xi1>) {
    ^bb0(%in: f32, %in_15: f32, %out: i1):
      %304 = arith.cmpf oeq, %in, %in_15 : f32
      linalg.yield %304 : i1
    } -> tensor<1x4096xi1>
    %54 = tensor.empty() : tensor<1x4096xf32>
    %55 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel"]} ins(%53, %collapsed, %cst : tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<1xf32>) outs(%54 : tensor<1x4096xf32>) {
    ^bb0(%in: i1, %in_15: f32, %in_16: f32, %out: f32):
      %304 = arith.select %in, %in_15, %in_16 : f32
      linalg.yield %304 : f32
    } -> tensor<1x4096xf32>
    %56 = tensor.empty() : tensor<1x4096xi1>
    %57 = linalg.generic {indexing_maps = [#map6, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%44, %45 : tensor<1x4096xf32>, tensor<1x4096xf32>) outs(%56 : tensor<1x4096xi1>) {
    ^bb0(%in: f32, %in_15: f32, %out: i1):
      %304 = arith.cmpf oeq, %in, %in_15 : f32
      linalg.yield %304 : i1
    } -> tensor<1x4096xi1>
    %58 = tensor.empty() : tensor<1x4096xf32>
    %59 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel"]} ins(%57, %55, %cst : tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<1xf32>) outs(%58 : tensor<1x4096xf32>) {
    ^bb0(%in: i1, %in_15: f32, %in_16: f32, %out: f32):
      %304 = arith.select %in, %in_15, %in_16 : f32
      linalg.yield %304 : f32
    } -> tensor<1x4096xf32>
    %expanded_1 = tensor.expand_shape %59 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %60 = tensor.empty() : tensor<1x4096x4096xf32>
    %61 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1 : tensor<1x4096x4096xf32>) outs(%60 : tensor<1x4096x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4096x4096xf32>
    %62 = tensor.empty() : tensor<1x1x4096xf32>
    %63 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%62 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x4096xf32>
    %64 = linalg.generic {indexing_maps = [#map3, #map4, #map5], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded_1, %61 : tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) outs(%63 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.mulf %in, %in_15 : f32
      %305 = arith.addf %out, %304 : f32
      linalg.yield %305 : f32
    } -> tensor<1x1x4096xf32>
    %collapsed_2 = tensor.collapse_shape %64 [[0, 1], [2]] : tensor<1x1x4096xf32> into tensor<1x4096xf32>
    %65 = tensor.empty() : tensor<1x4096xi1>
    %66 = linalg.generic {indexing_maps = [#map6, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%42, %43 : tensor<1x4096xf32>, tensor<1x4096xf32>) outs(%65 : tensor<1x4096xi1>) {
    ^bb0(%in: f32, %in_15: f32, %out: i1):
      %304 = arith.cmpf oeq, %in, %in_15 : f32
      linalg.yield %304 : i1
    } -> tensor<1x4096xi1>
    %67 = tensor.empty() : tensor<1x4096xf32>
    %68 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel"]} ins(%66, %collapsed_2, %cst : tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<1xf32>) outs(%67 : tensor<1x4096xf32>) {
    ^bb0(%in: i1, %in_15: f32, %in_16: f32, %out: f32):
      %304 = arith.select %in, %in_15, %in_16 : f32
      linalg.yield %304 : f32
    } -> tensor<1x4096xf32>
    %69 = tensor.empty() : tensor<1x4096xi1>
    %70 = linalg.generic {indexing_maps = [#map6, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%41, %42 : tensor<1x4096xf32>, tensor<1x4096xf32>) outs(%69 : tensor<1x4096xi1>) {
    ^bb0(%in: f32, %in_15: f32, %out: i1):
      %304 = arith.cmpf oeq, %in, %in_15 : f32
      linalg.yield %304 : i1
    } -> tensor<1x4096xi1>
    %71 = tensor.empty() : tensor<1x4096xf32>
    %72 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel"]} ins(%70, %68, %cst : tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<1xf32>) outs(%71 : tensor<1x4096xf32>) {
    ^bb0(%in: i1, %in_15: f32, %in_16: f32, %out: f32):
      %304 = arith.select %in, %in_15, %in_16 : f32
      linalg.yield %304 : f32
    } -> tensor<1x4096xf32>
    %expanded_3 = tensor.expand_shape %72 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %73 = tensor.empty() : tensor<1x4096x25088xf32>
    %74 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2 : tensor<1x25088x4096xf32>) outs(%73 : tensor<1x4096x25088xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4096x25088xf32>
    %75 = tensor.empty() : tensor<1x1x25088xf32>
    %76 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%75 : tensor<1x1x25088xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x25088xf32>
    %77 = linalg.generic {indexing_maps = [#map3, #map4, #map5], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded_3, %74 : tensor<1x1x4096xf32>, tensor<1x4096x25088xf32>) outs(%76 : tensor<1x1x25088xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.mulf %in, %in_15 : f32
      %305 = arith.addf %out, %304 : f32
      linalg.yield %305 : f32
    } -> tensor<1x1x25088xf32>
    %collapsed_4 = tensor.collapse_shape %77 [[0, 1], [2]] : tensor<1x1x25088xf32> into tensor<1x25088xf32>
    %expanded_5 = tensor.expand_shape %collapsed_4 [[0], [1, 2, 3]] : tensor<1x25088xf32> into tensor<1x512x7x7xf32>
    %78 = tensor.empty() : tensor<1x7x7x512xf32>
    %79 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_5 : tensor<1x512x7x7xf32>) outs(%78 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %80 = tensor.empty() : tensor<1x14x14x512xf32>
    %81 = tensor.empty() : tensor<2x2xf32>
    %82 = linalg.generic {indexing_maps = [#map10, #map11, #map12, #map12, #map10], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%39, %81, %40, %79 : tensor<1x14x14x512xf32>, tensor<2x2xf32>, tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%80 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_15: f32, %in_16: f32, %in_17: f32, %out: f32):
      %304 = arith.cmpf oge, %in, %in_16 : f32
      %305 = arith.select %304, %in_17, %cst_0 : f32
      %306 = arith.addf %out, %305 : f32
      linalg.yield %306 : f32
    } -> tensor<1x14x14x512xf32>
    %83 = tensor.empty() : tensor<1x512x14x14xf32>
    %84 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82 : tensor<1x14x14x512xf32>) outs(%83 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %85 = tensor.empty() : tensor<1x512x14x14xi1>
    %86 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %38 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%85 : tensor<1x512x14x14xi1>) {
    ^bb0(%in: f32, %in_15: f32, %out: i1):
      %304 = arith.cmpf oeq, %in, %in_15 : f32
      linalg.yield %304 : i1
    } -> tensor<1x512x14x14xi1>
    %87 = tensor.empty() : tensor<1x512x14x14xf32>
    %88 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %84, %cst : tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<1xf32>) outs(%87 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: i1, %in_15: f32, %in_16: f32, %out: f32):
      %304 = arith.select %in, %in_15, %in_16 : f32
      linalg.yield %304 : f32
    } -> tensor<1x512x14x14xf32>
    %89 = tensor.empty() : tensor<1x14x14x512xf32>
    %90 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88 : tensor<1x512x14x14xf32>) outs(%89 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %91 = tensor.empty() : tensor<512x3x3x512xf32>
    %92 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3 : tensor<512x3x3x512xf32>) outs(%91 : tensor<512x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x3x3x512xf32>
    %93 = tensor.empty() : tensor<512xf32>
    %94 = tensor.empty() : tensor<512x3x3x512xf32>
    %95 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%94 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %304 = linalg.index 0 : index
      %305 = linalg.index 1 : index
      %306 = arith.subi %c2, %305 : index
      %307 = linalg.index 2 : index
      %308 = linalg.index 3 : index
      %extracted = tensor.extract %92[%304, %306, %307, %308] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %96 = tensor.empty() : tensor<512x3x3x512xf32>
    %97 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%96 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %304 = linalg.index 0 : index
      %305 = linalg.index 1 : index
      %306 = linalg.index 2 : index
      %307 = arith.subi %c2, %306 : index
      %308 = linalg.index 3 : index
      %extracted = tensor.extract %95[%304, %305, %307, %308] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded = tensor.pad %90 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %98 = tensor.empty() : tensor<3x3x512x512xf32>
    %99 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97 : tensor<512x3x3x512xf32>) outs(%98 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %100 = tensor.empty() : tensor<1x14x14x512xf32>
    %101 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%100 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %102 = tensor.empty() : tensor<1x14x14x512xf32>
    %103 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded, %99 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%101 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.mulf %in, %in_15 : f32
      %305 = arith.addf %out, %304 : f32
      linalg.yield %305 : f32
    } -> tensor<1x14x14x512xf32>
    %104 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93, %103 : tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%102 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.addf %in, %in_15 : f32
      linalg.yield %304 : f32
    } -> tensor<1x14x14x512xf32>
    %105 = tensor.empty() : tensor<1x512x14x14xf32>
    %106 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104 : tensor<1x14x14x512xf32>) outs(%105 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %107 = tensor.empty() : tensor<1x512x14x14xi1>
    %108 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %36 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%107 : tensor<1x512x14x14xi1>) {
    ^bb0(%in: f32, %in_15: f32, %out: i1):
      %304 = arith.cmpf oeq, %in, %in_15 : f32
      linalg.yield %304 : i1
    } -> tensor<1x512x14x14xi1>
    %109 = tensor.empty() : tensor<1x512x14x14xf32>
    %110 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108, %106, %cst : tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<1xf32>) outs(%109 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: i1, %in_15: f32, %in_16: f32, %out: f32):
      %304 = arith.select %in, %in_15, %in_16 : f32
      linalg.yield %304 : f32
    } -> tensor<1x512x14x14xf32>
    %111 = tensor.empty() : tensor<1x14x14x512xf32>
    %112 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110 : tensor<1x512x14x14xf32>) outs(%111 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %113 = tensor.empty() : tensor<512x3x3x512xf32>
    %114 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%113 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %304 = linalg.index 0 : index
      %305 = linalg.index 1 : index
      %306 = arith.subi %c2, %305 : index
      %307 = linalg.index 2 : index
      %308 = linalg.index 3 : index
      %extracted = tensor.extract %92[%304, %306, %307, %308] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %115 = tensor.empty() : tensor<512x3x3x512xf32>
    %116 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%115 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %304 = linalg.index 0 : index
      %305 = linalg.index 1 : index
      %306 = linalg.index 2 : index
      %307 = arith.subi %c2, %306 : index
      %308 = linalg.index 3 : index
      %extracted = tensor.extract %114[%304, %305, %307, %308] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_6 = tensor.pad %112 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %117 = tensor.empty() : tensor<3x3x512x512xf32>
    %118 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116 : tensor<512x3x3x512xf32>) outs(%117 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %119 = tensor.empty() : tensor<1x14x14x512xf32>
    %120 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%119 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %121 = tensor.empty() : tensor<1x14x14x512xf32>
    %122 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_6, %118 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%120 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.mulf %in, %in_15 : f32
      %305 = arith.addf %out, %304 : f32
      linalg.yield %305 : f32
    } -> tensor<1x14x14x512xf32>
    %123 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93, %122 : tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%121 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.addf %in, %in_15 : f32
      linalg.yield %304 : f32
    } -> tensor<1x14x14x512xf32>
    %124 = tensor.empty() : tensor<1x28x28x512xf32>
    %125 = linalg.generic {indexing_maps = [#map10, #map11, #map12, #map12, #map10], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%33, %81, %34, %123 : tensor<1x28x28x512xf32>, tensor<2x2xf32>, tensor<1x14x14x512xf32>, tensor<1x14x14x512xf32>) outs(%124 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_15: f32, %in_16: f32, %in_17: f32, %out: f32):
      %304 = arith.cmpf oge, %in, %in_16 : f32
      %305 = arith.select %304, %in_17, %cst_0 : f32
      %306 = arith.addf %out, %305 : f32
      linalg.yield %306 : f32
    } -> tensor<1x28x28x512xf32>
    %126 = tensor.empty() : tensor<1x512x28x28xf32>
    %127 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125 : tensor<1x28x28x512xf32>) outs(%126 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %128 = tensor.empty() : tensor<1x512x28x28xi1>
    %129 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %32 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%128 : tensor<1x512x28x28xi1>) {
    ^bb0(%in: f32, %in_15: f32, %out: i1):
      %304 = arith.cmpf oeq, %in, %in_15 : f32
      linalg.yield %304 : i1
    } -> tensor<1x512x28x28xi1>
    %130 = tensor.empty() : tensor<1x512x28x28xf32>
    %131 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %127, %cst : tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<1xf32>) outs(%130 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: i1, %in_15: f32, %in_16: f32, %out: f32):
      %304 = arith.select %in, %in_15, %in_16 : f32
      linalg.yield %304 : f32
    } -> tensor<1x512x28x28xf32>
    %132 = tensor.empty() : tensor<1x28x28x512xf32>
    %133 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131 : tensor<1x512x28x28xf32>) outs(%132 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %134 = tensor.empty() : tensor<512x3x3x512xf32>
    %135 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%134 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %304 = linalg.index 0 : index
      %305 = linalg.index 1 : index
      %306 = arith.subi %c2, %305 : index
      %307 = linalg.index 2 : index
      %308 = linalg.index 3 : index
      %extracted = tensor.extract %92[%304, %306, %307, %308] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %136 = tensor.empty() : tensor<512x3x3x512xf32>
    %137 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%136 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %304 = linalg.index 0 : index
      %305 = linalg.index 1 : index
      %306 = linalg.index 2 : index
      %307 = arith.subi %c2, %306 : index
      %308 = linalg.index 3 : index
      %extracted = tensor.extract %135[%304, %305, %307, %308] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_7 = tensor.pad %133 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %138 = tensor.empty() : tensor<3x3x512x512xf32>
    %139 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137 : tensor<512x3x3x512xf32>) outs(%138 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %140 = tensor.empty() : tensor<1x28x28x512xf32>
    %141 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%140 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %142 = tensor.empty() : tensor<1x28x28x512xf32>
    %143 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_7, %139 : tensor<1x30x30x512xf32>, tensor<3x3x512x512xf32>) outs(%141 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.mulf %in, %in_15 : f32
      %305 = arith.addf %out, %304 : f32
      linalg.yield %305 : f32
    } -> tensor<1x28x28x512xf32>
    %144 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93, %143 : tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%142 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.addf %in, %in_15 : f32
      linalg.yield %304 : f32
    } -> tensor<1x28x28x512xf32>
    %145 = tensor.empty() : tensor<1x512x28x28xf32>
    %146 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144 : tensor<1x28x28x512xf32>) outs(%145 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %147 = tensor.empty() : tensor<1x512x28x28xi1>
    %148 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %30 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%147 : tensor<1x512x28x28xi1>) {
    ^bb0(%in: f32, %in_15: f32, %out: i1):
      %304 = arith.cmpf oeq, %in, %in_15 : f32
      linalg.yield %304 : i1
    } -> tensor<1x512x28x28xi1>
    %149 = tensor.empty() : tensor<1x512x28x28xf32>
    %150 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %146, %cst : tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<1xf32>) outs(%149 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: i1, %in_15: f32, %in_16: f32, %out: f32):
      %304 = arith.select %in, %in_15, %in_16 : f32
      linalg.yield %304 : f32
    } -> tensor<1x512x28x28xf32>
    %151 = tensor.empty() : tensor<1x28x28x512xf32>
    %152 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150 : tensor<1x512x28x28xf32>) outs(%151 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %153 = tensor.empty() : tensor<256x3x3x512xf32>
    %154 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<512x3x3x256xf32>) outs(%153 : tensor<256x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x512xf32>
    %155 = tensor.empty() : tensor<256xf32>
    %156 = tensor.empty() : tensor<256x3x3x512xf32>
    %157 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%156 : tensor<256x3x3x512xf32>) {
    ^bb0(%out: f32):
      %304 = linalg.index 0 : index
      %305 = linalg.index 1 : index
      %306 = arith.subi %c2, %305 : index
      %307 = linalg.index 2 : index
      %308 = linalg.index 3 : index
      %extracted = tensor.extract %154[%304, %306, %307, %308] : tensor<256x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x512xf32>
    %158 = tensor.empty() : tensor<256x3x3x512xf32>
    %159 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%158 : tensor<256x3x3x512xf32>) {
    ^bb0(%out: f32):
      %304 = linalg.index 0 : index
      %305 = linalg.index 1 : index
      %306 = linalg.index 2 : index
      %307 = arith.subi %c2, %306 : index
      %308 = linalg.index 3 : index
      %extracted = tensor.extract %157[%304, %305, %307, %308] : tensor<256x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x512xf32>
    %padded_8 = tensor.pad %152 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %160 = tensor.empty() : tensor<3x3x512x256xf32>
    %161 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159 : tensor<256x3x3x512xf32>) outs(%160 : tensor<3x3x512x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x256xf32>
    %162 = tensor.empty() : tensor<1x28x28x256xf32>
    %163 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%162 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x256xf32>
    %164 = tensor.empty() : tensor<1x28x28x256xf32>
    %165 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_8, %161 : tensor<1x30x30x512xf32>, tensor<3x3x512x256xf32>) outs(%163 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.mulf %in, %in_15 : f32
      %305 = arith.addf %out, %304 : f32
      linalg.yield %305 : f32
    } -> tensor<1x28x28x256xf32>
    %166 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155, %165 : tensor<256xf32>, tensor<1x28x28x256xf32>) outs(%164 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.addf %in, %in_15 : f32
      linalg.yield %304 : f32
    } -> tensor<1x28x28x256xf32>
    %167 = tensor.empty() : tensor<1x56x56x256xf32>
    %168 = linalg.generic {indexing_maps = [#map10, #map11, #map12, #map12, #map10], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%27, %81, %28, %166 : tensor<1x56x56x256xf32>, tensor<2x2xf32>, tensor<1x28x28x256xf32>, tensor<1x28x28x256xf32>) outs(%167 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_15: f32, %in_16: f32, %in_17: f32, %out: f32):
      %304 = arith.cmpf oge, %in, %in_16 : f32
      %305 = arith.select %304, %in_17, %cst_0 : f32
      %306 = arith.addf %out, %305 : f32
      linalg.yield %306 : f32
    } -> tensor<1x56x56x256xf32>
    %169 = tensor.empty() : tensor<1x256x56x56xf32>
    %170 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168 : tensor<1x56x56x256xf32>) outs(%169 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %171 = tensor.empty() : tensor<1x256x56x56xi1>
    %172 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %26 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%171 : tensor<1x256x56x56xi1>) {
    ^bb0(%in: f32, %in_15: f32, %out: i1):
      %304 = arith.cmpf oeq, %in, %in_15 : f32
      linalg.yield %304 : i1
    } -> tensor<1x256x56x56xi1>
    %173 = tensor.empty() : tensor<1x256x56x56xf32>
    %174 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172, %170, %cst : tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<1xf32>) outs(%173 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: i1, %in_15: f32, %in_16: f32, %out: f32):
      %304 = arith.select %in, %in_15, %in_16 : f32
      linalg.yield %304 : f32
    } -> tensor<1x256x56x56xf32>
    %175 = tensor.empty() : tensor<1x56x56x256xf32>
    %176 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174 : tensor<1x256x56x56xf32>) outs(%175 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %177 = tensor.empty() : tensor<256x3x3x256xf32>
    %178 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<256x3x3x256xf32>) outs(%177 : tensor<256x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x256xf32>
    %179 = tensor.empty() : tensor<256x3x3x256xf32>
    %180 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%179 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %304 = linalg.index 0 : index
      %305 = linalg.index 1 : index
      %306 = arith.subi %c2, %305 : index
      %307 = linalg.index 2 : index
      %308 = linalg.index 3 : index
      %extracted = tensor.extract %178[%304, %306, %307, %308] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %181 = tensor.empty() : tensor<256x3x3x256xf32>
    %182 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%181 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %304 = linalg.index 0 : index
      %305 = linalg.index 1 : index
      %306 = linalg.index 2 : index
      %307 = arith.subi %c2, %306 : index
      %308 = linalg.index 3 : index
      %extracted = tensor.extract %180[%304, %305, %307, %308] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_9 = tensor.pad %176 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %183 = tensor.empty() : tensor<3x3x256x256xf32>
    %184 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182 : tensor<256x3x3x256xf32>) outs(%183 : tensor<3x3x256x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x256x256xf32>
    %185 = tensor.empty() : tensor<1x56x56x256xf32>
    %186 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%185 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %187 = tensor.empty() : tensor<1x56x56x256xf32>
    %188 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_9, %184 : tensor<1x58x58x256xf32>, tensor<3x3x256x256xf32>) outs(%186 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.mulf %in, %in_15 : f32
      %305 = arith.addf %out, %304 : f32
      linalg.yield %305 : f32
    } -> tensor<1x56x56x256xf32>
    %189 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155, %188 : tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%187 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.addf %in, %in_15 : f32
      linalg.yield %304 : f32
    } -> tensor<1x56x56x256xf32>
    %190 = tensor.empty() : tensor<1x256x56x56xf32>
    %191 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189 : tensor<1x56x56x256xf32>) outs(%190 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %192 = tensor.empty() : tensor<1x256x56x56xi1>
    %193 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %24 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%192 : tensor<1x256x56x56xi1>) {
    ^bb0(%in: f32, %in_15: f32, %out: i1):
      %304 = arith.cmpf oeq, %in, %in_15 : f32
      linalg.yield %304 : i1
    } -> tensor<1x256x56x56xi1>
    %194 = tensor.empty() : tensor<1x256x56x56xf32>
    %195 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%193, %191, %cst : tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<1xf32>) outs(%194 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: i1, %in_15: f32, %in_16: f32, %out: f32):
      %304 = arith.select %in, %in_15, %in_16 : f32
      linalg.yield %304 : f32
    } -> tensor<1x256x56x56xf32>
    %196 = tensor.empty() : tensor<1x56x56x256xf32>
    %197 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<1x256x56x56xf32>) outs(%196 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %198 = tensor.empty() : tensor<128x3x3x256xf32>
    %199 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<256x3x3x128xf32>) outs(%198 : tensor<128x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x256xf32>
    %200 = tensor.empty() : tensor<128xf32>
    %201 = tensor.empty() : tensor<128x3x3x256xf32>
    %202 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%201 : tensor<128x3x3x256xf32>) {
    ^bb0(%out: f32):
      %304 = linalg.index 0 : index
      %305 = linalg.index 1 : index
      %306 = arith.subi %c2, %305 : index
      %307 = linalg.index 2 : index
      %308 = linalg.index 3 : index
      %extracted = tensor.extract %199[%304, %306, %307, %308] : tensor<128x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x256xf32>
    %203 = tensor.empty() : tensor<128x3x3x256xf32>
    %204 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%203 : tensor<128x3x3x256xf32>) {
    ^bb0(%out: f32):
      %304 = linalg.index 0 : index
      %305 = linalg.index 1 : index
      %306 = linalg.index 2 : index
      %307 = arith.subi %c2, %306 : index
      %308 = linalg.index 3 : index
      %extracted = tensor.extract %202[%304, %305, %307, %308] : tensor<128x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x256xf32>
    %padded_10 = tensor.pad %197 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %205 = tensor.empty() : tensor<3x3x256x128xf32>
    %206 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204 : tensor<128x3x3x256xf32>) outs(%205 : tensor<3x3x256x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x256x128xf32>
    %207 = tensor.empty() : tensor<1x56x56x128xf32>
    %208 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%207 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x128xf32>
    %209 = tensor.empty() : tensor<1x56x56x128xf32>
    %210 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_10, %206 : tensor<1x58x58x256xf32>, tensor<3x3x256x128xf32>) outs(%208 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.mulf %in, %in_15 : f32
      %305 = arith.addf %out, %304 : f32
      linalg.yield %305 : f32
    } -> tensor<1x56x56x128xf32>
    %211 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200, %210 : tensor<128xf32>, tensor<1x56x56x128xf32>) outs(%209 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.addf %in, %in_15 : f32
      linalg.yield %304 : f32
    } -> tensor<1x56x56x128xf32>
    %212 = tensor.empty() : tensor<1x112x112x128xf32>
    %213 = linalg.generic {indexing_maps = [#map10, #map11, #map12, #map12, #map10], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%21, %81, %22, %211 : tensor<1x112x112x128xf32>, tensor<2x2xf32>, tensor<1x56x56x128xf32>, tensor<1x56x56x128xf32>) outs(%212 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_15: f32, %in_16: f32, %in_17: f32, %out: f32):
      %304 = arith.cmpf oge, %in, %in_16 : f32
      %305 = arith.select %304, %in_17, %cst_0 : f32
      %306 = arith.addf %out, %305 : f32
      linalg.yield %306 : f32
    } -> tensor<1x112x112x128xf32>
    %214 = tensor.empty() : tensor<1x128x112x112xf32>
    %215 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213 : tensor<1x112x112x128xf32>) outs(%214 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x112x112xf32>
    %216 = tensor.empty() : tensor<1x128x112x112xi1>
    %217 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %20 : tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>) outs(%216 : tensor<1x128x112x112xi1>) {
    ^bb0(%in: f32, %in_15: f32, %out: i1):
      %304 = arith.cmpf oeq, %in, %in_15 : f32
      linalg.yield %304 : i1
    } -> tensor<1x128x112x112xi1>
    %218 = tensor.empty() : tensor<1x128x112x112xf32>
    %219 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217, %215, %cst : tensor<1x128x112x112xi1>, tensor<1x128x112x112xf32>, tensor<1xf32>) outs(%218 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: i1, %in_15: f32, %in_16: f32, %out: f32):
      %304 = arith.select %in, %in_15, %in_16 : f32
      linalg.yield %304 : f32
    } -> tensor<1x128x112x112xf32>
    %220 = tensor.empty() : tensor<1x112x112x128xf32>
    %221 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219 : tensor<1x128x112x112xf32>) outs(%220 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x128xf32>
    %222 = tensor.empty() : tensor<128x3x3x128xf32>
    %223 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<128x3x3x128xf32>) outs(%222 : tensor<128x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x128xf32>
    %224 = tensor.empty() : tensor<128x3x3x128xf32>
    %225 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%224 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %304 = linalg.index 0 : index
      %305 = linalg.index 1 : index
      %306 = arith.subi %c2, %305 : index
      %307 = linalg.index 2 : index
      %308 = linalg.index 3 : index
      %extracted = tensor.extract %223[%304, %306, %307, %308] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %226 = tensor.empty() : tensor<128x3x3x128xf32>
    %227 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%226 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %304 = linalg.index 0 : index
      %305 = linalg.index 1 : index
      %306 = linalg.index 2 : index
      %307 = arith.subi %c2, %306 : index
      %308 = linalg.index 3 : index
      %extracted = tensor.extract %225[%304, %305, %307, %308] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %padded_11 = tensor.pad %221 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x112x112x128xf32> to tensor<1x114x114x128xf32>
    %228 = tensor.empty() : tensor<3x3x128x128xf32>
    %229 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227 : tensor<128x3x3x128xf32>) outs(%228 : tensor<3x3x128x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x128x128xf32>
    %230 = tensor.empty() : tensor<1x112x112x128xf32>
    %231 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%230 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x128xf32>
    %232 = tensor.empty() : tensor<1x112x112x128xf32>
    %233 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_11, %229 : tensor<1x114x114x128xf32>, tensor<3x3x128x128xf32>) outs(%231 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.mulf %in, %in_15 : f32
      %305 = arith.addf %out, %304 : f32
      linalg.yield %305 : f32
    } -> tensor<1x112x112x128xf32>
    %234 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200, %233 : tensor<128xf32>, tensor<1x112x112x128xf32>) outs(%232 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.addf %in, %in_15 : f32
      linalg.yield %304 : f32
    } -> tensor<1x112x112x128xf32>
    %235 = tensor.empty() : tensor<1x128x112x112xf32>
    %236 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234 : tensor<1x112x112x128xf32>) outs(%235 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x112x112xf32>
    %237 = tensor.empty() : tensor<1x128x112x112xi1>
    %238 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %18 : tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>) outs(%237 : tensor<1x128x112x112xi1>) {
    ^bb0(%in: f32, %in_15: f32, %out: i1):
      %304 = arith.cmpf oeq, %in, %in_15 : f32
      linalg.yield %304 : i1
    } -> tensor<1x128x112x112xi1>
    %239 = tensor.empty() : tensor<1x128x112x112xf32>
    %240 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %236, %cst : tensor<1x128x112x112xi1>, tensor<1x128x112x112xf32>, tensor<1xf32>) outs(%239 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: i1, %in_15: f32, %in_16: f32, %out: f32):
      %304 = arith.select %in, %in_15, %in_16 : f32
      linalg.yield %304 : f32
    } -> tensor<1x128x112x112xf32>
    %241 = tensor.empty() : tensor<1x112x112x128xf32>
    %242 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240 : tensor<1x128x112x112xf32>) outs(%241 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x128xf32>
    %243 = tensor.empty() : tensor<64x3x3x128xf32>
    %244 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<128x3x3x64xf32>) outs(%243 : tensor<64x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x128xf32>
    %245 = tensor.empty() : tensor<64xf32>
    %246 = tensor.empty() : tensor<64x3x3x128xf32>
    %247 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%246 : tensor<64x3x3x128xf32>) {
    ^bb0(%out: f32):
      %304 = linalg.index 0 : index
      %305 = linalg.index 1 : index
      %306 = arith.subi %c2, %305 : index
      %307 = linalg.index 2 : index
      %308 = linalg.index 3 : index
      %extracted = tensor.extract %244[%304, %306, %307, %308] : tensor<64x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x128xf32>
    %248 = tensor.empty() : tensor<64x3x3x128xf32>
    %249 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%248 : tensor<64x3x3x128xf32>) {
    ^bb0(%out: f32):
      %304 = linalg.index 0 : index
      %305 = linalg.index 1 : index
      %306 = linalg.index 2 : index
      %307 = arith.subi %c2, %306 : index
      %308 = linalg.index 3 : index
      %extracted = tensor.extract %247[%304, %305, %307, %308] : tensor<64x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x128xf32>
    %padded_12 = tensor.pad %242 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x112x112x128xf32> to tensor<1x114x114x128xf32>
    %250 = tensor.empty() : tensor<3x3x128x64xf32>
    %251 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249 : tensor<64x3x3x128xf32>) outs(%250 : tensor<3x3x128x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x128x64xf32>
    %252 = tensor.empty() : tensor<1x112x112x64xf32>
    %253 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%252 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x64xf32>
    %254 = tensor.empty() : tensor<1x112x112x64xf32>
    %255 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_12, %251 : tensor<1x114x114x128xf32>, tensor<3x3x128x64xf32>) outs(%253 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.mulf %in, %in_15 : f32
      %305 = arith.addf %out, %304 : f32
      linalg.yield %305 : f32
    } -> tensor<1x112x112x64xf32>
    %256 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %255 : tensor<64xf32>, tensor<1x112x112x64xf32>) outs(%254 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.addf %in, %in_15 : f32
      linalg.yield %304 : f32
    } -> tensor<1x112x112x64xf32>
    %257 = tensor.empty() : tensor<1x224x224x64xf32>
    %258 = linalg.generic {indexing_maps = [#map10, #map11, #map12, #map12, #map10], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%15, %81, %16, %256 : tensor<1x224x224x64xf32>, tensor<2x2xf32>, tensor<1x112x112x64xf32>, tensor<1x112x112x64xf32>) outs(%257 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_15: f32, %in_16: f32, %in_17: f32, %out: f32):
      %304 = arith.cmpf oge, %in, %in_16 : f32
      %305 = arith.select %304, %in_17, %cst_0 : f32
      %306 = arith.addf %out, %305 : f32
      linalg.yield %306 : f32
    } -> tensor<1x224x224x64xf32>
    %259 = tensor.empty() : tensor<1x64x224x224xf32>
    %260 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258 : tensor<1x224x224x64xf32>) outs(%259 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x224x224xf32>
    %261 = tensor.empty() : tensor<1x64x224x224xi1>
    %262 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13, %14 : tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>) outs(%261 : tensor<1x64x224x224xi1>) {
    ^bb0(%in: f32, %in_15: f32, %out: i1):
      %304 = arith.cmpf oeq, %in, %in_15 : f32
      linalg.yield %304 : i1
    } -> tensor<1x64x224x224xi1>
    %263 = tensor.empty() : tensor<1x64x224x224xf32>
    %264 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262, %260, %cst : tensor<1x64x224x224xi1>, tensor<1x64x224x224xf32>, tensor<1xf32>) outs(%263 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: i1, %in_15: f32, %in_16: f32, %out: f32):
      %304 = arith.select %in, %in_15, %in_16 : f32
      linalg.yield %304 : f32
    } -> tensor<1x64x224x224xf32>
    %265 = tensor.empty() : tensor<1x224x224x64xf32>
    %266 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264 : tensor<1x64x224x224xf32>) outs(%265 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x224x224x64xf32>
    %267 = tensor.empty() : tensor<64x3x3x64xf32>
    %268 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<64x3x3x64xf32>) outs(%267 : tensor<64x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x64xf32>
    %269 = tensor.empty() : tensor<64x3x3x64xf32>
    %270 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%269 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %304 = linalg.index 0 : index
      %305 = linalg.index 1 : index
      %306 = arith.subi %c2, %305 : index
      %307 = linalg.index 2 : index
      %308 = linalg.index 3 : index
      %extracted = tensor.extract %268[%304, %306, %307, %308] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %271 = tensor.empty() : tensor<64x3x3x64xf32>
    %272 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%271 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %304 = linalg.index 0 : index
      %305 = linalg.index 1 : index
      %306 = linalg.index 2 : index
      %307 = arith.subi %c2, %306 : index
      %308 = linalg.index 3 : index
      %extracted = tensor.extract %270[%304, %305, %307, %308] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %padded_13 = tensor.pad %266 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x224x224x64xf32> to tensor<1x226x226x64xf32>
    %273 = tensor.empty() : tensor<3x3x64x64xf32>
    %274 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272 : tensor<64x3x3x64xf32>) outs(%273 : tensor<3x3x64x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x64x64xf32>
    %275 = tensor.empty() : tensor<1x224x224x64xf32>
    %276 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%275 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x224x224x64xf32>
    %277 = tensor.empty() : tensor<1x224x224x64xf32>
    %278 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_13, %274 : tensor<1x226x226x64xf32>, tensor<3x3x64x64xf32>) outs(%276 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.mulf %in, %in_15 : f32
      %305 = arith.addf %out, %304 : f32
      linalg.yield %305 : f32
    } -> tensor<1x224x224x64xf32>
    %279 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %278 : tensor<64xf32>, tensor<1x224x224x64xf32>) outs(%277 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.addf %in, %in_15 : f32
      linalg.yield %304 : f32
    } -> tensor<1x224x224x64xf32>
    %280 = tensor.empty() : tensor<1x64x224x224xf32>
    %281 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279 : tensor<1x224x224x64xf32>) outs(%280 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x224x224xf32>
    %282 = tensor.empty() : tensor<1x64x224x224xi1>
    %283 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %12 : tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>) outs(%282 : tensor<1x64x224x224xi1>) {
    ^bb0(%in: f32, %in_15: f32, %out: i1):
      %304 = arith.cmpf oeq, %in, %in_15 : f32
      linalg.yield %304 : i1
    } -> tensor<1x64x224x224xi1>
    %284 = tensor.empty() : tensor<1x64x224x224xf32>
    %285 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283, %281, %cst : tensor<1x64x224x224xi1>, tensor<1x64x224x224xf32>, tensor<1xf32>) outs(%284 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: i1, %in_15: f32, %in_16: f32, %out: f32):
      %304 = arith.select %in, %in_15, %in_16 : f32
      linalg.yield %304 : f32
    } -> tensor<1x64x224x224xf32>
    %286 = tensor.empty() : tensor<1x224x224x64xf32>
    %287 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285 : tensor<1x64x224x224xf32>) outs(%286 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x224x224x64xf32>
    %288 = tensor.empty() : tensor<3x3x3x64xf32>
    %289 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<64x3x3x3xf32>) outs(%288 : tensor<3x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x3x64xf32>
    %290 = tensor.empty() : tensor<3xf32>
    %291 = tensor.empty() : tensor<3x3x3x64xf32>
    %292 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%291 : tensor<3x3x3x64xf32>) {
    ^bb0(%out: f32):
      %304 = linalg.index 0 : index
      %305 = linalg.index 1 : index
      %306 = arith.subi %c2, %305 : index
      %307 = linalg.index 2 : index
      %308 = linalg.index 3 : index
      %extracted = tensor.extract %289[%304, %306, %307, %308] : tensor<3x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x3x64xf32>
    %293 = tensor.empty() : tensor<3x3x3x64xf32>
    %294 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%293 : tensor<3x3x3x64xf32>) {
    ^bb0(%out: f32):
      %304 = linalg.index 0 : index
      %305 = linalg.index 1 : index
      %306 = linalg.index 2 : index
      %307 = arith.subi %c2, %306 : index
      %308 = linalg.index 3 : index
      %extracted = tensor.extract %292[%304, %305, %307, %308] : tensor<3x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x3x64xf32>
    %padded_14 = tensor.pad %287 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x224x224x64xf32> to tensor<1x226x226x64xf32>
    %295 = tensor.empty() : tensor<3x3x64x3xf32>
    %296 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294 : tensor<3x3x3x64xf32>) outs(%295 : tensor<3x3x64x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x64x3xf32>
    %297 = tensor.empty() : tensor<1x224x224x3xf32>
    %298 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%297 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x224x224x3xf32>
    %299 = tensor.empty() : tensor<1x224x224x3xf32>
    %300 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_14, %296 : tensor<1x226x226x64xf32>, tensor<3x3x64x3xf32>) outs(%298 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.mulf %in, %in_15 : f32
      %305 = arith.addf %out, %304 : f32
      linalg.yield %305 : f32
    } -> tensor<1x224x224x3xf32>
    %301 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%290, %300 : tensor<3xf32>, tensor<1x224x224x3xf32>) outs(%299 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %in_15: f32, %out: f32):
      %304 = arith.addf %in, %in_15 : f32
      linalg.yield %304 : f32
    } -> tensor<1x224x224x3xf32>
    %302 = tensor.empty() : tensor<1x3x224x224xf32>
    %303 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301 : tensor<1x224x224x3xf32>) outs(%302 : tensor<1x3x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3x224x224xf32>
    return %303 : tensor<1x3x224x224xf32>
  }
}

