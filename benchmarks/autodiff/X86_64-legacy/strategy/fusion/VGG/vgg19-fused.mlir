#map = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#map4 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map5 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map6 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#map7 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d1, d2)>
#map8 = affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>
#map9 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map10 = affine_map<(d0, d1, d2, d3) -> (d3, d1, d2, d0)>
#map11 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d6)>
#map12 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d4, d5, d6, d3)>
#map13 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>
#map14 = affine_map<(d0, d1, d2, d3) -> (d3)>
#map15 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d3)>
#map16 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map17 = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3, d1)>
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
    %cst = arith.constant 0.000000e+00 : f32
    %c2 = arith.constant 2 : index
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
    %59 = tensor.empty() : tensor<1x1x4096xf32>
    %60 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel"]} outs(%59 : tensor<1x1x4096xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x1x4096xf32>
    %61 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded, %0 : tensor<1x1x1000xf32>, tensor<1x4096x1000xf32>) outs(%60 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %in_24: f32, %out: f32):
      %246 = arith.mulf %in, %in_24 : f32
      %247 = arith.addf %out, %246 : f32
      linalg.yield %247 : f32
    } -> tensor<1x1x4096xf32>
    %expanded_0 = tensor.expand_shape %57 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_1 = tensor.expand_shape %58 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_2 = tensor.expand_shape %56 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_3 = tensor.expand_shape %57 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %62 = tensor.empty() : tensor<1x1x4096xf32>
    %63 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel"]} outs(%62 : tensor<1x1x4096xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x1x4096xf32>
    %64 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1, #map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded_2, %expanded_3, %expanded_0, %expanded_1, %61, %1 : tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) outs(%63 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %in_26: f32, %in_27: f32, %in_28: f32, %out: f32):
      %246 = arith.cmpf oeq, %in_25, %in_26 : f32
      %247 = arith.select %246, %in_27, %cst : f32
      %248 = arith.cmpf oeq, %in, %in_24 : f32
      %249 = arith.select %248, %247, %cst : f32
      %250 = arith.mulf %249, %in_28 : f32
      %251 = arith.addf %out, %250 : f32
      linalg.yield %251 : f32
    } -> tensor<1x1x4096xf32>
    %expanded_4 = tensor.expand_shape %54 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_5 = tensor.expand_shape %55 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_6 = tensor.expand_shape %53 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_7 = tensor.expand_shape %54 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %65 = tensor.empty() : tensor<1x1x25088xf32>
    %66 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel"]} outs(%65 : tensor<1x1x25088xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x1x25088xf32>
    %67 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1, #map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded_6, %expanded_7, %expanded_4, %expanded_5, %64, %2 : tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x25088x4096xf32>) outs(%66 : tensor<1x1x25088xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %in_26: f32, %in_27: f32, %in_28: f32, %out: f32):
      %246 = arith.cmpf oeq, %in_25, %in_26 : f32
      %247 = arith.select %246, %in_27, %cst : f32
      %248 = arith.cmpf oeq, %in, %in_24 : f32
      %249 = arith.select %248, %247, %cst : f32
      %250 = arith.mulf %249, %in_28 : f32
      %251 = arith.addf %out, %250 : f32
      linalg.yield %251 : f32
    } -> tensor<1x1x25088xf32>
    %collapsed = tensor.collapse_shape %67 [[0, 1], [2]] : tensor<1x1x25088xf32> into tensor<1x25088xf32>
    %expanded_8 = tensor.expand_shape %collapsed [[0], [1, 2, 3]] : tensor<1x25088xf32> into tensor<1x512x7x7xf32>
    %68 = tensor.empty() : tensor<1x14x14x512xf32>
    %69 = tensor.empty() : tensor<2x2xf32>
    %70 = linalg.generic {indexing_maps = [#map4, #map5, #map6, #map7, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%51, %69, %52, %expanded_8 : tensor<1x14x14x512xf32>, tensor<2x2xf32>, tensor<1x7x7x512xf32>, tensor<1x512x7x7xf32>) outs(%68 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %in_26: f32, %out: f32):
      %246 = arith.cmpf oge, %in, %in_25 : f32
      %247 = arith.select %246, %in_26, %cst : f32
      %248 = arith.addf %out, %247 : f32
      linalg.yield %248 : f32
    } -> tensor<1x14x14x512xf32>
    %71 = tensor.empty() : tensor<1x14x14x512xf32>
    %72 = linalg.generic {indexing_maps = [#map8, #map8, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49, %50, %70 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>, tensor<1x14x14x512xf32>) outs(%71 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %out: f32):
      %246 = arith.cmpf oeq, %in, %in_24 : f32
      %247 = arith.select %246, %in_25, %cst : f32
      linalg.yield %247 : f32
    } -> tensor<1x14x14x512xf32>
    %73 = tensor.empty() : tensor<512x3x3x512xf32>
    %74 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3 : tensor<512x3x3x512xf32>) outs(%73 : tensor<512x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x3x3x512xf32>
    %75 = tensor.empty() : tensor<512xf32>
    %76 = tensor.empty() : tensor<512x3x3x512xf32>
    %77 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%76 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = arith.subi %c2, %247 : index
      %249 = linalg.index 2 : index
      %250 = linalg.index 3 : index
      %extracted = tensor.extract %74[%246, %248, %249, %250] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded = tensor.pad %72 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %78 = tensor.empty() : tensor<3x3x512x512xf32>
    %79 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%78 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = linalg.index 2 : index
      %249 = linalg.index 3 : index
      %250 = arith.subi %c2, %247 : index
      %extracted = tensor.extract %77[%249, %246, %250, %248] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %80 = tensor.empty() : tensor<1x14x14x512xf32>
    %81 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%80 : tensor<1x14x14x512xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x14x14x512xf32>
    %82 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded, %79 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%81 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_24: f32, %out: f32):
      %246 = arith.mulf %in, %in_24 : f32
      %247 = arith.addf %out, %246 : f32
      linalg.yield %247 : f32
    } -> tensor<1x14x14x512xf32>
    %83 = tensor.empty() : tensor<1x14x14x512xf32>
    %84 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %48, %75, %82 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%83 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %in_26: f32, %out: f32):
      %246 = arith.addf %in_25, %in_26 : f32
      %247 = arith.cmpf oeq, %in, %in_24 : f32
      %248 = arith.select %247, %246, %cst : f32
      linalg.yield %248 : f32
    } -> tensor<1x14x14x512xf32>
    %85 = tensor.empty() : tensor<512x3x3x512xf32>
    %86 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%85 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = arith.subi %c2, %247 : index
      %249 = linalg.index 2 : index
      %250 = linalg.index 3 : index
      %extracted = tensor.extract %74[%246, %248, %249, %250] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_9 = tensor.pad %84 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %87 = tensor.empty() : tensor<3x3x512x512xf32>
    %88 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%87 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = linalg.index 2 : index
      %249 = linalg.index 3 : index
      %250 = arith.subi %c2, %247 : index
      %extracted = tensor.extract %86[%249, %246, %250, %248] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %89 = tensor.empty() : tensor<1x14x14x512xf32>
    %90 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%89 : tensor<1x14x14x512xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x14x14x512xf32>
    %91 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_9, %88 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%90 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_24: f32, %out: f32):
      %246 = arith.mulf %in, %in_24 : f32
      %247 = arith.addf %out, %246 : f32
      linalg.yield %247 : f32
    } -> tensor<1x14x14x512xf32>
    %92 = tensor.empty() : tensor<1x14x14x512xf32>
    %93 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %46, %75, %91 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%92 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %in_26: f32, %out: f32):
      %246 = arith.addf %in_25, %in_26 : f32
      %247 = arith.cmpf oeq, %in, %in_24 : f32
      %248 = arith.select %247, %246, %cst : f32
      linalg.yield %248 : f32
    } -> tensor<1x14x14x512xf32>
    %94 = tensor.empty() : tensor<512x3x3x512xf32>
    %95 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%94 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = arith.subi %c2, %247 : index
      %249 = linalg.index 2 : index
      %250 = linalg.index 3 : index
      %extracted = tensor.extract %74[%246, %248, %249, %250] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_10 = tensor.pad %93 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %96 = tensor.empty() : tensor<3x3x512x512xf32>
    %97 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%96 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = linalg.index 2 : index
      %249 = linalg.index 3 : index
      %250 = arith.subi %c2, %247 : index
      %extracted = tensor.extract %95[%249, %246, %250, %248] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %98 = tensor.empty() : tensor<1x14x14x512xf32>
    %99 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%98 : tensor<1x14x14x512xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x14x14x512xf32>
    %100 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_10, %97 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%99 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_24: f32, %out: f32):
      %246 = arith.mulf %in, %in_24 : f32
      %247 = arith.addf %out, %246 : f32
      linalg.yield %247 : f32
    } -> tensor<1x14x14x512xf32>
    %101 = tensor.empty() : tensor<1x14x14x512xf32>
    %102 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %44, %75, %100 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%101 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %in_26: f32, %out: f32):
      %246 = arith.addf %in_25, %in_26 : f32
      %247 = arith.cmpf oeq, %in, %in_24 : f32
      %248 = arith.select %247, %246, %cst : f32
      linalg.yield %248 : f32
    } -> tensor<1x14x14x512xf32>
    %103 = tensor.empty() : tensor<512x3x3x512xf32>
    %104 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%103 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = arith.subi %c2, %247 : index
      %249 = linalg.index 2 : index
      %250 = linalg.index 3 : index
      %extracted = tensor.extract %74[%246, %248, %249, %250] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_11 = tensor.pad %102 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %105 = tensor.empty() : tensor<3x3x512x512xf32>
    %106 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%105 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = linalg.index 2 : index
      %249 = linalg.index 3 : index
      %250 = arith.subi %c2, %247 : index
      %extracted = tensor.extract %104[%249, %246, %250, %248] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %107 = tensor.empty() : tensor<1x14x14x512xf32>
    %108 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%107 : tensor<1x14x14x512xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x14x14x512xf32>
    %109 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_11, %106 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%108 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_24: f32, %out: f32):
      %246 = arith.mulf %in, %in_24 : f32
      %247 = arith.addf %out, %246 : f32
      linalg.yield %247 : f32
    } -> tensor<1x14x14x512xf32>
    %110 = tensor.empty() : tensor<1x28x28x512xf32>
    %111 = linalg.generic {indexing_maps = [#map4, #map5, #map6, #map15, #map6, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%41, %69, %42, %75, %109 : tensor<1x28x28x512xf32>, tensor<2x2xf32>, tensor<1x14x14x512xf32>, tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%110 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %in_26: f32, %in_27: f32, %out: f32):
      %246 = arith.addf %in_26, %in_27 : f32
      %247 = arith.cmpf oge, %in, %in_25 : f32
      %248 = arith.select %247, %246, %cst : f32
      %249 = arith.addf %out, %248 : f32
      linalg.yield %249 : f32
    } -> tensor<1x28x28x512xf32>
    %112 = tensor.empty() : tensor<1x28x28x512xf32>
    %113 = linalg.generic {indexing_maps = [#map8, #map8, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %40, %111 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x28x28x512xf32>) outs(%112 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %out: f32):
      %246 = arith.cmpf oeq, %in, %in_24 : f32
      %247 = arith.select %246, %in_25, %cst : f32
      linalg.yield %247 : f32
    } -> tensor<1x28x28x512xf32>
    %114 = tensor.empty() : tensor<512x3x3x512xf32>
    %115 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%114 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = arith.subi %c2, %247 : index
      %249 = linalg.index 2 : index
      %250 = linalg.index 3 : index
      %extracted = tensor.extract %74[%246, %248, %249, %250] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_12 = tensor.pad %113 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %116 = tensor.empty() : tensor<3x3x512x512xf32>
    %117 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%116 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = linalg.index 2 : index
      %249 = linalg.index 3 : index
      %250 = arith.subi %c2, %247 : index
      %extracted = tensor.extract %115[%249, %246, %250, %248] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %118 = tensor.empty() : tensor<1x28x28x512xf32>
    %119 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%118 : tensor<1x28x28x512xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x28x28x512xf32>
    %120 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_12, %117 : tensor<1x30x30x512xf32>, tensor<3x3x512x512xf32>) outs(%119 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_24: f32, %out: f32):
      %246 = arith.mulf %in, %in_24 : f32
      %247 = arith.addf %out, %246 : f32
      linalg.yield %247 : f32
    } -> tensor<1x28x28x512xf32>
    %121 = tensor.empty() : tensor<1x28x28x512xf32>
    %122 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %38, %75, %120 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%121 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %in_26: f32, %out: f32):
      %246 = arith.addf %in_25, %in_26 : f32
      %247 = arith.cmpf oeq, %in, %in_24 : f32
      %248 = arith.select %247, %246, %cst : f32
      linalg.yield %248 : f32
    } -> tensor<1x28x28x512xf32>
    %123 = tensor.empty() : tensor<512x3x3x512xf32>
    %124 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%123 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = arith.subi %c2, %247 : index
      %249 = linalg.index 2 : index
      %250 = linalg.index 3 : index
      %extracted = tensor.extract %74[%246, %248, %249, %250] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_13 = tensor.pad %122 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %125 = tensor.empty() : tensor<3x3x512x512xf32>
    %126 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%125 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = linalg.index 2 : index
      %249 = linalg.index 3 : index
      %250 = arith.subi %c2, %247 : index
      %extracted = tensor.extract %124[%249, %246, %250, %248] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %127 = tensor.empty() : tensor<1x28x28x512xf32>
    %128 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%127 : tensor<1x28x28x512xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x28x28x512xf32>
    %129 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_13, %126 : tensor<1x30x30x512xf32>, tensor<3x3x512x512xf32>) outs(%128 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_24: f32, %out: f32):
      %246 = arith.mulf %in, %in_24 : f32
      %247 = arith.addf %out, %246 : f32
      linalg.yield %247 : f32
    } -> tensor<1x28x28x512xf32>
    %130 = tensor.empty() : tensor<1x28x28x512xf32>
    %131 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %36, %75, %129 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%130 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %in_26: f32, %out: f32):
      %246 = arith.addf %in_25, %in_26 : f32
      %247 = arith.cmpf oeq, %in, %in_24 : f32
      %248 = arith.select %247, %246, %cst : f32
      linalg.yield %248 : f32
    } -> tensor<1x28x28x512xf32>
    %132 = tensor.empty() : tensor<512x3x3x512xf32>
    %133 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%132 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = arith.subi %c2, %247 : index
      %249 = linalg.index 2 : index
      %250 = linalg.index 3 : index
      %extracted = tensor.extract %74[%246, %248, %249, %250] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_14 = tensor.pad %131 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %134 = tensor.empty() : tensor<3x3x512x512xf32>
    %135 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%134 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = linalg.index 2 : index
      %249 = linalg.index 3 : index
      %250 = arith.subi %c2, %247 : index
      %extracted = tensor.extract %133[%249, %246, %250, %248] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %136 = tensor.empty() : tensor<1x28x28x512xf32>
    %137 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%136 : tensor<1x28x28x512xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x28x28x512xf32>
    %138 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_14, %135 : tensor<1x30x30x512xf32>, tensor<3x3x512x512xf32>) outs(%137 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_24: f32, %out: f32):
      %246 = arith.mulf %in, %in_24 : f32
      %247 = arith.addf %out, %246 : f32
      linalg.yield %247 : f32
    } -> tensor<1x28x28x512xf32>
    %139 = tensor.empty() : tensor<1x28x28x512xf32>
    %140 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %34, %75, %138 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%139 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %in_26: f32, %out: f32):
      %246 = arith.addf %in_25, %in_26 : f32
      %247 = arith.cmpf oeq, %in, %in_24 : f32
      %248 = arith.select %247, %246, %cst : f32
      linalg.yield %248 : f32
    } -> tensor<1x28x28x512xf32>
    %141 = tensor.empty() : tensor<256x3x3x512xf32>
    %142 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<512x3x3x256xf32>) outs(%141 : tensor<256x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x512xf32>
    %143 = tensor.empty() : tensor<256xf32>
    %144 = tensor.empty() : tensor<256x3x3x512xf32>
    %145 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%144 : tensor<256x3x3x512xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = arith.subi %c2, %247 : index
      %249 = linalg.index 2 : index
      %250 = linalg.index 3 : index
      %extracted = tensor.extract %142[%246, %248, %249, %250] : tensor<256x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x512xf32>
    %padded_15 = tensor.pad %140 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %146 = tensor.empty() : tensor<3x3x512x256xf32>
    %147 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%146 : tensor<3x3x512x256xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = linalg.index 2 : index
      %249 = linalg.index 3 : index
      %250 = arith.subi %c2, %247 : index
      %extracted = tensor.extract %145[%249, %246, %250, %248] : tensor<256x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x256xf32>
    %148 = tensor.empty() : tensor<1x28x28x256xf32>
    %149 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%148 : tensor<1x28x28x256xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x28x28x256xf32>
    %150 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_15, %147 : tensor<1x30x30x512xf32>, tensor<3x3x512x256xf32>) outs(%149 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %in_24: f32, %out: f32):
      %246 = arith.mulf %in, %in_24 : f32
      %247 = arith.addf %out, %246 : f32
      linalg.yield %247 : f32
    } -> tensor<1x28x28x256xf32>
    %151 = tensor.empty() : tensor<1x56x56x256xf32>
    %152 = linalg.generic {indexing_maps = [#map4, #map5, #map6, #map15, #map6, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%31, %69, %32, %143, %150 : tensor<1x56x56x256xf32>, tensor<2x2xf32>, tensor<1x28x28x256xf32>, tensor<256xf32>, tensor<1x28x28x256xf32>) outs(%151 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %in_26: f32, %in_27: f32, %out: f32):
      %246 = arith.addf %in_26, %in_27 : f32
      %247 = arith.cmpf oge, %in, %in_25 : f32
      %248 = arith.select %247, %246, %cst : f32
      %249 = arith.addf %out, %248 : f32
      linalg.yield %249 : f32
    } -> tensor<1x56x56x256xf32>
    %153 = tensor.empty() : tensor<1x56x56x256xf32>
    %154 = linalg.generic {indexing_maps = [#map8, #map8, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %30, %152 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<1x56x56x256xf32>) outs(%153 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %out: f32):
      %246 = arith.cmpf oeq, %in, %in_24 : f32
      %247 = arith.select %246, %in_25, %cst : f32
      linalg.yield %247 : f32
    } -> tensor<1x56x56x256xf32>
    %155 = tensor.empty() : tensor<256x3x3x256xf32>
    %156 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<256x3x3x256xf32>) outs(%155 : tensor<256x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x256xf32>
    %157 = tensor.empty() : tensor<256x3x3x256xf32>
    %158 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%157 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = arith.subi %c2, %247 : index
      %249 = linalg.index 2 : index
      %250 = linalg.index 3 : index
      %extracted = tensor.extract %156[%246, %248, %249, %250] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_16 = tensor.pad %154 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %159 = tensor.empty() : tensor<3x3x256x256xf32>
    %160 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%159 : tensor<3x3x256x256xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = linalg.index 2 : index
      %249 = linalg.index 3 : index
      %250 = arith.subi %c2, %247 : index
      %extracted = tensor.extract %158[%249, %246, %250, %248] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x256xf32>
    %161 = tensor.empty() : tensor<1x56x56x256xf32>
    %162 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%161 : tensor<1x56x56x256xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x56x56x256xf32>
    %163 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_16, %160 : tensor<1x58x58x256xf32>, tensor<3x3x256x256xf32>) outs(%162 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_24: f32, %out: f32):
      %246 = arith.mulf %in, %in_24 : f32
      %247 = arith.addf %out, %246 : f32
      linalg.yield %247 : f32
    } -> tensor<1x56x56x256xf32>
    %164 = tensor.empty() : tensor<1x56x56x256xf32>
    %165 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %28, %143, %163 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%164 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %in_26: f32, %out: f32):
      %246 = arith.addf %in_25, %in_26 : f32
      %247 = arith.cmpf oeq, %in, %in_24 : f32
      %248 = arith.select %247, %246, %cst : f32
      linalg.yield %248 : f32
    } -> tensor<1x56x56x256xf32>
    %166 = tensor.empty() : tensor<256x3x3x256xf32>
    %167 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%166 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = arith.subi %c2, %247 : index
      %249 = linalg.index 2 : index
      %250 = linalg.index 3 : index
      %extracted = tensor.extract %156[%246, %248, %249, %250] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_17 = tensor.pad %165 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %168 = tensor.empty() : tensor<3x3x256x256xf32>
    %169 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%168 : tensor<3x3x256x256xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = linalg.index 2 : index
      %249 = linalg.index 3 : index
      %250 = arith.subi %c2, %247 : index
      %extracted = tensor.extract %167[%249, %246, %250, %248] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x256xf32>
    %170 = tensor.empty() : tensor<1x56x56x256xf32>
    %171 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%170 : tensor<1x56x56x256xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x56x56x256xf32>
    %172 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_17, %169 : tensor<1x58x58x256xf32>, tensor<3x3x256x256xf32>) outs(%171 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_24: f32, %out: f32):
      %246 = arith.mulf %in, %in_24 : f32
      %247 = arith.addf %out, %246 : f32
      linalg.yield %247 : f32
    } -> tensor<1x56x56x256xf32>
    %173 = tensor.empty() : tensor<1x56x56x256xf32>
    %174 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %26, %143, %172 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%173 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %in_26: f32, %out: f32):
      %246 = arith.addf %in_25, %in_26 : f32
      %247 = arith.cmpf oeq, %in, %in_24 : f32
      %248 = arith.select %247, %246, %cst : f32
      linalg.yield %248 : f32
    } -> tensor<1x56x56x256xf32>
    %175 = tensor.empty() : tensor<256x3x3x256xf32>
    %176 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%175 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = arith.subi %c2, %247 : index
      %249 = linalg.index 2 : index
      %250 = linalg.index 3 : index
      %extracted = tensor.extract %156[%246, %248, %249, %250] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_18 = tensor.pad %174 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %177 = tensor.empty() : tensor<3x3x256x256xf32>
    %178 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%177 : tensor<3x3x256x256xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = linalg.index 2 : index
      %249 = linalg.index 3 : index
      %250 = arith.subi %c2, %247 : index
      %extracted = tensor.extract %176[%249, %246, %250, %248] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x256xf32>
    %179 = tensor.empty() : tensor<1x56x56x256xf32>
    %180 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%179 : tensor<1x56x56x256xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x56x56x256xf32>
    %181 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_18, %178 : tensor<1x58x58x256xf32>, tensor<3x3x256x256xf32>) outs(%180 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_24: f32, %out: f32):
      %246 = arith.mulf %in, %in_24 : f32
      %247 = arith.addf %out, %246 : f32
      linalg.yield %247 : f32
    } -> tensor<1x56x56x256xf32>
    %182 = tensor.empty() : tensor<1x56x56x256xf32>
    %183 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %24, %143, %181 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%182 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %in_26: f32, %out: f32):
      %246 = arith.addf %in_25, %in_26 : f32
      %247 = arith.cmpf oeq, %in, %in_24 : f32
      %248 = arith.select %247, %246, %cst : f32
      linalg.yield %248 : f32
    } -> tensor<1x56x56x256xf32>
    %184 = tensor.empty() : tensor<128x3x3x256xf32>
    %185 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<256x3x3x128xf32>) outs(%184 : tensor<128x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x256xf32>
    %186 = tensor.empty() : tensor<128xf32>
    %187 = tensor.empty() : tensor<128x3x3x256xf32>
    %188 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%187 : tensor<128x3x3x256xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = arith.subi %c2, %247 : index
      %249 = linalg.index 2 : index
      %250 = linalg.index 3 : index
      %extracted = tensor.extract %185[%246, %248, %249, %250] : tensor<128x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x256xf32>
    %padded_19 = tensor.pad %183 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %189 = tensor.empty() : tensor<3x3x256x128xf32>
    %190 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%189 : tensor<3x3x256x128xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = linalg.index 2 : index
      %249 = linalg.index 3 : index
      %250 = arith.subi %c2, %247 : index
      %extracted = tensor.extract %188[%249, %246, %250, %248] : tensor<128x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x128xf32>
    %191 = tensor.empty() : tensor<1x56x56x128xf32>
    %192 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%191 : tensor<1x56x56x128xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x56x56x128xf32>
    %193 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_19, %190 : tensor<1x58x58x256xf32>, tensor<3x3x256x128xf32>) outs(%192 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %in_24: f32, %out: f32):
      %246 = arith.mulf %in, %in_24 : f32
      %247 = arith.addf %out, %246 : f32
      linalg.yield %247 : f32
    } -> tensor<1x56x56x128xf32>
    %194 = tensor.empty() : tensor<1x112x112x128xf32>
    %195 = linalg.generic {indexing_maps = [#map4, #map5, #map6, #map15, #map6, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%21, %69, %22, %186, %193 : tensor<1x112x112x128xf32>, tensor<2x2xf32>, tensor<1x56x56x128xf32>, tensor<128xf32>, tensor<1x56x56x128xf32>) outs(%194 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %in_26: f32, %in_27: f32, %out: f32):
      %246 = arith.addf %in_26, %in_27 : f32
      %247 = arith.cmpf oge, %in, %in_25 : f32
      %248 = arith.select %247, %246, %cst : f32
      %249 = arith.addf %out, %248 : f32
      linalg.yield %249 : f32
    } -> tensor<1x112x112x128xf32>
    %196 = tensor.empty() : tensor<1x112x112x128xf32>
    %197 = linalg.generic {indexing_maps = [#map8, #map8, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %20, %195 : tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>, tensor<1x112x112x128xf32>) outs(%196 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %out: f32):
      %246 = arith.cmpf oeq, %in, %in_24 : f32
      %247 = arith.select %246, %in_25, %cst : f32
      linalg.yield %247 : f32
    } -> tensor<1x112x112x128xf32>
    %198 = tensor.empty() : tensor<128x3x3x128xf32>
    %199 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<128x3x3x128xf32>) outs(%198 : tensor<128x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x128xf32>
    %200 = tensor.empty() : tensor<128x3x3x128xf32>
    %201 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%200 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = arith.subi %c2, %247 : index
      %249 = linalg.index 2 : index
      %250 = linalg.index 3 : index
      %extracted = tensor.extract %199[%246, %248, %249, %250] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %padded_20 = tensor.pad %197 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x128xf32> to tensor<1x114x114x128xf32>
    %202 = tensor.empty() : tensor<3x3x128x128xf32>
    %203 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%202 : tensor<3x3x128x128xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = linalg.index 2 : index
      %249 = linalg.index 3 : index
      %250 = arith.subi %c2, %247 : index
      %extracted = tensor.extract %201[%249, %246, %250, %248] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x128x128xf32>
    %204 = tensor.empty() : tensor<1x112x112x128xf32>
    %205 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%204 : tensor<1x112x112x128xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x112x112x128xf32>
    %206 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_20, %203 : tensor<1x114x114x128xf32>, tensor<3x3x128x128xf32>) outs(%205 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_24: f32, %out: f32):
      %246 = arith.mulf %in, %in_24 : f32
      %247 = arith.addf %out, %246 : f32
      linalg.yield %247 : f32
    } -> tensor<1x112x112x128xf32>
    %207 = tensor.empty() : tensor<1x112x112x128xf32>
    %208 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %18, %186, %206 : tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>, tensor<128xf32>, tensor<1x112x112x128xf32>) outs(%207 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %in_26: f32, %out: f32):
      %246 = arith.addf %in_25, %in_26 : f32
      %247 = arith.cmpf oeq, %in, %in_24 : f32
      %248 = arith.select %247, %246, %cst : f32
      linalg.yield %248 : f32
    } -> tensor<1x112x112x128xf32>
    %209 = tensor.empty() : tensor<64x3x3x128xf32>
    %210 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<128x3x3x64xf32>) outs(%209 : tensor<64x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x128xf32>
    %211 = tensor.empty() : tensor<64xf32>
    %212 = tensor.empty() : tensor<64x3x3x128xf32>
    %213 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%212 : tensor<64x3x3x128xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = arith.subi %c2, %247 : index
      %249 = linalg.index 2 : index
      %250 = linalg.index 3 : index
      %extracted = tensor.extract %210[%246, %248, %249, %250] : tensor<64x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x128xf32>
    %padded_21 = tensor.pad %208 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x128xf32> to tensor<1x114x114x128xf32>
    %214 = tensor.empty() : tensor<3x3x128x64xf32>
    %215 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%214 : tensor<3x3x128x64xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = linalg.index 2 : index
      %249 = linalg.index 3 : index
      %250 = arith.subi %c2, %247 : index
      %extracted = tensor.extract %213[%249, %246, %250, %248] : tensor<64x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x128x64xf32>
    %216 = tensor.empty() : tensor<1x112x112x64xf32>
    %217 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%216 : tensor<1x112x112x64xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x112x112x64xf32>
    %218 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_21, %215 : tensor<1x114x114x128xf32>, tensor<3x3x128x64xf32>) outs(%217 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %in_24: f32, %out: f32):
      %246 = arith.mulf %in, %in_24 : f32
      %247 = arith.addf %out, %246 : f32
      linalg.yield %247 : f32
    } -> tensor<1x112x112x64xf32>
    %219 = tensor.empty() : tensor<1x224x224x64xf32>
    %220 = linalg.generic {indexing_maps = [#map4, #map5, #map6, #map15, #map6, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%15, %69, %16, %211, %218 : tensor<1x224x224x64xf32>, tensor<2x2xf32>, tensor<1x112x112x64xf32>, tensor<64xf32>, tensor<1x112x112x64xf32>) outs(%219 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %in_26: f32, %in_27: f32, %out: f32):
      %246 = arith.addf %in_26, %in_27 : f32
      %247 = arith.cmpf oge, %in, %in_25 : f32
      %248 = arith.select %247, %246, %cst : f32
      %249 = arith.addf %out, %248 : f32
      linalg.yield %249 : f32
    } -> tensor<1x224x224x64xf32>
    %221 = tensor.empty() : tensor<1x224x224x64xf32>
    %222 = linalg.generic {indexing_maps = [#map8, #map8, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13, %14, %220 : tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>, tensor<1x224x224x64xf32>) outs(%221 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %out: f32):
      %246 = arith.cmpf oeq, %in, %in_24 : f32
      %247 = arith.select %246, %in_25, %cst : f32
      linalg.yield %247 : f32
    } -> tensor<1x224x224x64xf32>
    %223 = tensor.empty() : tensor<64x3x3x64xf32>
    %224 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<64x3x3x64xf32>) outs(%223 : tensor<64x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x64xf32>
    %225 = tensor.empty() : tensor<64x3x3x64xf32>
    %226 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%225 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = arith.subi %c2, %247 : index
      %249 = linalg.index 2 : index
      %250 = linalg.index 3 : index
      %extracted = tensor.extract %224[%246, %248, %249, %250] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %padded_22 = tensor.pad %222 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x224x224x64xf32> to tensor<1x226x226x64xf32>
    %227 = tensor.empty() : tensor<3x3x64x64xf32>
    %228 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%227 : tensor<3x3x64x64xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = linalg.index 2 : index
      %249 = linalg.index 3 : index
      %250 = arith.subi %c2, %247 : index
      %extracted = tensor.extract %226[%249, %246, %250, %248] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x64x64xf32>
    %229 = tensor.empty() : tensor<1x224x224x64xf32>
    %230 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%229 : tensor<1x224x224x64xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x224x224x64xf32>
    %231 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_22, %228 : tensor<1x226x226x64xf32>, tensor<3x3x64x64xf32>) outs(%230 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_24: f32, %out: f32):
      %246 = arith.mulf %in, %in_24 : f32
      %247 = arith.addf %out, %246 : f32
      linalg.yield %247 : f32
    } -> tensor<1x224x224x64xf32>
    %232 = tensor.empty() : tensor<1x224x224x64xf32>
    %233 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %12, %211, %231 : tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>, tensor<64xf32>, tensor<1x224x224x64xf32>) outs(%232 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_24: f32, %in_25: f32, %in_26: f32, %out: f32):
      %246 = arith.addf %in_25, %in_26 : f32
      %247 = arith.cmpf oeq, %in, %in_24 : f32
      %248 = arith.select %247, %246, %cst : f32
      linalg.yield %248 : f32
    } -> tensor<1x224x224x64xf32>
    %234 = tensor.empty() : tensor<3x3x3x64xf32>
    %235 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<64x3x3x3xf32>) outs(%234 : tensor<3x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x3x64xf32>
    %236 = tensor.empty() : tensor<3xf32>
    %237 = tensor.empty() : tensor<3x3x3x64xf32>
    %238 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%237 : tensor<3x3x3x64xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = arith.subi %c2, %247 : index
      %249 = linalg.index 2 : index
      %250 = linalg.index 3 : index
      %extracted = tensor.extract %235[%246, %248, %249, %250] : tensor<3x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x3x64xf32>
    %padded_23 = tensor.pad %233 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x224x224x64xf32> to tensor<1x226x226x64xf32>
    %239 = tensor.empty() : tensor<3x3x64x3xf32>
    %240 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%239 : tensor<3x3x64x3xf32>) {
    ^bb0(%out: f32):
      %246 = linalg.index 0 : index
      %247 = linalg.index 1 : index
      %248 = linalg.index 2 : index
      %249 = linalg.index 3 : index
      %250 = arith.subi %c2, %247 : index
      %extracted = tensor.extract %238[%249, %246, %250, %248] : tensor<3x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x64x3xf32>
    %241 = tensor.empty() : tensor<1x224x224x3xf32>
    %242 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%241 : tensor<1x224x224x3xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x224x224x3xf32>
    %243 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_23, %240 : tensor<1x226x226x64xf32>, tensor<3x3x64x3xf32>) outs(%242 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %in_24: f32, %out: f32):
      %246 = arith.mulf %in, %in_24 : f32
      %247 = arith.addf %out, %246 : f32
      linalg.yield %247 : f32
    } -> tensor<1x224x224x3xf32>
    %244 = tensor.empty() : tensor<1x3x224x224xf32>
    %245 = linalg.generic {indexing_maps = [#map16, #map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236, %243 : tensor<3xf32>, tensor<1x224x224x3xf32>) outs(%244 : tensor<1x3x224x224xf32>) {
    ^bb0(%in: f32, %in_24: f32, %out: f32):
      %246 = arith.addf %in, %in_24 : f32
      linalg.yield %246 : f32
    } -> tensor<1x3x224x224xf32>
    return %245 : tensor<1x3x224x224xf32>
  }
}

