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
  ml_program.global private mutable @global68 : tensor<1x4096xf32>
  ml_program.global private mutable @global67 : tensor<1x4096xf32>
  ml_program.global private mutable @global66 : tensor<1x4096xf32>
  ml_program.global private mutable @global62 : tensor<1x4096xf32>
  ml_program.global private mutable @global61 : tensor<1x4096xf32>
  ml_program.global private mutable @global60 : tensor<1x4096xf32>
  ml_program.global private mutable @global55 : tensor<1x7x7x512xf32>
  ml_program.global private mutable @global54 : tensor<1x14x14x512xf32>
  ml_program.global private mutable @global53 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global52 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global49 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global48 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global46 : tensor<1x14x14x512xf32>
  ml_program.global private mutable @global45 : tensor<1x28x28x512xf32>
  ml_program.global private mutable @global44 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global43 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global40 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global39 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global37 : tensor<1x28x28x256xf32>
  ml_program.global private mutable @global36 : tensor<1x56x56x256xf32>
  ml_program.global private mutable @global35 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global34 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global31 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global30 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global28 : tensor<1x56x56x128xf32>
  ml_program.global private mutable @global27 : tensor<1x112x112x128xf32>
  ml_program.global private mutable @global26 : tensor<1x128x112x112xf32>
  ml_program.global private mutable @global25 : tensor<1x128x112x112xf32>
  ml_program.global private mutable @global23 : tensor<1x112x112x64xf32>
  ml_program.global private mutable @global22 : tensor<1x224x224x64xf32>
  ml_program.global private mutable @global21 : tensor<1x64x224x224xf32>
  ml_program.global private mutable @global20 : tensor<1x64x224x224xf32>
  ml_program.global private mutable @global17 : tensor<64x3x3x3xf32>
  ml_program.global private mutable @global16 : tensor<128x3x3x64xf32>
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
    %7 = ml_program.global_load @global16 : tensor<128x3x3x64xf32>
    %8 = ml_program.global_load @global17 : tensor<64x3x3x3xf32>
    %9 = ml_program.global_load @global20 : tensor<1x64x224x224xf32>
    %10 = ml_program.global_load @global21 : tensor<1x64x224x224xf32>
    %11 = ml_program.global_load @global22 : tensor<1x224x224x64xf32>
    %12 = ml_program.global_load @global23 : tensor<1x112x112x64xf32>
    %13 = ml_program.global_load @global25 : tensor<1x128x112x112xf32>
    %14 = ml_program.global_load @global26 : tensor<1x128x112x112xf32>
    %15 = ml_program.global_load @global27 : tensor<1x112x112x128xf32>
    %16 = ml_program.global_load @global28 : tensor<1x56x56x128xf32>
    %17 = ml_program.global_load @global30 : tensor<1x256x56x56xf32>
    %18 = ml_program.global_load @global31 : tensor<1x256x56x56xf32>
    %19 = ml_program.global_load @global34 : tensor<1x256x56x56xf32>
    %20 = ml_program.global_load @global35 : tensor<1x256x56x56xf32>
    %21 = ml_program.global_load @global36 : tensor<1x56x56x256xf32>
    %22 = ml_program.global_load @global37 : tensor<1x28x28x256xf32>
    %23 = ml_program.global_load @global39 : tensor<1x512x28x28xf32>
    %24 = ml_program.global_load @global40 : tensor<1x512x28x28xf32>
    %25 = ml_program.global_load @global43 : tensor<1x512x28x28xf32>
    %26 = ml_program.global_load @global44 : tensor<1x512x28x28xf32>
    %27 = ml_program.global_load @global45 : tensor<1x28x28x512xf32>
    %28 = ml_program.global_load @global46 : tensor<1x14x14x512xf32>
    %29 = ml_program.global_load @global48 : tensor<1x512x14x14xf32>
    %30 = ml_program.global_load @global49 : tensor<1x512x14x14xf32>
    %31 = ml_program.global_load @global52 : tensor<1x512x14x14xf32>
    %32 = ml_program.global_load @global53 : tensor<1x512x14x14xf32>
    %33 = ml_program.global_load @global54 : tensor<1x14x14x512xf32>
    %34 = ml_program.global_load @global55 : tensor<1x7x7x512xf32>
    %35 = ml_program.global_load @global60 : tensor<1x4096xf32>
    %36 = ml_program.global_load @global61 : tensor<1x4096xf32>
    %37 = ml_program.global_load @global62 : tensor<1x4096xf32>
    %38 = ml_program.global_load @global66 : tensor<1x4096xf32>
    %39 = ml_program.global_load @global67 : tensor<1x4096xf32>
    %40 = ml_program.global_load @global68 : tensor<1x4096xf32>
    %expanded = tensor.expand_shape %arg0 [[0, 1], [2]] : tensor<1x1000xf32> into tensor<1x1x1000xf32>
    %41 = tensor.empty() : tensor<1x1000x4096xf32>
    %42 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<1x4096x1000xf32>) outs(%41 : tensor<1x1000x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1000x4096xf32>
    %43 = tensor.empty() : tensor<1x1x4096xf32>
    %44 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%43 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x4096xf32>
    %45 = linalg.generic {indexing_maps = [#map3, #map4, #map5], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded, %42 : tensor<1x1x1000xf32>, tensor<1x1000x4096xf32>) outs(%44 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %256 = arith.mulf %in, %in_13 : f32
      %257 = arith.addf %out, %256 : f32
      linalg.yield %257 : f32
    } -> tensor<1x1x4096xf32>
    %collapsed = tensor.collapse_shape %45 [[0, 1], [2]] : tensor<1x1x4096xf32> into tensor<1x4096xf32>
    %46 = tensor.empty() : tensor<1x4096xi1>
    %47 = linalg.generic {indexing_maps = [#map6, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%39, %40 : tensor<1x4096xf32>, tensor<1x4096xf32>) outs(%46 : tensor<1x4096xi1>) {
    ^bb0(%in: f32, %in_13: f32, %out: i1):
      %256 = arith.cmpf oeq, %in, %in_13 : f32
      linalg.yield %256 : i1
    } -> tensor<1x4096xi1>
    %48 = tensor.empty() : tensor<1x4096xf32>
    %49 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel"]} ins(%47, %collapsed, %cst : tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<1xf32>) outs(%48 : tensor<1x4096xf32>) {
    ^bb0(%in: i1, %in_13: f32, %in_14: f32, %out: f32):
      %256 = arith.select %in, %in_13, %in_14 : f32
      linalg.yield %256 : f32
    } -> tensor<1x4096xf32>
    %50 = tensor.empty() : tensor<1x4096xi1>
    %51 = linalg.generic {indexing_maps = [#map6, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%38, %39 : tensor<1x4096xf32>, tensor<1x4096xf32>) outs(%50 : tensor<1x4096xi1>) {
    ^bb0(%in: f32, %in_13: f32, %out: i1):
      %256 = arith.cmpf oeq, %in, %in_13 : f32
      linalg.yield %256 : i1
    } -> tensor<1x4096xi1>
    %52 = tensor.empty() : tensor<1x4096xf32>
    %53 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel"]} ins(%51, %49, %cst : tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<1xf32>) outs(%52 : tensor<1x4096xf32>) {
    ^bb0(%in: i1, %in_13: f32, %in_14: f32, %out: f32):
      %256 = arith.select %in, %in_13, %in_14 : f32
      linalg.yield %256 : f32
    } -> tensor<1x4096xf32>
    %expanded_1 = tensor.expand_shape %53 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %54 = tensor.empty() : tensor<1x4096x4096xf32>
    %55 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1 : tensor<1x4096x4096xf32>) outs(%54 : tensor<1x4096x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4096x4096xf32>
    %56 = tensor.empty() : tensor<1x1x4096xf32>
    %57 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%56 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x4096xf32>
    %58 = linalg.generic {indexing_maps = [#map3, #map4, #map5], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded_1, %55 : tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) outs(%57 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %256 = arith.mulf %in, %in_13 : f32
      %257 = arith.addf %out, %256 : f32
      linalg.yield %257 : f32
    } -> tensor<1x1x4096xf32>
    %collapsed_2 = tensor.collapse_shape %58 [[0, 1], [2]] : tensor<1x1x4096xf32> into tensor<1x4096xf32>
    %59 = tensor.empty() : tensor<1x4096xi1>
    %60 = linalg.generic {indexing_maps = [#map6, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%36, %37 : tensor<1x4096xf32>, tensor<1x4096xf32>) outs(%59 : tensor<1x4096xi1>) {
    ^bb0(%in: f32, %in_13: f32, %out: i1):
      %256 = arith.cmpf oeq, %in, %in_13 : f32
      linalg.yield %256 : i1
    } -> tensor<1x4096xi1>
    %61 = tensor.empty() : tensor<1x4096xf32>
    %62 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel"]} ins(%60, %collapsed_2, %cst : tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<1xf32>) outs(%61 : tensor<1x4096xf32>) {
    ^bb0(%in: i1, %in_13: f32, %in_14: f32, %out: f32):
      %256 = arith.select %in, %in_13, %in_14 : f32
      linalg.yield %256 : f32
    } -> tensor<1x4096xf32>
    %63 = tensor.empty() : tensor<1x4096xi1>
    %64 = linalg.generic {indexing_maps = [#map6, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%35, %36 : tensor<1x4096xf32>, tensor<1x4096xf32>) outs(%63 : tensor<1x4096xi1>) {
    ^bb0(%in: f32, %in_13: f32, %out: i1):
      %256 = arith.cmpf oeq, %in, %in_13 : f32
      linalg.yield %256 : i1
    } -> tensor<1x4096xi1>
    %65 = tensor.empty() : tensor<1x4096xf32>
    %66 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel"]} ins(%64, %62, %cst : tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<1xf32>) outs(%65 : tensor<1x4096xf32>) {
    ^bb0(%in: i1, %in_13: f32, %in_14: f32, %out: f32):
      %256 = arith.select %in, %in_13, %in_14 : f32
      linalg.yield %256 : f32
    } -> tensor<1x4096xf32>
    %expanded_3 = tensor.expand_shape %66 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %67 = tensor.empty() : tensor<1x4096x25088xf32>
    %68 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2 : tensor<1x25088x4096xf32>) outs(%67 : tensor<1x4096x25088xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4096x25088xf32>
    %69 = tensor.empty() : tensor<1x1x25088xf32>
    %70 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%69 : tensor<1x1x25088xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x25088xf32>
    %71 = linalg.generic {indexing_maps = [#map3, #map4, #map5], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded_3, %68 : tensor<1x1x4096xf32>, tensor<1x4096x25088xf32>) outs(%70 : tensor<1x1x25088xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %256 = arith.mulf %in, %in_13 : f32
      %257 = arith.addf %out, %256 : f32
      linalg.yield %257 : f32
    } -> tensor<1x1x25088xf32>
    %collapsed_4 = tensor.collapse_shape %71 [[0, 1], [2]] : tensor<1x1x25088xf32> into tensor<1x25088xf32>
    %expanded_5 = tensor.expand_shape %collapsed_4 [[0], [1, 2, 3]] : tensor<1x25088xf32> into tensor<1x512x7x7xf32>
    %72 = tensor.empty() : tensor<1x7x7x512xf32>
    %73 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_5 : tensor<1x512x7x7xf32>) outs(%72 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %74 = tensor.empty() : tensor<1x14x14x512xf32>
    %75 = tensor.empty() : tensor<2x2xf32>
    %76 = linalg.generic {indexing_maps = [#map10, #map11, #map12, #map12, #map10], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%33, %75, %34, %73 : tensor<1x14x14x512xf32>, tensor<2x2xf32>, tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%74 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_13: f32, %in_14: f32, %in_15: f32, %out: f32):
      %256 = arith.cmpf oge, %in, %in_14 : f32
      %257 = arith.select %256, %in_15, %cst_0 : f32
      %258 = arith.addf %out, %257 : f32
      linalg.yield %258 : f32
    } -> tensor<1x14x14x512xf32>
    %77 = tensor.empty() : tensor<1x512x14x14xf32>
    %78 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76 : tensor<1x14x14x512xf32>) outs(%77 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %79 = tensor.empty() : tensor<1x512x14x14xi1>
    %80 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %32 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%79 : tensor<1x512x14x14xi1>) {
    ^bb0(%in: f32, %in_13: f32, %out: i1):
      %256 = arith.cmpf oeq, %in, %in_13 : f32
      linalg.yield %256 : i1
    } -> tensor<1x512x14x14xi1>
    %81 = tensor.empty() : tensor<1x512x14x14xf32>
    %82 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %78, %cst : tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<1xf32>) outs(%81 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: i1, %in_13: f32, %in_14: f32, %out: f32):
      %256 = arith.select %in, %in_13, %in_14 : f32
      linalg.yield %256 : f32
    } -> tensor<1x512x14x14xf32>
    %83 = tensor.empty() : tensor<1x14x14x512xf32>
    %84 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82 : tensor<1x512x14x14xf32>) outs(%83 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %85 = tensor.empty() : tensor<512x3x3x512xf32>
    %86 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3 : tensor<512x3x3x512xf32>) outs(%85 : tensor<512x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x3x3x512xf32>
    %87 = tensor.empty() : tensor<512xf32>
    %88 = tensor.empty() : tensor<512x3x3x512xf32>
    %89 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%88 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %256 = linalg.index 0 : index
      %257 = linalg.index 1 : index
      %258 = arith.subi %c2, %257 : index
      %259 = linalg.index 2 : index
      %260 = linalg.index 3 : index
      %extracted = tensor.extract %86[%256, %258, %259, %260] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %90 = tensor.empty() : tensor<512x3x3x512xf32>
    %91 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%90 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %256 = linalg.index 0 : index
      %257 = linalg.index 1 : index
      %258 = linalg.index 2 : index
      %259 = arith.subi %c2, %258 : index
      %260 = linalg.index 3 : index
      %extracted = tensor.extract %89[%256, %257, %259, %260] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded = tensor.pad %84 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %92 = tensor.empty() : tensor<3x3x512x512xf32>
    %93 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91 : tensor<512x3x3x512xf32>) outs(%92 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %94 = tensor.empty() : tensor<1x14x14x512xf32>
    %95 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%94 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %96 = tensor.empty() : tensor<1x14x14x512xf32>
    %97 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded, %93 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%95 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %256 = arith.mulf %in, %in_13 : f32
      %257 = arith.addf %out, %256 : f32
      linalg.yield %257 : f32
    } -> tensor<1x14x14x512xf32>
    %98 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87, %97 : tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%96 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %256 = arith.addf %in, %in_13 : f32
      linalg.yield %256 : f32
    } -> tensor<1x14x14x512xf32>
    %99 = tensor.empty() : tensor<1x512x14x14xf32>
    %100 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98 : tensor<1x14x14x512xf32>) outs(%99 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %101 = tensor.empty() : tensor<1x512x14x14xi1>
    %102 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %30 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%101 : tensor<1x512x14x14xi1>) {
    ^bb0(%in: f32, %in_13: f32, %out: i1):
      %256 = arith.cmpf oeq, %in, %in_13 : f32
      linalg.yield %256 : i1
    } -> tensor<1x512x14x14xi1>
    %103 = tensor.empty() : tensor<1x512x14x14xf32>
    %104 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102, %100, %cst : tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<1xf32>) outs(%103 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: i1, %in_13: f32, %in_14: f32, %out: f32):
      %256 = arith.select %in, %in_13, %in_14 : f32
      linalg.yield %256 : f32
    } -> tensor<1x512x14x14xf32>
    %105 = tensor.empty() : tensor<1x14x14x512xf32>
    %106 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104 : tensor<1x512x14x14xf32>) outs(%105 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %107 = tensor.empty() : tensor<512x3x3x512xf32>
    %108 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%107 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %256 = linalg.index 0 : index
      %257 = linalg.index 1 : index
      %258 = arith.subi %c2, %257 : index
      %259 = linalg.index 2 : index
      %260 = linalg.index 3 : index
      %extracted = tensor.extract %86[%256, %258, %259, %260] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %109 = tensor.empty() : tensor<512x3x3x512xf32>
    %110 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%109 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %256 = linalg.index 0 : index
      %257 = linalg.index 1 : index
      %258 = linalg.index 2 : index
      %259 = arith.subi %c2, %258 : index
      %260 = linalg.index 3 : index
      %extracted = tensor.extract %108[%256, %257, %259, %260] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_6 = tensor.pad %106 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %111 = tensor.empty() : tensor<3x3x512x512xf32>
    %112 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110 : tensor<512x3x3x512xf32>) outs(%111 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %113 = tensor.empty() : tensor<1x14x14x512xf32>
    %114 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%113 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %115 = tensor.empty() : tensor<1x14x14x512xf32>
    %116 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_6, %112 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%114 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %256 = arith.mulf %in, %in_13 : f32
      %257 = arith.addf %out, %256 : f32
      linalg.yield %257 : f32
    } -> tensor<1x14x14x512xf32>
    %117 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87, %116 : tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%115 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %256 = arith.addf %in, %in_13 : f32
      linalg.yield %256 : f32
    } -> tensor<1x14x14x512xf32>
    %118 = tensor.empty() : tensor<1x28x28x512xf32>
    %119 = linalg.generic {indexing_maps = [#map10, #map11, #map12, #map12, #map10], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%27, %75, %28, %117 : tensor<1x28x28x512xf32>, tensor<2x2xf32>, tensor<1x14x14x512xf32>, tensor<1x14x14x512xf32>) outs(%118 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_13: f32, %in_14: f32, %in_15: f32, %out: f32):
      %256 = arith.cmpf oge, %in, %in_14 : f32
      %257 = arith.select %256, %in_15, %cst_0 : f32
      %258 = arith.addf %out, %257 : f32
      linalg.yield %258 : f32
    } -> tensor<1x28x28x512xf32>
    %120 = tensor.empty() : tensor<1x512x28x28xf32>
    %121 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x28x28x512xf32>) outs(%120 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %122 = tensor.empty() : tensor<1x512x28x28xi1>
    %123 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %26 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%122 : tensor<1x512x28x28xi1>) {
    ^bb0(%in: f32, %in_13: f32, %out: i1):
      %256 = arith.cmpf oeq, %in, %in_13 : f32
      linalg.yield %256 : i1
    } -> tensor<1x512x28x28xi1>
    %124 = tensor.empty() : tensor<1x512x28x28xf32>
    %125 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123, %121, %cst : tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<1xf32>) outs(%124 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: i1, %in_13: f32, %in_14: f32, %out: f32):
      %256 = arith.select %in, %in_13, %in_14 : f32
      linalg.yield %256 : f32
    } -> tensor<1x512x28x28xf32>
    %126 = tensor.empty() : tensor<1x28x28x512xf32>
    %127 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125 : tensor<1x512x28x28xf32>) outs(%126 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %128 = tensor.empty() : tensor<512x3x3x512xf32>
    %129 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%128 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %256 = linalg.index 0 : index
      %257 = linalg.index 1 : index
      %258 = arith.subi %c2, %257 : index
      %259 = linalg.index 2 : index
      %260 = linalg.index 3 : index
      %extracted = tensor.extract %86[%256, %258, %259, %260] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %130 = tensor.empty() : tensor<512x3x3x512xf32>
    %131 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%130 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %256 = linalg.index 0 : index
      %257 = linalg.index 1 : index
      %258 = linalg.index 2 : index
      %259 = arith.subi %c2, %258 : index
      %260 = linalg.index 3 : index
      %extracted = tensor.extract %129[%256, %257, %259, %260] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_7 = tensor.pad %127 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %132 = tensor.empty() : tensor<3x3x512x512xf32>
    %133 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131 : tensor<512x3x3x512xf32>) outs(%132 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %134 = tensor.empty() : tensor<1x28x28x512xf32>
    %135 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%134 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %136 = tensor.empty() : tensor<1x28x28x512xf32>
    %137 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_7, %133 : tensor<1x30x30x512xf32>, tensor<3x3x512x512xf32>) outs(%135 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %256 = arith.mulf %in, %in_13 : f32
      %257 = arith.addf %out, %256 : f32
      linalg.yield %257 : f32
    } -> tensor<1x28x28x512xf32>
    %138 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87, %137 : tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%136 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %256 = arith.addf %in, %in_13 : f32
      linalg.yield %256 : f32
    } -> tensor<1x28x28x512xf32>
    %139 = tensor.empty() : tensor<1x512x28x28xf32>
    %140 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138 : tensor<1x28x28x512xf32>) outs(%139 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %141 = tensor.empty() : tensor<1x512x28x28xi1>
    %142 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %24 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%141 : tensor<1x512x28x28xi1>) {
    ^bb0(%in: f32, %in_13: f32, %out: i1):
      %256 = arith.cmpf oeq, %in, %in_13 : f32
      linalg.yield %256 : i1
    } -> tensor<1x512x28x28xi1>
    %143 = tensor.empty() : tensor<1x512x28x28xf32>
    %144 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142, %140, %cst : tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<1xf32>) outs(%143 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: i1, %in_13: f32, %in_14: f32, %out: f32):
      %256 = arith.select %in, %in_13, %in_14 : f32
      linalg.yield %256 : f32
    } -> tensor<1x512x28x28xf32>
    %145 = tensor.empty() : tensor<1x28x28x512xf32>
    %146 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144 : tensor<1x512x28x28xf32>) outs(%145 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %147 = tensor.empty() : tensor<256x3x3x512xf32>
    %148 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<512x3x3x256xf32>) outs(%147 : tensor<256x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x512xf32>
    %149 = tensor.empty() : tensor<256xf32>
    %150 = tensor.empty() : tensor<256x3x3x512xf32>
    %151 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%150 : tensor<256x3x3x512xf32>) {
    ^bb0(%out: f32):
      %256 = linalg.index 0 : index
      %257 = linalg.index 1 : index
      %258 = arith.subi %c2, %257 : index
      %259 = linalg.index 2 : index
      %260 = linalg.index 3 : index
      %extracted = tensor.extract %148[%256, %258, %259, %260] : tensor<256x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x512xf32>
    %152 = tensor.empty() : tensor<256x3x3x512xf32>
    %153 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%152 : tensor<256x3x3x512xf32>) {
    ^bb0(%out: f32):
      %256 = linalg.index 0 : index
      %257 = linalg.index 1 : index
      %258 = linalg.index 2 : index
      %259 = arith.subi %c2, %258 : index
      %260 = linalg.index 3 : index
      %extracted = tensor.extract %151[%256, %257, %259, %260] : tensor<256x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x512xf32>
    %padded_8 = tensor.pad %146 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %154 = tensor.empty() : tensor<3x3x512x256xf32>
    %155 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153 : tensor<256x3x3x512xf32>) outs(%154 : tensor<3x3x512x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x256xf32>
    %156 = tensor.empty() : tensor<1x28x28x256xf32>
    %157 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%156 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x256xf32>
    %158 = tensor.empty() : tensor<1x28x28x256xf32>
    %159 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_8, %155 : tensor<1x30x30x512xf32>, tensor<3x3x512x256xf32>) outs(%157 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %256 = arith.mulf %in, %in_13 : f32
      %257 = arith.addf %out, %256 : f32
      linalg.yield %257 : f32
    } -> tensor<1x28x28x256xf32>
    %160 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149, %159 : tensor<256xf32>, tensor<1x28x28x256xf32>) outs(%158 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %256 = arith.addf %in, %in_13 : f32
      linalg.yield %256 : f32
    } -> tensor<1x28x28x256xf32>
    %161 = tensor.empty() : tensor<1x56x56x256xf32>
    %162 = linalg.generic {indexing_maps = [#map10, #map11, #map12, #map12, #map10], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%21, %75, %22, %160 : tensor<1x56x56x256xf32>, tensor<2x2xf32>, tensor<1x28x28x256xf32>, tensor<1x28x28x256xf32>) outs(%161 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_13: f32, %in_14: f32, %in_15: f32, %out: f32):
      %256 = arith.cmpf oge, %in, %in_14 : f32
      %257 = arith.select %256, %in_15, %cst_0 : f32
      %258 = arith.addf %out, %257 : f32
      linalg.yield %258 : f32
    } -> tensor<1x56x56x256xf32>
    %163 = tensor.empty() : tensor<1x256x56x56xf32>
    %164 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162 : tensor<1x56x56x256xf32>) outs(%163 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %165 = tensor.empty() : tensor<1x256x56x56xi1>
    %166 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %20 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%165 : tensor<1x256x56x56xi1>) {
    ^bb0(%in: f32, %in_13: f32, %out: i1):
      %256 = arith.cmpf oeq, %in, %in_13 : f32
      linalg.yield %256 : i1
    } -> tensor<1x256x56x56xi1>
    %167 = tensor.empty() : tensor<1x256x56x56xf32>
    %168 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166, %164, %cst : tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<1xf32>) outs(%167 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: i1, %in_13: f32, %in_14: f32, %out: f32):
      %256 = arith.select %in, %in_13, %in_14 : f32
      linalg.yield %256 : f32
    } -> tensor<1x256x56x56xf32>
    %169 = tensor.empty() : tensor<1x56x56x256xf32>
    %170 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168 : tensor<1x256x56x56xf32>) outs(%169 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %171 = tensor.empty() : tensor<256x3x3x256xf32>
    %172 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<256x3x3x256xf32>) outs(%171 : tensor<256x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x256xf32>
    %173 = tensor.empty() : tensor<256x3x3x256xf32>
    %174 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%173 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %256 = linalg.index 0 : index
      %257 = linalg.index 1 : index
      %258 = arith.subi %c2, %257 : index
      %259 = linalg.index 2 : index
      %260 = linalg.index 3 : index
      %extracted = tensor.extract %172[%256, %258, %259, %260] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %175 = tensor.empty() : tensor<256x3x3x256xf32>
    %176 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%175 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %256 = linalg.index 0 : index
      %257 = linalg.index 1 : index
      %258 = linalg.index 2 : index
      %259 = arith.subi %c2, %258 : index
      %260 = linalg.index 3 : index
      %extracted = tensor.extract %174[%256, %257, %259, %260] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_9 = tensor.pad %170 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %177 = tensor.empty() : tensor<3x3x256x256xf32>
    %178 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<256x3x3x256xf32>) outs(%177 : tensor<3x3x256x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x256x256xf32>
    %179 = tensor.empty() : tensor<1x56x56x256xf32>
    %180 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%179 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %181 = tensor.empty() : tensor<1x56x56x256xf32>
    %182 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_9, %178 : tensor<1x58x58x256xf32>, tensor<3x3x256x256xf32>) outs(%180 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %256 = arith.mulf %in, %in_13 : f32
      %257 = arith.addf %out, %256 : f32
      linalg.yield %257 : f32
    } -> tensor<1x56x56x256xf32>
    %183 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149, %182 : tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%181 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %256 = arith.addf %in, %in_13 : f32
      linalg.yield %256 : f32
    } -> tensor<1x56x56x256xf32>
    %184 = tensor.empty() : tensor<1x256x56x56xf32>
    %185 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x56x56x256xf32>) outs(%184 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %186 = tensor.empty() : tensor<1x256x56x56xi1>
    %187 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %18 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%186 : tensor<1x256x56x56xi1>) {
    ^bb0(%in: f32, %in_13: f32, %out: i1):
      %256 = arith.cmpf oeq, %in, %in_13 : f32
      linalg.yield %256 : i1
    } -> tensor<1x256x56x56xi1>
    %188 = tensor.empty() : tensor<1x256x56x56xf32>
    %189 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %185, %cst : tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<1xf32>) outs(%188 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: i1, %in_13: f32, %in_14: f32, %out: f32):
      %256 = arith.select %in, %in_13, %in_14 : f32
      linalg.yield %256 : f32
    } -> tensor<1x256x56x56xf32>
    %190 = tensor.empty() : tensor<1x56x56x256xf32>
    %191 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189 : tensor<1x256x56x56xf32>) outs(%190 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %192 = tensor.empty() : tensor<128x3x3x256xf32>
    %193 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<256x3x3x128xf32>) outs(%192 : tensor<128x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x256xf32>
    %194 = tensor.empty() : tensor<128xf32>
    %195 = tensor.empty() : tensor<128x3x3x256xf32>
    %196 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%195 : tensor<128x3x3x256xf32>) {
    ^bb0(%out: f32):
      %256 = linalg.index 0 : index
      %257 = linalg.index 1 : index
      %258 = arith.subi %c2, %257 : index
      %259 = linalg.index 2 : index
      %260 = linalg.index 3 : index
      %extracted = tensor.extract %193[%256, %258, %259, %260] : tensor<128x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x256xf32>
    %197 = tensor.empty() : tensor<128x3x3x256xf32>
    %198 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%197 : tensor<128x3x3x256xf32>) {
    ^bb0(%out: f32):
      %256 = linalg.index 0 : index
      %257 = linalg.index 1 : index
      %258 = linalg.index 2 : index
      %259 = arith.subi %c2, %258 : index
      %260 = linalg.index 3 : index
      %extracted = tensor.extract %196[%256, %257, %259, %260] : tensor<128x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x256xf32>
    %padded_10 = tensor.pad %191 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %199 = tensor.empty() : tensor<3x3x256x128xf32>
    %200 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198 : tensor<128x3x3x256xf32>) outs(%199 : tensor<3x3x256x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x256x128xf32>
    %201 = tensor.empty() : tensor<1x56x56x128xf32>
    %202 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%201 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x128xf32>
    %203 = tensor.empty() : tensor<1x56x56x128xf32>
    %204 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_10, %200 : tensor<1x58x58x256xf32>, tensor<3x3x256x128xf32>) outs(%202 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %256 = arith.mulf %in, %in_13 : f32
      %257 = arith.addf %out, %256 : f32
      linalg.yield %257 : f32
    } -> tensor<1x56x56x128xf32>
    %205 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %204 : tensor<128xf32>, tensor<1x56x56x128xf32>) outs(%203 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %256 = arith.addf %in, %in_13 : f32
      linalg.yield %256 : f32
    } -> tensor<1x56x56x128xf32>
    %206 = tensor.empty() : tensor<1x112x112x128xf32>
    %207 = linalg.generic {indexing_maps = [#map10, #map11, #map12, #map12, #map10], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%15, %75, %16, %205 : tensor<1x112x112x128xf32>, tensor<2x2xf32>, tensor<1x56x56x128xf32>, tensor<1x56x56x128xf32>) outs(%206 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_13: f32, %in_14: f32, %in_15: f32, %out: f32):
      %256 = arith.cmpf oge, %in, %in_14 : f32
      %257 = arith.select %256, %in_15, %cst_0 : f32
      %258 = arith.addf %out, %257 : f32
      linalg.yield %258 : f32
    } -> tensor<1x112x112x128xf32>
    %208 = tensor.empty() : tensor<1x128x112x112xf32>
    %209 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207 : tensor<1x112x112x128xf32>) outs(%208 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x112x112xf32>
    %210 = tensor.empty() : tensor<1x128x112x112xi1>
    %211 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13, %14 : tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>) outs(%210 : tensor<1x128x112x112xi1>) {
    ^bb0(%in: f32, %in_13: f32, %out: i1):
      %256 = arith.cmpf oeq, %in, %in_13 : f32
      linalg.yield %256 : i1
    } -> tensor<1x128x112x112xi1>
    %212 = tensor.empty() : tensor<1x128x112x112xf32>
    %213 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %209, %cst : tensor<1x128x112x112xi1>, tensor<1x128x112x112xf32>, tensor<1xf32>) outs(%212 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: i1, %in_13: f32, %in_14: f32, %out: f32):
      %256 = arith.select %in, %in_13, %in_14 : f32
      linalg.yield %256 : f32
    } -> tensor<1x128x112x112xf32>
    %214 = tensor.empty() : tensor<1x112x112x128xf32>
    %215 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213 : tensor<1x128x112x112xf32>) outs(%214 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x128xf32>
    %216 = tensor.empty() : tensor<64x3x3x128xf32>
    %217 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<128x3x3x64xf32>) outs(%216 : tensor<64x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x128xf32>
    %218 = tensor.empty() : tensor<64xf32>
    %219 = tensor.empty() : tensor<64x3x3x128xf32>
    %220 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%219 : tensor<64x3x3x128xf32>) {
    ^bb0(%out: f32):
      %256 = linalg.index 0 : index
      %257 = linalg.index 1 : index
      %258 = arith.subi %c2, %257 : index
      %259 = linalg.index 2 : index
      %260 = linalg.index 3 : index
      %extracted = tensor.extract %217[%256, %258, %259, %260] : tensor<64x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x128xf32>
    %221 = tensor.empty() : tensor<64x3x3x128xf32>
    %222 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%221 : tensor<64x3x3x128xf32>) {
    ^bb0(%out: f32):
      %256 = linalg.index 0 : index
      %257 = linalg.index 1 : index
      %258 = linalg.index 2 : index
      %259 = arith.subi %c2, %258 : index
      %260 = linalg.index 3 : index
      %extracted = tensor.extract %220[%256, %257, %259, %260] : tensor<64x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x128xf32>
    %padded_11 = tensor.pad %215 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x112x112x128xf32> to tensor<1x114x114x128xf32>
    %223 = tensor.empty() : tensor<3x3x128x64xf32>
    %224 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222 : tensor<64x3x3x128xf32>) outs(%223 : tensor<3x3x128x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x128x64xf32>
    %225 = tensor.empty() : tensor<1x112x112x64xf32>
    %226 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%225 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x64xf32>
    %227 = tensor.empty() : tensor<1x112x112x64xf32>
    %228 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_11, %224 : tensor<1x114x114x128xf32>, tensor<3x3x128x64xf32>) outs(%226 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %256 = arith.mulf %in, %in_13 : f32
      %257 = arith.addf %out, %256 : f32
      linalg.yield %257 : f32
    } -> tensor<1x112x112x64xf32>
    %229 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218, %228 : tensor<64xf32>, tensor<1x112x112x64xf32>) outs(%227 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %256 = arith.addf %in, %in_13 : f32
      linalg.yield %256 : f32
    } -> tensor<1x112x112x64xf32>
    %230 = tensor.empty() : tensor<1x224x224x64xf32>
    %231 = linalg.generic {indexing_maps = [#map10, #map11, #map12, #map12, #map10], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%11, %75, %12, %229 : tensor<1x224x224x64xf32>, tensor<2x2xf32>, tensor<1x112x112x64xf32>, tensor<1x112x112x64xf32>) outs(%230 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_13: f32, %in_14: f32, %in_15: f32, %out: f32):
      %256 = arith.cmpf oge, %in, %in_14 : f32
      %257 = arith.select %256, %in_15, %cst_0 : f32
      %258 = arith.addf %out, %257 : f32
      linalg.yield %258 : f32
    } -> tensor<1x224x224x64xf32>
    %232 = tensor.empty() : tensor<1x64x224x224xf32>
    %233 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231 : tensor<1x224x224x64xf32>) outs(%232 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x224x224xf32>
    %234 = tensor.empty() : tensor<1x64x224x224xi1>
    %235 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %10 : tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>) outs(%234 : tensor<1x64x224x224xi1>) {
    ^bb0(%in: f32, %in_13: f32, %out: i1):
      %256 = arith.cmpf oeq, %in, %in_13 : f32
      linalg.yield %256 : i1
    } -> tensor<1x64x224x224xi1>
    %236 = tensor.empty() : tensor<1x64x224x224xf32>
    %237 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235, %233, %cst : tensor<1x64x224x224xi1>, tensor<1x64x224x224xf32>, tensor<1xf32>) outs(%236 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: i1, %in_13: f32, %in_14: f32, %out: f32):
      %256 = arith.select %in, %in_13, %in_14 : f32
      linalg.yield %256 : f32
    } -> tensor<1x64x224x224xf32>
    %238 = tensor.empty() : tensor<1x224x224x64xf32>
    %239 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237 : tensor<1x64x224x224xf32>) outs(%238 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x224x224x64xf32>
    %240 = tensor.empty() : tensor<3x3x3x64xf32>
    %241 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<64x3x3x3xf32>) outs(%240 : tensor<3x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x3x64xf32>
    %242 = tensor.empty() : tensor<3xf32>
    %243 = tensor.empty() : tensor<3x3x3x64xf32>
    %244 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%243 : tensor<3x3x3x64xf32>) {
    ^bb0(%out: f32):
      %256 = linalg.index 0 : index
      %257 = linalg.index 1 : index
      %258 = arith.subi %c2, %257 : index
      %259 = linalg.index 2 : index
      %260 = linalg.index 3 : index
      %extracted = tensor.extract %241[%256, %258, %259, %260] : tensor<3x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x3x64xf32>
    %245 = tensor.empty() : tensor<3x3x3x64xf32>
    %246 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%245 : tensor<3x3x3x64xf32>) {
    ^bb0(%out: f32):
      %256 = linalg.index 0 : index
      %257 = linalg.index 1 : index
      %258 = linalg.index 2 : index
      %259 = arith.subi %c2, %258 : index
      %260 = linalg.index 3 : index
      %extracted = tensor.extract %244[%256, %257, %259, %260] : tensor<3x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x3x64xf32>
    %padded_12 = tensor.pad %239 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x224x224x64xf32> to tensor<1x226x226x64xf32>
    %247 = tensor.empty() : tensor<3x3x64x3xf32>
    %248 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246 : tensor<3x3x3x64xf32>) outs(%247 : tensor<3x3x64x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x64x3xf32>
    %249 = tensor.empty() : tensor<1x224x224x3xf32>
    %250 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%249 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x224x224x3xf32>
    %251 = tensor.empty() : tensor<1x224x224x3xf32>
    %252 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_12, %248 : tensor<1x226x226x64xf32>, tensor<3x3x64x3xf32>) outs(%250 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %256 = arith.mulf %in, %in_13 : f32
      %257 = arith.addf %out, %256 : f32
      linalg.yield %257 : f32
    } -> tensor<1x224x224x3xf32>
    %253 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242, %252 : tensor<3xf32>, tensor<1x224x224x3xf32>) outs(%251 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %256 = arith.addf %in, %in_13 : f32
      linalg.yield %256 : f32
    } -> tensor<1x224x224x3xf32>
    %254 = tensor.empty() : tensor<1x3x224x224xf32>
    %255 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253 : tensor<1x224x224x3xf32>) outs(%254 : tensor<1x3x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3x224x224xf32>
    return %255 : tensor<1x3x224x224xf32>
  }
}

