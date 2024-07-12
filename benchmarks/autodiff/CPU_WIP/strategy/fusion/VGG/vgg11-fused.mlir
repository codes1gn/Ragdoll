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
    %cst = arith.constant 0.000000e+00 : f32
    %c2 = arith.constant 2 : index
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
    %41 = tensor.empty() : tensor<1x1x4096xf32>
    %42 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel"]} outs(%41 : tensor<1x1x4096xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x1x4096xf32>
    %43 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded, %0 : tensor<1x1x1000xf32>, tensor<1x4096x1000xf32>) outs(%42 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %152 = arith.mulf %in, %in_16 : f32
      %153 = arith.addf %out, %152 : f32
      linalg.yield %153 : f32
    } -> tensor<1x1x4096xf32>
    %expanded_0 = tensor.expand_shape %39 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_1 = tensor.expand_shape %40 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_2 = tensor.expand_shape %38 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_3 = tensor.expand_shape %39 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %44 = tensor.empty() : tensor<1x1x4096xf32>
    %45 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel"]} outs(%44 : tensor<1x1x4096xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x1x4096xf32>
    %46 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1, #map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded_2, %expanded_3, %expanded_0, %expanded_1, %43, %1 : tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) outs(%45 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %in_16: f32, %in_17: f32, %in_18: f32, %in_19: f32, %in_20: f32, %out: f32):
      %152 = arith.cmpf oeq, %in_17, %in_18 : f32
      %153 = arith.select %152, %in_19, %cst : f32
      %154 = arith.cmpf oeq, %in, %in_16 : f32
      %155 = arith.select %154, %153, %cst : f32
      %156 = arith.mulf %155, %in_20 : f32
      %157 = arith.addf %out, %156 : f32
      linalg.yield %157 : f32
    } -> tensor<1x1x4096xf32>
    %expanded_4 = tensor.expand_shape %36 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_5 = tensor.expand_shape %37 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_6 = tensor.expand_shape %35 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_7 = tensor.expand_shape %36 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %47 = tensor.empty() : tensor<1x1x25088xf32>
    %48 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel"]} outs(%47 : tensor<1x1x25088xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x1x25088xf32>
    %49 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1, #map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded_6, %expanded_7, %expanded_4, %expanded_5, %46, %2 : tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x25088x4096xf32>) outs(%48 : tensor<1x1x25088xf32>) {
    ^bb0(%in: f32, %in_16: f32, %in_17: f32, %in_18: f32, %in_19: f32, %in_20: f32, %out: f32):
      %152 = arith.cmpf oeq, %in_17, %in_18 : f32
      %153 = arith.select %152, %in_19, %cst : f32
      %154 = arith.cmpf oeq, %in, %in_16 : f32
      %155 = arith.select %154, %153, %cst : f32
      %156 = arith.mulf %155, %in_20 : f32
      %157 = arith.addf %out, %156 : f32
      linalg.yield %157 : f32
    } -> tensor<1x1x25088xf32>
    %collapsed = tensor.collapse_shape %49 [[0, 1], [2]] : tensor<1x1x25088xf32> into tensor<1x25088xf32>
    %expanded_8 = tensor.expand_shape %collapsed [[0], [1, 2, 3]] : tensor<1x25088xf32> into tensor<1x512x7x7xf32>
    %50 = tensor.empty() : tensor<1x14x14x512xf32>
    %51 = tensor.empty() : tensor<2x2xf32>
    %52 = linalg.generic {indexing_maps = [#map4, #map5, #map6, #map7, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%33, %51, %34, %expanded_8 : tensor<1x14x14x512xf32>, tensor<2x2xf32>, tensor<1x7x7x512xf32>, tensor<1x512x7x7xf32>) outs(%50 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_16: f32, %in_17: f32, %in_18: f32, %out: f32):
      %152 = arith.cmpf oge, %in, %in_17 : f32
      %153 = arith.select %152, %in_18, %cst : f32
      %154 = arith.addf %out, %153 : f32
      linalg.yield %154 : f32
    } -> tensor<1x14x14x512xf32>
    %53 = tensor.empty() : tensor<1x14x14x512xf32>
    %54 = linalg.generic {indexing_maps = [#map8, #map8, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %32, %52 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>, tensor<1x14x14x512xf32>) outs(%53 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_16: f32, %in_17: f32, %out: f32):
      %152 = arith.cmpf oeq, %in, %in_16 : f32
      %153 = arith.select %152, %in_17, %cst : f32
      linalg.yield %153 : f32
    } -> tensor<1x14x14x512xf32>
    %55 = tensor.empty() : tensor<512x3x3x512xf32>
    %56 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3 : tensor<512x3x3x512xf32>) outs(%55 : tensor<512x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x3x3x512xf32>
    %57 = tensor.empty() : tensor<512xf32>
    %58 = tensor.empty() : tensor<512x3x3x512xf32>
    %59 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%58 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %152 = linalg.index 0 : index
      %153 = linalg.index 1 : index
      %154 = arith.subi %c2, %153 : index
      %155 = linalg.index 2 : index
      %156 = linalg.index 3 : index
      %extracted = tensor.extract %56[%152, %154, %155, %156] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded = tensor.pad %54 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %60 = tensor.empty() : tensor<3x3x512x512xf32>
    %61 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%60 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %152 = linalg.index 0 : index
      %153 = linalg.index 1 : index
      %154 = linalg.index 2 : index
      %155 = linalg.index 3 : index
      %156 = arith.subi %c2, %153 : index
      %extracted = tensor.extract %59[%155, %152, %156, %154] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %62 = tensor.empty() : tensor<1x14x14x512xf32>
    %63 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%62 : tensor<1x14x14x512xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x14x14x512xf32>
    %64 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded, %61 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%63 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %152 = arith.mulf %in, %in_16 : f32
      %153 = arith.addf %out, %152 : f32
      linalg.yield %153 : f32
    } -> tensor<1x14x14x512xf32>
    %65 = tensor.empty() : tensor<1x14x14x512xf32>
    %66 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %30, %57, %64 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%65 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_16: f32, %in_17: f32, %in_18: f32, %out: f32):
      %152 = arith.addf %in_17, %in_18 : f32
      %153 = arith.cmpf oeq, %in, %in_16 : f32
      %154 = arith.select %153, %152, %cst : f32
      linalg.yield %154 : f32
    } -> tensor<1x14x14x512xf32>
    %67 = tensor.empty() : tensor<512x3x3x512xf32>
    %68 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%67 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %152 = linalg.index 0 : index
      %153 = linalg.index 1 : index
      %154 = arith.subi %c2, %153 : index
      %155 = linalg.index 2 : index
      %156 = linalg.index 3 : index
      %extracted = tensor.extract %56[%152, %154, %155, %156] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_9 = tensor.pad %66 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %69 = tensor.empty() : tensor<3x3x512x512xf32>
    %70 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%69 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %152 = linalg.index 0 : index
      %153 = linalg.index 1 : index
      %154 = linalg.index 2 : index
      %155 = linalg.index 3 : index
      %156 = arith.subi %c2, %153 : index
      %extracted = tensor.extract %68[%155, %152, %156, %154] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %71 = tensor.empty() : tensor<1x14x14x512xf32>
    %72 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%71 : tensor<1x14x14x512xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x14x14x512xf32>
    %73 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_9, %70 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%72 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %152 = arith.mulf %in, %in_16 : f32
      %153 = arith.addf %out, %152 : f32
      linalg.yield %153 : f32
    } -> tensor<1x14x14x512xf32>
    %74 = tensor.empty() : tensor<1x28x28x512xf32>
    %75 = linalg.generic {indexing_maps = [#map4, #map5, #map6, #map15, #map6, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%27, %51, %28, %57, %73 : tensor<1x28x28x512xf32>, tensor<2x2xf32>, tensor<1x14x14x512xf32>, tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%74 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_16: f32, %in_17: f32, %in_18: f32, %in_19: f32, %out: f32):
      %152 = arith.addf %in_18, %in_19 : f32
      %153 = arith.cmpf oge, %in, %in_17 : f32
      %154 = arith.select %153, %152, %cst : f32
      %155 = arith.addf %out, %154 : f32
      linalg.yield %155 : f32
    } -> tensor<1x28x28x512xf32>
    %76 = tensor.empty() : tensor<1x28x28x512xf32>
    %77 = linalg.generic {indexing_maps = [#map8, #map8, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %26, %75 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x28x28x512xf32>) outs(%76 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_16: f32, %in_17: f32, %out: f32):
      %152 = arith.cmpf oeq, %in, %in_16 : f32
      %153 = arith.select %152, %in_17, %cst : f32
      linalg.yield %153 : f32
    } -> tensor<1x28x28x512xf32>
    %78 = tensor.empty() : tensor<512x3x3x512xf32>
    %79 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%78 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %152 = linalg.index 0 : index
      %153 = linalg.index 1 : index
      %154 = arith.subi %c2, %153 : index
      %155 = linalg.index 2 : index
      %156 = linalg.index 3 : index
      %extracted = tensor.extract %56[%152, %154, %155, %156] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_10 = tensor.pad %77 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %80 = tensor.empty() : tensor<3x3x512x512xf32>
    %81 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%80 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %152 = linalg.index 0 : index
      %153 = linalg.index 1 : index
      %154 = linalg.index 2 : index
      %155 = linalg.index 3 : index
      %156 = arith.subi %c2, %153 : index
      %extracted = tensor.extract %79[%155, %152, %156, %154] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %82 = tensor.empty() : tensor<1x28x28x512xf32>
    %83 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%82 : tensor<1x28x28x512xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x28x28x512xf32>
    %84 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_10, %81 : tensor<1x30x30x512xf32>, tensor<3x3x512x512xf32>) outs(%83 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %152 = arith.mulf %in, %in_16 : f32
      %153 = arith.addf %out, %152 : f32
      linalg.yield %153 : f32
    } -> tensor<1x28x28x512xf32>
    %85 = tensor.empty() : tensor<1x28x28x512xf32>
    %86 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %24, %57, %84 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%85 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_16: f32, %in_17: f32, %in_18: f32, %out: f32):
      %152 = arith.addf %in_17, %in_18 : f32
      %153 = arith.cmpf oeq, %in, %in_16 : f32
      %154 = arith.select %153, %152, %cst : f32
      linalg.yield %154 : f32
    } -> tensor<1x28x28x512xf32>
    %87 = tensor.empty() : tensor<256x3x3x512xf32>
    %88 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<512x3x3x256xf32>) outs(%87 : tensor<256x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x512xf32>
    %89 = tensor.empty() : tensor<256xf32>
    %90 = tensor.empty() : tensor<256x3x3x512xf32>
    %91 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%90 : tensor<256x3x3x512xf32>) {
    ^bb0(%out: f32):
      %152 = linalg.index 0 : index
      %153 = linalg.index 1 : index
      %154 = arith.subi %c2, %153 : index
      %155 = linalg.index 2 : index
      %156 = linalg.index 3 : index
      %extracted = tensor.extract %88[%152, %154, %155, %156] : tensor<256x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x512xf32>
    %padded_11 = tensor.pad %86 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %92 = tensor.empty() : tensor<3x3x512x256xf32>
    %93 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%92 : tensor<3x3x512x256xf32>) {
    ^bb0(%out: f32):
      %152 = linalg.index 0 : index
      %153 = linalg.index 1 : index
      %154 = linalg.index 2 : index
      %155 = linalg.index 3 : index
      %156 = arith.subi %c2, %153 : index
      %extracted = tensor.extract %91[%155, %152, %156, %154] : tensor<256x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x256xf32>
    %94 = tensor.empty() : tensor<1x28x28x256xf32>
    %95 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%94 : tensor<1x28x28x256xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x28x28x256xf32>
    %96 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_11, %93 : tensor<1x30x30x512xf32>, tensor<3x3x512x256xf32>) outs(%95 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %152 = arith.mulf %in, %in_16 : f32
      %153 = arith.addf %out, %152 : f32
      linalg.yield %153 : f32
    } -> tensor<1x28x28x256xf32>
    %97 = tensor.empty() : tensor<1x56x56x256xf32>
    %98 = linalg.generic {indexing_maps = [#map4, #map5, #map6, #map15, #map6, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%21, %51, %22, %89, %96 : tensor<1x56x56x256xf32>, tensor<2x2xf32>, tensor<1x28x28x256xf32>, tensor<256xf32>, tensor<1x28x28x256xf32>) outs(%97 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_16: f32, %in_17: f32, %in_18: f32, %in_19: f32, %out: f32):
      %152 = arith.addf %in_18, %in_19 : f32
      %153 = arith.cmpf oge, %in, %in_17 : f32
      %154 = arith.select %153, %152, %cst : f32
      %155 = arith.addf %out, %154 : f32
      linalg.yield %155 : f32
    } -> tensor<1x56x56x256xf32>
    %99 = tensor.empty() : tensor<1x56x56x256xf32>
    %100 = linalg.generic {indexing_maps = [#map8, #map8, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %20, %98 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<1x56x56x256xf32>) outs(%99 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_16: f32, %in_17: f32, %out: f32):
      %152 = arith.cmpf oeq, %in, %in_16 : f32
      %153 = arith.select %152, %in_17, %cst : f32
      linalg.yield %153 : f32
    } -> tensor<1x56x56x256xf32>
    %101 = tensor.empty() : tensor<256x3x3x256xf32>
    %102 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<256x3x3x256xf32>) outs(%101 : tensor<256x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x256xf32>
    %103 = tensor.empty() : tensor<256x3x3x256xf32>
    %104 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%103 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %152 = linalg.index 0 : index
      %153 = linalg.index 1 : index
      %154 = arith.subi %c2, %153 : index
      %155 = linalg.index 2 : index
      %156 = linalg.index 3 : index
      %extracted = tensor.extract %102[%152, %154, %155, %156] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_12 = tensor.pad %100 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %105 = tensor.empty() : tensor<3x3x256x256xf32>
    %106 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%105 : tensor<3x3x256x256xf32>) {
    ^bb0(%out: f32):
      %152 = linalg.index 0 : index
      %153 = linalg.index 1 : index
      %154 = linalg.index 2 : index
      %155 = linalg.index 3 : index
      %156 = arith.subi %c2, %153 : index
      %extracted = tensor.extract %104[%155, %152, %156, %154] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x256xf32>
    %107 = tensor.empty() : tensor<1x56x56x256xf32>
    %108 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%107 : tensor<1x56x56x256xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x56x56x256xf32>
    %109 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_12, %106 : tensor<1x58x58x256xf32>, tensor<3x3x256x256xf32>) outs(%108 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %152 = arith.mulf %in, %in_16 : f32
      %153 = arith.addf %out, %152 : f32
      linalg.yield %153 : f32
    } -> tensor<1x56x56x256xf32>
    %110 = tensor.empty() : tensor<1x56x56x256xf32>
    %111 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %18, %89, %109 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%110 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_16: f32, %in_17: f32, %in_18: f32, %out: f32):
      %152 = arith.addf %in_17, %in_18 : f32
      %153 = arith.cmpf oeq, %in, %in_16 : f32
      %154 = arith.select %153, %152, %cst : f32
      linalg.yield %154 : f32
    } -> tensor<1x56x56x256xf32>
    %112 = tensor.empty() : tensor<128x3x3x256xf32>
    %113 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<256x3x3x128xf32>) outs(%112 : tensor<128x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x256xf32>
    %114 = tensor.empty() : tensor<128xf32>
    %115 = tensor.empty() : tensor<128x3x3x256xf32>
    %116 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%115 : tensor<128x3x3x256xf32>) {
    ^bb0(%out: f32):
      %152 = linalg.index 0 : index
      %153 = linalg.index 1 : index
      %154 = arith.subi %c2, %153 : index
      %155 = linalg.index 2 : index
      %156 = linalg.index 3 : index
      %extracted = tensor.extract %113[%152, %154, %155, %156] : tensor<128x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x256xf32>
    %padded_13 = tensor.pad %111 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %117 = tensor.empty() : tensor<3x3x256x128xf32>
    %118 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%117 : tensor<3x3x256x128xf32>) {
    ^bb0(%out: f32):
      %152 = linalg.index 0 : index
      %153 = linalg.index 1 : index
      %154 = linalg.index 2 : index
      %155 = linalg.index 3 : index
      %156 = arith.subi %c2, %153 : index
      %extracted = tensor.extract %116[%155, %152, %156, %154] : tensor<128x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x128xf32>
    %119 = tensor.empty() : tensor<1x56x56x128xf32>
    %120 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%119 : tensor<1x56x56x128xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x56x56x128xf32>
    %121 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_13, %118 : tensor<1x58x58x256xf32>, tensor<3x3x256x128xf32>) outs(%120 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %152 = arith.mulf %in, %in_16 : f32
      %153 = arith.addf %out, %152 : f32
      linalg.yield %153 : f32
    } -> tensor<1x56x56x128xf32>
    %122 = tensor.empty() : tensor<1x112x112x128xf32>
    %123 = linalg.generic {indexing_maps = [#map4, #map5, #map6, #map15, #map6, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%15, %51, %16, %114, %121 : tensor<1x112x112x128xf32>, tensor<2x2xf32>, tensor<1x56x56x128xf32>, tensor<128xf32>, tensor<1x56x56x128xf32>) outs(%122 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_16: f32, %in_17: f32, %in_18: f32, %in_19: f32, %out: f32):
      %152 = arith.addf %in_18, %in_19 : f32
      %153 = arith.cmpf oge, %in, %in_17 : f32
      %154 = arith.select %153, %152, %cst : f32
      %155 = arith.addf %out, %154 : f32
      linalg.yield %155 : f32
    } -> tensor<1x112x112x128xf32>
    %124 = tensor.empty() : tensor<1x112x112x128xf32>
    %125 = linalg.generic {indexing_maps = [#map8, #map8, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13, %14, %123 : tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>, tensor<1x112x112x128xf32>) outs(%124 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_16: f32, %in_17: f32, %out: f32):
      %152 = arith.cmpf oeq, %in, %in_16 : f32
      %153 = arith.select %152, %in_17, %cst : f32
      linalg.yield %153 : f32
    } -> tensor<1x112x112x128xf32>
    %126 = tensor.empty() : tensor<64x3x3x128xf32>
    %127 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<128x3x3x64xf32>) outs(%126 : tensor<64x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x128xf32>
    %128 = tensor.empty() : tensor<64xf32>
    %129 = tensor.empty() : tensor<64x3x3x128xf32>
    %130 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%129 : tensor<64x3x3x128xf32>) {
    ^bb0(%out: f32):
      %152 = linalg.index 0 : index
      %153 = linalg.index 1 : index
      %154 = arith.subi %c2, %153 : index
      %155 = linalg.index 2 : index
      %156 = linalg.index 3 : index
      %extracted = tensor.extract %127[%152, %154, %155, %156] : tensor<64x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x128xf32>
    %padded_14 = tensor.pad %125 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x128xf32> to tensor<1x114x114x128xf32>
    %131 = tensor.empty() : tensor<3x3x128x64xf32>
    %132 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%131 : tensor<3x3x128x64xf32>) {
    ^bb0(%out: f32):
      %152 = linalg.index 0 : index
      %153 = linalg.index 1 : index
      %154 = linalg.index 2 : index
      %155 = linalg.index 3 : index
      %156 = arith.subi %c2, %153 : index
      %extracted = tensor.extract %130[%155, %152, %156, %154] : tensor<64x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x128x64xf32>
    %133 = tensor.empty() : tensor<1x112x112x64xf32>
    %134 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%133 : tensor<1x112x112x64xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x112x112x64xf32>
    %135 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_14, %132 : tensor<1x114x114x128xf32>, tensor<3x3x128x64xf32>) outs(%134 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %152 = arith.mulf %in, %in_16 : f32
      %153 = arith.addf %out, %152 : f32
      linalg.yield %153 : f32
    } -> tensor<1x112x112x64xf32>
    %136 = tensor.empty() : tensor<1x224x224x64xf32>
    %137 = linalg.generic {indexing_maps = [#map4, #map5, #map6, #map15, #map6, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%11, %51, %12, %128, %135 : tensor<1x224x224x64xf32>, tensor<2x2xf32>, tensor<1x112x112x64xf32>, tensor<64xf32>, tensor<1x112x112x64xf32>) outs(%136 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_16: f32, %in_17: f32, %in_18: f32, %in_19: f32, %out: f32):
      %152 = arith.addf %in_18, %in_19 : f32
      %153 = arith.cmpf oge, %in, %in_17 : f32
      %154 = arith.select %153, %152, %cst : f32
      %155 = arith.addf %out, %154 : f32
      linalg.yield %155 : f32
    } -> tensor<1x224x224x64xf32>
    %138 = tensor.empty() : tensor<1x224x224x64xf32>
    %139 = linalg.generic {indexing_maps = [#map8, #map8, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %10, %137 : tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>, tensor<1x224x224x64xf32>) outs(%138 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_16: f32, %in_17: f32, %out: f32):
      %152 = arith.cmpf oeq, %in, %in_16 : f32
      %153 = arith.select %152, %in_17, %cst : f32
      linalg.yield %153 : f32
    } -> tensor<1x224x224x64xf32>
    %140 = tensor.empty() : tensor<3x3x3x64xf32>
    %141 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<64x3x3x3xf32>) outs(%140 : tensor<3x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x3x64xf32>
    %142 = tensor.empty() : tensor<3xf32>
    %143 = tensor.empty() : tensor<3x3x3x64xf32>
    %144 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%143 : tensor<3x3x3x64xf32>) {
    ^bb0(%out: f32):
      %152 = linalg.index 0 : index
      %153 = linalg.index 1 : index
      %154 = arith.subi %c2, %153 : index
      %155 = linalg.index 2 : index
      %156 = linalg.index 3 : index
      %extracted = tensor.extract %141[%152, %154, %155, %156] : tensor<3x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x3x64xf32>
    %padded_15 = tensor.pad %139 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x224x224x64xf32> to tensor<1x226x226x64xf32>
    %145 = tensor.empty() : tensor<3x3x64x3xf32>
    %146 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%145 : tensor<3x3x64x3xf32>) {
    ^bb0(%out: f32):
      %152 = linalg.index 0 : index
      %153 = linalg.index 1 : index
      %154 = linalg.index 2 : index
      %155 = linalg.index 3 : index
      %156 = arith.subi %c2, %153 : index
      %extracted = tensor.extract %144[%155, %152, %156, %154] : tensor<3x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x64x3xf32>
    %147 = tensor.empty() : tensor<1x224x224x3xf32>
    %148 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%147 : tensor<1x224x224x3xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x224x224x3xf32>
    %149 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_15, %146 : tensor<1x226x226x64xf32>, tensor<3x3x64x3xf32>) outs(%148 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %152 = arith.mulf %in, %in_16 : f32
      %153 = arith.addf %out, %152 : f32
      linalg.yield %153 : f32
    } -> tensor<1x224x224x3xf32>
    %150 = tensor.empty() : tensor<1x3x224x224xf32>
    %151 = linalg.generic {indexing_maps = [#map16, #map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142, %149 : tensor<3xf32>, tensor<1x224x224x3xf32>) outs(%150 : tensor<1x3x224x224xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %152 = arith.addf %in, %in_16 : f32
      linalg.yield %152 : f32
    } -> tensor<1x3x224x224xf32>
    return %151 : tensor<1x3x224x224xf32>
  }
}

