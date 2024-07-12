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
    %53 = tensor.empty() : tensor<1x1x4096xf32>
    %54 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel"]} outs(%53 : tensor<1x1x4096xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x1x4096xf32>
    %55 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded, %0 : tensor<1x1x1000xf32>, tensor<1x4096x1000xf32>) outs(%54 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %213 = arith.mulf %in, %in_21 : f32
      %214 = arith.addf %out, %213 : f32
      linalg.yield %214 : f32
    } -> tensor<1x1x4096xf32>
    %expanded_0 = tensor.expand_shape %51 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_1 = tensor.expand_shape %52 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_2 = tensor.expand_shape %50 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_3 = tensor.expand_shape %51 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %56 = tensor.empty() : tensor<1x1x4096xf32>
    %57 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel"]} outs(%56 : tensor<1x1x4096xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x1x4096xf32>
    %58 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1, #map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded_2, %expanded_3, %expanded_0, %expanded_1, %55, %1 : tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) outs(%57 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %in_23: f32, %in_24: f32, %in_25: f32, %out: f32):
      %213 = arith.cmpf oeq, %in_22, %in_23 : f32
      %214 = arith.select %213, %in_24, %cst : f32
      %215 = arith.cmpf oeq, %in, %in_21 : f32
      %216 = arith.select %215, %214, %cst : f32
      %217 = arith.mulf %216, %in_25 : f32
      %218 = arith.addf %out, %217 : f32
      linalg.yield %218 : f32
    } -> tensor<1x1x4096xf32>
    %expanded_4 = tensor.expand_shape %48 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_5 = tensor.expand_shape %49 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_6 = tensor.expand_shape %47 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_7 = tensor.expand_shape %48 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %59 = tensor.empty() : tensor<1x1x25088xf32>
    %60 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel"]} outs(%59 : tensor<1x1x25088xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x1x25088xf32>
    %61 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1, #map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded_6, %expanded_7, %expanded_4, %expanded_5, %58, %2 : tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x25088x4096xf32>) outs(%60 : tensor<1x1x25088xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %in_23: f32, %in_24: f32, %in_25: f32, %out: f32):
      %213 = arith.cmpf oeq, %in_22, %in_23 : f32
      %214 = arith.select %213, %in_24, %cst : f32
      %215 = arith.cmpf oeq, %in, %in_21 : f32
      %216 = arith.select %215, %214, %cst : f32
      %217 = arith.mulf %216, %in_25 : f32
      %218 = arith.addf %out, %217 : f32
      linalg.yield %218 : f32
    } -> tensor<1x1x25088xf32>
    %collapsed = tensor.collapse_shape %61 [[0, 1], [2]] : tensor<1x1x25088xf32> into tensor<1x25088xf32>
    %expanded_8 = tensor.expand_shape %collapsed [[0], [1, 2, 3]] : tensor<1x25088xf32> into tensor<1x512x7x7xf32>
    %62 = tensor.empty() : tensor<1x14x14x512xf32>
    %63 = tensor.empty() : tensor<2x2xf32>
    %64 = linalg.generic {indexing_maps = [#map4, #map5, #map6, #map7, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%45, %63, %46, %expanded_8 : tensor<1x14x14x512xf32>, tensor<2x2xf32>, tensor<1x7x7x512xf32>, tensor<1x512x7x7xf32>) outs(%62 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %in_23: f32, %out: f32):
      %213 = arith.cmpf oge, %in, %in_22 : f32
      %214 = arith.select %213, %in_23, %cst : f32
      %215 = arith.addf %out, %214 : f32
      linalg.yield %215 : f32
    } -> tensor<1x14x14x512xf32>
    %65 = tensor.empty() : tensor<1x14x14x512xf32>
    %66 = linalg.generic {indexing_maps = [#map8, #map8, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %44, %64 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>, tensor<1x14x14x512xf32>) outs(%65 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %out: f32):
      %213 = arith.cmpf oeq, %in, %in_21 : f32
      %214 = arith.select %213, %in_22, %cst : f32
      linalg.yield %214 : f32
    } -> tensor<1x14x14x512xf32>
    %67 = tensor.empty() : tensor<512x3x3x512xf32>
    %68 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3 : tensor<512x3x3x512xf32>) outs(%67 : tensor<512x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x3x3x512xf32>
    %69 = tensor.empty() : tensor<512xf32>
    %70 = tensor.empty() : tensor<512x3x3x512xf32>
    %71 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%70 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c2, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %68[%213, %215, %216, %217] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded = tensor.pad %66 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %72 = tensor.empty() : tensor<3x3x512x512xf32>
    %73 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%72 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c2, %214 : index
      %extracted = tensor.extract %71[%216, %213, %217, %215] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %74 = tensor.empty() : tensor<1x14x14x512xf32>
    %75 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%74 : tensor<1x14x14x512xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x14x14x512xf32>
    %76 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded, %73 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%75 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %213 = arith.mulf %in, %in_21 : f32
      %214 = arith.addf %out, %213 : f32
      linalg.yield %214 : f32
    } -> tensor<1x14x14x512xf32>
    %77 = tensor.empty() : tensor<1x14x14x512xf32>
    %78 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %42, %69, %76 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%77 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %in_23: f32, %out: f32):
      %213 = arith.addf %in_22, %in_23 : f32
      %214 = arith.cmpf oeq, %in, %in_21 : f32
      %215 = arith.select %214, %213, %cst : f32
      linalg.yield %215 : f32
    } -> tensor<1x14x14x512xf32>
    %79 = tensor.empty() : tensor<512x3x3x512xf32>
    %80 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%79 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c2, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %68[%213, %215, %216, %217] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_9 = tensor.pad %78 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %81 = tensor.empty() : tensor<3x3x512x512xf32>
    %82 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%81 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c2, %214 : index
      %extracted = tensor.extract %80[%216, %213, %217, %215] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %83 = tensor.empty() : tensor<1x14x14x512xf32>
    %84 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%83 : tensor<1x14x14x512xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x14x14x512xf32>
    %85 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_9, %82 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%84 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %213 = arith.mulf %in, %in_21 : f32
      %214 = arith.addf %out, %213 : f32
      linalg.yield %214 : f32
    } -> tensor<1x14x14x512xf32>
    %86 = tensor.empty() : tensor<1x14x14x512xf32>
    %87 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %40, %69, %85 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%86 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %in_23: f32, %out: f32):
      %213 = arith.addf %in_22, %in_23 : f32
      %214 = arith.cmpf oeq, %in, %in_21 : f32
      %215 = arith.select %214, %213, %cst : f32
      linalg.yield %215 : f32
    } -> tensor<1x14x14x512xf32>
    %88 = tensor.empty() : tensor<512x3x3x512xf32>
    %89 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%88 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c2, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %68[%213, %215, %216, %217] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_10 = tensor.pad %87 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %90 = tensor.empty() : tensor<3x3x512x512xf32>
    %91 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%90 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c2, %214 : index
      %extracted = tensor.extract %89[%216, %213, %217, %215] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %92 = tensor.empty() : tensor<1x14x14x512xf32>
    %93 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%92 : tensor<1x14x14x512xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x14x14x512xf32>
    %94 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_10, %91 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%93 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %213 = arith.mulf %in, %in_21 : f32
      %214 = arith.addf %out, %213 : f32
      linalg.yield %214 : f32
    } -> tensor<1x14x14x512xf32>
    %95 = tensor.empty() : tensor<1x28x28x512xf32>
    %96 = linalg.generic {indexing_maps = [#map4, #map5, #map6, #map15, #map6, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%37, %63, %38, %69, %94 : tensor<1x28x28x512xf32>, tensor<2x2xf32>, tensor<1x14x14x512xf32>, tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%95 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %in_23: f32, %in_24: f32, %out: f32):
      %213 = arith.addf %in_23, %in_24 : f32
      %214 = arith.cmpf oge, %in, %in_22 : f32
      %215 = arith.select %214, %213, %cst : f32
      %216 = arith.addf %out, %215 : f32
      linalg.yield %216 : f32
    } -> tensor<1x28x28x512xf32>
    %97 = tensor.empty() : tensor<1x28x28x512xf32>
    %98 = linalg.generic {indexing_maps = [#map8, #map8, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %36, %96 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x28x28x512xf32>) outs(%97 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %out: f32):
      %213 = arith.cmpf oeq, %in, %in_21 : f32
      %214 = arith.select %213, %in_22, %cst : f32
      linalg.yield %214 : f32
    } -> tensor<1x28x28x512xf32>
    %99 = tensor.empty() : tensor<512x3x3x512xf32>
    %100 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%99 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c2, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %68[%213, %215, %216, %217] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_11 = tensor.pad %98 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %101 = tensor.empty() : tensor<3x3x512x512xf32>
    %102 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%101 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c2, %214 : index
      %extracted = tensor.extract %100[%216, %213, %217, %215] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %103 = tensor.empty() : tensor<1x28x28x512xf32>
    %104 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%103 : tensor<1x28x28x512xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x28x28x512xf32>
    %105 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_11, %102 : tensor<1x30x30x512xf32>, tensor<3x3x512x512xf32>) outs(%104 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %213 = arith.mulf %in, %in_21 : f32
      %214 = arith.addf %out, %213 : f32
      linalg.yield %214 : f32
    } -> tensor<1x28x28x512xf32>
    %106 = tensor.empty() : tensor<1x28x28x512xf32>
    %107 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %34, %69, %105 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%106 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %in_23: f32, %out: f32):
      %213 = arith.addf %in_22, %in_23 : f32
      %214 = arith.cmpf oeq, %in, %in_21 : f32
      %215 = arith.select %214, %213, %cst : f32
      linalg.yield %215 : f32
    } -> tensor<1x28x28x512xf32>
    %108 = tensor.empty() : tensor<512x3x3x512xf32>
    %109 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%108 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c2, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %68[%213, %215, %216, %217] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_12 = tensor.pad %107 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %110 = tensor.empty() : tensor<3x3x512x512xf32>
    %111 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%110 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c2, %214 : index
      %extracted = tensor.extract %109[%216, %213, %217, %215] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %112 = tensor.empty() : tensor<1x28x28x512xf32>
    %113 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%112 : tensor<1x28x28x512xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x28x28x512xf32>
    %114 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_12, %111 : tensor<1x30x30x512xf32>, tensor<3x3x512x512xf32>) outs(%113 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %213 = arith.mulf %in, %in_21 : f32
      %214 = arith.addf %out, %213 : f32
      linalg.yield %214 : f32
    } -> tensor<1x28x28x512xf32>
    %115 = tensor.empty() : tensor<1x28x28x512xf32>
    %116 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %32, %69, %114 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%115 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %in_23: f32, %out: f32):
      %213 = arith.addf %in_22, %in_23 : f32
      %214 = arith.cmpf oeq, %in, %in_21 : f32
      %215 = arith.select %214, %213, %cst : f32
      linalg.yield %215 : f32
    } -> tensor<1x28x28x512xf32>
    %117 = tensor.empty() : tensor<256x3x3x512xf32>
    %118 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<512x3x3x256xf32>) outs(%117 : tensor<256x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x512xf32>
    %119 = tensor.empty() : tensor<256xf32>
    %120 = tensor.empty() : tensor<256x3x3x512xf32>
    %121 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%120 : tensor<256x3x3x512xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c2, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %118[%213, %215, %216, %217] : tensor<256x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x512xf32>
    %padded_13 = tensor.pad %116 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %122 = tensor.empty() : tensor<3x3x512x256xf32>
    %123 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%122 : tensor<3x3x512x256xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c2, %214 : index
      %extracted = tensor.extract %121[%216, %213, %217, %215] : tensor<256x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x256xf32>
    %124 = tensor.empty() : tensor<1x28x28x256xf32>
    %125 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%124 : tensor<1x28x28x256xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x28x28x256xf32>
    %126 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_13, %123 : tensor<1x30x30x512xf32>, tensor<3x3x512x256xf32>) outs(%125 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %213 = arith.mulf %in, %in_21 : f32
      %214 = arith.addf %out, %213 : f32
      linalg.yield %214 : f32
    } -> tensor<1x28x28x256xf32>
    %127 = tensor.empty() : tensor<1x56x56x256xf32>
    %128 = linalg.generic {indexing_maps = [#map4, #map5, #map6, #map15, #map6, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%29, %63, %30, %119, %126 : tensor<1x56x56x256xf32>, tensor<2x2xf32>, tensor<1x28x28x256xf32>, tensor<256xf32>, tensor<1x28x28x256xf32>) outs(%127 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %in_23: f32, %in_24: f32, %out: f32):
      %213 = arith.addf %in_23, %in_24 : f32
      %214 = arith.cmpf oge, %in, %in_22 : f32
      %215 = arith.select %214, %213, %cst : f32
      %216 = arith.addf %out, %215 : f32
      linalg.yield %216 : f32
    } -> tensor<1x56x56x256xf32>
    %129 = tensor.empty() : tensor<1x56x56x256xf32>
    %130 = linalg.generic {indexing_maps = [#map8, #map8, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %28, %128 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<1x56x56x256xf32>) outs(%129 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %out: f32):
      %213 = arith.cmpf oeq, %in, %in_21 : f32
      %214 = arith.select %213, %in_22, %cst : f32
      linalg.yield %214 : f32
    } -> tensor<1x56x56x256xf32>
    %131 = tensor.empty() : tensor<256x3x3x256xf32>
    %132 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<256x3x3x256xf32>) outs(%131 : tensor<256x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x256xf32>
    %133 = tensor.empty() : tensor<256x3x3x256xf32>
    %134 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%133 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c2, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %132[%213, %215, %216, %217] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_14 = tensor.pad %130 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %135 = tensor.empty() : tensor<3x3x256x256xf32>
    %136 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%135 : tensor<3x3x256x256xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c2, %214 : index
      %extracted = tensor.extract %134[%216, %213, %217, %215] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x256xf32>
    %137 = tensor.empty() : tensor<1x56x56x256xf32>
    %138 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%137 : tensor<1x56x56x256xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x56x56x256xf32>
    %139 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_14, %136 : tensor<1x58x58x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %213 = arith.mulf %in, %in_21 : f32
      %214 = arith.addf %out, %213 : f32
      linalg.yield %214 : f32
    } -> tensor<1x56x56x256xf32>
    %140 = tensor.empty() : tensor<1x56x56x256xf32>
    %141 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %26, %119, %139 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%140 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %in_23: f32, %out: f32):
      %213 = arith.addf %in_22, %in_23 : f32
      %214 = arith.cmpf oeq, %in, %in_21 : f32
      %215 = arith.select %214, %213, %cst : f32
      linalg.yield %215 : f32
    } -> tensor<1x56x56x256xf32>
    %142 = tensor.empty() : tensor<256x3x3x256xf32>
    %143 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%142 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c2, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %132[%213, %215, %216, %217] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_15 = tensor.pad %141 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %144 = tensor.empty() : tensor<3x3x256x256xf32>
    %145 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%144 : tensor<3x3x256x256xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c2, %214 : index
      %extracted = tensor.extract %143[%216, %213, %217, %215] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x256xf32>
    %146 = tensor.empty() : tensor<1x56x56x256xf32>
    %147 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%146 : tensor<1x56x56x256xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x56x56x256xf32>
    %148 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_15, %145 : tensor<1x58x58x256xf32>, tensor<3x3x256x256xf32>) outs(%147 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %213 = arith.mulf %in, %in_21 : f32
      %214 = arith.addf %out, %213 : f32
      linalg.yield %214 : f32
    } -> tensor<1x56x56x256xf32>
    %149 = tensor.empty() : tensor<1x56x56x256xf32>
    %150 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %24, %119, %148 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%149 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %in_23: f32, %out: f32):
      %213 = arith.addf %in_22, %in_23 : f32
      %214 = arith.cmpf oeq, %in, %in_21 : f32
      %215 = arith.select %214, %213, %cst : f32
      linalg.yield %215 : f32
    } -> tensor<1x56x56x256xf32>
    %151 = tensor.empty() : tensor<128x3x3x256xf32>
    %152 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<256x3x3x128xf32>) outs(%151 : tensor<128x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x256xf32>
    %153 = tensor.empty() : tensor<128xf32>
    %154 = tensor.empty() : tensor<128x3x3x256xf32>
    %155 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%154 : tensor<128x3x3x256xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c2, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %152[%213, %215, %216, %217] : tensor<128x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x256xf32>
    %padded_16 = tensor.pad %150 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %156 = tensor.empty() : tensor<3x3x256x128xf32>
    %157 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%156 : tensor<3x3x256x128xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c2, %214 : index
      %extracted = tensor.extract %155[%216, %213, %217, %215] : tensor<128x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x128xf32>
    %158 = tensor.empty() : tensor<1x56x56x128xf32>
    %159 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%158 : tensor<1x56x56x128xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x56x56x128xf32>
    %160 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_16, %157 : tensor<1x58x58x256xf32>, tensor<3x3x256x128xf32>) outs(%159 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %213 = arith.mulf %in, %in_21 : f32
      %214 = arith.addf %out, %213 : f32
      linalg.yield %214 : f32
    } -> tensor<1x56x56x128xf32>
    %161 = tensor.empty() : tensor<1x112x112x128xf32>
    %162 = linalg.generic {indexing_maps = [#map4, #map5, #map6, #map15, #map6, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%21, %63, %22, %153, %160 : tensor<1x112x112x128xf32>, tensor<2x2xf32>, tensor<1x56x56x128xf32>, tensor<128xf32>, tensor<1x56x56x128xf32>) outs(%161 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %in_23: f32, %in_24: f32, %out: f32):
      %213 = arith.addf %in_23, %in_24 : f32
      %214 = arith.cmpf oge, %in, %in_22 : f32
      %215 = arith.select %214, %213, %cst : f32
      %216 = arith.addf %out, %215 : f32
      linalg.yield %216 : f32
    } -> tensor<1x112x112x128xf32>
    %163 = tensor.empty() : tensor<1x112x112x128xf32>
    %164 = linalg.generic {indexing_maps = [#map8, #map8, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %20, %162 : tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>, tensor<1x112x112x128xf32>) outs(%163 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %out: f32):
      %213 = arith.cmpf oeq, %in, %in_21 : f32
      %214 = arith.select %213, %in_22, %cst : f32
      linalg.yield %214 : f32
    } -> tensor<1x112x112x128xf32>
    %165 = tensor.empty() : tensor<128x3x3x128xf32>
    %166 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<128x3x3x128xf32>) outs(%165 : tensor<128x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x128xf32>
    %167 = tensor.empty() : tensor<128x3x3x128xf32>
    %168 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%167 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c2, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %166[%213, %215, %216, %217] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %padded_17 = tensor.pad %164 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x128xf32> to tensor<1x114x114x128xf32>
    %169 = tensor.empty() : tensor<3x3x128x128xf32>
    %170 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%169 : tensor<3x3x128x128xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c2, %214 : index
      %extracted = tensor.extract %168[%216, %213, %217, %215] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x128x128xf32>
    %171 = tensor.empty() : tensor<1x112x112x128xf32>
    %172 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%171 : tensor<1x112x112x128xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x112x112x128xf32>
    %173 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_17, %170 : tensor<1x114x114x128xf32>, tensor<3x3x128x128xf32>) outs(%172 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %213 = arith.mulf %in, %in_21 : f32
      %214 = arith.addf %out, %213 : f32
      linalg.yield %214 : f32
    } -> tensor<1x112x112x128xf32>
    %174 = tensor.empty() : tensor<1x112x112x128xf32>
    %175 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %18, %153, %173 : tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>, tensor<128xf32>, tensor<1x112x112x128xf32>) outs(%174 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %in_23: f32, %out: f32):
      %213 = arith.addf %in_22, %in_23 : f32
      %214 = arith.cmpf oeq, %in, %in_21 : f32
      %215 = arith.select %214, %213, %cst : f32
      linalg.yield %215 : f32
    } -> tensor<1x112x112x128xf32>
    %176 = tensor.empty() : tensor<64x3x3x128xf32>
    %177 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<128x3x3x64xf32>) outs(%176 : tensor<64x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x128xf32>
    %178 = tensor.empty() : tensor<64xf32>
    %179 = tensor.empty() : tensor<64x3x3x128xf32>
    %180 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%179 : tensor<64x3x3x128xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c2, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %177[%213, %215, %216, %217] : tensor<64x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x128xf32>
    %padded_18 = tensor.pad %175 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x128xf32> to tensor<1x114x114x128xf32>
    %181 = tensor.empty() : tensor<3x3x128x64xf32>
    %182 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%181 : tensor<3x3x128x64xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c2, %214 : index
      %extracted = tensor.extract %180[%216, %213, %217, %215] : tensor<64x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x128x64xf32>
    %183 = tensor.empty() : tensor<1x112x112x64xf32>
    %184 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%183 : tensor<1x112x112x64xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x112x112x64xf32>
    %185 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_18, %182 : tensor<1x114x114x128xf32>, tensor<3x3x128x64xf32>) outs(%184 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %213 = arith.mulf %in, %in_21 : f32
      %214 = arith.addf %out, %213 : f32
      linalg.yield %214 : f32
    } -> tensor<1x112x112x64xf32>
    %186 = tensor.empty() : tensor<1x224x224x64xf32>
    %187 = linalg.generic {indexing_maps = [#map4, #map5, #map6, #map15, #map6, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%15, %63, %16, %178, %185 : tensor<1x224x224x64xf32>, tensor<2x2xf32>, tensor<1x112x112x64xf32>, tensor<64xf32>, tensor<1x112x112x64xf32>) outs(%186 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %in_23: f32, %in_24: f32, %out: f32):
      %213 = arith.addf %in_23, %in_24 : f32
      %214 = arith.cmpf oge, %in, %in_22 : f32
      %215 = arith.select %214, %213, %cst : f32
      %216 = arith.addf %out, %215 : f32
      linalg.yield %216 : f32
    } -> tensor<1x224x224x64xf32>
    %188 = tensor.empty() : tensor<1x224x224x64xf32>
    %189 = linalg.generic {indexing_maps = [#map8, #map8, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13, %14, %187 : tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>, tensor<1x224x224x64xf32>) outs(%188 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %out: f32):
      %213 = arith.cmpf oeq, %in, %in_21 : f32
      %214 = arith.select %213, %in_22, %cst : f32
      linalg.yield %214 : f32
    } -> tensor<1x224x224x64xf32>
    %190 = tensor.empty() : tensor<64x3x3x64xf32>
    %191 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<64x3x3x64xf32>) outs(%190 : tensor<64x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x64xf32>
    %192 = tensor.empty() : tensor<64x3x3x64xf32>
    %193 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%192 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c2, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %191[%213, %215, %216, %217] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %padded_19 = tensor.pad %189 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x224x224x64xf32> to tensor<1x226x226x64xf32>
    %194 = tensor.empty() : tensor<3x3x64x64xf32>
    %195 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%194 : tensor<3x3x64x64xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c2, %214 : index
      %extracted = tensor.extract %193[%216, %213, %217, %215] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x64x64xf32>
    %196 = tensor.empty() : tensor<1x224x224x64xf32>
    %197 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%196 : tensor<1x224x224x64xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x224x224x64xf32>
    %198 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_19, %195 : tensor<1x226x226x64xf32>, tensor<3x3x64x64xf32>) outs(%197 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %213 = arith.mulf %in, %in_21 : f32
      %214 = arith.addf %out, %213 : f32
      linalg.yield %214 : f32
    } -> tensor<1x224x224x64xf32>
    %199 = tensor.empty() : tensor<1x224x224x64xf32>
    %200 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %12, %178, %198 : tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>, tensor<64xf32>, tensor<1x224x224x64xf32>) outs(%199 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_21: f32, %in_22: f32, %in_23: f32, %out: f32):
      %213 = arith.addf %in_22, %in_23 : f32
      %214 = arith.cmpf oeq, %in, %in_21 : f32
      %215 = arith.select %214, %213, %cst : f32
      linalg.yield %215 : f32
    } -> tensor<1x224x224x64xf32>
    %201 = tensor.empty() : tensor<3x3x3x64xf32>
    %202 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<64x3x3x3xf32>) outs(%201 : tensor<3x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x3x64xf32>
    %203 = tensor.empty() : tensor<3xf32>
    %204 = tensor.empty() : tensor<3x3x3x64xf32>
    %205 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%204 : tensor<3x3x3x64xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c2, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %202[%213, %215, %216, %217] : tensor<3x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x3x64xf32>
    %padded_20 = tensor.pad %200 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x224x224x64xf32> to tensor<1x226x226x64xf32>
    %206 = tensor.empty() : tensor<3x3x64x3xf32>
    %207 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%206 : tensor<3x3x64x3xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c2, %214 : index
      %extracted = tensor.extract %205[%216, %213, %217, %215] : tensor<3x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x64x3xf32>
    %208 = tensor.empty() : tensor<1x224x224x3xf32>
    %209 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%208 : tensor<1x224x224x3xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x224x224x3xf32>
    %210 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_20, %207 : tensor<1x226x226x64xf32>, tensor<3x3x64x3xf32>) outs(%209 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %213 = arith.mulf %in, %in_21 : f32
      %214 = arith.addf %out, %213 : f32
      linalg.yield %214 : f32
    } -> tensor<1x224x224x3xf32>
    %211 = tensor.empty() : tensor<1x3x224x224xf32>
    %212 = linalg.generic {indexing_maps = [#map16, #map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203, %210 : tensor<3xf32>, tensor<1x224x224x3xf32>) outs(%211 : tensor<1x3x224x224xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %213 = arith.addf %in, %in_21 : f32
      linalg.yield %213 : f32
    } -> tensor<1x3x224x224xf32>
    return %212 : tensor<1x3x224x224xf32>
  }
}

