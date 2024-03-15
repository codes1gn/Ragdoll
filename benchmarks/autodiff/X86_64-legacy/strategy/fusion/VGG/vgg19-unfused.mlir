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
  ml_program.global private mutable @global102 : tensor<1x4096xf32>
  ml_program.global private mutable @global101 : tensor<1x4096xf32>
  ml_program.global private mutable @global100 : tensor<1x4096xf32>
  ml_program.global private mutable @global96 : tensor<1x4096xf32>
  ml_program.global private mutable @global95 : tensor<1x4096xf32>
  ml_program.global private mutable @global94 : tensor<1x4096xf32>
  ml_program.global private mutable @global89 : tensor<1x7x7x512xf32>
  ml_program.global private mutable @global88 : tensor<1x14x14x512xf32>
  ml_program.global private mutable @global87 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global86 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global83 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global82 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global79 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global78 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global75 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global74 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global72 : tensor<1x14x14x512xf32>
  ml_program.global private mutable @global71 : tensor<1x28x28x512xf32>
  ml_program.global private mutable @global70 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global69 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global66 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global65 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global62 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global61 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global58 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global57 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global55 : tensor<1x28x28x256xf32>
  ml_program.global private mutable @global54 : tensor<1x56x56x256xf32>
  ml_program.global private mutable @global53 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global52 : tensor<1x256x56x56xf32>
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
    %29 = ml_program.global_load @global52 : tensor<1x256x56x56xf32>
    %30 = ml_program.global_load @global53 : tensor<1x256x56x56xf32>
    %31 = ml_program.global_load @global54 : tensor<1x56x56x256xf32>
    %32 = ml_program.global_load @global55 : tensor<1x28x28x256xf32>
    %33 = ml_program.global_load @global57 : tensor<1x512x28x28xf32>
    %34 = ml_program.global_load @global58 : tensor<1x512x28x28xf32>
    %35 = ml_program.global_load @global61 : tensor<1x512x28x28xf32>
    %36 = ml_program.global_load @global62 : tensor<1x512x28x28xf32>
    %37 = ml_program.global_load @global65 : tensor<1x512x28x28xf32>
    %38 = ml_program.global_load @global66 : tensor<1x512x28x28xf32>
    %39 = ml_program.global_load @global69 : tensor<1x512x28x28xf32>
    %40 = ml_program.global_load @global70 : tensor<1x512x28x28xf32>
    %41 = ml_program.global_load @global71 : tensor<1x28x28x512xf32>
    %42 = ml_program.global_load @global72 : tensor<1x14x14x512xf32>
    %43 = ml_program.global_load @global74 : tensor<1x512x14x14xf32>
    %44 = ml_program.global_load @global75 : tensor<1x512x14x14xf32>
    %45 = ml_program.global_load @global78 : tensor<1x512x14x14xf32>
    %46 = ml_program.global_load @global79 : tensor<1x512x14x14xf32>
    %47 = ml_program.global_load @global82 : tensor<1x512x14x14xf32>
    %48 = ml_program.global_load @global83 : tensor<1x512x14x14xf32>
    %49 = ml_program.global_load @global86 : tensor<1x512x14x14xf32>
    %50 = ml_program.global_load @global87 : tensor<1x512x14x14xf32>
    %51 = ml_program.global_load @global88 : tensor<1x14x14x512xf32>
    %52 = ml_program.global_load @global89 : tensor<1x7x7x512xf32>
    %53 = ml_program.global_load @global94 : tensor<1x4096xf32>
    %54 = ml_program.global_load @global95 : tensor<1x4096xf32>
    %55 = ml_program.global_load @global96 : tensor<1x4096xf32>
    %56 = ml_program.global_load @global100 : tensor<1x4096xf32>
    %57 = ml_program.global_load @global101 : tensor<1x4096xf32>
    %58 = ml_program.global_load @global102 : tensor<1x4096xf32>
    %expanded = tensor.expand_shape %arg0 [[0, 1], [2]] : tensor<1x1000xf32> into tensor<1x1x1000xf32>
    %59 = tensor.empty() : tensor<1x1000x4096xf32>
    %60 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<1x4096x1000xf32>) outs(%59 : tensor<1x1000x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1000x4096xf32>
    %61 = tensor.empty() : tensor<1x1x4096xf32>
    %62 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%61 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x4096xf32>
    %63 = linalg.generic {indexing_maps = [#map3, #map4, #map5], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded, %60 : tensor<1x1x1000xf32>, tensor<1x1000x4096xf32>) outs(%62 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.mulf %in, %in_21 : f32
      %431 = arith.addf %out, %430 : f32
      linalg.yield %431 : f32
    } -> tensor<1x1x4096xf32>
    %collapsed = tensor.collapse_shape %63 [[0, 1], [2]] : tensor<1x1x4096xf32> into tensor<1x4096xf32>
    %64 = tensor.empty() : tensor<1x4096xi1>
    %65 = linalg.generic {indexing_maps = [#map6, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%57, %58 : tensor<1x4096xf32>, tensor<1x4096xf32>) outs(%64 : tensor<1x4096xi1>) {
    ^bb0(%in: f32, %in_21: f32, %out: i1):
      %430 = arith.cmpf oeq, %in, %in_21 : f32
      linalg.yield %430 : i1
    } -> tensor<1x4096xi1>
    %66 = tensor.empty() : tensor<1x4096xf32>
    %67 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel"]} ins(%65, %collapsed, %cst : tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<1xf32>) outs(%66 : tensor<1x4096xf32>) {
    ^bb0(%in: i1, %in_21: f32, %in_22: f32, %out: f32):
      %430 = arith.select %in, %in_21, %in_22 : f32
      linalg.yield %430 : f32
    } -> tensor<1x4096xf32>
    %68 = tensor.empty() : tensor<1x4096xi1>
    %69 = linalg.generic {indexing_maps = [#map6, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%56, %57 : tensor<1x4096xf32>, tensor<1x4096xf32>) outs(%68 : tensor<1x4096xi1>) {
    ^bb0(%in: f32, %in_21: f32, %out: i1):
      %430 = arith.cmpf oeq, %in, %in_21 : f32
      linalg.yield %430 : i1
    } -> tensor<1x4096xi1>
    %70 = tensor.empty() : tensor<1x4096xf32>
    %71 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel"]} ins(%69, %67, %cst : tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<1xf32>) outs(%70 : tensor<1x4096xf32>) {
    ^bb0(%in: i1, %in_21: f32, %in_22: f32, %out: f32):
      %430 = arith.select %in, %in_21, %in_22 : f32
      linalg.yield %430 : f32
    } -> tensor<1x4096xf32>
    %expanded_1 = tensor.expand_shape %71 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %72 = tensor.empty() : tensor<1x4096x4096xf32>
    %73 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1 : tensor<1x4096x4096xf32>) outs(%72 : tensor<1x4096x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4096x4096xf32>
    %74 = tensor.empty() : tensor<1x1x4096xf32>
    %75 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%74 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x4096xf32>
    %76 = linalg.generic {indexing_maps = [#map3, #map4, #map5], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded_1, %73 : tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) outs(%75 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.mulf %in, %in_21 : f32
      %431 = arith.addf %out, %430 : f32
      linalg.yield %431 : f32
    } -> tensor<1x1x4096xf32>
    %collapsed_2 = tensor.collapse_shape %76 [[0, 1], [2]] : tensor<1x1x4096xf32> into tensor<1x4096xf32>
    %77 = tensor.empty() : tensor<1x4096xi1>
    %78 = linalg.generic {indexing_maps = [#map6, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%54, %55 : tensor<1x4096xf32>, tensor<1x4096xf32>) outs(%77 : tensor<1x4096xi1>) {
    ^bb0(%in: f32, %in_21: f32, %out: i1):
      %430 = arith.cmpf oeq, %in, %in_21 : f32
      linalg.yield %430 : i1
    } -> tensor<1x4096xi1>
    %79 = tensor.empty() : tensor<1x4096xf32>
    %80 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel"]} ins(%78, %collapsed_2, %cst : tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<1xf32>) outs(%79 : tensor<1x4096xf32>) {
    ^bb0(%in: i1, %in_21: f32, %in_22: f32, %out: f32):
      %430 = arith.select %in, %in_21, %in_22 : f32
      linalg.yield %430 : f32
    } -> tensor<1x4096xf32>
    %81 = tensor.empty() : tensor<1x4096xi1>
    %82 = linalg.generic {indexing_maps = [#map6, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%53, %54 : tensor<1x4096xf32>, tensor<1x4096xf32>) outs(%81 : tensor<1x4096xi1>) {
    ^bb0(%in: f32, %in_21: f32, %out: i1):
      %430 = arith.cmpf oeq, %in, %in_21 : f32
      linalg.yield %430 : i1
    } -> tensor<1x4096xi1>
    %83 = tensor.empty() : tensor<1x4096xf32>
    %84 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel"]} ins(%82, %80, %cst : tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<1xf32>) outs(%83 : tensor<1x4096xf32>) {
    ^bb0(%in: i1, %in_21: f32, %in_22: f32, %out: f32):
      %430 = arith.select %in, %in_21, %in_22 : f32
      linalg.yield %430 : f32
    } -> tensor<1x4096xf32>
    %expanded_3 = tensor.expand_shape %84 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %85 = tensor.empty() : tensor<1x4096x25088xf32>
    %86 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2 : tensor<1x25088x4096xf32>) outs(%85 : tensor<1x4096x25088xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4096x25088xf32>
    %87 = tensor.empty() : tensor<1x1x25088xf32>
    %88 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%87 : tensor<1x1x25088xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x25088xf32>
    %89 = linalg.generic {indexing_maps = [#map3, #map4, #map5], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded_3, %86 : tensor<1x1x4096xf32>, tensor<1x4096x25088xf32>) outs(%88 : tensor<1x1x25088xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.mulf %in, %in_21 : f32
      %431 = arith.addf %out, %430 : f32
      linalg.yield %431 : f32
    } -> tensor<1x1x25088xf32>
    %collapsed_4 = tensor.collapse_shape %89 [[0, 1], [2]] : tensor<1x1x25088xf32> into tensor<1x25088xf32>
    %expanded_5 = tensor.expand_shape %collapsed_4 [[0], [1, 2, 3]] : tensor<1x25088xf32> into tensor<1x512x7x7xf32>
    %90 = tensor.empty() : tensor<1x7x7x512xf32>
    %91 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_5 : tensor<1x512x7x7xf32>) outs(%90 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %92 = tensor.empty() : tensor<1x14x14x512xf32>
    %93 = tensor.empty() : tensor<2x2xf32>
    %94 = linalg.generic {indexing_maps = [#map10, #map11, #map12, #map12, #map10], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%51, %93, %52, %91 : tensor<1x14x14x512xf32>, tensor<2x2xf32>, tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%92 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %in_23: f32, %out: f32):
      %430 = arith.cmpf oge, %in, %in_22 : f32
      %431 = arith.select %430, %in_23, %cst_0 : f32
      %432 = arith.addf %out, %431 : f32
      linalg.yield %432 : f32
    } -> tensor<1x14x14x512xf32>
    %95 = tensor.empty() : tensor<1x512x14x14xf32>
    %96 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<1x14x14x512xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %97 = tensor.empty() : tensor<1x512x14x14xi1>
    %98 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49, %50 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%97 : tensor<1x512x14x14xi1>) {
    ^bb0(%in: f32, %in_21: f32, %out: i1):
      %430 = arith.cmpf oeq, %in, %in_21 : f32
      linalg.yield %430 : i1
    } -> tensor<1x512x14x14xi1>
    %99 = tensor.empty() : tensor<1x512x14x14xf32>
    %100 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %96, %cst : tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<1xf32>) outs(%99 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: i1, %in_21: f32, %in_22: f32, %out: f32):
      %430 = arith.select %in, %in_21, %in_22 : f32
      linalg.yield %430 : f32
    } -> tensor<1x512x14x14xf32>
    %101 = tensor.empty() : tensor<1x14x14x512xf32>
    %102 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100 : tensor<1x512x14x14xf32>) outs(%101 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %103 = tensor.empty() : tensor<512x3x3x512xf32>
    %104 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3 : tensor<512x3x3x512xf32>) outs(%103 : tensor<512x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x3x3x512xf32>
    %105 = tensor.empty() : tensor<512xf32>
    %106 = tensor.empty() : tensor<512x3x3x512xf32>
    %107 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%106 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = arith.subi %c2, %431 : index
      %433 = linalg.index 2 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %104[%430, %432, %433, %434] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %108 = tensor.empty() : tensor<512x3x3x512xf32>
    %109 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%108 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = linalg.index 2 : index
      %433 = arith.subi %c2, %432 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %107[%430, %431, %433, %434] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded = tensor.pad %102 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %110 = tensor.empty() : tensor<3x3x512x512xf32>
    %111 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109 : tensor<512x3x3x512xf32>) outs(%110 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %112 = tensor.empty() : tensor<1x14x14x512xf32>
    %113 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%112 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %114 = tensor.empty() : tensor<1x14x14x512xf32>
    %115 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded, %111 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%113 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.mulf %in, %in_21 : f32
      %431 = arith.addf %out, %430 : f32
      linalg.yield %431 : f32
    } -> tensor<1x14x14x512xf32>
    %116 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %115 : tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%114 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.addf %in, %in_21 : f32
      linalg.yield %430 : f32
    } -> tensor<1x14x14x512xf32>
    %117 = tensor.empty() : tensor<1x512x14x14xf32>
    %118 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116 : tensor<1x14x14x512xf32>) outs(%117 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %119 = tensor.empty() : tensor<1x512x14x14xi1>
    %120 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %48 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%119 : tensor<1x512x14x14xi1>) {
    ^bb0(%in: f32, %in_21: f32, %out: i1):
      %430 = arith.cmpf oeq, %in, %in_21 : f32
      linalg.yield %430 : i1
    } -> tensor<1x512x14x14xi1>
    %121 = tensor.empty() : tensor<1x512x14x14xf32>
    %122 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120, %118, %cst : tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<1xf32>) outs(%121 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: i1, %in_21: f32, %in_22: f32, %out: f32):
      %430 = arith.select %in, %in_21, %in_22 : f32
      linalg.yield %430 : f32
    } -> tensor<1x512x14x14xf32>
    %123 = tensor.empty() : tensor<1x14x14x512xf32>
    %124 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x512x14x14xf32>) outs(%123 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %125 = tensor.empty() : tensor<512x3x3x512xf32>
    %126 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%125 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = arith.subi %c2, %431 : index
      %433 = linalg.index 2 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %104[%430, %432, %433, %434] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %127 = tensor.empty() : tensor<512x3x3x512xf32>
    %128 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%127 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = linalg.index 2 : index
      %433 = arith.subi %c2, %432 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %126[%430, %431, %433, %434] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_6 = tensor.pad %124 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %129 = tensor.empty() : tensor<3x3x512x512xf32>
    %130 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128 : tensor<512x3x3x512xf32>) outs(%129 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %131 = tensor.empty() : tensor<1x14x14x512xf32>
    %132 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%131 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %133 = tensor.empty() : tensor<1x14x14x512xf32>
    %134 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_6, %130 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%132 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.mulf %in, %in_21 : f32
      %431 = arith.addf %out, %430 : f32
      linalg.yield %431 : f32
    } -> tensor<1x14x14x512xf32>
    %135 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %134 : tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%133 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.addf %in, %in_21 : f32
      linalg.yield %430 : f32
    } -> tensor<1x14x14x512xf32>
    %136 = tensor.empty() : tensor<1x512x14x14xf32>
    %137 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135 : tensor<1x14x14x512xf32>) outs(%136 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %138 = tensor.empty() : tensor<1x512x14x14xi1>
    %139 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %46 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%138 : tensor<1x512x14x14xi1>) {
    ^bb0(%in: f32, %in_21: f32, %out: i1):
      %430 = arith.cmpf oeq, %in, %in_21 : f32
      linalg.yield %430 : i1
    } -> tensor<1x512x14x14xi1>
    %140 = tensor.empty() : tensor<1x512x14x14xf32>
    %141 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139, %137, %cst : tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<1xf32>) outs(%140 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: i1, %in_21: f32, %in_22: f32, %out: f32):
      %430 = arith.select %in, %in_21, %in_22 : f32
      linalg.yield %430 : f32
    } -> tensor<1x512x14x14xf32>
    %142 = tensor.empty() : tensor<1x14x14x512xf32>
    %143 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141 : tensor<1x512x14x14xf32>) outs(%142 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %144 = tensor.empty() : tensor<512x3x3x512xf32>
    %145 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%144 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = arith.subi %c2, %431 : index
      %433 = linalg.index 2 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %104[%430, %432, %433, %434] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %146 = tensor.empty() : tensor<512x3x3x512xf32>
    %147 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%146 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = linalg.index 2 : index
      %433 = arith.subi %c2, %432 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %145[%430, %431, %433, %434] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_7 = tensor.pad %143 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %148 = tensor.empty() : tensor<3x3x512x512xf32>
    %149 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147 : tensor<512x3x3x512xf32>) outs(%148 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %150 = tensor.empty() : tensor<1x14x14x512xf32>
    %151 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%150 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %152 = tensor.empty() : tensor<1x14x14x512xf32>
    %153 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_7, %149 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%151 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.mulf %in, %in_21 : f32
      %431 = arith.addf %out, %430 : f32
      linalg.yield %431 : f32
    } -> tensor<1x14x14x512xf32>
    %154 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %153 : tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%152 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.addf %in, %in_21 : f32
      linalg.yield %430 : f32
    } -> tensor<1x14x14x512xf32>
    %155 = tensor.empty() : tensor<1x512x14x14xf32>
    %156 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154 : tensor<1x14x14x512xf32>) outs(%155 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %157 = tensor.empty() : tensor<1x512x14x14xi1>
    %158 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %44 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%157 : tensor<1x512x14x14xi1>) {
    ^bb0(%in: f32, %in_21: f32, %out: i1):
      %430 = arith.cmpf oeq, %in, %in_21 : f32
      linalg.yield %430 : i1
    } -> tensor<1x512x14x14xi1>
    %159 = tensor.empty() : tensor<1x512x14x14xf32>
    %160 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %156, %cst : tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<1xf32>) outs(%159 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: i1, %in_21: f32, %in_22: f32, %out: f32):
      %430 = arith.select %in, %in_21, %in_22 : f32
      linalg.yield %430 : f32
    } -> tensor<1x512x14x14xf32>
    %161 = tensor.empty() : tensor<1x14x14x512xf32>
    %162 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160 : tensor<1x512x14x14xf32>) outs(%161 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %163 = tensor.empty() : tensor<512x3x3x512xf32>
    %164 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%163 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = arith.subi %c2, %431 : index
      %433 = linalg.index 2 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %104[%430, %432, %433, %434] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %165 = tensor.empty() : tensor<512x3x3x512xf32>
    %166 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%165 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = linalg.index 2 : index
      %433 = arith.subi %c2, %432 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %164[%430, %431, %433, %434] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_8 = tensor.pad %162 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %167 = tensor.empty() : tensor<3x3x512x512xf32>
    %168 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166 : tensor<512x3x3x512xf32>) outs(%167 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %169 = tensor.empty() : tensor<1x14x14x512xf32>
    %170 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%169 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %171 = tensor.empty() : tensor<1x14x14x512xf32>
    %172 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_8, %168 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%170 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.mulf %in, %in_21 : f32
      %431 = arith.addf %out, %430 : f32
      linalg.yield %431 : f32
    } -> tensor<1x14x14x512xf32>
    %173 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %172 : tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%171 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.addf %in, %in_21 : f32
      linalg.yield %430 : f32
    } -> tensor<1x14x14x512xf32>
    %174 = tensor.empty() : tensor<1x28x28x512xf32>
    %175 = linalg.generic {indexing_maps = [#map10, #map11, #map12, #map12, #map10], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%41, %93, %42, %173 : tensor<1x28x28x512xf32>, tensor<2x2xf32>, tensor<1x14x14x512xf32>, tensor<1x14x14x512xf32>) outs(%174 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %in_23: f32, %out: f32):
      %430 = arith.cmpf oge, %in, %in_22 : f32
      %431 = arith.select %430, %in_23, %cst_0 : f32
      %432 = arith.addf %out, %431 : f32
      linalg.yield %432 : f32
    } -> tensor<1x28x28x512xf32>
    %176 = tensor.empty() : tensor<1x512x28x28xf32>
    %177 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175 : tensor<1x28x28x512xf32>) outs(%176 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %178 = tensor.empty() : tensor<1x512x28x28xi1>
    %179 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %40 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%178 : tensor<1x512x28x28xi1>) {
    ^bb0(%in: f32, %in_21: f32, %out: i1):
      %430 = arith.cmpf oeq, %in, %in_21 : f32
      linalg.yield %430 : i1
    } -> tensor<1x512x28x28xi1>
    %180 = tensor.empty() : tensor<1x512x28x28xf32>
    %181 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %177, %cst : tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<1xf32>) outs(%180 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: i1, %in_21: f32, %in_22: f32, %out: f32):
      %430 = arith.select %in, %in_21, %in_22 : f32
      linalg.yield %430 : f32
    } -> tensor<1x512x28x28xf32>
    %182 = tensor.empty() : tensor<1x28x28x512xf32>
    %183 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181 : tensor<1x512x28x28xf32>) outs(%182 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %184 = tensor.empty() : tensor<512x3x3x512xf32>
    %185 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%184 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = arith.subi %c2, %431 : index
      %433 = linalg.index 2 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %104[%430, %432, %433, %434] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %186 = tensor.empty() : tensor<512x3x3x512xf32>
    %187 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%186 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = linalg.index 2 : index
      %433 = arith.subi %c2, %432 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %185[%430, %431, %433, %434] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_9 = tensor.pad %183 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %188 = tensor.empty() : tensor<3x3x512x512xf32>
    %189 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187 : tensor<512x3x3x512xf32>) outs(%188 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %190 = tensor.empty() : tensor<1x28x28x512xf32>
    %191 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%190 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %192 = tensor.empty() : tensor<1x28x28x512xf32>
    %193 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_9, %189 : tensor<1x30x30x512xf32>, tensor<3x3x512x512xf32>) outs(%191 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.mulf %in, %in_21 : f32
      %431 = arith.addf %out, %430 : f32
      linalg.yield %431 : f32
    } -> tensor<1x28x28x512xf32>
    %194 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %193 : tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%192 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.addf %in, %in_21 : f32
      linalg.yield %430 : f32
    } -> tensor<1x28x28x512xf32>
    %195 = tensor.empty() : tensor<1x512x28x28xf32>
    %196 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194 : tensor<1x28x28x512xf32>) outs(%195 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %197 = tensor.empty() : tensor<1x512x28x28xi1>
    %198 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %38 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%197 : tensor<1x512x28x28xi1>) {
    ^bb0(%in: f32, %in_21: f32, %out: i1):
      %430 = arith.cmpf oeq, %in, %in_21 : f32
      linalg.yield %430 : i1
    } -> tensor<1x512x28x28xi1>
    %199 = tensor.empty() : tensor<1x512x28x28xf32>
    %200 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %196, %cst : tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<1xf32>) outs(%199 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: i1, %in_21: f32, %in_22: f32, %out: f32):
      %430 = arith.select %in, %in_21, %in_22 : f32
      linalg.yield %430 : f32
    } -> tensor<1x512x28x28xf32>
    %201 = tensor.empty() : tensor<1x28x28x512xf32>
    %202 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200 : tensor<1x512x28x28xf32>) outs(%201 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %203 = tensor.empty() : tensor<512x3x3x512xf32>
    %204 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%203 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = arith.subi %c2, %431 : index
      %433 = linalg.index 2 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %104[%430, %432, %433, %434] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %205 = tensor.empty() : tensor<512x3x3x512xf32>
    %206 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%205 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = linalg.index 2 : index
      %433 = arith.subi %c2, %432 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %204[%430, %431, %433, %434] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_10 = tensor.pad %202 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %207 = tensor.empty() : tensor<3x3x512x512xf32>
    %208 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206 : tensor<512x3x3x512xf32>) outs(%207 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %209 = tensor.empty() : tensor<1x28x28x512xf32>
    %210 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%209 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %211 = tensor.empty() : tensor<1x28x28x512xf32>
    %212 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_10, %208 : tensor<1x30x30x512xf32>, tensor<3x3x512x512xf32>) outs(%210 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.mulf %in, %in_21 : f32
      %431 = arith.addf %out, %430 : f32
      linalg.yield %431 : f32
    } -> tensor<1x28x28x512xf32>
    %213 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %212 : tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%211 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.addf %in, %in_21 : f32
      linalg.yield %430 : f32
    } -> tensor<1x28x28x512xf32>
    %214 = tensor.empty() : tensor<1x512x28x28xf32>
    %215 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213 : tensor<1x28x28x512xf32>) outs(%214 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %216 = tensor.empty() : tensor<1x512x28x28xi1>
    %217 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %36 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%216 : tensor<1x512x28x28xi1>) {
    ^bb0(%in: f32, %in_21: f32, %out: i1):
      %430 = arith.cmpf oeq, %in, %in_21 : f32
      linalg.yield %430 : i1
    } -> tensor<1x512x28x28xi1>
    %218 = tensor.empty() : tensor<1x512x28x28xf32>
    %219 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217, %215, %cst : tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<1xf32>) outs(%218 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: i1, %in_21: f32, %in_22: f32, %out: f32):
      %430 = arith.select %in, %in_21, %in_22 : f32
      linalg.yield %430 : f32
    } -> tensor<1x512x28x28xf32>
    %220 = tensor.empty() : tensor<1x28x28x512xf32>
    %221 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219 : tensor<1x512x28x28xf32>) outs(%220 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %222 = tensor.empty() : tensor<512x3x3x512xf32>
    %223 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%222 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = arith.subi %c2, %431 : index
      %433 = linalg.index 2 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %104[%430, %432, %433, %434] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %224 = tensor.empty() : tensor<512x3x3x512xf32>
    %225 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%224 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = linalg.index 2 : index
      %433 = arith.subi %c2, %432 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %223[%430, %431, %433, %434] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_11 = tensor.pad %221 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %226 = tensor.empty() : tensor<3x3x512x512xf32>
    %227 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225 : tensor<512x3x3x512xf32>) outs(%226 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %228 = tensor.empty() : tensor<1x28x28x512xf32>
    %229 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%228 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %230 = tensor.empty() : tensor<1x28x28x512xf32>
    %231 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_11, %227 : tensor<1x30x30x512xf32>, tensor<3x3x512x512xf32>) outs(%229 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.mulf %in, %in_21 : f32
      %431 = arith.addf %out, %430 : f32
      linalg.yield %431 : f32
    } -> tensor<1x28x28x512xf32>
    %232 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %231 : tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%230 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.addf %in, %in_21 : f32
      linalg.yield %430 : f32
    } -> tensor<1x28x28x512xf32>
    %233 = tensor.empty() : tensor<1x512x28x28xf32>
    %234 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232 : tensor<1x28x28x512xf32>) outs(%233 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %235 = tensor.empty() : tensor<1x512x28x28xi1>
    %236 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %34 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%235 : tensor<1x512x28x28xi1>) {
    ^bb0(%in: f32, %in_21: f32, %out: i1):
      %430 = arith.cmpf oeq, %in, %in_21 : f32
      linalg.yield %430 : i1
    } -> tensor<1x512x28x28xi1>
    %237 = tensor.empty() : tensor<1x512x28x28xf32>
    %238 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236, %234, %cst : tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<1xf32>) outs(%237 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: i1, %in_21: f32, %in_22: f32, %out: f32):
      %430 = arith.select %in, %in_21, %in_22 : f32
      linalg.yield %430 : f32
    } -> tensor<1x512x28x28xf32>
    %239 = tensor.empty() : tensor<1x28x28x512xf32>
    %240 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238 : tensor<1x512x28x28xf32>) outs(%239 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %241 = tensor.empty() : tensor<256x3x3x512xf32>
    %242 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<512x3x3x256xf32>) outs(%241 : tensor<256x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x512xf32>
    %243 = tensor.empty() : tensor<256xf32>
    %244 = tensor.empty() : tensor<256x3x3x512xf32>
    %245 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%244 : tensor<256x3x3x512xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = arith.subi %c2, %431 : index
      %433 = linalg.index 2 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %242[%430, %432, %433, %434] : tensor<256x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x512xf32>
    %246 = tensor.empty() : tensor<256x3x3x512xf32>
    %247 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%246 : tensor<256x3x3x512xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = linalg.index 2 : index
      %433 = arith.subi %c2, %432 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %245[%430, %431, %433, %434] : tensor<256x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x512xf32>
    %padded_12 = tensor.pad %240 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %248 = tensor.empty() : tensor<3x3x512x256xf32>
    %249 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247 : tensor<256x3x3x512xf32>) outs(%248 : tensor<3x3x512x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x256xf32>
    %250 = tensor.empty() : tensor<1x28x28x256xf32>
    %251 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%250 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x256xf32>
    %252 = tensor.empty() : tensor<1x28x28x256xf32>
    %253 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_12, %249 : tensor<1x30x30x512xf32>, tensor<3x3x512x256xf32>) outs(%251 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.mulf %in, %in_21 : f32
      %431 = arith.addf %out, %430 : f32
      linalg.yield %431 : f32
    } -> tensor<1x28x28x256xf32>
    %254 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243, %253 : tensor<256xf32>, tensor<1x28x28x256xf32>) outs(%252 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.addf %in, %in_21 : f32
      linalg.yield %430 : f32
    } -> tensor<1x28x28x256xf32>
    %255 = tensor.empty() : tensor<1x56x56x256xf32>
    %256 = linalg.generic {indexing_maps = [#map10, #map11, #map12, #map12, #map10], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%31, %93, %32, %254 : tensor<1x56x56x256xf32>, tensor<2x2xf32>, tensor<1x28x28x256xf32>, tensor<1x28x28x256xf32>) outs(%255 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %in_23: f32, %out: f32):
      %430 = arith.cmpf oge, %in, %in_22 : f32
      %431 = arith.select %430, %in_23, %cst_0 : f32
      %432 = arith.addf %out, %431 : f32
      linalg.yield %432 : f32
    } -> tensor<1x56x56x256xf32>
    %257 = tensor.empty() : tensor<1x256x56x56xf32>
    %258 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256 : tensor<1x56x56x256xf32>) outs(%257 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %259 = tensor.empty() : tensor<1x256x56x56xi1>
    %260 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %30 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%259 : tensor<1x256x56x56xi1>) {
    ^bb0(%in: f32, %in_21: f32, %out: i1):
      %430 = arith.cmpf oeq, %in, %in_21 : f32
      linalg.yield %430 : i1
    } -> tensor<1x256x56x56xi1>
    %261 = tensor.empty() : tensor<1x256x56x56xf32>
    %262 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260, %258, %cst : tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<1xf32>) outs(%261 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: i1, %in_21: f32, %in_22: f32, %out: f32):
      %430 = arith.select %in, %in_21, %in_22 : f32
      linalg.yield %430 : f32
    } -> tensor<1x256x56x56xf32>
    %263 = tensor.empty() : tensor<1x56x56x256xf32>
    %264 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262 : tensor<1x256x56x56xf32>) outs(%263 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %265 = tensor.empty() : tensor<256x3x3x256xf32>
    %266 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<256x3x3x256xf32>) outs(%265 : tensor<256x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x256xf32>
    %267 = tensor.empty() : tensor<256x3x3x256xf32>
    %268 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%267 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = arith.subi %c2, %431 : index
      %433 = linalg.index 2 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %266[%430, %432, %433, %434] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %269 = tensor.empty() : tensor<256x3x3x256xf32>
    %270 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%269 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = linalg.index 2 : index
      %433 = arith.subi %c2, %432 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %268[%430, %431, %433, %434] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_13 = tensor.pad %264 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %271 = tensor.empty() : tensor<3x3x256x256xf32>
    %272 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270 : tensor<256x3x3x256xf32>) outs(%271 : tensor<3x3x256x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x256x256xf32>
    %273 = tensor.empty() : tensor<1x56x56x256xf32>
    %274 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%273 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %275 = tensor.empty() : tensor<1x56x56x256xf32>
    %276 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_13, %272 : tensor<1x58x58x256xf32>, tensor<3x3x256x256xf32>) outs(%274 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.mulf %in, %in_21 : f32
      %431 = arith.addf %out, %430 : f32
      linalg.yield %431 : f32
    } -> tensor<1x56x56x256xf32>
    %277 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243, %276 : tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%275 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.addf %in, %in_21 : f32
      linalg.yield %430 : f32
    } -> tensor<1x56x56x256xf32>
    %278 = tensor.empty() : tensor<1x256x56x56xf32>
    %279 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277 : tensor<1x56x56x256xf32>) outs(%278 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %280 = tensor.empty() : tensor<1x256x56x56xi1>
    %281 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %28 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%280 : tensor<1x256x56x56xi1>) {
    ^bb0(%in: f32, %in_21: f32, %out: i1):
      %430 = arith.cmpf oeq, %in, %in_21 : f32
      linalg.yield %430 : i1
    } -> tensor<1x256x56x56xi1>
    %282 = tensor.empty() : tensor<1x256x56x56xf32>
    %283 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %279, %cst : tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<1xf32>) outs(%282 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: i1, %in_21: f32, %in_22: f32, %out: f32):
      %430 = arith.select %in, %in_21, %in_22 : f32
      linalg.yield %430 : f32
    } -> tensor<1x256x56x56xf32>
    %284 = tensor.empty() : tensor<1x56x56x256xf32>
    %285 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283 : tensor<1x256x56x56xf32>) outs(%284 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %286 = tensor.empty() : tensor<256x3x3x256xf32>
    %287 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%286 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = arith.subi %c2, %431 : index
      %433 = linalg.index 2 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %266[%430, %432, %433, %434] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %288 = tensor.empty() : tensor<256x3x3x256xf32>
    %289 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%288 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = linalg.index 2 : index
      %433 = arith.subi %c2, %432 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %287[%430, %431, %433, %434] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_14 = tensor.pad %285 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %290 = tensor.empty() : tensor<3x3x256x256xf32>
    %291 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289 : tensor<256x3x3x256xf32>) outs(%290 : tensor<3x3x256x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x256x256xf32>
    %292 = tensor.empty() : tensor<1x56x56x256xf32>
    %293 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%292 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %294 = tensor.empty() : tensor<1x56x56x256xf32>
    %295 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_14, %291 : tensor<1x58x58x256xf32>, tensor<3x3x256x256xf32>) outs(%293 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.mulf %in, %in_21 : f32
      %431 = arith.addf %out, %430 : f32
      linalg.yield %431 : f32
    } -> tensor<1x56x56x256xf32>
    %296 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243, %295 : tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%294 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.addf %in, %in_21 : f32
      linalg.yield %430 : f32
    } -> tensor<1x56x56x256xf32>
    %297 = tensor.empty() : tensor<1x256x56x56xf32>
    %298 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296 : tensor<1x56x56x256xf32>) outs(%297 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %299 = tensor.empty() : tensor<1x256x56x56xi1>
    %300 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %26 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%299 : tensor<1x256x56x56xi1>) {
    ^bb0(%in: f32, %in_21: f32, %out: i1):
      %430 = arith.cmpf oeq, %in, %in_21 : f32
      linalg.yield %430 : i1
    } -> tensor<1x256x56x56xi1>
    %301 = tensor.empty() : tensor<1x256x56x56xf32>
    %302 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300, %298, %cst : tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<1xf32>) outs(%301 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: i1, %in_21: f32, %in_22: f32, %out: f32):
      %430 = arith.select %in, %in_21, %in_22 : f32
      linalg.yield %430 : f32
    } -> tensor<1x256x56x56xf32>
    %303 = tensor.empty() : tensor<1x56x56x256xf32>
    %304 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302 : tensor<1x256x56x56xf32>) outs(%303 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %305 = tensor.empty() : tensor<256x3x3x256xf32>
    %306 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%305 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = arith.subi %c2, %431 : index
      %433 = linalg.index 2 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %266[%430, %432, %433, %434] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %307 = tensor.empty() : tensor<256x3x3x256xf32>
    %308 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%307 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = linalg.index 2 : index
      %433 = arith.subi %c2, %432 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %306[%430, %431, %433, %434] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_15 = tensor.pad %304 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %309 = tensor.empty() : tensor<3x3x256x256xf32>
    %310 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308 : tensor<256x3x3x256xf32>) outs(%309 : tensor<3x3x256x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x256x256xf32>
    %311 = tensor.empty() : tensor<1x56x56x256xf32>
    %312 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%311 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %313 = tensor.empty() : tensor<1x56x56x256xf32>
    %314 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_15, %310 : tensor<1x58x58x256xf32>, tensor<3x3x256x256xf32>) outs(%312 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.mulf %in, %in_21 : f32
      %431 = arith.addf %out, %430 : f32
      linalg.yield %431 : f32
    } -> tensor<1x56x56x256xf32>
    %315 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243, %314 : tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%313 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.addf %in, %in_21 : f32
      linalg.yield %430 : f32
    } -> tensor<1x56x56x256xf32>
    %316 = tensor.empty() : tensor<1x256x56x56xf32>
    %317 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315 : tensor<1x56x56x256xf32>) outs(%316 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %318 = tensor.empty() : tensor<1x256x56x56xi1>
    %319 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %24 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%318 : tensor<1x256x56x56xi1>) {
    ^bb0(%in: f32, %in_21: f32, %out: i1):
      %430 = arith.cmpf oeq, %in, %in_21 : f32
      linalg.yield %430 : i1
    } -> tensor<1x256x56x56xi1>
    %320 = tensor.empty() : tensor<1x256x56x56xf32>
    %321 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319, %317, %cst : tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<1xf32>) outs(%320 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: i1, %in_21: f32, %in_22: f32, %out: f32):
      %430 = arith.select %in, %in_21, %in_22 : f32
      linalg.yield %430 : f32
    } -> tensor<1x256x56x56xf32>
    %322 = tensor.empty() : tensor<1x56x56x256xf32>
    %323 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321 : tensor<1x256x56x56xf32>) outs(%322 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %324 = tensor.empty() : tensor<128x3x3x256xf32>
    %325 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<256x3x3x128xf32>) outs(%324 : tensor<128x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x256xf32>
    %326 = tensor.empty() : tensor<128xf32>
    %327 = tensor.empty() : tensor<128x3x3x256xf32>
    %328 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%327 : tensor<128x3x3x256xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = arith.subi %c2, %431 : index
      %433 = linalg.index 2 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %325[%430, %432, %433, %434] : tensor<128x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x256xf32>
    %329 = tensor.empty() : tensor<128x3x3x256xf32>
    %330 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%329 : tensor<128x3x3x256xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = linalg.index 2 : index
      %433 = arith.subi %c2, %432 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %328[%430, %431, %433, %434] : tensor<128x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x256xf32>
    %padded_16 = tensor.pad %323 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %331 = tensor.empty() : tensor<3x3x256x128xf32>
    %332 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330 : tensor<128x3x3x256xf32>) outs(%331 : tensor<3x3x256x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x256x128xf32>
    %333 = tensor.empty() : tensor<1x56x56x128xf32>
    %334 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%333 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x128xf32>
    %335 = tensor.empty() : tensor<1x56x56x128xf32>
    %336 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_16, %332 : tensor<1x58x58x256xf32>, tensor<3x3x256x128xf32>) outs(%334 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.mulf %in, %in_21 : f32
      %431 = arith.addf %out, %430 : f32
      linalg.yield %431 : f32
    } -> tensor<1x56x56x128xf32>
    %337 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326, %336 : tensor<128xf32>, tensor<1x56x56x128xf32>) outs(%335 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.addf %in, %in_21 : f32
      linalg.yield %430 : f32
    } -> tensor<1x56x56x128xf32>
    %338 = tensor.empty() : tensor<1x112x112x128xf32>
    %339 = linalg.generic {indexing_maps = [#map10, #map11, #map12, #map12, #map10], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%21, %93, %22, %337 : tensor<1x112x112x128xf32>, tensor<2x2xf32>, tensor<1x56x56x128xf32>, tensor<1x56x56x128xf32>) outs(%338 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %in_23: f32, %out: f32):
      %430 = arith.cmpf oge, %in, %in_22 : f32
      %431 = arith.select %430, %in_23, %cst_0 : f32
      %432 = arith.addf %out, %431 : f32
      linalg.yield %432 : f32
    } -> tensor<1x112x112x128xf32>
    %340 = tensor.empty() : tensor<1x128x112x112xf32>
    %341 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339 : tensor<1x112x112x128xf32>) outs(%340 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x112x112xf32>
    %342 = tensor.empty() : tensor<1x128x112x112xi1>
    %343 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %20 : tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>) outs(%342 : tensor<1x128x112x112xi1>) {
    ^bb0(%in: f32, %in_21: f32, %out: i1):
      %430 = arith.cmpf oeq, %in, %in_21 : f32
      linalg.yield %430 : i1
    } -> tensor<1x128x112x112xi1>
    %344 = tensor.empty() : tensor<1x128x112x112xf32>
    %345 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343, %341, %cst : tensor<1x128x112x112xi1>, tensor<1x128x112x112xf32>, tensor<1xf32>) outs(%344 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: i1, %in_21: f32, %in_22: f32, %out: f32):
      %430 = arith.select %in, %in_21, %in_22 : f32
      linalg.yield %430 : f32
    } -> tensor<1x128x112x112xf32>
    %346 = tensor.empty() : tensor<1x112x112x128xf32>
    %347 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345 : tensor<1x128x112x112xf32>) outs(%346 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x128xf32>
    %348 = tensor.empty() : tensor<128x3x3x128xf32>
    %349 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<128x3x3x128xf32>) outs(%348 : tensor<128x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x128xf32>
    %350 = tensor.empty() : tensor<128x3x3x128xf32>
    %351 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%350 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = arith.subi %c2, %431 : index
      %433 = linalg.index 2 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %349[%430, %432, %433, %434] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %352 = tensor.empty() : tensor<128x3x3x128xf32>
    %353 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%352 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = linalg.index 2 : index
      %433 = arith.subi %c2, %432 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %351[%430, %431, %433, %434] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %padded_17 = tensor.pad %347 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x112x112x128xf32> to tensor<1x114x114x128xf32>
    %354 = tensor.empty() : tensor<3x3x128x128xf32>
    %355 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353 : tensor<128x3x3x128xf32>) outs(%354 : tensor<3x3x128x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x128x128xf32>
    %356 = tensor.empty() : tensor<1x112x112x128xf32>
    %357 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%356 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x128xf32>
    %358 = tensor.empty() : tensor<1x112x112x128xf32>
    %359 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_17, %355 : tensor<1x114x114x128xf32>, tensor<3x3x128x128xf32>) outs(%357 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.mulf %in, %in_21 : f32
      %431 = arith.addf %out, %430 : f32
      linalg.yield %431 : f32
    } -> tensor<1x112x112x128xf32>
    %360 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326, %359 : tensor<128xf32>, tensor<1x112x112x128xf32>) outs(%358 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.addf %in, %in_21 : f32
      linalg.yield %430 : f32
    } -> tensor<1x112x112x128xf32>
    %361 = tensor.empty() : tensor<1x128x112x112xf32>
    %362 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360 : tensor<1x112x112x128xf32>) outs(%361 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x112x112xf32>
    %363 = tensor.empty() : tensor<1x128x112x112xi1>
    %364 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %18 : tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>) outs(%363 : tensor<1x128x112x112xi1>) {
    ^bb0(%in: f32, %in_21: f32, %out: i1):
      %430 = arith.cmpf oeq, %in, %in_21 : f32
      linalg.yield %430 : i1
    } -> tensor<1x128x112x112xi1>
    %365 = tensor.empty() : tensor<1x128x112x112xf32>
    %366 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364, %362, %cst : tensor<1x128x112x112xi1>, tensor<1x128x112x112xf32>, tensor<1xf32>) outs(%365 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: i1, %in_21: f32, %in_22: f32, %out: f32):
      %430 = arith.select %in, %in_21, %in_22 : f32
      linalg.yield %430 : f32
    } -> tensor<1x128x112x112xf32>
    %367 = tensor.empty() : tensor<1x112x112x128xf32>
    %368 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366 : tensor<1x128x112x112xf32>) outs(%367 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x128xf32>
    %369 = tensor.empty() : tensor<64x3x3x128xf32>
    %370 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<128x3x3x64xf32>) outs(%369 : tensor<64x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x128xf32>
    %371 = tensor.empty() : tensor<64xf32>
    %372 = tensor.empty() : tensor<64x3x3x128xf32>
    %373 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%372 : tensor<64x3x3x128xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = arith.subi %c2, %431 : index
      %433 = linalg.index 2 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %370[%430, %432, %433, %434] : tensor<64x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x128xf32>
    %374 = tensor.empty() : tensor<64x3x3x128xf32>
    %375 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%374 : tensor<64x3x3x128xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = linalg.index 2 : index
      %433 = arith.subi %c2, %432 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %373[%430, %431, %433, %434] : tensor<64x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x128xf32>
    %padded_18 = tensor.pad %368 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x112x112x128xf32> to tensor<1x114x114x128xf32>
    %376 = tensor.empty() : tensor<3x3x128x64xf32>
    %377 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%375 : tensor<64x3x3x128xf32>) outs(%376 : tensor<3x3x128x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x128x64xf32>
    %378 = tensor.empty() : tensor<1x112x112x64xf32>
    %379 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%378 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x64xf32>
    %380 = tensor.empty() : tensor<1x112x112x64xf32>
    %381 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_18, %377 : tensor<1x114x114x128xf32>, tensor<3x3x128x64xf32>) outs(%379 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.mulf %in, %in_21 : f32
      %431 = arith.addf %out, %430 : f32
      linalg.yield %431 : f32
    } -> tensor<1x112x112x64xf32>
    %382 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371, %381 : tensor<64xf32>, tensor<1x112x112x64xf32>) outs(%380 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.addf %in, %in_21 : f32
      linalg.yield %430 : f32
    } -> tensor<1x112x112x64xf32>
    %383 = tensor.empty() : tensor<1x224x224x64xf32>
    %384 = linalg.generic {indexing_maps = [#map10, #map11, #map12, #map12, #map10], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%15, %93, %16, %382 : tensor<1x224x224x64xf32>, tensor<2x2xf32>, tensor<1x112x112x64xf32>, tensor<1x112x112x64xf32>) outs(%383 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %in_23: f32, %out: f32):
      %430 = arith.cmpf oge, %in, %in_22 : f32
      %431 = arith.select %430, %in_23, %cst_0 : f32
      %432 = arith.addf %out, %431 : f32
      linalg.yield %432 : f32
    } -> tensor<1x224x224x64xf32>
    %385 = tensor.empty() : tensor<1x64x224x224xf32>
    %386 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%384 : tensor<1x224x224x64xf32>) outs(%385 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x224x224xf32>
    %387 = tensor.empty() : tensor<1x64x224x224xi1>
    %388 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13, %14 : tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>) outs(%387 : tensor<1x64x224x224xi1>) {
    ^bb0(%in: f32, %in_21: f32, %out: i1):
      %430 = arith.cmpf oeq, %in, %in_21 : f32
      linalg.yield %430 : i1
    } -> tensor<1x64x224x224xi1>
    %389 = tensor.empty() : tensor<1x64x224x224xf32>
    %390 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388, %386, %cst : tensor<1x64x224x224xi1>, tensor<1x64x224x224xf32>, tensor<1xf32>) outs(%389 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: i1, %in_21: f32, %in_22: f32, %out: f32):
      %430 = arith.select %in, %in_21, %in_22 : f32
      linalg.yield %430 : f32
    } -> tensor<1x64x224x224xf32>
    %391 = tensor.empty() : tensor<1x224x224x64xf32>
    %392 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%390 : tensor<1x64x224x224xf32>) outs(%391 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x224x224x64xf32>
    %393 = tensor.empty() : tensor<64x3x3x64xf32>
    %394 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<64x3x3x64xf32>) outs(%393 : tensor<64x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x64xf32>
    %395 = tensor.empty() : tensor<64x3x3x64xf32>
    %396 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%395 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = arith.subi %c2, %431 : index
      %433 = linalg.index 2 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %394[%430, %432, %433, %434] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %397 = tensor.empty() : tensor<64x3x3x64xf32>
    %398 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%397 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = linalg.index 2 : index
      %433 = arith.subi %c2, %432 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %396[%430, %431, %433, %434] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %padded_19 = tensor.pad %392 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x224x224x64xf32> to tensor<1x226x226x64xf32>
    %399 = tensor.empty() : tensor<3x3x64x64xf32>
    %400 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%398 : tensor<64x3x3x64xf32>) outs(%399 : tensor<3x3x64x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x64x64xf32>
    %401 = tensor.empty() : tensor<1x224x224x64xf32>
    %402 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%401 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x224x224x64xf32>
    %403 = tensor.empty() : tensor<1x224x224x64xf32>
    %404 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_19, %400 : tensor<1x226x226x64xf32>, tensor<3x3x64x64xf32>) outs(%402 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.mulf %in, %in_21 : f32
      %431 = arith.addf %out, %430 : f32
      linalg.yield %431 : f32
    } -> tensor<1x224x224x64xf32>
    %405 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371, %404 : tensor<64xf32>, tensor<1x224x224x64xf32>) outs(%403 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.addf %in, %in_21 : f32
      linalg.yield %430 : f32
    } -> tensor<1x224x224x64xf32>
    %406 = tensor.empty() : tensor<1x64x224x224xf32>
    %407 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%405 : tensor<1x224x224x64xf32>) outs(%406 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x224x224xf32>
    %408 = tensor.empty() : tensor<1x64x224x224xi1>
    %409 = linalg.generic {indexing_maps = [#map9, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %12 : tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>) outs(%408 : tensor<1x64x224x224xi1>) {
    ^bb0(%in: f32, %in_21: f32, %out: i1):
      %430 = arith.cmpf oeq, %in, %in_21 : f32
      linalg.yield %430 : i1
    } -> tensor<1x64x224x224xi1>
    %410 = tensor.empty() : tensor<1x64x224x224xf32>
    %411 = linalg.generic {indexing_maps = [#map9, #map9, #map14, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%409, %407, %cst : tensor<1x64x224x224xi1>, tensor<1x64x224x224xf32>, tensor<1xf32>) outs(%410 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: i1, %in_21: f32, %in_22: f32, %out: f32):
      %430 = arith.select %in, %in_21, %in_22 : f32
      linalg.yield %430 : f32
    } -> tensor<1x64x224x224xf32>
    %412 = tensor.empty() : tensor<1x224x224x64xf32>
    %413 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411 : tensor<1x64x224x224xf32>) outs(%412 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x224x224x64xf32>
    %414 = tensor.empty() : tensor<3x3x3x64xf32>
    %415 = linalg.generic {indexing_maps = [#map15, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<64x3x3x3xf32>) outs(%414 : tensor<3x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x3x64xf32>
    %416 = tensor.empty() : tensor<3xf32>
    %417 = tensor.empty() : tensor<3x3x3x64xf32>
    %418 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%417 : tensor<3x3x3x64xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = arith.subi %c2, %431 : index
      %433 = linalg.index 2 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %415[%430, %432, %433, %434] : tensor<3x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x3x64xf32>
    %419 = tensor.empty() : tensor<3x3x3x64xf32>
    %420 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%419 : tensor<3x3x3x64xf32>) {
    ^bb0(%out: f32):
      %430 = linalg.index 0 : index
      %431 = linalg.index 1 : index
      %432 = linalg.index 2 : index
      %433 = arith.subi %c2, %432 : index
      %434 = linalg.index 3 : index
      %extracted = tensor.extract %418[%430, %431, %433, %434] : tensor<3x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x3x64xf32>
    %padded_20 = tensor.pad %413 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x224x224x64xf32> to tensor<1x226x226x64xf32>
    %421 = tensor.empty() : tensor<3x3x64x3xf32>
    %422 = linalg.generic {indexing_maps = [#map16, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%420 : tensor<3x3x3x64xf32>) outs(%421 : tensor<3x3x64x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x64x3xf32>
    %423 = tensor.empty() : tensor<1x224x224x3xf32>
    %424 = linalg.generic {indexing_maps = [#map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : f32) outs(%423 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x224x224x3xf32>
    %425 = tensor.empty() : tensor<1x224x224x3xf32>
    %426 = linalg.generic {indexing_maps = [#map18, #map19, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_20, %422 : tensor<1x226x226x64xf32>, tensor<3x3x64x3xf32>) outs(%424 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.mulf %in, %in_21 : f32
      %431 = arith.addf %out, %430 : f32
      linalg.yield %431 : f32
    } -> tensor<1x224x224x3xf32>
    %427 = linalg.generic {indexing_maps = [#map21, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%416, %426 : tensor<3xf32>, tensor<1x224x224x3xf32>) outs(%425 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %430 = arith.addf %in, %in_21 : f32
      linalg.yield %430 : f32
    } -> tensor<1x224x224x3xf32>
    %428 = tensor.empty() : tensor<1x3x224x224xf32>
    %429 = linalg.generic {indexing_maps = [#map13, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%427 : tensor<1x224x224x3xf32>) outs(%428 : tensor<1x3x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3x224x224xf32>
    return %429 : tensor<1x3x224x224xf32>
  }
}

