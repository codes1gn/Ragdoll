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
    %47 = tensor.empty() : tensor<1x1x4096xf32>
    %48 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel"]} outs(%47 : tensor<1x1x4096xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x1x4096xf32>
    %49 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded, %0 : tensor<1x1x1000xf32>, tensor<1x4096x1000xf32>) outs(%48 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %180 = arith.mulf %in, %in_18 : f32
      %181 = arith.addf %out, %180 : f32
      linalg.yield %181 : f32
    } -> tensor<1x1x4096xf32>
    %expanded_0 = tensor.expand_shape %45 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_1 = tensor.expand_shape %46 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_2 = tensor.expand_shape %44 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_3 = tensor.expand_shape %45 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %50 = tensor.empty() : tensor<1x1x4096xf32>
    %51 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel"]} outs(%50 : tensor<1x1x4096xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x1x4096xf32>
    %52 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1, #map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded_2, %expanded_3, %expanded_0, %expanded_1, %49, %1 : tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) outs(%51 : tensor<1x1x4096xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %in_20: f32, %in_21: f32, %in_22: f32, %out: f32):
      %180 = arith.cmpf oeq, %in_19, %in_20 : f32
      %181 = arith.select %180, %in_21, %cst : f32
      %182 = arith.cmpf oeq, %in, %in_18 : f32
      %183 = arith.select %182, %181, %cst : f32
      %184 = arith.mulf %183, %in_22 : f32
      %185 = arith.addf %out, %184 : f32
      linalg.yield %185 : f32
    } -> tensor<1x1x4096xf32>
    %expanded_4 = tensor.expand_shape %42 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_5 = tensor.expand_shape %43 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_6 = tensor.expand_shape %41 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %expanded_7 = tensor.expand_shape %42 [[0, 1], [2]] : tensor<1x4096xf32> into tensor<1x1x4096xf32>
    %53 = tensor.empty() : tensor<1x1x25088xf32>
    %54 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel"]} outs(%53 : tensor<1x1x25088xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x1x25088xf32>
    %55 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1, #map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%expanded_6, %expanded_7, %expanded_4, %expanded_5, %52, %2 : tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x1x4096xf32>, tensor<1x25088x4096xf32>) outs(%54 : tensor<1x1x25088xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %in_20: f32, %in_21: f32, %in_22: f32, %out: f32):
      %180 = arith.cmpf oeq, %in_19, %in_20 : f32
      %181 = arith.select %180, %in_21, %cst : f32
      %182 = arith.cmpf oeq, %in, %in_18 : f32
      %183 = arith.select %182, %181, %cst : f32
      %184 = arith.mulf %183, %in_22 : f32
      %185 = arith.addf %out, %184 : f32
      linalg.yield %185 : f32
    } -> tensor<1x1x25088xf32>
    %collapsed = tensor.collapse_shape %55 [[0, 1], [2]] : tensor<1x1x25088xf32> into tensor<1x25088xf32>
    %expanded_8 = tensor.expand_shape %collapsed [[0], [1, 2, 3]] : tensor<1x25088xf32> into tensor<1x512x7x7xf32>
    %56 = tensor.empty() : tensor<1x14x14x512xf32>
    %57 = tensor.empty() : tensor<2x2xf32>
    %58 = linalg.generic {indexing_maps = [#map4, #map5, #map6, #map7, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%39, %57, %40, %expanded_8 : tensor<1x14x14x512xf32>, tensor<2x2xf32>, tensor<1x7x7x512xf32>, tensor<1x512x7x7xf32>) outs(%56 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %in_20: f32, %out: f32):
      %180 = arith.cmpf oge, %in, %in_19 : f32
      %181 = arith.select %180, %in_20, %cst : f32
      %182 = arith.addf %out, %181 : f32
      linalg.yield %182 : f32
    } -> tensor<1x14x14x512xf32>
    %59 = tensor.empty() : tensor<1x14x14x512xf32>
    %60 = linalg.generic {indexing_maps = [#map8, #map8, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %38, %58 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>, tensor<1x14x14x512xf32>) outs(%59 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %out: f32):
      %180 = arith.cmpf oeq, %in, %in_18 : f32
      %181 = arith.select %180, %in_19, %cst : f32
      linalg.yield %181 : f32
    } -> tensor<1x14x14x512xf32>
    %61 = tensor.empty() : tensor<512x3x3x512xf32>
    %62 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3 : tensor<512x3x3x512xf32>) outs(%61 : tensor<512x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x3x3x512xf32>
    %63 = tensor.empty() : tensor<512xf32>
    %64 = tensor.empty() : tensor<512x3x3x512xf32>
    %65 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%64 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %180 = linalg.index 0 : index
      %181 = linalg.index 1 : index
      %182 = arith.subi %c2, %181 : index
      %183 = linalg.index 2 : index
      %184 = linalg.index 3 : index
      %extracted = tensor.extract %62[%180, %182, %183, %184] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded = tensor.pad %60 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %66 = tensor.empty() : tensor<3x3x512x512xf32>
    %67 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%66 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %180 = linalg.index 0 : index
      %181 = linalg.index 1 : index
      %182 = linalg.index 2 : index
      %183 = linalg.index 3 : index
      %184 = arith.subi %c2, %181 : index
      %extracted = tensor.extract %65[%183, %180, %184, %182] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %68 = tensor.empty() : tensor<1x14x14x512xf32>
    %69 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%68 : tensor<1x14x14x512xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x14x14x512xf32>
    %70 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded, %67 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%69 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %180 = arith.mulf %in, %in_18 : f32
      %181 = arith.addf %out, %180 : f32
      linalg.yield %181 : f32
    } -> tensor<1x14x14x512xf32>
    %71 = tensor.empty() : tensor<1x14x14x512xf32>
    %72 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %36, %63, %70 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%71 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %in_20: f32, %out: f32):
      %180 = arith.addf %in_19, %in_20 : f32
      %181 = arith.cmpf oeq, %in, %in_18 : f32
      %182 = arith.select %181, %180, %cst : f32
      linalg.yield %182 : f32
    } -> tensor<1x14x14x512xf32>
    %73 = tensor.empty() : tensor<512x3x3x512xf32>
    %74 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%73 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %180 = linalg.index 0 : index
      %181 = linalg.index 1 : index
      %182 = arith.subi %c2, %181 : index
      %183 = linalg.index 2 : index
      %184 = linalg.index 3 : index
      %extracted = tensor.extract %62[%180, %182, %183, %184] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_9 = tensor.pad %72 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %75 = tensor.empty() : tensor<3x3x512x512xf32>
    %76 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%75 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %180 = linalg.index 0 : index
      %181 = linalg.index 1 : index
      %182 = linalg.index 2 : index
      %183 = linalg.index 3 : index
      %184 = arith.subi %c2, %181 : index
      %extracted = tensor.extract %74[%183, %180, %184, %182] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %77 = tensor.empty() : tensor<1x14x14x512xf32>
    %78 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%77 : tensor<1x14x14x512xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x14x14x512xf32>
    %79 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_9, %76 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%78 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %180 = arith.mulf %in, %in_18 : f32
      %181 = arith.addf %out, %180 : f32
      linalg.yield %181 : f32
    } -> tensor<1x14x14x512xf32>
    %80 = tensor.empty() : tensor<1x28x28x512xf32>
    %81 = linalg.generic {indexing_maps = [#map4, #map5, #map6, #map15, #map6, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%33, %57, %34, %63, %79 : tensor<1x28x28x512xf32>, tensor<2x2xf32>, tensor<1x14x14x512xf32>, tensor<512xf32>, tensor<1x14x14x512xf32>) outs(%80 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %in_20: f32, %in_21: f32, %out: f32):
      %180 = arith.addf %in_20, %in_21 : f32
      %181 = arith.cmpf oge, %in, %in_19 : f32
      %182 = arith.select %181, %180, %cst : f32
      %183 = arith.addf %out, %182 : f32
      linalg.yield %183 : f32
    } -> tensor<1x28x28x512xf32>
    %82 = tensor.empty() : tensor<1x28x28x512xf32>
    %83 = linalg.generic {indexing_maps = [#map8, #map8, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %32, %81 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x28x28x512xf32>) outs(%82 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %out: f32):
      %180 = arith.cmpf oeq, %in, %in_18 : f32
      %181 = arith.select %180, %in_19, %cst : f32
      linalg.yield %181 : f32
    } -> tensor<1x28x28x512xf32>
    %84 = tensor.empty() : tensor<512x3x3x512xf32>
    %85 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%84 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %180 = linalg.index 0 : index
      %181 = linalg.index 1 : index
      %182 = arith.subi %c2, %181 : index
      %183 = linalg.index 2 : index
      %184 = linalg.index 3 : index
      %extracted = tensor.extract %62[%180, %182, %183, %184] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_10 = tensor.pad %83 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %86 = tensor.empty() : tensor<3x3x512x512xf32>
    %87 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%86 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %180 = linalg.index 0 : index
      %181 = linalg.index 1 : index
      %182 = linalg.index 2 : index
      %183 = linalg.index 3 : index
      %184 = arith.subi %c2, %181 : index
      %extracted = tensor.extract %85[%183, %180, %184, %182] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %88 = tensor.empty() : tensor<1x28x28x512xf32>
    %89 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%88 : tensor<1x28x28x512xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x28x28x512xf32>
    %90 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_10, %87 : tensor<1x30x30x512xf32>, tensor<3x3x512x512xf32>) outs(%89 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %180 = arith.mulf %in, %in_18 : f32
      %181 = arith.addf %out, %180 : f32
      linalg.yield %181 : f32
    } -> tensor<1x28x28x512xf32>
    %91 = tensor.empty() : tensor<1x28x28x512xf32>
    %92 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %30, %63, %90 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%91 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %in_20: f32, %out: f32):
      %180 = arith.addf %in_19, %in_20 : f32
      %181 = arith.cmpf oeq, %in, %in_18 : f32
      %182 = arith.select %181, %180, %cst : f32
      linalg.yield %182 : f32
    } -> tensor<1x28x28x512xf32>
    %93 = tensor.empty() : tensor<256x3x3x512xf32>
    %94 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<512x3x3x256xf32>) outs(%93 : tensor<256x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x512xf32>
    %95 = tensor.empty() : tensor<256xf32>
    %96 = tensor.empty() : tensor<256x3x3x512xf32>
    %97 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%96 : tensor<256x3x3x512xf32>) {
    ^bb0(%out: f32):
      %180 = linalg.index 0 : index
      %181 = linalg.index 1 : index
      %182 = arith.subi %c2, %181 : index
      %183 = linalg.index 2 : index
      %184 = linalg.index 3 : index
      %extracted = tensor.extract %94[%180, %182, %183, %184] : tensor<256x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x512xf32>
    %padded_11 = tensor.pad %92 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x512xf32> to tensor<1x30x30x512xf32>
    %98 = tensor.empty() : tensor<3x3x512x256xf32>
    %99 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%98 : tensor<3x3x512x256xf32>) {
    ^bb0(%out: f32):
      %180 = linalg.index 0 : index
      %181 = linalg.index 1 : index
      %182 = linalg.index 2 : index
      %183 = linalg.index 3 : index
      %184 = arith.subi %c2, %181 : index
      %extracted = tensor.extract %97[%183, %180, %184, %182] : tensor<256x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x256xf32>
    %100 = tensor.empty() : tensor<1x28x28x256xf32>
    %101 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%100 : tensor<1x28x28x256xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x28x28x256xf32>
    %102 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_11, %99 : tensor<1x30x30x512xf32>, tensor<3x3x512x256xf32>) outs(%101 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %180 = arith.mulf %in, %in_18 : f32
      %181 = arith.addf %out, %180 : f32
      linalg.yield %181 : f32
    } -> tensor<1x28x28x256xf32>
    %103 = tensor.empty() : tensor<1x56x56x256xf32>
    %104 = linalg.generic {indexing_maps = [#map4, #map5, #map6, #map15, #map6, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%27, %57, %28, %95, %102 : tensor<1x56x56x256xf32>, tensor<2x2xf32>, tensor<1x28x28x256xf32>, tensor<256xf32>, tensor<1x28x28x256xf32>) outs(%103 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %in_20: f32, %in_21: f32, %out: f32):
      %180 = arith.addf %in_20, %in_21 : f32
      %181 = arith.cmpf oge, %in, %in_19 : f32
      %182 = arith.select %181, %180, %cst : f32
      %183 = arith.addf %out, %182 : f32
      linalg.yield %183 : f32
    } -> tensor<1x56x56x256xf32>
    %105 = tensor.empty() : tensor<1x56x56x256xf32>
    %106 = linalg.generic {indexing_maps = [#map8, #map8, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %26, %104 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<1x56x56x256xf32>) outs(%105 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %out: f32):
      %180 = arith.cmpf oeq, %in, %in_18 : f32
      %181 = arith.select %180, %in_19, %cst : f32
      linalg.yield %181 : f32
    } -> tensor<1x56x56x256xf32>
    %107 = tensor.empty() : tensor<256x3x3x256xf32>
    %108 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<256x3x3x256xf32>) outs(%107 : tensor<256x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x256xf32>
    %109 = tensor.empty() : tensor<256x3x3x256xf32>
    %110 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%109 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %180 = linalg.index 0 : index
      %181 = linalg.index 1 : index
      %182 = arith.subi %c2, %181 : index
      %183 = linalg.index 2 : index
      %184 = linalg.index 3 : index
      %extracted = tensor.extract %108[%180, %182, %183, %184] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_12 = tensor.pad %106 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %111 = tensor.empty() : tensor<3x3x256x256xf32>
    %112 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%111 : tensor<3x3x256x256xf32>) {
    ^bb0(%out: f32):
      %180 = linalg.index 0 : index
      %181 = linalg.index 1 : index
      %182 = linalg.index 2 : index
      %183 = linalg.index 3 : index
      %184 = arith.subi %c2, %181 : index
      %extracted = tensor.extract %110[%183, %180, %184, %182] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x256xf32>
    %113 = tensor.empty() : tensor<1x56x56x256xf32>
    %114 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%113 : tensor<1x56x56x256xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x56x56x256xf32>
    %115 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_12, %112 : tensor<1x58x58x256xf32>, tensor<3x3x256x256xf32>) outs(%114 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %180 = arith.mulf %in, %in_18 : f32
      %181 = arith.addf %out, %180 : f32
      linalg.yield %181 : f32
    } -> tensor<1x56x56x256xf32>
    %116 = tensor.empty() : tensor<1x56x56x256xf32>
    %117 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %24, %95, %115 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%116 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %in_20: f32, %out: f32):
      %180 = arith.addf %in_19, %in_20 : f32
      %181 = arith.cmpf oeq, %in, %in_18 : f32
      %182 = arith.select %181, %180, %cst : f32
      linalg.yield %182 : f32
    } -> tensor<1x56x56x256xf32>
    %118 = tensor.empty() : tensor<128x3x3x256xf32>
    %119 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<256x3x3x128xf32>) outs(%118 : tensor<128x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x256xf32>
    %120 = tensor.empty() : tensor<128xf32>
    %121 = tensor.empty() : tensor<128x3x3x256xf32>
    %122 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%121 : tensor<128x3x3x256xf32>) {
    ^bb0(%out: f32):
      %180 = linalg.index 0 : index
      %181 = linalg.index 1 : index
      %182 = arith.subi %c2, %181 : index
      %183 = linalg.index 2 : index
      %184 = linalg.index 3 : index
      %extracted = tensor.extract %119[%180, %182, %183, %184] : tensor<128x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x256xf32>
    %padded_13 = tensor.pad %117 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x256xf32> to tensor<1x58x58x256xf32>
    %123 = tensor.empty() : tensor<3x3x256x128xf32>
    %124 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%123 : tensor<3x3x256x128xf32>) {
    ^bb0(%out: f32):
      %180 = linalg.index 0 : index
      %181 = linalg.index 1 : index
      %182 = linalg.index 2 : index
      %183 = linalg.index 3 : index
      %184 = arith.subi %c2, %181 : index
      %extracted = tensor.extract %122[%183, %180, %184, %182] : tensor<128x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x128xf32>
    %125 = tensor.empty() : tensor<1x56x56x128xf32>
    %126 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%125 : tensor<1x56x56x128xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x56x56x128xf32>
    %127 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_13, %124 : tensor<1x58x58x256xf32>, tensor<3x3x256x128xf32>) outs(%126 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %180 = arith.mulf %in, %in_18 : f32
      %181 = arith.addf %out, %180 : f32
      linalg.yield %181 : f32
    } -> tensor<1x56x56x128xf32>
    %128 = tensor.empty() : tensor<1x112x112x128xf32>
    %129 = linalg.generic {indexing_maps = [#map4, #map5, #map6, #map15, #map6, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%21, %57, %22, %120, %127 : tensor<1x112x112x128xf32>, tensor<2x2xf32>, tensor<1x56x56x128xf32>, tensor<128xf32>, tensor<1x56x56x128xf32>) outs(%128 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %in_20: f32, %in_21: f32, %out: f32):
      %180 = arith.addf %in_20, %in_21 : f32
      %181 = arith.cmpf oge, %in, %in_19 : f32
      %182 = arith.select %181, %180, %cst : f32
      %183 = arith.addf %out, %182 : f32
      linalg.yield %183 : f32
    } -> tensor<1x112x112x128xf32>
    %130 = tensor.empty() : tensor<1x112x112x128xf32>
    %131 = linalg.generic {indexing_maps = [#map8, #map8, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %20, %129 : tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>, tensor<1x112x112x128xf32>) outs(%130 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %out: f32):
      %180 = arith.cmpf oeq, %in, %in_18 : f32
      %181 = arith.select %180, %in_19, %cst : f32
      linalg.yield %181 : f32
    } -> tensor<1x112x112x128xf32>
    %132 = tensor.empty() : tensor<128x3x3x128xf32>
    %133 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<128x3x3x128xf32>) outs(%132 : tensor<128x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x128xf32>
    %134 = tensor.empty() : tensor<128x3x3x128xf32>
    %135 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%134 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %180 = linalg.index 0 : index
      %181 = linalg.index 1 : index
      %182 = arith.subi %c2, %181 : index
      %183 = linalg.index 2 : index
      %184 = linalg.index 3 : index
      %extracted = tensor.extract %133[%180, %182, %183, %184] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %padded_14 = tensor.pad %131 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x128xf32> to tensor<1x114x114x128xf32>
    %136 = tensor.empty() : tensor<3x3x128x128xf32>
    %137 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%136 : tensor<3x3x128x128xf32>) {
    ^bb0(%out: f32):
      %180 = linalg.index 0 : index
      %181 = linalg.index 1 : index
      %182 = linalg.index 2 : index
      %183 = linalg.index 3 : index
      %184 = arith.subi %c2, %181 : index
      %extracted = tensor.extract %135[%183, %180, %184, %182] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x128x128xf32>
    %138 = tensor.empty() : tensor<1x112x112x128xf32>
    %139 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%138 : tensor<1x112x112x128xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x112x112x128xf32>
    %140 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_14, %137 : tensor<1x114x114x128xf32>, tensor<3x3x128x128xf32>) outs(%139 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %180 = arith.mulf %in, %in_18 : f32
      %181 = arith.addf %out, %180 : f32
      linalg.yield %181 : f32
    } -> tensor<1x112x112x128xf32>
    %141 = tensor.empty() : tensor<1x112x112x128xf32>
    %142 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %18, %120, %140 : tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>, tensor<128xf32>, tensor<1x112x112x128xf32>) outs(%141 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %in_20: f32, %out: f32):
      %180 = arith.addf %in_19, %in_20 : f32
      %181 = arith.cmpf oeq, %in, %in_18 : f32
      %182 = arith.select %181, %180, %cst : f32
      linalg.yield %182 : f32
    } -> tensor<1x112x112x128xf32>
    %143 = tensor.empty() : tensor<64x3x3x128xf32>
    %144 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<128x3x3x64xf32>) outs(%143 : tensor<64x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x128xf32>
    %145 = tensor.empty() : tensor<64xf32>
    %146 = tensor.empty() : tensor<64x3x3x128xf32>
    %147 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%146 : tensor<64x3x3x128xf32>) {
    ^bb0(%out: f32):
      %180 = linalg.index 0 : index
      %181 = linalg.index 1 : index
      %182 = arith.subi %c2, %181 : index
      %183 = linalg.index 2 : index
      %184 = linalg.index 3 : index
      %extracted = tensor.extract %144[%180, %182, %183, %184] : tensor<64x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x128xf32>
    %padded_15 = tensor.pad %142 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x128xf32> to tensor<1x114x114x128xf32>
    %148 = tensor.empty() : tensor<3x3x128x64xf32>
    %149 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%148 : tensor<3x3x128x64xf32>) {
    ^bb0(%out: f32):
      %180 = linalg.index 0 : index
      %181 = linalg.index 1 : index
      %182 = linalg.index 2 : index
      %183 = linalg.index 3 : index
      %184 = arith.subi %c2, %181 : index
      %extracted = tensor.extract %147[%183, %180, %184, %182] : tensor<64x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x128x64xf32>
    %150 = tensor.empty() : tensor<1x112x112x64xf32>
    %151 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%150 : tensor<1x112x112x64xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x112x112x64xf32>
    %152 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_15, %149 : tensor<1x114x114x128xf32>, tensor<3x3x128x64xf32>) outs(%151 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %180 = arith.mulf %in, %in_18 : f32
      %181 = arith.addf %out, %180 : f32
      linalg.yield %181 : f32
    } -> tensor<1x112x112x64xf32>
    %153 = tensor.empty() : tensor<1x224x224x64xf32>
    %154 = linalg.generic {indexing_maps = [#map4, #map5, #map6, #map15, #map6, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%15, %57, %16, %145, %152 : tensor<1x224x224x64xf32>, tensor<2x2xf32>, tensor<1x112x112x64xf32>, tensor<64xf32>, tensor<1x112x112x64xf32>) outs(%153 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %in_20: f32, %in_21: f32, %out: f32):
      %180 = arith.addf %in_20, %in_21 : f32
      %181 = arith.cmpf oge, %in, %in_19 : f32
      %182 = arith.select %181, %180, %cst : f32
      %183 = arith.addf %out, %182 : f32
      linalg.yield %183 : f32
    } -> tensor<1x224x224x64xf32>
    %155 = tensor.empty() : tensor<1x224x224x64xf32>
    %156 = linalg.generic {indexing_maps = [#map8, #map8, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13, %14, %154 : tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>, tensor<1x224x224x64xf32>) outs(%155 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %out: f32):
      %180 = arith.cmpf oeq, %in, %in_18 : f32
      %181 = arith.select %180, %in_19, %cst : f32
      linalg.yield %181 : f32
    } -> tensor<1x224x224x64xf32>
    %157 = tensor.empty() : tensor<64x3x3x64xf32>
    %158 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<64x3x3x64xf32>) outs(%157 : tensor<64x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x64xf32>
    %159 = tensor.empty() : tensor<64x3x3x64xf32>
    %160 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%159 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %180 = linalg.index 0 : index
      %181 = linalg.index 1 : index
      %182 = arith.subi %c2, %181 : index
      %183 = linalg.index 2 : index
      %184 = linalg.index 3 : index
      %extracted = tensor.extract %158[%180, %182, %183, %184] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %padded_16 = tensor.pad %156 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x224x224x64xf32> to tensor<1x226x226x64xf32>
    %161 = tensor.empty() : tensor<3x3x64x64xf32>
    %162 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%161 : tensor<3x3x64x64xf32>) {
    ^bb0(%out: f32):
      %180 = linalg.index 0 : index
      %181 = linalg.index 1 : index
      %182 = linalg.index 2 : index
      %183 = linalg.index 3 : index
      %184 = arith.subi %c2, %181 : index
      %extracted = tensor.extract %160[%183, %180, %184, %182] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x64x64xf32>
    %163 = tensor.empty() : tensor<1x224x224x64xf32>
    %164 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%163 : tensor<1x224x224x64xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x224x224x64xf32>
    %165 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_16, %162 : tensor<1x226x226x64xf32>, tensor<3x3x64x64xf32>) outs(%164 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %180 = arith.mulf %in, %in_18 : f32
      %181 = arith.addf %out, %180 : f32
      linalg.yield %181 : f32
    } -> tensor<1x224x224x64xf32>
    %166 = tensor.empty() : tensor<1x224x224x64xf32>
    %167 = linalg.generic {indexing_maps = [#map8, #map8, #map14, #map9, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %12, %145, %165 : tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>, tensor<64xf32>, tensor<1x224x224x64xf32>) outs(%166 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_18: f32, %in_19: f32, %in_20: f32, %out: f32):
      %180 = arith.addf %in_19, %in_20 : f32
      %181 = arith.cmpf oeq, %in, %in_18 : f32
      %182 = arith.select %181, %180, %cst : f32
      linalg.yield %182 : f32
    } -> tensor<1x224x224x64xf32>
    %168 = tensor.empty() : tensor<3x3x3x64xf32>
    %169 = linalg.generic {indexing_maps = [#map10, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<64x3x3x3xf32>) outs(%168 : tensor<3x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x3x64xf32>
    %170 = tensor.empty() : tensor<3xf32>
    %171 = tensor.empty() : tensor<3x3x3x64xf32>
    %172 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%171 : tensor<3x3x3x64xf32>) {
    ^bb0(%out: f32):
      %180 = linalg.index 0 : index
      %181 = linalg.index 1 : index
      %182 = arith.subi %c2, %181 : index
      %183 = linalg.index 2 : index
      %184 = linalg.index 3 : index
      %extracted = tensor.extract %169[%180, %182, %183, %184] : tensor<3x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x3x64xf32>
    %padded_17 = tensor.pad %167 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x224x224x64xf32> to tensor<1x226x226x64xf32>
    %173 = tensor.empty() : tensor<3x3x64x3xf32>
    %174 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%173 : tensor<3x3x64x3xf32>) {
    ^bb0(%out: f32):
      %180 = linalg.index 0 : index
      %181 = linalg.index 1 : index
      %182 = linalg.index 2 : index
      %183 = linalg.index 3 : index
      %184 = arith.subi %c2, %181 : index
      %extracted = tensor.extract %172[%183, %180, %184, %182] : tensor<3x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x64x3xf32>
    %175 = tensor.empty() : tensor<1x224x224x3xf32>
    %176 = linalg.generic {indexing_maps = [#map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%175 : tensor<1x224x224x3xf32>) {
    ^bb0(%out: f32):
      linalg.yield %cst : f32
    } -> tensor<1x224x224x3xf32>
    %177 = linalg.generic {indexing_maps = [#map11, #map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%padded_17, %174 : tensor<1x226x226x64xf32>, tensor<3x3x64x3xf32>) outs(%176 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %180 = arith.mulf %in, %in_18 : f32
      %181 = arith.addf %out, %180 : f32
      linalg.yield %181 : f32
    } -> tensor<1x224x224x3xf32>
    %178 = tensor.empty() : tensor<1x3x224x224xf32>
    %179 = linalg.generic {indexing_maps = [#map16, #map17, #map9], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %177 : tensor<3xf32>, tensor<1x224x224x3xf32>) outs(%178 : tensor<1x3x224x224xf32>) {
    ^bb0(%in: f32, %in_18: f32, %out: f32):
      %180 = arith.addf %in, %in_18 : f32
      linalg.yield %180 : f32
    } -> tensor<1x3x224x224xf32>
    return %179 : tensor<1x3x224x224xf32>
  }
}

