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
  ml_program.global private mutable @global90 : tensor<1x4096xf32>
  ml_program.global private mutable @global89 : tensor<1x4096xf32>
  ml_program.global private mutable @global88 : tensor<1x4096xf32>
  ml_program.global private mutable @global84 : tensor<1x4096xf32>
  ml_program.global private mutable @global83 : tensor<1x4096xf32>
  ml_program.global private mutable @global82 : tensor<1x4096xf32>
  ml_program.global private mutable @global77 : tensor<1x7x7x512xf32>
  ml_program.global private mutable @global76 : tensor<1x14x14x512xf32>
  ml_program.global private mutable @global75 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global74 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global71 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global70 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global67 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global66 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global64 : tensor<1x14x14x512xf32>
  ml_program.global private mutable @global63 : tensor<1x28x28x512xf32>
  ml_program.global private mutable @global62 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global61 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global58 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global57 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global54 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global53 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global51 : tensor<1x28x28x256xf32>
  ml_program.global private mutable @global50 : tensor<1x56x56x256xf32>
  ml_program.global private mutable @global49 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global48 : tensor<1x256x56x56xf32>
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
    %27 = ml_program.global_load @global48 : tensor<1x256x56x56xf32>
    %28 = ml_program.global_load @global49 : tensor<1x256x56x56xf32>
    %29 = ml_program.global_load @global50 : tensor<1x56x56x256xf32>
    %30 = ml_program.global_load @global51 : tensor<1x28x28x256xf32>
    %31 = ml_program.global_load @global53 : tensor<1x512x28x28xf32>
    %32 = ml_program.global_load @global54 : tensor<1x512x28x28xf32>
    %33 = ml_program.global_load @global57 : tensor<1x512x28x28xf32>
    %34 = ml_program.global_load @global58 : tensor<1x512x28x28xf32>
    %35 = ml_program.global_load @global61 : tensor<1x512x28x28xf32>
    %36 = ml_program.global_load @global62 : tensor<1x512x28x28xf32>
    %37 = ml_program.global_load @global63 : tensor<1x28x28x512xf32>
    %38 = ml_program.global_load @global64 : tensor<1x14x14x512xf32>
    %39 = ml_program.global_load @global66 : tensor<1x512x14x14xf32>
    %40 = ml_program.global_load @global67 : tensor<1x512x14x14xf32>
    %41 = ml_program.global_load @global70 : tensor<1x512x14x14xf32>
    %42 = ml_program.global_load @global71 : tensor<1x512x14x14xf32>
    %43 = ml_program.global_load @global74 : tensor<1x512x14x14xf32>
    %44 = ml_program.global_load @global75 : tensor<1x512x14x14xf32>
    %45 = ml_program.global_load @global76 : tensor<1x14x14x512xf32>
    %46 = ml_program.global_load @global77 : tensor<1x7x7x512xf32>
    %47 = ml_program.global_load @global82 : tensor<1x4096xf32>
    %48 = ml_program.global_load @global83 : tensor<1x4096xf32>
    %49 = ml_program.global_load @global84 : tensor<1x4096xf32>
    %50 = ml_program.global_load @global88 : tensor<1x4096xf32>
    %51 = ml_program.global_load @global89 : tensor<1x4096xf32>
    %52 = ml_program.global_load @global90 : tensor<1x4096xf32>
    %expanded = tensor.expand_shape %arg0 [[0, 1], [2]] : tensor<1x1000xf32> into tensor<1x1x1000xf32>
    %53 = tensor.empty() : tensor<1x1000x4096xf32>
    %54 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<1x4096x1000xf32>) outs(%53 : tensor<1x1000x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1000x4096xf32>
    %55 = tensor.empty() : tensor<1x1x4096xf32>
    %56 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%55 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x4096xf32>
    %57 = linalg.generic {indexing_maps = [#map3, #map4, #map5], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded, %54 : tensor<1x1x1000xf32>, tensor<1x1000x4096xf32>) outs(%56 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.mulf %in, %in_18 : f32
      %368 = arith.addf %out, %367 : f32
      linalg.yield %368 : f32
    } -> tensor<1x1x4096xf32>
    %collapsed = tensor.collapse_shape %57 [[0, 1], [2]] : tensor<1x1x4096xf32> into tensor<1x4096xf32>
    %58 = tensor.empty() : tensor<1x4096xi1>
    %59 = linalg.generic {indexing_maps = [#map6, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%51, %52 : tensor<1x4096xf32>, tensor<1x4096xf32>) outs(%58 : tensor<1x4096xi1>) {
    ^bb0(%in: f32, %in_18: f32, %out: i1):
      %367 = arith.cmpf oeq, %in, %in_18 : f32
      linalg.yield %367 : i1
    } -> tensor<1x4096xi1>
    %60 = tensor.empty() : tensor<1x4096xf32>
    %61 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel"]} ins(%59, %collapsed, %cst : tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<1xf32>) outs(%60 : tensor<1x4096xf32>) {
    ^bb0(%in: i1, %in_18: f32, %in_19: f32, %out: f32):
      %367 = arith.select %in, %in_18, %in_19 : f32
      linalg.yield %367 : f32
    } -> tensor<1x4096xf32>
    %62 = tensor.empty() : tensor<1x4096xi1>
    %63 = linalg.generic {indexing_maps = [#map6, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%50, %51 : tensor<1x4096xf32>, tensor<1x4096xf32>) outs(%62 : tensor<1x4096xi1>) {
    ^bb0(%in: f32, %in_18: f32, %out: i1):
      %367 = arith.cmpf oeq, %in, %in_18 : f32
      linalg.yield %367 : i1
    } -> tensor<1x4096xi1>
    %64 = tensor.empty() : tensor<1x4096xf32>
    %65 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel"]} ins(%63, %61, %cst : tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<1xf32>) outs(%64 : tensor<1x4096xf32>) {
    ^bb0(%in: i1, %in_18: f32, %in_19: f32, %out: f32):
      %367 = arith.select %in, %in_18, %in_19 : f32
      linalg.yield %367 : f32
    } -> tensor<1x4096xf32>
    %expanded_1 = tensor.expand_shape %65 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %66 = tensor.empty() : tensor<1x4096x4096xf32>
    %67 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1 : tensor<1x4096x4096xf32>) outs(%66 : tensor<1x4096x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4096x4096xf32>
    %68 = tensor.empty() : tensor<1x1x4096xf32>
    %69 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%68 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x4096xf32>
    %70 = linalg.generic {indexing_maps = [#map3, #map4, #map5], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded_1, %67 : tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) outs(%69 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.mulf %in, %in_18 : f32
      %368 = arith.addf %out, %367 : f32
      linalg.yield %368 : f32
    } -> tensor<1x1x4096xf32>
    %collapsed_2 = tensor.collapse_shape %70 [[0, 1], [2]] : tensor<1x1x4096xf32> into tensor<1x4096xf32>
    %71 = tensor.empty() : tensor<1x4096xi1>
    %72 = linalg.generic {indexing_maps = [#map6, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%48, %49 : tensor<1x4096xf32>, tensor<1x4096xf32>) outs(%71 : tensor<1x4096xi1>) {
    ^bb0(%in: f32, %in_18: f32, %out: i1):
      %367 = arith.cmpf oeq, %in, %in_18 : f32
      linalg.yield %367 : i1
    } -> tensor<1x4096xi1>
    %73 = tensor.empty() : tensor<1x4096xf32>
    %74 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel"]} ins(%72, %collapsed_2, %cst : tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<1xf32>) outs(%73 : tensor<1x4096xf32>) {
    ^bb0(%in: i1, %in_18: f32, %in_19: f32, %out: f32):
      %367 = arith.select %in, %in_18, %in_19 : f32
      linalg.yield %367 : f32
    } -> tensor<1x4096xf32>
    %75 = tensor.empty() : tensor<1x4096xi1>
    %76 = linalg.generic {indexing_maps = [#map6, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%47, %48 : tensor<1x4096xf32>, tensor<1x4096xf32>) outs(%75 : tensor<1x4096xi1>) {
    ^bb0(%in: f32, %in_18: f32, %out: i1):
      %367 = arith.cmpf oeq, %in, %in_18 : f32
      linalg.yield %367 : i1
    } -> tensor<1x4096xi1>
    %77 = tensor.empty() : tensor<1x4096xf32>
    %78 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel"]} ins(%76, %74, %cst : tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<1xf32>) outs(%77 : tensor<1x4096xf32>) {
    ^bb0(%in: i1, %in_18: f32, %in_19: f32, %out: f32):
      %367 = arith.select %in, %in_18, %in_19 : f32
      linalg.yield %367 : f32
    } -> tensor<1x4096xf32>
    %expanded_3 = tensor.expand_shape %78 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %79 = tensor.empty() : tensor<1x4096x25088xf32>
    %80 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2 : tensor<1x25088x4096xf32>) outs(%79 : tensor<1x4096x25088xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4096x25088xf32>
    %81 = tensor.empty() : tensor<1x1x25088xf32>
    %82 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%81 : tensor<1x1x25088xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x25088xf32>
    %83 = linalg.generic {indexing_maps = [#map3, #map4, #map5], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded_3, %80 : tensor<1x1x4096xf32>, tensor<1x4096x25088xf32>) outs(%82 : tensor<1x1x25088xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.mulf %in, %in_18 : f32
      %368 = arith.addf %out, %367 : f32
      linalg.yield %368 : f32
    } -> tensor<1x1x25088xf32>
    %collapsed_4 = tensor.collapse_shape %83 [[0, 1], [2]] : tensor<1x1x25088xf32> into tensor<1x25088xf32>
    %expanded_5 = tensor.expand_shape %collapsed_4 [[0], [1, 2, 3]] : tensor<1x25088xf32> into tensor<1x512x7x7xf32>
    %84 = tensor.empty() : tensor<1x7x7x512xf32>
    %85 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_5 : tensor<1x512x7x7xf32>) outs(%84 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %86 = tensor.empty() : tensor<1x14x14x512xf32>
    %87 = tensor.empty() : tensor<2x2xf32>
    %88 = linalg.generic {indexing_maps = [#map10, #map11, #map12, #map12, #map10], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%45, %87, %46, %85 : tensor<1x14x14x512xf32>, tensor<2x2xf32>, tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%86 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %in_20: f32, %out: f32):
      %367 = arith.cmpf oge, %in, %in_19 : f32
      %368 = arith.select %367, %in_20, %cst_0 : f32
      %369 = arith.addf %out, %368 : f32
      linalg.yield %369 : f32
    } -> tensor<1x14x14x512xf32>
    %89 = tensor.empty() : tensor<1x512x14x14xf32>
    %90 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88 : tensor<1x14x14x512xf32>) outs(%89 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %91 = tensor.empty() : tensor<1x512x14x14xi1>
    %92 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %44 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%91 : tensor<1x512x14x14xi1>) {
    ^bb0(%in: f32, %in_18: f32, %out: i1):
      %367 = arith.cmpf oeq, %in, %in_18 : f32
      linalg.yield %367 : i1
    } -> tensor<1x512x14x14xi1>
    %93 = tensor.empty() : tensor<1x512x14x14xf32>
    %94 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92, %90, %cst : tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<1xf32>) outs(%93 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: i1, %in_18: f32, %in_19: f32, %out: f32):
      %367 = arith.select %in, %in_18, %in_19 : f32
      linalg.yield %367 : f32
    } -> tensor<1x512x14x14xf32>
    %95 = tensor.empty() : tensor<1x14x14x512xf32>
    %96 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %97 = tensor.empty() : tensor<512x3x3x512xf32>
    %98 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3 : tensor<512x3x3x512xf32>) outs(%97 : tensor<512x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x3x3x512xf32>
    %99 = tensor.empty() : tensor<512xf32>
    %100 = tensor.empty() : tensor<512x3x3x512xf32>
    %101 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%100 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = arith.subi %c2, %368 : index
      %370 = linalg.index 2 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %98[%367, %369, %370, %371] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %102 = tensor.empty() : tensor<512x3x3x512xf32>
    %103 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%102 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = linalg.index 2 : index
      %370 = arith.subi %c2, %369 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %101[%367, %368, %370, %371] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded = tensor.pad %96 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %104 = tensor.empty() : tensor<3x3x512x512xf32>
    %105 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103 : tensor<512x3x3x512xf32>) outs(%104 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %106 = tensor.empty() : tensor<1x14x14x512xf32>
    %107 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%106 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %108 = tensor.empty() : tensor<1x14x14x512xf32>
    %109 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded, %105 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%107 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.mulf %in, %in_18 : f32
      %368 = arith.addf %out, %367 : f32
      linalg.yield %368 : f32
    } -> tensor<1x14x14x512xf32>
    %110 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99, %109 : tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%108 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.addf %in, %in_18 : f32
      linalg.yield %367 : f32
    } -> tensor<1x14x14x512xf32>
    %111 = tensor.empty() : tensor<1x512x14x14xf32>
    %112 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110 : tensor<1x14x14x512xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %113 = tensor.empty() : tensor<1x512x14x14xi1>
    %114 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %42 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%113 : tensor<1x512x14x14xi1>) {
    ^bb0(%in: f32, %in_18: f32, %out: i1):
      %367 = arith.cmpf oeq, %in, %in_18 : f32
      linalg.yield %367 : i1
    } -> tensor<1x512x14x14xi1>
    %115 = tensor.empty() : tensor<1x512x14x14xf32>
    %116 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %112, %cst : tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<1xf32>) outs(%115 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: i1, %in_18: f32, %in_19: f32, %out: f32):
      %367 = arith.select %in, %in_18, %in_19 : f32
      linalg.yield %367 : f32
    } -> tensor<1x512x14x14xf32>
    %117 = tensor.empty() : tensor<1x14x14x512xf32>
    %118 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116 : tensor<1x512x14x14xf32>) outs(%117 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %119 = tensor.empty() : tensor<512x3x3x512xf32>
    %120 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%119 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = arith.subi %c2, %368 : index
      %370 = linalg.index 2 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %98[%367, %369, %370, %371] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %121 = tensor.empty() : tensor<512x3x3x512xf32>
    %122 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%121 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = linalg.index 2 : index
      %370 = arith.subi %c2, %369 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %120[%367, %368, %370, %371] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_6 = tensor.pad %118 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %123 = tensor.empty() : tensor<3x3x512x512xf32>
    %124 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<512x3x3x512xf32>) outs(%123 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %125 = tensor.empty() : tensor<1x14x14x512xf32>
    %126 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%125 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %127 = tensor.empty() : tensor<1x14x14x512xf32>
    %128 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_6, %124 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%126 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.mulf %in, %in_18 : f32
      %368 = arith.addf %out, %367 : f32
      linalg.yield %368 : f32
    } -> tensor<1x14x14x512xf32>
    %129 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99, %128 : tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%127 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.addf %in, %in_18 : f32
      linalg.yield %367 : f32
    } -> tensor<1x14x14x512xf32>
    %130 = tensor.empty() : tensor<1x512x14x14xf32>
    %131 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129 : tensor<1x14x14x512xf32>) outs(%130 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %132 = tensor.empty() : tensor<1x512x14x14xi1>
    %133 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %40 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%132 : tensor<1x512x14x14xi1>) {
    ^bb0(%in: f32, %in_18: f32, %out: i1):
      %367 = arith.cmpf oeq, %in, %in_18 : f32
      linalg.yield %367 : i1
    } -> tensor<1x512x14x14xi1>
    %134 = tensor.empty() : tensor<1x512x14x14xf32>
    %135 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133, %131, %cst : tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<1xf32>) outs(%134 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: i1, %in_18: f32, %in_19: f32, %out: f32):
      %367 = arith.select %in, %in_18, %in_19 : f32
      linalg.yield %367 : f32
    } -> tensor<1x512x14x14xf32>
    %136 = tensor.empty() : tensor<1x14x14x512xf32>
    %137 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135 : tensor<1x512x14x14xf32>) outs(%136 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %138 = tensor.empty() : tensor<512x3x3x512xf32>
    %139 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%138 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = arith.subi %c2, %368 : index
      %370 = linalg.index 2 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %98[%367, %369, %370, %371] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %140 = tensor.empty() : tensor<512x3x3x512xf32>
    %141 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%140 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = linalg.index 2 : index
      %370 = arith.subi %c2, %369 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %139[%367, %368, %370, %371] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_7 = tensor.pad %137 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %142 = tensor.empty() : tensor<3x3x512x512xf32>
    %143 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141 : tensor<512x3x3x512xf32>) outs(%142 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %144 = tensor.empty() : tensor<1x14x14x512xf32>
    %145 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%144 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %146 = tensor.empty() : tensor<1x14x14x512xf32>
    %147 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_7, %143 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%145 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.mulf %in, %in_18 : f32
      %368 = arith.addf %out, %367 : f32
      linalg.yield %368 : f32
    } -> tensor<1x14x14x512xf32>
    %148 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99, %147 : tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%146 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.addf %in, %in_18 : f32
      linalg.yield %367 : f32
    } -> tensor<1x14x14x512xf32>
    %149 = tensor.empty() : tensor<1x28x28x512xf32>
    %150 = linalg.generic {indexing_maps = [#map10, #map11, #map12, #map12, #map10], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%37, %87, %38, %148 : tensor<1x28x28x512xf32>, tensor<2x2xf32>, tensor<1x14x14x512xf32>, tensor<1x14x14x512xf32>) outs(%149 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %in_20: f32, %out: f32):
      %367 = arith.cmpf oge, %in, %in_19 : f32
      %368 = arith.select %367, %in_20, %cst_0 : f32
      %369 = arith.addf %out, %368 : f32
      linalg.yield %369 : f32
    } -> tensor<1x28x28x512xf32>
    %151 = tensor.empty() : tensor<1x512x28x28xf32>
    %152 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150 : tensor<1x28x28x512xf32>) outs(%151 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %153 = tensor.empty() : tensor<1x512x28x28xi1>
    %154 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %36 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%153 : tensor<1x512x28x28xi1>) {
    ^bb0(%in: f32, %in_18: f32, %out: i1):
      %367 = arith.cmpf oeq, %in, %in_18 : f32
      linalg.yield %367 : i1
    } -> tensor<1x512x28x28xi1>
    %155 = tensor.empty() : tensor<1x512x28x28xf32>
    %156 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %152, %cst : tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<1xf32>) outs(%155 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: i1, %in_18: f32, %in_19: f32, %out: f32):
      %367 = arith.select %in, %in_18, %in_19 : f32
      linalg.yield %367 : f32
    } -> tensor<1x512x28x28xf32>
    %157 = tensor.empty() : tensor<1x28x28x512xf32>
    %158 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156 : tensor<1x512x28x28xf32>) outs(%157 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %159 = tensor.empty() : tensor<512x3x3x512xf32>
    %160 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%159 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = arith.subi %c2, %368 : index
      %370 = linalg.index 2 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %98[%367, %369, %370, %371] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %161 = tensor.empty() : tensor<512x3x3x512xf32>
    %162 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%161 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = linalg.index 2 : index
      %370 = arith.subi %c2, %369 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %160[%367, %368, %370, %371] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_8 = tensor.pad %158 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %163 = tensor.empty() : tensor<3x3x512x512xf32>
    %164 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162 : tensor<512x3x3x512xf32>) outs(%163 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %165 = tensor.empty() : tensor<1x28x28x512xf32>
    %166 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%165 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %167 = tensor.empty() : tensor<1x28x28x512xf32>
    %168 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_8, %164 : tensor<1x30x30x512xf32>, tensor<3x3x512x512xf32>) outs(%166 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.mulf %in, %in_18 : f32
      %368 = arith.addf %out, %367 : f32
      linalg.yield %368 : f32
    } -> tensor<1x28x28x512xf32>
    %169 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99, %168 : tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%167 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.addf %in, %in_18 : f32
      linalg.yield %367 : f32
    } -> tensor<1x28x28x512xf32>
    %170 = tensor.empty() : tensor<1x512x28x28xf32>
    %171 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1x28x28x512xf32>) outs(%170 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %172 = tensor.empty() : tensor<1x512x28x28xi1>
    %173 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %34 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%172 : tensor<1x512x28x28xi1>) {
    ^bb0(%in: f32, %in_18: f32, %out: i1):
      %367 = arith.cmpf oeq, %in, %in_18 : f32
      linalg.yield %367 : i1
    } -> tensor<1x512x28x28xi1>
    %174 = tensor.empty() : tensor<1x512x28x28xf32>
    %175 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173, %171, %cst : tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<1xf32>) outs(%174 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: i1, %in_18: f32, %in_19: f32, %out: f32):
      %367 = arith.select %in, %in_18, %in_19 : f32
      linalg.yield %367 : f32
    } -> tensor<1x512x28x28xf32>
    %176 = tensor.empty() : tensor<1x28x28x512xf32>
    %177 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175 : tensor<1x512x28x28xf32>) outs(%176 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %178 = tensor.empty() : tensor<512x3x3x512xf32>
    %179 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%178 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = arith.subi %c2, %368 : index
      %370 = linalg.index 2 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %98[%367, %369, %370, %371] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %180 = tensor.empty() : tensor<512x3x3x512xf32>
    %181 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%180 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = linalg.index 2 : index
      %370 = arith.subi %c2, %369 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %179[%367, %368, %370, %371] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_9 = tensor.pad %177 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %182 = tensor.empty() : tensor<3x3x512x512xf32>
    %183 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181 : tensor<512x3x3x512xf32>) outs(%182 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %184 = tensor.empty() : tensor<1x28x28x512xf32>
    %185 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%184 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %186 = tensor.empty() : tensor<1x28x28x512xf32>
    %187 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_9, %183 : tensor<1x30x30x512xf32>, tensor<3x3x512x512xf32>) outs(%185 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.mulf %in, %in_18 : f32
      %368 = arith.addf %out, %367 : f32
      linalg.yield %368 : f32
    } -> tensor<1x28x28x512xf32>
    %188 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99, %187 : tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%186 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.addf %in, %in_18 : f32
      linalg.yield %367 : f32
    } -> tensor<1x28x28x512xf32>
    %189 = tensor.empty() : tensor<1x512x28x28xf32>
    %190 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188 : tensor<1x28x28x512xf32>) outs(%189 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %191 = tensor.empty() : tensor<1x512x28x28xi1>
    %192 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %32 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%191 : tensor<1x512x28x28xi1>) {
    ^bb0(%in: f32, %in_18: f32, %out: i1):
      %367 = arith.cmpf oeq, %in, %in_18 : f32
      linalg.yield %367 : i1
    } -> tensor<1x512x28x28xi1>
    %193 = tensor.empty() : tensor<1x512x28x28xf32>
    %194 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %190, %cst : tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<1xf32>) outs(%193 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: i1, %in_18: f32, %in_19: f32, %out: f32):
      %367 = arith.select %in, %in_18, %in_19 : f32
      linalg.yield %367 : f32
    } -> tensor<1x512x28x28xf32>
    %195 = tensor.empty() : tensor<1x28x28x512xf32>
    %196 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194 : tensor<1x512x28x28xf32>) outs(%195 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %197 = tensor.empty() : tensor<256x3x3x512xf32>
    %198 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<512x3x3x256xf32>) outs(%197 : tensor<256x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x512xf32>
    %199 = tensor.empty() : tensor<256xf32>
    %200 = tensor.empty() : tensor<256x3x3x512xf32>
    %201 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%200 : tensor<256x3x3x512xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = arith.subi %c2, %368 : index
      %370 = linalg.index 2 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %198[%367, %369, %370, %371] : tensor<256x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x512xf32>
    %202 = tensor.empty() : tensor<256x3x3x512xf32>
    %203 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%202 : tensor<256x3x3x512xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = linalg.index 2 : index
      %370 = arith.subi %c2, %369 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %201[%367, %368, %370, %371] : tensor<256x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x512xf32>
    %padded_10 = tensor.pad %196 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %204 = tensor.empty() : tensor<3x3x512x256xf32>
    %205 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203 : tensor<256x3x3x512xf32>) outs(%204 : tensor<3x3x512x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x256xf32>
    %206 = tensor.empty() : tensor<1x28x28x256xf32>
    %207 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%206 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x256xf32>
    %208 = tensor.empty() : tensor<1x28x28x256xf32>
    %209 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_10, %205 : tensor<1x30x30x512xf32>, tensor<3x3x512x256xf32>) outs(%207 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.mulf %in, %in_18 : f32
      %368 = arith.addf %out, %367 : f32
      linalg.yield %368 : f32
    } -> tensor<1x28x28x256xf32>
    %210 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199, %209 : tensor<256xf32>, tensor<1x28x28x256xf32>) outs(%208 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.addf %in, %in_18 : f32
      linalg.yield %367 : f32
    } -> tensor<1x28x28x256xf32>
    %211 = tensor.empty() : tensor<1x56x56x256xf32>
    %212 = linalg.generic {indexing_maps = [#map10, #map11, #map12, #map12, #map10], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%29, %87, %30, %210 : tensor<1x56x56x256xf32>, tensor<2x2xf32>, tensor<1x28x28x256xf32>, tensor<1x28x28x256xf32>) outs(%211 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %in_20: f32, %out: f32):
      %367 = arith.cmpf oge, %in, %in_19 : f32
      %368 = arith.select %367, %in_20, %cst_0 : f32
      %369 = arith.addf %out, %368 : f32
      linalg.yield %369 : f32
    } -> tensor<1x56x56x256xf32>
    %213 = tensor.empty() : tensor<1x256x56x56xf32>
    %214 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212 : tensor<1x56x56x256xf32>) outs(%213 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %215 = tensor.empty() : tensor<1x256x56x56xi1>
    %216 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %28 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%215 : tensor<1x256x56x56xi1>) {
    ^bb0(%in: f32, %in_18: f32, %out: i1):
      %367 = arith.cmpf oeq, %in, %in_18 : f32
      linalg.yield %367 : i1
    } -> tensor<1x256x56x56xi1>
    %217 = tensor.empty() : tensor<1x256x56x56xf32>
    %218 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216, %214, %cst : tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<1xf32>) outs(%217 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: i1, %in_18: f32, %in_19: f32, %out: f32):
      %367 = arith.select %in, %in_18, %in_19 : f32
      linalg.yield %367 : f32
    } -> tensor<1x256x56x56xf32>
    %219 = tensor.empty() : tensor<1x56x56x256xf32>
    %220 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218 : tensor<1x256x56x56xf32>) outs(%219 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %221 = tensor.empty() : tensor<256x3x3x256xf32>
    %222 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<256x3x3x256xf32>) outs(%221 : tensor<256x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x256xf32>
    %223 = tensor.empty() : tensor<256x3x3x256xf32>
    %224 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%223 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = arith.subi %c2, %368 : index
      %370 = linalg.index 2 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %222[%367, %369, %370, %371] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %225 = tensor.empty() : tensor<256x3x3x256xf32>
    %226 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%225 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = linalg.index 2 : index
      %370 = arith.subi %c2, %369 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %224[%367, %368, %370, %371] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_11 = tensor.pad %220 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %227 = tensor.empty() : tensor<3x3x256x256xf32>
    %228 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226 : tensor<256x3x3x256xf32>) outs(%227 : tensor<3x3x256x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x256x256xf32>
    %229 = tensor.empty() : tensor<1x56x56x256xf32>
    %230 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%229 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %231 = tensor.empty() : tensor<1x56x56x256xf32>
    %232 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_11, %228 : tensor<1x58x58x256xf32>, tensor<3x3x256x256xf32>) outs(%230 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.mulf %in, %in_18 : f32
      %368 = arith.addf %out, %367 : f32
      linalg.yield %368 : f32
    } -> tensor<1x56x56x256xf32>
    %233 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199, %232 : tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%231 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.addf %in, %in_18 : f32
      linalg.yield %367 : f32
    } -> tensor<1x56x56x256xf32>
    %234 = tensor.empty() : tensor<1x256x56x56xf32>
    %235 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233 : tensor<1x56x56x256xf32>) outs(%234 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %236 = tensor.empty() : tensor<1x256x56x56xi1>
    %237 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %26 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%236 : tensor<1x256x56x56xi1>) {
    ^bb0(%in: f32, %in_18: f32, %out: i1):
      %367 = arith.cmpf oeq, %in, %in_18 : f32
      linalg.yield %367 : i1
    } -> tensor<1x256x56x56xi1>
    %238 = tensor.empty() : tensor<1x256x56x56xf32>
    %239 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237, %235, %cst : tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<1xf32>) outs(%238 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: i1, %in_18: f32, %in_19: f32, %out: f32):
      %367 = arith.select %in, %in_18, %in_19 : f32
      linalg.yield %367 : f32
    } -> tensor<1x256x56x56xf32>
    %240 = tensor.empty() : tensor<1x56x56x256xf32>
    %241 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239 : tensor<1x256x56x56xf32>) outs(%240 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %242 = tensor.empty() : tensor<256x3x3x256xf32>
    %243 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%242 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = arith.subi %c2, %368 : index
      %370 = linalg.index 2 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %222[%367, %369, %370, %371] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %244 = tensor.empty() : tensor<256x3x3x256xf32>
    %245 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%244 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = linalg.index 2 : index
      %370 = arith.subi %c2, %369 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %243[%367, %368, %370, %371] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_12 = tensor.pad %241 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %246 = tensor.empty() : tensor<3x3x256x256xf32>
    %247 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245 : tensor<256x3x3x256xf32>) outs(%246 : tensor<3x3x256x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x256x256xf32>
    %248 = tensor.empty() : tensor<1x56x56x256xf32>
    %249 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%248 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %250 = tensor.empty() : tensor<1x56x56x256xf32>
    %251 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_12, %247 : tensor<1x58x58x256xf32>, tensor<3x3x256x256xf32>) outs(%249 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.mulf %in, %in_18 : f32
      %368 = arith.addf %out, %367 : f32
      linalg.yield %368 : f32
    } -> tensor<1x56x56x256xf32>
    %252 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199, %251 : tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%250 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.addf %in, %in_18 : f32
      linalg.yield %367 : f32
    } -> tensor<1x56x56x256xf32>
    %253 = tensor.empty() : tensor<1x256x56x56xf32>
    %254 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252 : tensor<1x56x56x256xf32>) outs(%253 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %255 = tensor.empty() : tensor<1x256x56x56xi1>
    %256 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %24 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%255 : tensor<1x256x56x56xi1>) {
    ^bb0(%in: f32, %in_18: f32, %out: i1):
      %367 = arith.cmpf oeq, %in, %in_18 : f32
      linalg.yield %367 : i1
    } -> tensor<1x256x56x56xi1>
    %257 = tensor.empty() : tensor<1x256x56x56xf32>
    %258 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256, %254, %cst : tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<1xf32>) outs(%257 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: i1, %in_18: f32, %in_19: f32, %out: f32):
      %367 = arith.select %in, %in_18, %in_19 : f32
      linalg.yield %367 : f32
    } -> tensor<1x256x56x56xf32>
    %259 = tensor.empty() : tensor<1x56x56x256xf32>
    %260 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258 : tensor<1x256x56x56xf32>) outs(%259 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %261 = tensor.empty() : tensor<128x3x3x256xf32>
    %262 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<256x3x3x128xf32>) outs(%261 : tensor<128x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x256xf32>
    %263 = tensor.empty() : tensor<128xf32>
    %264 = tensor.empty() : tensor<128x3x3x256xf32>
    %265 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%264 : tensor<128x3x3x256xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = arith.subi %c2, %368 : index
      %370 = linalg.index 2 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %262[%367, %369, %370, %371] : tensor<128x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x256xf32>
    %266 = tensor.empty() : tensor<128x3x3x256xf32>
    %267 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%266 : tensor<128x3x3x256xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = linalg.index 2 : index
      %370 = arith.subi %c2, %369 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %265[%367, %368, %370, %371] : tensor<128x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x256xf32>
    %padded_13 = tensor.pad %260 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %268 = tensor.empty() : tensor<3x3x256x128xf32>
    %269 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267 : tensor<128x3x3x256xf32>) outs(%268 : tensor<3x3x256x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x256x128xf32>
    %270 = tensor.empty() : tensor<1x56x56x128xf32>
    %271 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%270 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x128xf32>
    %272 = tensor.empty() : tensor<1x56x56x128xf32>
    %273 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_13, %269 : tensor<1x58x58x256xf32>, tensor<3x3x256x128xf32>) outs(%271 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.mulf %in, %in_18 : f32
      %368 = arith.addf %out, %367 : f32
      linalg.yield %368 : f32
    } -> tensor<1x56x56x128xf32>
    %274 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263, %273 : tensor<128xf32>, tensor<1x56x56x128xf32>) outs(%272 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.addf %in, %in_18 : f32
      linalg.yield %367 : f32
    } -> tensor<1x56x56x128xf32>
    %275 = tensor.empty() : tensor<1x112x112x128xf32>
    %276 = linalg.generic {indexing_maps = [#map10, #map11, #map12, #map12, #map10], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%21, %87, %22, %274 : tensor<1x112x112x128xf32>, tensor<2x2xf32>, tensor<1x56x56x128xf32>, tensor<1x56x56x128xf32>) outs(%275 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %in_20: f32, %out: f32):
      %367 = arith.cmpf oge, %in, %in_19 : f32
      %368 = arith.select %367, %in_20, %cst_0 : f32
      %369 = arith.addf %out, %368 : f32
      linalg.yield %369 : f32
    } -> tensor<1x112x112x128xf32>
    %277 = tensor.empty() : tensor<1x128x112x112xf32>
    %278 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276 : tensor<1x112x112x128xf32>) outs(%277 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x112x112xf32>
    %279 = tensor.empty() : tensor<1x128x112x112xi1>
    %280 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %20 : tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>) outs(%279 : tensor<1x128x112x112xi1>) {
    ^bb0(%in: f32, %in_18: f32, %out: i1):
      %367 = arith.cmpf oeq, %in, %in_18 : f32
      linalg.yield %367 : i1
    } -> tensor<1x128x112x112xi1>
    %281 = tensor.empty() : tensor<1x128x112x112xf32>
    %282 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280, %278, %cst : tensor<1x128x112x112xi1>, tensor<1x128x112x112xf32>, tensor<1xf32>) outs(%281 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: i1, %in_18: f32, %in_19: f32, %out: f32):
      %367 = arith.select %in, %in_18, %in_19 : f32
      linalg.yield %367 : f32
    } -> tensor<1x128x112x112xf32>
    %283 = tensor.empty() : tensor<1x112x112x128xf32>
    %284 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282 : tensor<1x128x112x112xf32>) outs(%283 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x128xf32>
    %285 = tensor.empty() : tensor<128x3x3x128xf32>
    %286 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<128x3x3x128xf32>) outs(%285 : tensor<128x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x128xf32>
    %287 = tensor.empty() : tensor<128x3x3x128xf32>
    %288 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%287 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = arith.subi %c2, %368 : index
      %370 = linalg.index 2 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %286[%367, %369, %370, %371] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %289 = tensor.empty() : tensor<128x3x3x128xf32>
    %290 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%289 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = linalg.index 2 : index
      %370 = arith.subi %c2, %369 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %288[%367, %368, %370, %371] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %padded_14 = tensor.pad %284 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x112x112x128xf32> to tensor<1x114x114x128xf32>
    %291 = tensor.empty() : tensor<3x3x128x128xf32>
    %292 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%290 : tensor<128x3x3x128xf32>) outs(%291 : tensor<3x3x128x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x128x128xf32>
    %293 = tensor.empty() : tensor<1x112x112x128xf32>
    %294 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%293 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x128xf32>
    %295 = tensor.empty() : tensor<1x112x112x128xf32>
    %296 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_14, %292 : tensor<1x114x114x128xf32>, tensor<3x3x128x128xf32>) outs(%294 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.mulf %in, %in_18 : f32
      %368 = arith.addf %out, %367 : f32
      linalg.yield %368 : f32
    } -> tensor<1x112x112x128xf32>
    %297 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263, %296 : tensor<128xf32>, tensor<1x112x112x128xf32>) outs(%295 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.addf %in, %in_18 : f32
      linalg.yield %367 : f32
    } -> tensor<1x112x112x128xf32>
    %298 = tensor.empty() : tensor<1x128x112x112xf32>
    %299 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297 : tensor<1x112x112x128xf32>) outs(%298 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x112x112xf32>
    %300 = tensor.empty() : tensor<1x128x112x112xi1>
    %301 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %18 : tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>) outs(%300 : tensor<1x128x112x112xi1>) {
    ^bb0(%in: f32, %in_18: f32, %out: i1):
      %367 = arith.cmpf oeq, %in, %in_18 : f32
      linalg.yield %367 : i1
    } -> tensor<1x128x112x112xi1>
    %302 = tensor.empty() : tensor<1x128x112x112xf32>
    %303 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301, %299, %cst : tensor<1x128x112x112xi1>, tensor<1x128x112x112xf32>, tensor<1xf32>) outs(%302 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: i1, %in_18: f32, %in_19: f32, %out: f32):
      %367 = arith.select %in, %in_18, %in_19 : f32
      linalg.yield %367 : f32
    } -> tensor<1x128x112x112xf32>
    %304 = tensor.empty() : tensor<1x112x112x128xf32>
    %305 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303 : tensor<1x128x112x112xf32>) outs(%304 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x128xf32>
    %306 = tensor.empty() : tensor<64x3x3x128xf32>
    %307 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<128x3x3x64xf32>) outs(%306 : tensor<64x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x128xf32>
    %308 = tensor.empty() : tensor<64xf32>
    %309 = tensor.empty() : tensor<64x3x3x128xf32>
    %310 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%309 : tensor<64x3x3x128xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = arith.subi %c2, %368 : index
      %370 = linalg.index 2 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %307[%367, %369, %370, %371] : tensor<64x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x128xf32>
    %311 = tensor.empty() : tensor<64x3x3x128xf32>
    %312 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%311 : tensor<64x3x3x128xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = linalg.index 2 : index
      %370 = arith.subi %c2, %369 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %310[%367, %368, %370, %371] : tensor<64x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x128xf32>
    %padded_15 = tensor.pad %305 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x112x112x128xf32> to tensor<1x114x114x128xf32>
    %313 = tensor.empty() : tensor<3x3x128x64xf32>
    %314 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312 : tensor<64x3x3x128xf32>) outs(%313 : tensor<3x3x128x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x128x64xf32>
    %315 = tensor.empty() : tensor<1x112x112x64xf32>
    %316 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%315 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x64xf32>
    %317 = tensor.empty() : tensor<1x112x112x64xf32>
    %318 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_15, %314 : tensor<1x114x114x128xf32>, tensor<3x3x128x64xf32>) outs(%316 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.mulf %in, %in_18 : f32
      %368 = arith.addf %out, %367 : f32
      linalg.yield %368 : f32
    } -> tensor<1x112x112x64xf32>
    %319 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308, %318 : tensor<64xf32>, tensor<1x112x112x64xf32>) outs(%317 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.addf %in, %in_18 : f32
      linalg.yield %367 : f32
    } -> tensor<1x112x112x64xf32>
    %320 = tensor.empty() : tensor<1x224x224x64xf32>
    %321 = linalg.generic {indexing_maps = [#map10, #map11, #map12, #map12, #map10], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%15, %87, %16, %319 : tensor<1x224x224x64xf32>, tensor<2x2xf32>, tensor<1x112x112x64xf32>, tensor<1x112x112x64xf32>) outs(%320 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %in_20: f32, %out: f32):
      %367 = arith.cmpf oge, %in, %in_19 : f32
      %368 = arith.select %367, %in_20, %cst_0 : f32
      %369 = arith.addf %out, %368 : f32
      linalg.yield %369 : f32
    } -> tensor<1x224x224x64xf32>
    %322 = tensor.empty() : tensor<1x64x224x224xf32>
    %323 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321 : tensor<1x224x224x64xf32>) outs(%322 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x224x224xf32>
    %324 = tensor.empty() : tensor<1x64x224x224xi1>
    %325 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13, %14 : tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>) outs(%324 : tensor<1x64x224x224xi1>) {
    ^bb0(%in: f32, %in_18: f32, %out: i1):
      %367 = arith.cmpf oeq, %in, %in_18 : f32
      linalg.yield %367 : i1
    } -> tensor<1x64x224x224xi1>
    %326 = tensor.empty() : tensor<1x64x224x224xf32>
    %327 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325, %323, %cst : tensor<1x64x224x224xi1>, tensor<1x64x224x224xf32>, tensor<1xf32>) outs(%326 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: i1, %in_18: f32, %in_19: f32, %out: f32):
      %367 = arith.select %in, %in_18, %in_19 : f32
      linalg.yield %367 : f32
    } -> tensor<1x64x224x224xf32>
    %328 = tensor.empty() : tensor<1x224x224x64xf32>
    %329 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327 : tensor<1x64x224x224xf32>) outs(%328 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x224x224x64xf32>
    %330 = tensor.empty() : tensor<64x3x3x64xf32>
    %331 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<64x3x3x64xf32>) outs(%330 : tensor<64x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x64xf32>
    %332 = tensor.empty() : tensor<64x3x3x64xf32>
    %333 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%332 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = arith.subi %c2, %368 : index
      %370 = linalg.index 2 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %331[%367, %369, %370, %371] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %334 = tensor.empty() : tensor<64x3x3x64xf32>
    %335 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%334 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = linalg.index 2 : index
      %370 = arith.subi %c2, %369 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %333[%367, %368, %370, %371] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %padded_16 = tensor.pad %329 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x224x224x64xf32> to tensor<1x226x226x64xf32>
    %336 = tensor.empty() : tensor<3x3x64x64xf32>
    %337 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335 : tensor<64x3x3x64xf32>) outs(%336 : tensor<3x3x64x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x64x64xf32>
    %338 = tensor.empty() : tensor<1x224x224x64xf32>
    %339 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%338 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x224x224x64xf32>
    %340 = tensor.empty() : tensor<1x224x224x64xf32>
    %341 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_16, %337 : tensor<1x226x226x64xf32>, tensor<3x3x64x64xf32>) outs(%339 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.mulf %in, %in_18 : f32
      %368 = arith.addf %out, %367 : f32
      linalg.yield %368 : f32
    } -> tensor<1x224x224x64xf32>
    %342 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308, %341 : tensor<64xf32>, tensor<1x224x224x64xf32>) outs(%340 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.addf %in, %in_18 : f32
      linalg.yield %367 : f32
    } -> tensor<1x224x224x64xf32>
    %343 = tensor.empty() : tensor<1x64x224x224xf32>
    %344 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342 : tensor<1x224x224x64xf32>) outs(%343 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x224x224xf32>
    %345 = tensor.empty() : tensor<1x64x224x224xi1>
    %346 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %12 : tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>) outs(%345 : tensor<1x64x224x224xi1>) {
    ^bb0(%in: f32, %in_18: f32, %out: i1):
      %367 = arith.cmpf oeq, %in, %in_18 : f32
      linalg.yield %367 : i1
    } -> tensor<1x64x224x224xi1>
    %347 = tensor.empty() : tensor<1x64x224x224xf32>
    %348 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346, %344, %cst : tensor<1x64x224x224xi1>, tensor<1x64x224x224xf32>, tensor<1xf32>) outs(%347 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: i1, %in_18: f32, %in_19: f32, %out: f32):
      %367 = arith.select %in, %in_18, %in_19 : f32
      linalg.yield %367 : f32
    } -> tensor<1x64x224x224xf32>
    %349 = tensor.empty() : tensor<1x224x224x64xf32>
    %350 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348 : tensor<1x64x224x224xf32>) outs(%349 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x224x224x64xf32>
    %351 = tensor.empty() : tensor<3x3x3x64xf32>
    %352 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<64x3x3x3xf32>) outs(%351 : tensor<3x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x3x64xf32>
    %353 = tensor.empty() : tensor<3xf32>
    %354 = tensor.empty() : tensor<3x3x3x64xf32>
    %355 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%354 : tensor<3x3x3x64xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = arith.subi %c2, %368 : index
      %370 = linalg.index 2 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %352[%367, %369, %370, %371] : tensor<3x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x3x64xf32>
    %356 = tensor.empty() : tensor<3x3x3x64xf32>
    %357 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%356 : tensor<3x3x3x64xf32>) {
    ^bb0(%out: f32):
      %367 = linalg.index 0 : index
      %368 = linalg.index 1 : index
      %369 = linalg.index 2 : index
      %370 = arith.subi %c2, %369 : index
      %371 = linalg.index 3 : index
      %extracted = tensor.extract %355[%367, %368, %370, %371] : tensor<3x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x3x64xf32>
    %padded_17 = tensor.pad %350 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x224x224x64xf32> to tensor<1x226x226x64xf32>
    %358 = tensor.empty() : tensor<3x3x64x3xf32>
    %359 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357 : tensor<3x3x3x64xf32>) outs(%358 : tensor<3x3x64x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x64x3xf32>
    %360 = tensor.empty() : tensor<1x224x224x3xf32>
    %361 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%360 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x224x224x3xf32>
    %362 = tensor.empty() : tensor<1x224x224x3xf32>
    %363 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_17, %359 : tensor<1x226x226x64xf32>, tensor<3x3x64x3xf32>) outs(%361 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.mulf %in, %in_18 : f32
      %368 = arith.addf %out, %367 : f32
      linalg.yield %368 : f32
    } -> tensor<1x224x224x3xf32>
    %364 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353, %363 : tensor<3xf32>, tensor<1x224x224x3xf32>) outs(%362 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %367 = arith.addf %in, %in_18 : f32
      linalg.yield %367 : f32
    } -> tensor<1x224x224x3xf32>
    %365 = tensor.empty() : tensor<1x3x224x224xf32>
    %366 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364 : tensor<1x224x224x3xf32>) outs(%365 : tensor<1x3x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3x224x224xf32>
    return %366 : tensor<1x3x224x224xf32>
  }
}

