#map = affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3, d1)>
#map4 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#map5 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map6 = affine_map<(d0, d1) -> (d0, d1)>
#map7 = affine_map<(d0, d1, d2) -> (d0, d2, d1)>
#map8 = affine_map<(d0, d1, d2, d3) -> (d0, d3)>
#map9 = affine_map<(d0, d1, d2, d3) -> (d0)>
#map10 = affine_map<(d0, d1, d2, d3) -> (d3, d1, d2, d0)>
#map11 = affine_map<(d0, d1, d2, d3) -> (d3, d0, d1, d2)>
#map12 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d2, d3, d0, d4, d1, d5)>
#map13 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3, d4, d5)>
#map14 = affine_map<(d0, d1) -> (d1, d0)>
#map15 = affine_map<(d0, d1) -> (d1)>
#map16 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d2, d4, d5)>
#map17 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map18 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map19 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "ResNet"} {
  ml_program.global private mutable @global335 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global334 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global326 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global325 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global318 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global317 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global309 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global308 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global301 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global300 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global286 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global285 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global282 : tensor<1x512x1x1xf32>
  ml_program.global private mutable @global276 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global275 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global267 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global266 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global259 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global258 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global250 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global249 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global242 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global241 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global233 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global232 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global225 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global224 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global216 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global215 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global208 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global207 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global199 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global198 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global191 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global190 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global176 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global175 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global172 : tensor<1x256x1x1xf32>
  ml_program.global private mutable @global166 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global165 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global157 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global156 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global149 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global148 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global140 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global139 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global132 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global131 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global123 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global122 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global115 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global114 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global100 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global99 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global96 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global90 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global89 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global81 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global80 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global73 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global72 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global64 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global63 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global56 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global55 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global47 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global46 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global39 : tensor<1x56x56x64xf32>
  ml_program.global private mutable @global38 : tensor<1x112x112x64xf32>
  ml_program.global private mutable @global37 : tensor<1x64x112x112xf32>
  ml_program.global private mutable @global36 : tensor<1x64x112x112xf32>
  ml_program.global private mutable @global33 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global27 : tensor<64x7x7x3xf32>
  ml_program.global private mutable @global26 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global24 : tensor<64x3x3x64xf32>
  ml_program.global private mutable @global23 : tensor<128x3x3x64xf32>
  ml_program.global private mutable @global22 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global20 : tensor<128x3x3x128xf32>
  ml_program.global private mutable @global19 : tensor<128x1x1x64xf32>
  ml_program.global private mutable @global18 : tensor<256x3x3x128xf32>
  ml_program.global private mutable @global17 : tensor<1x256x1x1xf32>
  ml_program.global private mutable @global15 : tensor<256x3x3x256xf32>
  ml_program.global private mutable @global14 : tensor<256x1x1x128xf32>
  ml_program.global private mutable @global13 : tensor<512x3x3x256xf32>
  ml_program.global private mutable @global12 : tensor<1x512x1x1xf32>
  ml_program.global private mutable @global10 : tensor<512x3x3x512xf32>
  ml_program.global private mutable @global9 : tensor<512x1x1x256xf32>
  ml_program.global private mutable @global8 : tensor<1x512x1000xf32>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense<7.777000e-02> : tensor<1x512xf32>
    %cst_0 = arith.constant dense<7.777000e-02> : tensor<1x256xf32>
    %cst_1 = arith.constant dense<7.777000e-02> : tensor<1x128xf32>
    %cst_2 = arith.constant 3.40282347E+38 : f32
    %cst_3 = arith.constant dense<7.777000e-02> : tensor<1x64xf32>
    %cst_4 = arith.constant 4.900000e+01 : f32
    %cst_5 = arith.constant dense<7.777000e-02> : tensor<3x3x512x512xf32>
    %cst_6 = arith.constant dense<7.777000e-02> : tensor<1x1x256x512xf32>
    %cst_7 = arith.constant dense<7.777000e-02> : tensor<3x3x256x512xf32>
    %cst_8 = arith.constant dense<7.777000e-02> : tensor<3x3x256x256xf32>
    %cst_9 = arith.constant dense<7.777000e-02> : tensor<1x1x128x256xf32>
    %cst_10 = arith.constant dense<7.777000e-02> : tensor<3x3x128x256xf32>
    %cst_11 = arith.constant dense<7.777000e-02> : tensor<3x3x128x128xf32>
    %cst_12 = arith.constant dense<7.777000e-02> : tensor<1x1x64x128xf32>
    %cst_13 = arith.constant dense<7.777000e-02> : tensor<3x3x64x128xf32>
    %cst_14 = arith.constant dense<7.777000e-02> : tensor<3x3x64x64xf32>
    %cst_15 = arith.constant dense<7.777000e-02> : tensor<7x7x3x64xf32>
    %cst_16 = arith.constant -3.40282347E+38 : f32
    %cst_17 = arith.constant 0.000000e+00 : f32
    %cst_18 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_19 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_20 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_21 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_22 = arith.constant dense<7.777000e-02> : tensor<1x1000xf32>
    %cst_23 = arith.constant dense<7.777000e-02> : tensor<1x512x1000xf32>
    %cst_24 = arith.constant dense<7.777000e-02> : tensor<512x1x1x256xf32>
    %cst_25 = arith.constant dense<7.777000e-02> : tensor<512x3x3x512xf32>
    %cst_26 = arith.constant dense<7.778000e-02> : tensor<512x1x1xf32>
    %cst_27 = arith.constant dense<7.777000e-02> : tensor<1x512x1x1xf32>
    %cst_28 = arith.constant dense<7.777000e-02> : tensor<512x3x3x256xf32>
    %cst_29 = arith.constant dense<7.777000e-02> : tensor<256x1x1x128xf32>
    %cst_30 = arith.constant dense<7.777000e-02> : tensor<256x3x3x256xf32>
    %cst_31 = arith.constant dense<7.778000e-02> : tensor<256x1x1xf32>
    %cst_32 = arith.constant dense<7.777000e-02> : tensor<1x256x1x1xf32>
    %cst_33 = arith.constant dense<7.777000e-02> : tensor<256x3x3x128xf32>
    %cst_34 = arith.constant dense<7.777000e-02> : tensor<128x1x1x64xf32>
    %cst_35 = arith.constant dense<7.777000e-02> : tensor<128x3x3x128xf32>
    %cst_36 = arith.constant dense<7.778000e-02> : tensor<128x1x1xf32>
    %cst_37 = arith.constant dense<7.777000e-02> : tensor<1x128x1x1xf32>
    %cst_38 = arith.constant dense<7.777000e-02> : tensor<128x3x3x64xf32>
    %cst_39 = arith.constant dense<7.777000e-02> : tensor<64x3x3x64xf32>
    %cst_40 = arith.constant dense<7.778000e-02> : tensor<64x1x1xf32>
    %cst_41 = arith.constant dense<7.777000e-02> : tensor<1x64x1x1xf32>
    %cst_42 = arith.constant dense<7.777000e-02> : tensor<64x7x7x3xf32>
    ml_program.global_store @global8 = %cst_23 : tensor<1x512x1000xf32>
    ml_program.global_store @global9 = %cst_24 : tensor<512x1x1x256xf32>
    ml_program.global_store @global10 = %cst_25 : tensor<512x3x3x512xf32>
    ml_program.global_store @global12 = %cst_27 : tensor<1x512x1x1xf32>
    ml_program.global_store @global13 = %cst_28 : tensor<512x3x3x256xf32>
    ml_program.global_store @global14 = %cst_29 : tensor<256x1x1x128xf32>
    ml_program.global_store @global15 = %cst_30 : tensor<256x3x3x256xf32>
    ml_program.global_store @global17 = %cst_32 : tensor<1x256x1x1xf32>
    ml_program.global_store @global18 = %cst_33 : tensor<256x3x3x128xf32>
    ml_program.global_store @global19 = %cst_34 : tensor<128x1x1x64xf32>
    ml_program.global_store @global20 = %cst_35 : tensor<128x3x3x128xf32>
    ml_program.global_store @global22 = %cst_37 : tensor<1x128x1x1xf32>
    ml_program.global_store @global23 = %cst_38 : tensor<128x3x3x64xf32>
    ml_program.global_store @global24 = %cst_39 : tensor<64x3x3x64xf32>
    ml_program.global_store @global26 = %cst_41 : tensor<1x64x1x1xf32>
    ml_program.global_store @global27 = %cst_42 : tensor<64x7x7x3xf32>
    %0 = tensor.empty() : tensor<1x224x224x3xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg0 : tensor<1x3x224x224xf32>) outs(%0 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x224x224x3xf32>
    %padded = tensor.pad %1 low[0, 3, 3, 0] high[0, 3, 3, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x224x224x3xf32> to tensor<1x230x230x3xf32>
    %2 = tensor.empty() : tensor<1x112x112x64xf32>
    %3 = linalg.fill ins(%cst_17 : f32) outs(%2 : tensor<1x112x112x64xf32>) -> tensor<1x112x112x64xf32>
    %4 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded, %cst_15 : tensor<1x230x230x3xf32>, tensor<7x7x3x64xf32>) outs(%3 : tensor<1x112x112x64xf32>) -> tensor<1x112x112x64xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_18, %4 : tensor<64xf32>, tensor<1x112x112x64xf32>) outs(%2 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x112x112x64xf32>
    %6 = tensor.empty() : tensor<1x64x112x112xf32>
    %7 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<1x112x112x64xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x112x112xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %cst_3 : tensor<1x64x112x112xf32>, tensor<1x64xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x112x112xf32>
    %9 = tensor.empty() : tensor<64x1x1xf32>
    %10 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_40 : tensor<64x1x1xf32>) outs(%9 : tensor<64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = math.rsqrt %in : f32
      linalg.yield %373 : f32
    } -> tensor<64x1x1xf32>
    %expanded = tensor.expand_shape %10 [[0, 1], [2], [3]] : tensor<64x1x1xf32> into tensor<1x64x1x1xf32>
    ml_program.global_store @global33 = %expanded : tensor<1x64x1x1xf32>
    %collapsed = tensor.collapse_shape %expanded [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %11 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8, %collapsed : tensor<1x64x112x112xf32>, tensor<1x64xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x112x112xf32>
    %12 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %cst_3 : tensor<1x64x112x112xf32>, tensor<1x64xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x112x112xf32>
    %13 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12, %cst_3 : tensor<1x64x112x112xf32>, tensor<1x64xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x112x112xf32>
    ml_program.global_store @global36 = %13 : tensor<1x64x112x112xf32>
    %14 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x64x112x112xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x64x112x112xf32>
    ml_program.global_store @global37 = %14 : tensor<1x64x112x112xf32>
    %15 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<1x64x112x112xf32>) outs(%2 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x64xf32>
    ml_program.global_store @global38 = %15 : tensor<1x112x112x64xf32>
    %padded_43 = tensor.pad %15 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_16 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %16 = tensor.empty() : tensor<1x56x56x64xf32>
    %17 = linalg.fill ins(%cst_16 : f32) outs(%16 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %18 = tensor.empty() : tensor<3x3xf32>
    %19 = linalg.pooling_nhwc_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_43, %18 : tensor<1x113x113x64xf32>, tensor<3x3xf32>) outs(%17 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    ml_program.global_store @global39 = %19 : tensor<1x56x56x64xf32>
    %20 = tensor.empty() : tensor<1x64x56x56xf32>
    %21 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<1x56x56x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %padded_44 = tensor.pad %19 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %22 = linalg.fill ins(%cst_17 : f32) outs(%16 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %23 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_44, %cst_14 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%22 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_18, %23 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x56x56x64xf32>
    %25 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<1x56x56x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %26 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %27 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %28 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %29 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global46 = %29 : tensor<1x64x56x56xf32>
    %30 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29 : tensor<1x64x56x56xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global47 = %30 : tensor<1x64x56x56xf32>
    %31 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_45 = tensor.pad %31 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %32 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_45, %cst_14 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%22 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %33 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_18, %32 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x56x56x64xf32>
    %34 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33 : tensor<1x56x56x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %35 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %36 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %37 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %39 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38, %21 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global55 = %39 : tensor<1x64x56x56xf32>
    %40 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x64x56x56xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global56 = %40 : tensor<1x64x56x56xf32>
    %41 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_46 = tensor.pad %41 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %42 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_46, %cst_14 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%22 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %43 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_18, %42 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x56x56x64xf32>
    %44 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43 : tensor<1x56x56x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %45 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %46 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %47 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %48 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global63 = %48 : tensor<1x64x56x56xf32>
    %49 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<1x64x56x56xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global64 = %49 : tensor<1x64x56x56xf32>
    %50 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_47 = tensor.pad %50 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %51 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_47, %cst_14 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%22 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %52 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_18, %51 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x56x56x64xf32>
    %53 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x56x56x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %54 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %55 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %56 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %57 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %58 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %40 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global72 = %58 : tensor<1x64x56x56xf32>
    %59 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58 : tensor<1x64x56x56xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global73 = %59 : tensor<1x64x56x56xf32>
    %60 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_48 = tensor.pad %60 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %61 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_48, %cst_14 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%22 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %62 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_18, %61 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x56x56x64xf32>
    %63 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62 : tensor<1x56x56x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %64 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %65 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %66 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %67 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global80 = %67 : tensor<1x64x56x56xf32>
    %68 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67 : tensor<1x64x56x56xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global81 = %68 : tensor<1x64x56x56xf32>
    %69 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_49 = tensor.pad %69 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %70 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_49, %cst_14 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%22 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %71 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_18, %70 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x56x56x64xf32>
    %72 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71 : tensor<1x56x56x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %73 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %74 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %75 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %76 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    %77 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %59 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global89 = %77 : tensor<1x64x56x56xf32>
    %78 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77 : tensor<1x64x56x56xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global90 = %78 : tensor<1x64x56x56xf32>
    %79 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_50 = tensor.pad %79 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %80 = tensor.empty() : tensor<1x28x28x128xf32>
    %81 = linalg.fill ins(%cst_17 : f32) outs(%80 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %82 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_50, %cst_13 : tensor<1x58x58x64xf32>, tensor<3x3x64x128xf32>) outs(%81 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %83 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_19, %82 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%80 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x28x28x128xf32>
    %84 = tensor.empty() : tensor<1x128x28x28xf32>
    %85 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83 : tensor<1x28x28x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %86 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %87 = tensor.empty() : tensor<128x1x1xf32>
    %88 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_36 : tensor<128x1x1xf32>) outs(%87 : tensor<128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = math.rsqrt %in : f32
      linalg.yield %373 : f32
    } -> tensor<128x1x1xf32>
    %expanded_51 = tensor.expand_shape %88 [[0, 1], [2], [3]] : tensor<128x1x1xf32> into tensor<1x128x1x1xf32>
    ml_program.global_store @global96 = %expanded_51 : tensor<1x128x1x1xf32>
    %collapsed_52 = tensor.collapse_shape %expanded_51 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %89 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %collapsed_52 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %90 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %91 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global99 = %91 : tensor<1x128x28x28xf32>
    %92 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91 : tensor<1x128x28x28xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global100 = %92 : tensor<1x128x28x28xf32>
    %93 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92 : tensor<1x128x28x28xf32>) outs(%80 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_53 = tensor.pad %93 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %94 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_53, %cst_11 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%81 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %95 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_19, %94 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%80 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x28x28x128xf32>
    %96 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95 : tensor<1x28x28x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %97 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %98 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %collapsed_52 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %99 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %100 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %101 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%79, %cst_12 : tensor<1x56x56x64xf32>, tensor<1x1x64x128xf32>) outs(%81 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %102 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_19, %101 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%80 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x28x28x128xf32>
    %103 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102 : tensor<1x28x28x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %104 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %105 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104, %collapsed_52 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %106 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %107 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %108 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %107 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global114 = %108 : tensor<1x128x28x28xf32>
    %109 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108 : tensor<1x128x28x28xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global115 = %109 : tensor<1x128x28x28xf32>
    %110 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109 : tensor<1x128x28x28xf32>) outs(%80 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_54 = tensor.pad %110 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %111 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_54, %cst_11 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%81 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %112 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_19, %111 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%80 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x28x28x128xf32>
    %113 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112 : tensor<1x28x28x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %114 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %115 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %collapsed_52 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %116 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %117 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global122 = %117 : tensor<1x128x28x28xf32>
    %118 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117 : tensor<1x128x28x28xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global123 = %118 : tensor<1x128x28x28xf32>
    %119 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118 : tensor<1x128x28x28xf32>) outs(%80 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_55 = tensor.pad %119 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %120 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_55, %cst_11 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%81 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %121 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_19, %120 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%80 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x28x28x128xf32>
    %122 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121 : tensor<1x28x28x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %123 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %124 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123, %collapsed_52 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %125 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %126 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %127 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126, %109 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global131 = %127 : tensor<1x128x28x28xf32>
    %128 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127 : tensor<1x128x28x28xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global132 = %128 : tensor<1x128x28x28xf32>
    %129 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128 : tensor<1x128x28x28xf32>) outs(%80 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_56 = tensor.pad %129 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %130 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_56, %cst_11 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%81 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %131 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_19, %130 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%80 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x28x28x128xf32>
    %132 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131 : tensor<1x28x28x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %133 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %134 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133, %collapsed_52 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %135 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %136 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global139 = %136 : tensor<1x128x28x28xf32>
    %137 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136 : tensor<1x128x28x28xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global140 = %137 : tensor<1x128x28x28xf32>
    %138 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137 : tensor<1x128x28x28xf32>) outs(%80 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_57 = tensor.pad %138 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %139 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_57, %cst_11 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%81 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %140 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_19, %139 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%80 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x28x28x128xf32>
    %141 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140 : tensor<1x28x28x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %142 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %143 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142, %collapsed_52 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %144 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %145 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %146 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145, %128 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global148 = %146 : tensor<1x128x28x28xf32>
    %147 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146 : tensor<1x128x28x28xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global149 = %147 : tensor<1x128x28x28xf32>
    %148 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147 : tensor<1x128x28x28xf32>) outs(%80 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_58 = tensor.pad %148 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %149 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_58, %cst_11 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%81 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_19, %149 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%80 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x28x28x128xf32>
    %151 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150 : tensor<1x28x28x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %152 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %153 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152, %collapsed_52 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %154 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %155 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global156 = %155 : tensor<1x128x28x28xf32>
    %156 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155 : tensor<1x128x28x28xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global157 = %156 : tensor<1x128x28x28xf32>
    %157 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156 : tensor<1x128x28x28xf32>) outs(%80 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_59 = tensor.pad %157 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %158 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_59, %cst_11 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%81 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %159 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_19, %158 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%80 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x28x28x128xf32>
    %160 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159 : tensor<1x28x28x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %161 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %162 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %collapsed_52 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %163 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %164 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    %165 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164, %147 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global165 = %165 : tensor<1x128x28x28xf32>
    %166 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165 : tensor<1x128x28x28xf32>) outs(%84 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global166 = %166 : tensor<1x128x28x28xf32>
    %167 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166 : tensor<1x128x28x28xf32>) outs(%80 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_60 = tensor.pad %167 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %168 = tensor.empty() : tensor<1x14x14x256xf32>
    %169 = linalg.fill ins(%cst_17 : f32) outs(%168 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %170 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_60, %cst_10 : tensor<1x30x30x128xf32>, tensor<3x3x128x256xf32>) outs(%169 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %171 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20, %170 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x14x14x256xf32>
    %172 = tensor.empty() : tensor<1x256x14x14xf32>
    %173 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171 : tensor<1x14x14x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %174 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %175 = tensor.empty() : tensor<256x1x1xf32>
    %176 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_31 : tensor<256x1x1xf32>) outs(%175 : tensor<256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = math.rsqrt %in : f32
      linalg.yield %373 : f32
    } -> tensor<256x1x1xf32>
    %expanded_61 = tensor.expand_shape %176 [[0, 1], [2], [3]] : tensor<256x1x1xf32> into tensor<1x256x1x1xf32>
    ml_program.global_store @global172 = %expanded_61 : tensor<1x256x1x1xf32>
    %collapsed_62 = tensor.collapse_shape %expanded_61 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %177 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %collapsed_62 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %178 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %179 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global175 = %179 : tensor<1x256x14x14xf32>
    %180 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179 : tensor<1x256x14x14xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global176 = %180 : tensor<1x256x14x14xf32>
    %181 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180 : tensor<1x256x14x14xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_63 = tensor.pad %181 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %182 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_63, %cst_8 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%169 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %183 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20, %182 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x14x14x256xf32>
    %184 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x14x14x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %185 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %186 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %collapsed_62 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %187 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %188 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %189 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%167, %cst_9 : tensor<1x28x28x128xf32>, tensor<1x1x128x256xf32>) outs(%169 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %190 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20, %189 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x14x14x256xf32>
    %191 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190 : tensor<1x14x14x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %192 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %193 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %collapsed_62 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %194 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%193, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %195 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %196 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %195 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global190 = %196 : tensor<1x256x14x14xf32>
    %197 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196 : tensor<1x256x14x14xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global191 = %197 : tensor<1x256x14x14xf32>
    %198 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197 : tensor<1x256x14x14xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_64 = tensor.pad %198 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %199 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_64, %cst_8 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%169 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %200 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20, %199 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x14x14x256xf32>
    %201 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200 : tensor<1x14x14x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %202 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %203 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202, %collapsed_62 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %204 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %205 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global198 = %205 : tensor<1x256x14x14xf32>
    %206 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205 : tensor<1x256x14x14xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global199 = %206 : tensor<1x256x14x14xf32>
    %207 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206 : tensor<1x256x14x14xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_65 = tensor.pad %207 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %208 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_65, %cst_8 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%169 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %209 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20, %208 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x14x14x256xf32>
    %210 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209 : tensor<1x14x14x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %211 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %212 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %collapsed_62 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %213 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %214 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %215 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214, %197 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global207 = %215 : tensor<1x256x14x14xf32>
    %216 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215 : tensor<1x256x14x14xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global208 = %216 : tensor<1x256x14x14xf32>
    %217 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216 : tensor<1x256x14x14xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_66 = tensor.pad %217 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %218 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_66, %cst_8 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%169 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %219 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20, %218 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x14x14x256xf32>
    %220 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219 : tensor<1x14x14x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %221 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %222 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221, %collapsed_62 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %223 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %224 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global215 = %224 : tensor<1x256x14x14xf32>
    %225 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224 : tensor<1x256x14x14xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global216 = %225 : tensor<1x256x14x14xf32>
    %226 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225 : tensor<1x256x14x14xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_67 = tensor.pad %226 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %227 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_67, %cst_8 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%169 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %228 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20, %227 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x14x14x256xf32>
    %229 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228 : tensor<1x14x14x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %230 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %231 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230, %collapsed_62 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %232 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %233 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %234 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233, %216 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global224 = %234 : tensor<1x256x14x14xf32>
    %235 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234 : tensor<1x256x14x14xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global225 = %235 : tensor<1x256x14x14xf32>
    %236 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235 : tensor<1x256x14x14xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_68 = tensor.pad %236 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %237 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_68, %cst_8 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%169 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %238 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20, %237 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x14x14x256xf32>
    %239 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238 : tensor<1x14x14x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %240 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %241 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240, %collapsed_62 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %242 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %243 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global232 = %243 : tensor<1x256x14x14xf32>
    %244 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243 : tensor<1x256x14x14xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global233 = %244 : tensor<1x256x14x14xf32>
    %245 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244 : tensor<1x256x14x14xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_69 = tensor.pad %245 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %246 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_69, %cst_8 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%169 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %247 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20, %246 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x14x14x256xf32>
    %248 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247 : tensor<1x14x14x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %249 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %250 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249, %collapsed_62 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %251 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %252 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %253 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252, %235 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global241 = %253 : tensor<1x256x14x14xf32>
    %254 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253 : tensor<1x256x14x14xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global242 = %254 : tensor<1x256x14x14xf32>
    %255 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254 : tensor<1x256x14x14xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_70 = tensor.pad %255 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %256 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_70, %cst_8 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%169 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %257 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20, %256 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x14x14x256xf32>
    %258 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257 : tensor<1x14x14x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %259 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %260 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259, %collapsed_62 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %261 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %262 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global249 = %262 : tensor<1x256x14x14xf32>
    %263 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262 : tensor<1x256x14x14xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global250 = %263 : tensor<1x256x14x14xf32>
    %264 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263 : tensor<1x256x14x14xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_71 = tensor.pad %264 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %265 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_71, %cst_8 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%169 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %266 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20, %265 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x14x14x256xf32>
    %267 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266 : tensor<1x14x14x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %268 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %269 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %collapsed_62 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %270 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %271 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %272 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271, %254 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global258 = %272 : tensor<1x256x14x14xf32>
    %273 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272 : tensor<1x256x14x14xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global259 = %273 : tensor<1x256x14x14xf32>
    %274 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%273 : tensor<1x256x14x14xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_72 = tensor.pad %274 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %275 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_72, %cst_8 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%169 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %276 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20, %275 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x14x14x256xf32>
    %277 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276 : tensor<1x14x14x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %278 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %279 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278, %collapsed_62 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %280 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %281 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global266 = %281 : tensor<1x256x14x14xf32>
    %282 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281 : tensor<1x256x14x14xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global267 = %282 : tensor<1x256x14x14xf32>
    %283 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282 : tensor<1x256x14x14xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_73 = tensor.pad %283 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %284 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_73, %cst_8 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%169 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %285 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20, %284 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x14x14x256xf32>
    %286 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285 : tensor<1x14x14x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %287 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%286, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %288 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %collapsed_62 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %289 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %290 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    %291 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%290, %273 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global275 = %291 : tensor<1x256x14x14xf32>
    %292 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291 : tensor<1x256x14x14xf32>) outs(%172 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global276 = %292 : tensor<1x256x14x14xf32>
    %293 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292 : tensor<1x256x14x14xf32>) outs(%168 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_74 = tensor.pad %293 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %294 = tensor.empty() : tensor<1x7x7x512xf32>
    %295 = linalg.fill ins(%cst_17 : f32) outs(%294 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %296 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_74, %cst_7 : tensor<1x16x16x256xf32>, tensor<3x3x256x512xf32>) outs(%295 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %297 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_21, %296 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%294 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x7x7x512xf32>
    %298 = tensor.empty() : tensor<1x512x7x7xf32>
    %299 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297 : tensor<1x7x7x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %300 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %301 = tensor.empty() : tensor<512x1x1xf32>
    %302 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_26 : tensor<512x1x1xf32>) outs(%301 : tensor<512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = math.rsqrt %in : f32
      linalg.yield %373 : f32
    } -> tensor<512x1x1xf32>
    %expanded_75 = tensor.expand_shape %302 [[0, 1], [2], [3]] : tensor<512x1x1xf32> into tensor<1x512x1x1xf32>
    ml_program.global_store @global282 = %expanded_75 : tensor<1x512x1x1xf32>
    %collapsed_76 = tensor.collapse_shape %expanded_75 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %303 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300, %collapsed_76 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %304 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %305 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global285 = %305 : tensor<1x512x7x7xf32>
    %306 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305 : tensor<1x512x7x7xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global286 = %306 : tensor<1x512x7x7xf32>
    %307 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306 : tensor<1x512x7x7xf32>) outs(%294 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_77 = tensor.pad %307 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %308 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_77, %cst_5 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%295 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %309 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_21, %308 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%294 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x7x7x512xf32>
    %310 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309 : tensor<1x7x7x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %311 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %312 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311, %collapsed_76 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %313 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %314 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %315 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%293, %cst_6 : tensor<1x14x14x256xf32>, tensor<1x1x256x512xf32>) outs(%295 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %316 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_21, %315 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%294 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x7x7x512xf32>
    %317 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316 : tensor<1x7x7x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %318 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %319 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318, %collapsed_76 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %320 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %321 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %322 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314, %321 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global300 = %322 : tensor<1x512x7x7xf32>
    %323 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322 : tensor<1x512x7x7xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global301 = %323 : tensor<1x512x7x7xf32>
    %324 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323 : tensor<1x512x7x7xf32>) outs(%294 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_78 = tensor.pad %324 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %325 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_78, %cst_5 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%295 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %326 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_21, %325 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%294 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x7x7x512xf32>
    %327 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326 : tensor<1x7x7x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %328 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %329 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328, %collapsed_76 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %330 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %331 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global308 = %331 : tensor<1x512x7x7xf32>
    %332 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331 : tensor<1x512x7x7xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global309 = %332 : tensor<1x512x7x7xf32>
    %333 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332 : tensor<1x512x7x7xf32>) outs(%294 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_79 = tensor.pad %333 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %334 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_79, %cst_5 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%295 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %335 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_21, %334 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%294 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x7x7x512xf32>
    %336 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335 : tensor<1x7x7x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %337 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %338 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337, %collapsed_76 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %339 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %340 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %341 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %323 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global317 = %341 : tensor<1x512x7x7xf32>
    %342 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341 : tensor<1x512x7x7xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global318 = %342 : tensor<1x512x7x7xf32>
    %343 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342 : tensor<1x512x7x7xf32>) outs(%294 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_80 = tensor.pad %343 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %344 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_80, %cst_5 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%295 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %345 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_21, %344 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%294 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x7x7x512xf32>
    %346 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345 : tensor<1x7x7x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %347 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %348 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347, %collapsed_76 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %349 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %350 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global325 = %350 : tensor<1x512x7x7xf32>
    %351 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350 : tensor<1x512x7x7xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global326 = %351 : tensor<1x512x7x7xf32>
    %352 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351 : tensor<1x512x7x7xf32>) outs(%294 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_81 = tensor.pad %352 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %353 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_81, %cst_5 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%295 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %354 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_21, %353 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%294 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x7x7x512xf32>
    %355 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354 : tensor<1x7x7x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %356 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.subf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %357 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356, %collapsed_76 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %358 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.mulf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %359 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    %360 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %342 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global334 = %360 : tensor<1x512x7x7xf32>
    %361 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360 : tensor<1x512x7x7xf32>) outs(%298 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.minf %in, %cst_2 : f32
      %374 = arith.maxf %373, %cst_17 : f32
      linalg.yield %374 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global335 = %361 : tensor<1x512x7x7xf32>
    %362 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361 : tensor<1x512x7x7xf32>) outs(%294 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %363 = tensor.empty() : tensor<1x1x1x512xf32>
    %364 = linalg.fill ins(%cst_17 : f32) outs(%363 : tensor<1x1x1x512xf32>) -> tensor<1x1x1x512xf32>
    %365 = tensor.empty() : tensor<7x7xf32>
    %366 = linalg.pooling_nhwc_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%362, %365 : tensor<1x7x7x512xf32>, tensor<7x7xf32>) outs(%364 : tensor<1x1x1x512xf32>) -> tensor<1x1x1x512xf32>
    %367 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366 : tensor<1x1x1x512xf32>) outs(%363 : tensor<1x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.divf %in, %cst_4 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1x1x512xf32>
    %collapsed_82 = tensor.collapse_shape %367 [[0], [1, 2], [3]] : tensor<1x1x1x512xf32> into tensor<1x1x512xf32>
    %368 = tensor.empty() : tensor<1x1x1000xf32>
    %369 = linalg.fill ins(%cst_17 : f32) outs(%368 : tensor<1x1x1000xf32>) -> tensor<1x1x1000xf32>
    %370 = linalg.batch_matmul ins(%collapsed_82, %cst_23 : tensor<1x1x512xf32>, tensor<1x512x1000xf32>) outs(%369 : tensor<1x1x1000xf32>) -> tensor<1x1x1000xf32>
    %collapsed_83 = tensor.collapse_shape %370 [[0, 1], [2]] : tensor<1x1x1000xf32> into tensor<1x1000xf32>
    %371 = tensor.empty() : tensor<1x1000xf32>
    %372 = linalg.generic {indexing_maps = [#map6, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%collapsed_83, %cst_22 : tensor<1x1000xf32>, tensor<1x1000xf32>) outs(%371 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %373 = arith.addf %in, %in_84 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1000xf32>
    return %372 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant dense<0.000000e+00> : tensor<1xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1024xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_2 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_3 = arith.constant dense<0.000000e+00> : tensor<12xf32>
    %cst_4 = arith.constant dense<0.0204081628> : tensor<1x7x7x512xf32>
    %cst_5 = arith.constant -3.40282347E+38 : f32
    %cst_6 = arith.constant 0.000000e+00 : f32
    %0 = ml_program.global_load @global8 : tensor<1x512x1000xf32>
    %1 = ml_program.global_load @global9 : tensor<512x1x1x256xf32>
    %2 = ml_program.global_load @global10 : tensor<512x3x3x512xf32>
    %3 = ml_program.global_load @global12 : tensor<1x512x1x1xf32>
    %4 = ml_program.global_load @global13 : tensor<512x3x3x256xf32>
    %5 = ml_program.global_load @global14 : tensor<256x1x1x128xf32>
    %6 = ml_program.global_load @global15 : tensor<256x3x3x256xf32>
    %7 = ml_program.global_load @global17 : tensor<1x256x1x1xf32>
    %8 = ml_program.global_load @global18 : tensor<256x3x3x128xf32>
    %9 = ml_program.global_load @global19 : tensor<128x1x1x64xf32>
    %10 = ml_program.global_load @global20 : tensor<128x3x3x128xf32>
    %11 = ml_program.global_load @global22 : tensor<1x128x1x1xf32>
    %12 = ml_program.global_load @global23 : tensor<128x3x3x64xf32>
    %13 = ml_program.global_load @global24 : tensor<64x3x3x64xf32>
    %14 = ml_program.global_load @global26 : tensor<1x64x1x1xf32>
    %15 = ml_program.global_load @global27 : tensor<64x7x7x3xf32>
    %16 = ml_program.global_load @global33 : tensor<1x64x1x1xf32>
    %17 = ml_program.global_load @global36 : tensor<1x64x112x112xf32>
    %18 = ml_program.global_load @global37 : tensor<1x64x112x112xf32>
    %19 = ml_program.global_load @global38 : tensor<1x112x112x64xf32>
    %20 = ml_program.global_load @global39 : tensor<1x56x56x64xf32>
    %21 = ml_program.global_load @global46 : tensor<1x64x56x56xf32>
    %22 = ml_program.global_load @global47 : tensor<1x64x56x56xf32>
    %23 = ml_program.global_load @global55 : tensor<1x64x56x56xf32>
    %24 = ml_program.global_load @global56 : tensor<1x64x56x56xf32>
    %25 = ml_program.global_load @global63 : tensor<1x64x56x56xf32>
    %26 = ml_program.global_load @global64 : tensor<1x64x56x56xf32>
    %27 = ml_program.global_load @global72 : tensor<1x64x56x56xf32>
    %28 = ml_program.global_load @global73 : tensor<1x64x56x56xf32>
    %29 = ml_program.global_load @global80 : tensor<1x64x56x56xf32>
    %30 = ml_program.global_load @global81 : tensor<1x64x56x56xf32>
    %31 = ml_program.global_load @global89 : tensor<1x64x56x56xf32>
    %32 = ml_program.global_load @global90 : tensor<1x64x56x56xf32>
    %33 = ml_program.global_load @global96 : tensor<1x128x1x1xf32>
    %34 = ml_program.global_load @global99 : tensor<1x128x28x28xf32>
    %35 = ml_program.global_load @global100 : tensor<1x128x28x28xf32>
    %36 = ml_program.global_load @global114 : tensor<1x128x28x28xf32>
    %37 = ml_program.global_load @global115 : tensor<1x128x28x28xf32>
    %38 = ml_program.global_load @global122 : tensor<1x128x28x28xf32>
    %39 = ml_program.global_load @global123 : tensor<1x128x28x28xf32>
    %40 = ml_program.global_load @global131 : tensor<1x128x28x28xf32>
    %41 = ml_program.global_load @global132 : tensor<1x128x28x28xf32>
    %42 = ml_program.global_load @global139 : tensor<1x128x28x28xf32>
    %43 = ml_program.global_load @global140 : tensor<1x128x28x28xf32>
    %44 = ml_program.global_load @global148 : tensor<1x128x28x28xf32>
    %45 = ml_program.global_load @global149 : tensor<1x128x28x28xf32>
    %46 = ml_program.global_load @global156 : tensor<1x128x28x28xf32>
    %47 = ml_program.global_load @global157 : tensor<1x128x28x28xf32>
    %48 = ml_program.global_load @global165 : tensor<1x128x28x28xf32>
    %49 = ml_program.global_load @global166 : tensor<1x128x28x28xf32>
    %50 = ml_program.global_load @global172 : tensor<1x256x1x1xf32>
    %51 = ml_program.global_load @global175 : tensor<1x256x14x14xf32>
    %52 = ml_program.global_load @global176 : tensor<1x256x14x14xf32>
    %53 = ml_program.global_load @global190 : tensor<1x256x14x14xf32>
    %54 = ml_program.global_load @global191 : tensor<1x256x14x14xf32>
    %55 = ml_program.global_load @global198 : tensor<1x256x14x14xf32>
    %56 = ml_program.global_load @global199 : tensor<1x256x14x14xf32>
    %57 = ml_program.global_load @global207 : tensor<1x256x14x14xf32>
    %58 = ml_program.global_load @global208 : tensor<1x256x14x14xf32>
    %59 = ml_program.global_load @global215 : tensor<1x256x14x14xf32>
    %60 = ml_program.global_load @global216 : tensor<1x256x14x14xf32>
    %61 = ml_program.global_load @global224 : tensor<1x256x14x14xf32>
    %62 = ml_program.global_load @global225 : tensor<1x256x14x14xf32>
    %63 = ml_program.global_load @global232 : tensor<1x256x14x14xf32>
    %64 = ml_program.global_load @global233 : tensor<1x256x14x14xf32>
    %65 = ml_program.global_load @global241 : tensor<1x256x14x14xf32>
    %66 = ml_program.global_load @global242 : tensor<1x256x14x14xf32>
    %67 = ml_program.global_load @global249 : tensor<1x256x14x14xf32>
    %68 = ml_program.global_load @global250 : tensor<1x256x14x14xf32>
    %69 = ml_program.global_load @global258 : tensor<1x256x14x14xf32>
    %70 = ml_program.global_load @global259 : tensor<1x256x14x14xf32>
    %71 = ml_program.global_load @global266 : tensor<1x256x14x14xf32>
    %72 = ml_program.global_load @global267 : tensor<1x256x14x14xf32>
    %73 = ml_program.global_load @global275 : tensor<1x256x14x14xf32>
    %74 = ml_program.global_load @global276 : tensor<1x256x14x14xf32>
    %75 = ml_program.global_load @global282 : tensor<1x512x1x1xf32>
    %76 = ml_program.global_load @global285 : tensor<1x512x7x7xf32>
    %77 = ml_program.global_load @global286 : tensor<1x512x7x7xf32>
    %78 = ml_program.global_load @global300 : tensor<1x512x7x7xf32>
    %79 = ml_program.global_load @global301 : tensor<1x512x7x7xf32>
    %80 = ml_program.global_load @global308 : tensor<1x512x7x7xf32>
    %81 = ml_program.global_load @global309 : tensor<1x512x7x7xf32>
    %82 = ml_program.global_load @global317 : tensor<1x512x7x7xf32>
    %83 = ml_program.global_load @global318 : tensor<1x512x7x7xf32>
    %84 = ml_program.global_load @global325 : tensor<1x512x7x7xf32>
    %85 = ml_program.global_load @global326 : tensor<1x512x7x7xf32>
    %86 = ml_program.global_load @global334 : tensor<1x512x7x7xf32>
    %87 = ml_program.global_load @global335 : tensor<1x512x7x7xf32>
    %expanded = tensor.expand_shape %arg0 [[0, 1], [2]] : tensor<1x1000xf32> into tensor<1x1x1000xf32>
    %88 = tensor.empty() : tensor<1x1000x512xf32>
    %89 = linalg.generic {indexing_maps = [#map7, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<1x512x1000xf32>) outs(%88 : tensor<1x1000x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1000x512xf32>
    %90 = tensor.empty() : tensor<1x1x512xf32>
    %91 = linalg.fill ins(%cst_6 : f32) outs(%90 : tensor<1x1x512xf32>) -> tensor<1x1x512xf32>
    %92 = linalg.batch_matmul ins(%expanded, %89 : tensor<1x1x1000xf32>, tensor<1x1000x512xf32>) outs(%91 : tensor<1x1x512xf32>) -> tensor<1x1x512xf32>
    %93 = tensor.empty() : tensor<1x7x7x512xf32>
    %collapsed = tensor.collapse_shape %92 [[0, 1], [2]] : tensor<1x1x512xf32> into tensor<1x512xf32>
    %94 = linalg.generic {indexing_maps = [#map8, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed, %cst_4 : tensor<1x512xf32>, tensor<1x7x7x512xf32>) outs(%93 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x7x7x512xf32>
    %95 = tensor.empty() : tensor<1x512x7x7xf32>
    %96 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<1x7x7x512xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %97 = tensor.empty() : tensor<1x512x7x7xi1>
    %98 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %87 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%97 : tensor<1x512x7x7xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x512x7x7xi1>
    %99 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %96, %cst : tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<1xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x512x7x7xf32>
    %collapsed_7 = tensor.collapse_shape %3 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %100 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_7, %99 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x512x7x7xf32>
    %collapsed_8 = tensor.collapse_shape %75 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %101 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_8, %100 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x512x7x7xf32>
    %102 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101 : tensor<1x512x7x7xf32>) outs(%93 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %103 = tensor.empty() : tensor<512x3x3x512xf32>
    %104 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<512x3x3x512xf32>) outs(%103 : tensor<512x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x3x3x512xf32>
    %105 = tensor.empty() : tensor<512xf32>
    %106 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%103 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %524 = linalg.index 0 : index
      %525 = linalg.index 1 : index
      %526 = arith.subi %c2, %525 : index
      %527 = linalg.index 2 : index
      %528 = linalg.index 3 : index
      %extracted = tensor.extract %104[%524, %526, %527, %528] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %107 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%103 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %524 = linalg.index 0 : index
      %525 = linalg.index 1 : index
      %526 = linalg.index 2 : index
      %527 = arith.subi %c2, %526 : index
      %528 = linalg.index 3 : index
      %extracted = tensor.extract %106[%524, %525, %527, %528] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded = tensor.pad %102 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %108 = tensor.empty() : tensor<3x3x512x512xf32>
    %109 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107 : tensor<512x3x3x512xf32>) outs(%108 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %110 = linalg.fill ins(%cst_6 : f32) outs(%93 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %111 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded, %109 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%110 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %112 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %111 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%93 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x7x7x512xf32>
    %113 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112 : tensor<1x7x7x512xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %114 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84, %85 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%97 : tensor<1x512x7x7xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x512x7x7xi1>
    %115 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %113, %cst : tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<1xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x512x7x7xf32>
    %116 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_7, %115 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x512x7x7xf32>
    %117 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_8, %116 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x512x7x7xf32>
    %118 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117 : tensor<1x512x7x7xf32>) outs(%93 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_9 = tensor.pad %118 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %119 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_9, %109 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%110 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %120 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %119 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%93 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x7x7x512xf32>
    %121 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120 : tensor<1x7x7x512xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %122 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99, %121 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x512x7x7xf32>
    %123 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %83 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%97 : tensor<1x512x7x7xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x512x7x7xi1>
    %124 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123, %122, %cst : tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<1xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x512x7x7xf32>
    %125 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_7, %124 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x512x7x7xf32>
    %126 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_8, %125 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x512x7x7xf32>
    %127 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x512x7x7xf32>) outs(%93 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_10 = tensor.pad %127 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %128 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_10, %109 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%110 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %129 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %128 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%93 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x7x7x512xf32>
    %130 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129 : tensor<1x7x7x512xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %131 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %81 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%97 : tensor<1x512x7x7xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x512x7x7xi1>
    %132 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %130, %cst : tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<1xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x512x7x7xf32>
    %133 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_7, %132 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x512x7x7xf32>
    %134 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_8, %133 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x512x7x7xf32>
    %135 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134 : tensor<1x512x7x7xf32>) outs(%93 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_11 = tensor.pad %135 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %136 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_11, %109 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%110 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %137 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %136 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%93 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x7x7x512xf32>
    %138 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137 : tensor<1x7x7x512xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %139 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %138 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x512x7x7xf32>
    %140 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78, %79 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%97 : tensor<1x512x7x7xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x512x7x7xi1>
    %141 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140, %139, %cst : tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<1xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x512x7x7xf32>
    %142 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_7, %141 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x512x7x7xf32>
    %143 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_8, %142 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x512x7x7xf32>
    %144 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143 : tensor<1x512x7x7xf32>) outs(%93 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %145 = tensor.empty() : tensor<256x1x1x512xf32>
    %146 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1 : tensor<512x1x1x256xf32>) outs(%145 : tensor<256x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1x1x512xf32>
    %147 = tensor.empty() : tensor<256xf32>
    %padded_12 = tensor.pad %146 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<256x1x1x512xf32> to tensor<256x2x2x512xf32>
    %expanded_13 = tensor.expand_shape %padded_12 [[0, 1], [2, 3], [4], [5]] : tensor<256x2x2x512xf32> into tensor<256x1x2x1x2x512xf32>
    %148 = tensor.empty() : tensor<2x2x256x1x1x512xf32>
    %149 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_13 : tensor<256x1x2x1x2x512xf32>) outs(%148 : tensor<2x2x256x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x256x1x1x512xf32>
    %collapsed_14 = tensor.collapse_shape %144 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %collapsed_15 = tensor.collapse_shape %149 [[0, 1, 2, 3, 4], [5]] : tensor<2x2x256x1x1x512xf32> into tensor<1024x512xf32>
    %150 = tensor.empty() : tensor<49x1024xf32>
    %151 = linalg.fill ins(%cst_6 : f32) outs(%150 : tensor<49x1024xf32>) -> tensor<49x1024xf32>
    %152 = tensor.empty() : tensor<512x1024xf32>
    %153 = linalg.generic {indexing_maps = [#map14, #map6], iterator_types = ["parallel", "parallel"]} ins(%collapsed_15 : tensor<1024x512xf32>) outs(%152 : tensor<512x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1024xf32>
    %154 = linalg.matmul ins(%collapsed_14, %153 : tensor<49x512xf32>, tensor<512x1024xf32>) outs(%151 : tensor<49x1024xf32>) -> tensor<49x1024xf32>
    %155 = linalg.generic {indexing_maps = [#map15, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%cst_0, %154 : tensor<1024xf32>, tensor<49x1024xf32>) outs(%150 : tensor<49x1024xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<49x1024xf32>
    %expanded_16 = tensor.expand_shape %155 [[0, 1, 2], [3, 4, 5]] : tensor<49x1024xf32> into tensor<1x7x7x2x2x256xf32>
    %156 = tensor.empty() : tensor<1x7x2x7x2x256xf32>
    %157 = linalg.generic {indexing_maps = [#map16, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_16 : tensor<1x7x7x2x2x256xf32>) outs(%156 : tensor<1x7x2x7x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x2x7x2x256xf32>
    %collapsed_17 = tensor.collapse_shape %157 [[0], [1, 2], [3, 4], [5]] : tensor<1x7x2x7x2x256xf32> into tensor<1x14x14x256xf32>
    %158 = tensor.empty() : tensor<1x14x14x256xf32>
    %expanded_18 = tensor.expand_shape %147 [[0, 1]] : tensor<256xf32> into tensor<1x256xf32>
    %159 = linalg.generic {indexing_maps = [#map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_17, %expanded_18 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_19 = tensor.pad %144 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %160 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_19, %109 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%110 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %161 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %160 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%93 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x7x7x512xf32>
    %162 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161 : tensor<1x7x7x512xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %163 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %77 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%97 : tensor<1x512x7x7xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x512x7x7xi1>
    %164 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %162, %cst : tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<1xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x512x7x7xf32>
    %165 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_7, %164 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x512x7x7xf32>
    %166 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_8, %165 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%95 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x512x7x7xf32>
    %167 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166 : tensor<1x512x7x7xf32>) outs(%93 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %168 = tensor.empty() : tensor<256x3x3x512xf32>
    %169 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<512x3x3x256xf32>) outs(%168 : tensor<256x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x512xf32>
    %padded_20 = tensor.pad %169 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<256x3x3x512xf32> to tensor<256x4x4x512xf32>
    %expanded_21 = tensor.expand_shape %padded_20 [[0], [1, 2], [3, 4], [5]] : tensor<256x4x4x512xf32> into tensor<256x2x2x2x2x512xf32>
    %170 = tensor.empty() : tensor<2x2x256x2x2x512xf32>
    %171 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_21 : tensor<256x2x2x2x2x512xf32>) outs(%170 : tensor<2x2x256x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x256x2x2x512xf32>
    %collapsed_22 = tensor.collapse_shape %171 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x256x2x2x512xf32> into tensor<1024x2x2x512xf32>
    %172 = tensor.empty() : tensor<1024x2x2x512xf32>
    %173 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%172 : tensor<1024x2x2x512xf32>) {
    ^bb0(%out: f32):
      %524 = linalg.index 0 : index
      %525 = linalg.index 1 : index
      %526 = arith.subi %c1, %525 : index
      %527 = linalg.index 2 : index
      %528 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_22[%524, %526, %527, %528] : tensor<1024x2x2x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<1024x2x2x512xf32>
    %174 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%172 : tensor<1024x2x2x512xf32>) {
    ^bb0(%out: f32):
      %524 = linalg.index 0 : index
      %525 = linalg.index 1 : index
      %526 = linalg.index 2 : index
      %527 = arith.subi %c1, %526 : index
      %528 = linalg.index 3 : index
      %extracted = tensor.extract %173[%524, %525, %527, %528] : tensor<1024x2x2x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<1024x2x2x512xf32>
    %padded_23 = tensor.pad %167 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %175 = tensor.empty() : tensor<2x2x512x1024xf32>
    %176 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174 : tensor<1024x2x2x512xf32>) outs(%175 : tensor<2x2x512x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x512x1024xf32>
    %177 = tensor.empty() : tensor<1x8x8x1024xf32>
    %178 = linalg.fill ins(%cst_6 : f32) outs(%177 : tensor<1x8x8x1024xf32>) -> tensor<1x8x8x1024xf32>
    %179 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_23, %176 : tensor<1x9x9x512xf32>, tensor<2x2x512x1024xf32>) outs(%178 : tensor<1x8x8x1024xf32>) -> tensor<1x8x8x1024xf32>
    %180 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %179 : tensor<1024xf32>, tensor<1x8x8x1024xf32>) outs(%177 : tensor<1x8x8x1024xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x8x8x1024xf32>
    %expanded_24 = tensor.expand_shape %180 [[0], [1], [2], [3, 4, 5]] : tensor<1x8x8x1024xf32> into tensor<1x8x8x2x2x256xf32>
    %181 = tensor.empty() : tensor<1x8x2x8x2x256xf32>
    %182 = linalg.generic {indexing_maps = [#map16, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_24 : tensor<1x8x8x2x2x256xf32>) outs(%181 : tensor<1x8x2x8x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x2x8x2x256xf32>
    %collapsed_25 = tensor.collapse_shape %182 [[0], [1, 2], [3, 4], [5]] : tensor<1x8x2x8x2x256xf32> into tensor<1x16x16x256xf32>
    %extracted_slice = tensor.extract_slice %collapsed_25[0, 1, 1, 0] [1, 14, 14, 256] [1, 1, 1, 1] : tensor<1x16x16x256xf32> to tensor<1x14x14x256xf32>
    %183 = linalg.generic {indexing_maps = [#map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice, %expanded_18 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x14x14x256xf32>
    %184 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159, %183 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x14x14x256xf32>
    %185 = tensor.empty() : tensor<1x256x14x14xf32>
    %186 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<1x14x14x256xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %187 = tensor.empty() : tensor<1x256x14x14xi1>
    %188 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %74 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%187 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x256x14x14xi1>
    %189 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %186, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %collapsed_26 = tensor.collapse_shape %7 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %190 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_26, %189 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %collapsed_27 = tensor.collapse_shape %50 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %191 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %190 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %192 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191 : tensor<1x256x14x14xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %193 = tensor.empty() : tensor<256x3x3x256xf32>
    %194 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<256x3x3x256xf32>) outs(%193 : tensor<256x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x256xf32>
    %195 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%193 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %524 = linalg.index 0 : index
      %525 = linalg.index 1 : index
      %526 = arith.subi %c2, %525 : index
      %527 = linalg.index 2 : index
      %528 = linalg.index 3 : index
      %extracted = tensor.extract %194[%524, %526, %527, %528] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %196 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%193 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %524 = linalg.index 0 : index
      %525 = linalg.index 1 : index
      %526 = linalg.index 2 : index
      %527 = arith.subi %c2, %526 : index
      %528 = linalg.index 3 : index
      %extracted = tensor.extract %195[%524, %525, %527, %528] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_28 = tensor.pad %192 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %197 = tensor.empty() : tensor<3x3x256x256xf32>
    %198 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196 : tensor<256x3x3x256xf32>) outs(%197 : tensor<3x3x256x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x256x256xf32>
    %199 = linalg.fill ins(%cst_6 : f32) outs(%158 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %200 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_28, %198 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%199 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %201 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %200 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x14x14x256xf32>
    %202 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201 : tensor<1x14x14x256xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %203 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %72 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%187 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x256x14x14xi1>
    %204 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203, %202, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %205 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_26, %204 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %206 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %205 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %207 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206 : tensor<1x256x14x14xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_29 = tensor.pad %207 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %208 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_29, %198 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%199 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %209 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %208 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x14x14x256xf32>
    %210 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209 : tensor<1x14x14x256xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %211 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %210 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %212 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %70 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%187 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x256x14x14xi1>
    %213 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %211, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %214 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_26, %213 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %215 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %214 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %216 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215 : tensor<1x256x14x14xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_30 = tensor.pad %216 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %217 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_30, %198 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%199 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %218 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %217 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x14x14x256xf32>
    %219 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218 : tensor<1x14x14x256xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %220 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %68 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%187 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x256x14x14xi1>
    %221 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220, %219, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %222 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_26, %221 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %223 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %222 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %224 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223 : tensor<1x256x14x14xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_31 = tensor.pad %224 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %225 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_31, %198 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%199 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %226 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %225 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x14x14x256xf32>
    %227 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226 : tensor<1x14x14x256xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %228 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213, %227 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %229 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65, %66 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%187 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x256x14x14xi1>
    %230 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229, %228, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %231 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_26, %230 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %232 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %231 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %233 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232 : tensor<1x256x14x14xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_32 = tensor.pad %233 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %234 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_32, %198 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%199 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %235 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %234 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x14x14x256xf32>
    %236 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235 : tensor<1x14x14x256xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %237 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %64 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%187 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x256x14x14xi1>
    %238 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237, %236, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %239 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_26, %238 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %240 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %239 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %241 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240 : tensor<1x256x14x14xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_33 = tensor.pad %241 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %242 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_33, %198 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%199 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %243 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %242 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x14x14x256xf32>
    %244 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243 : tensor<1x14x14x256xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %245 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230, %244 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %246 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61, %62 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%187 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x256x14x14xi1>
    %247 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246, %245, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %248 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_26, %247 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %249 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %248 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %250 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249 : tensor<1x256x14x14xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_34 = tensor.pad %250 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %251 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_34, %198 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%199 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %252 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %251 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x14x14x256xf32>
    %253 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252 : tensor<1x14x14x256xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %254 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %60 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%187 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x256x14x14xi1>
    %255 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %253, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %256 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_26, %255 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %257 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %256 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %258 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257 : tensor<1x256x14x14xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_35 = tensor.pad %258 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %259 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_35, %198 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%199 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %260 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %259 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x14x14x256xf32>
    %261 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260 : tensor<1x14x14x256xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %262 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247, %261 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %263 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %58 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%187 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x256x14x14xi1>
    %264 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263, %262, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %265 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_26, %264 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %266 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %265 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %267 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266 : tensor<1x256x14x14xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_36 = tensor.pad %267 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %268 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_36, %198 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%199 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %269 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %268 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x14x14x256xf32>
    %270 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<1x14x14x256xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %271 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55, %56 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%187 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x256x14x14xi1>
    %272 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271, %270, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %273 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_26, %272 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %274 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %273 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %275 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274 : tensor<1x256x14x14xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_37 = tensor.pad %275 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %276 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_37, %198 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%199 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %277 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %276 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x14x14x256xf32>
    %278 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277 : tensor<1x14x14x256xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %279 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264, %278 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %280 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53, %54 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%187 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x256x14x14xi1>
    %281 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280, %279, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %282 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_26, %281 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %283 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %282 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %284 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283 : tensor<1x256x14x14xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %285 = tensor.empty() : tensor<128x1x1x256xf32>
    %286 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<256x1x1x128xf32>) outs(%285 : tensor<128x1x1x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x1x1x256xf32>
    %287 = tensor.empty() : tensor<128xf32>
    %padded_38 = tensor.pad %286 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<128x1x1x256xf32> to tensor<128x2x2x256xf32>
    %expanded_39 = tensor.expand_shape %padded_38 [[0, 1], [2, 3], [4], [5]] : tensor<128x2x2x256xf32> into tensor<128x1x2x1x2x256xf32>
    %288 = tensor.empty() : tensor<2x2x128x1x1x256xf32>
    %289 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_39 : tensor<128x1x2x1x2x256xf32>) outs(%288 : tensor<2x2x128x1x1x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x128x1x1x256xf32>
    %collapsed_40 = tensor.collapse_shape %284 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %collapsed_41 = tensor.collapse_shape %289 [[0, 1, 2, 3, 4], [5]] : tensor<2x2x128x1x1x256xf32> into tensor<512x256xf32>
    %290 = tensor.empty() : tensor<196x512xf32>
    %291 = linalg.fill ins(%cst_6 : f32) outs(%290 : tensor<196x512xf32>) -> tensor<196x512xf32>
    %292 = tensor.empty() : tensor<256x512xf32>
    %293 = linalg.generic {indexing_maps = [#map14, #map6], iterator_types = ["parallel", "parallel"]} ins(%collapsed_41 : tensor<512x256xf32>) outs(%292 : tensor<256x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x512xf32>
    %294 = linalg.matmul ins(%collapsed_40, %293 : tensor<196x256xf32>, tensor<256x512xf32>) outs(%291 : tensor<196x512xf32>) -> tensor<196x512xf32>
    %295 = linalg.generic {indexing_maps = [#map15, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%cst_1, %294 : tensor<512xf32>, tensor<196x512xf32>) outs(%290 : tensor<196x512xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<196x512xf32>
    %expanded_42 = tensor.expand_shape %295 [[0, 1, 2], [3, 4, 5]] : tensor<196x512xf32> into tensor<1x14x14x2x2x128xf32>
    %296 = tensor.empty() : tensor<1x14x2x14x2x128xf32>
    %297 = linalg.generic {indexing_maps = [#map16, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_42 : tensor<1x14x14x2x2x128xf32>) outs(%296 : tensor<1x14x2x14x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x2x14x2x128xf32>
    %collapsed_43 = tensor.collapse_shape %297 [[0], [1, 2], [3, 4], [5]] : tensor<1x14x2x14x2x128xf32> into tensor<1x28x28x128xf32>
    %298 = tensor.empty() : tensor<1x28x28x128xf32>
    %expanded_44 = tensor.expand_shape %287 [[0, 1]] : tensor<128xf32> into tensor<1x128xf32>
    %299 = linalg.generic {indexing_maps = [#map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_43, %expanded_44 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%298 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_45 = tensor.pad %284 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %300 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_45, %198 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%199 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %301 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %300 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x14x14x256xf32>
    %302 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301 : tensor<1x14x14x256xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %303 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %52 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%187 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x256x14x14xi1>
    %304 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303, %302, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %305 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_26, %304 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %306 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %305 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%185 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x256x14x14xf32>
    %307 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306 : tensor<1x256x14x14xf32>) outs(%158 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %308 = tensor.empty() : tensor<128x3x3x256xf32>
    %309 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<256x3x3x128xf32>) outs(%308 : tensor<128x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x256xf32>
    %padded_46 = tensor.pad %309 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<128x3x3x256xf32> to tensor<128x4x4x256xf32>
    %expanded_47 = tensor.expand_shape %padded_46 [[0], [1, 2], [3, 4], [5]] : tensor<128x4x4x256xf32> into tensor<128x2x2x2x2x256xf32>
    %310 = tensor.empty() : tensor<2x2x128x2x2x256xf32>
    %311 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_47 : tensor<128x2x2x2x2x256xf32>) outs(%310 : tensor<2x2x128x2x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x128x2x2x256xf32>
    %collapsed_48 = tensor.collapse_shape %311 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x128x2x2x256xf32> into tensor<512x2x2x256xf32>
    %312 = tensor.empty() : tensor<512x2x2x256xf32>
    %313 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%312 : tensor<512x2x2x256xf32>) {
    ^bb0(%out: f32):
      %524 = linalg.index 0 : index
      %525 = linalg.index 1 : index
      %526 = arith.subi %c1, %525 : index
      %527 = linalg.index 2 : index
      %528 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_48[%524, %526, %527, %528] : tensor<512x2x2x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x2x2x256xf32>
    %314 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%312 : tensor<512x2x2x256xf32>) {
    ^bb0(%out: f32):
      %524 = linalg.index 0 : index
      %525 = linalg.index 1 : index
      %526 = linalg.index 2 : index
      %527 = arith.subi %c1, %526 : index
      %528 = linalg.index 3 : index
      %extracted = tensor.extract %313[%524, %525, %527, %528] : tensor<512x2x2x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x2x2x256xf32>
    %padded_49 = tensor.pad %307 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %315 = tensor.empty() : tensor<2x2x256x512xf32>
    %316 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314 : tensor<512x2x2x256xf32>) outs(%315 : tensor<2x2x256x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x256x512xf32>
    %317 = tensor.empty() : tensor<1x15x15x512xf32>
    %318 = linalg.fill ins(%cst_6 : f32) outs(%317 : tensor<1x15x15x512xf32>) -> tensor<1x15x15x512xf32>
    %319 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_49, %316 : tensor<1x16x16x256xf32>, tensor<2x2x256x512xf32>) outs(%318 : tensor<1x15x15x512xf32>) -> tensor<1x15x15x512xf32>
    %320 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1, %319 : tensor<512xf32>, tensor<1x15x15x512xf32>) outs(%317 : tensor<1x15x15x512xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x15x15x512xf32>
    %expanded_50 = tensor.expand_shape %320 [[0], [1], [2], [3, 4, 5]] : tensor<1x15x15x512xf32> into tensor<1x15x15x2x2x128xf32>
    %321 = tensor.empty() : tensor<1x15x2x15x2x128xf32>
    %322 = linalg.generic {indexing_maps = [#map16, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_50 : tensor<1x15x15x2x2x128xf32>) outs(%321 : tensor<1x15x2x15x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x15x2x15x2x128xf32>
    %collapsed_51 = tensor.collapse_shape %322 [[0], [1, 2], [3, 4], [5]] : tensor<1x15x2x15x2x128xf32> into tensor<1x30x30x128xf32>
    %extracted_slice_52 = tensor.extract_slice %collapsed_51[0, 1, 1, 0] [1, 28, 28, 128] [1, 1, 1, 1] : tensor<1x30x30x128xf32> to tensor<1x28x28x128xf32>
    %323 = linalg.generic {indexing_maps = [#map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_52, %expanded_44 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%298 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x28x28x128xf32>
    %324 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299, %323 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%298 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x28x28x128xf32>
    %325 = tensor.empty() : tensor<1x128x28x28xf32>
    %326 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324 : tensor<1x28x28x128xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %327 = tensor.empty() : tensor<1x128x28x28xi1>
    %328 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %49 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%327 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x128x28x28xi1>
    %329 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328, %326, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %collapsed_53 = tensor.collapse_shape %11 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %330 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_53, %329 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %collapsed_54 = tensor.collapse_shape %33 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %331 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_54, %330 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %332 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331 : tensor<1x128x28x28xf32>) outs(%298 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %333 = tensor.empty() : tensor<128x3x3x128xf32>
    %334 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<128x3x3x128xf32>) outs(%333 : tensor<128x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x128xf32>
    %335 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%333 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %524 = linalg.index 0 : index
      %525 = linalg.index 1 : index
      %526 = arith.subi %c2, %525 : index
      %527 = linalg.index 2 : index
      %528 = linalg.index 3 : index
      %extracted = tensor.extract %334[%524, %526, %527, %528] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %336 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%333 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %524 = linalg.index 0 : index
      %525 = linalg.index 1 : index
      %526 = linalg.index 2 : index
      %527 = arith.subi %c2, %526 : index
      %528 = linalg.index 3 : index
      %extracted = tensor.extract %335[%524, %525, %527, %528] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %padded_55 = tensor.pad %332 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %337 = tensor.empty() : tensor<3x3x128x128xf32>
    %338 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336 : tensor<128x3x3x128xf32>) outs(%337 : tensor<3x3x128x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x128x128xf32>
    %339 = linalg.fill ins(%cst_6 : f32) outs(%298 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %340 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_55, %338 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%339 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %341 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %340 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%298 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x28x28x128xf32>
    %342 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341 : tensor<1x28x28x128xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %343 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %47 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%327 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x128x28x28xi1>
    %344 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343, %342, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %345 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_53, %344 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %346 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_54, %345 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %347 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346 : tensor<1x128x28x28xf32>) outs(%298 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_56 = tensor.pad %347 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %348 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_56, %338 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%339 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %349 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %348 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%298 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x28x28x128xf32>
    %350 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349 : tensor<1x28x28x128xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %351 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329, %350 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %352 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %45 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%327 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x128x28x28xi1>
    %353 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352, %351, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %354 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_53, %353 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %355 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_54, %354 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %356 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355 : tensor<1x128x28x28xf32>) outs(%298 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_57 = tensor.pad %356 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %357 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_57, %338 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%339 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %358 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %357 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%298 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x28x28x128xf32>
    %359 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358 : tensor<1x28x28x128xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %360 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42, %43 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%327 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x128x28x28xi1>
    %361 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360, %359, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %362 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_53, %361 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %363 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_54, %362 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %364 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363 : tensor<1x128x28x28xf32>) outs(%298 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_58 = tensor.pad %364 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %365 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_58, %338 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%339 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %366 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %365 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%298 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x28x28x128xf32>
    %367 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366 : tensor<1x28x28x128xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %368 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353, %367 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %369 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %41 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%327 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x128x28x28xi1>
    %370 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369, %368, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %371 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_53, %370 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %372 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_54, %371 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %373 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372 : tensor<1x128x28x28xf32>) outs(%298 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_59 = tensor.pad %373 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %374 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_59, %338 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%339 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %375 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %374 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%298 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x28x28x128xf32>
    %376 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%375 : tensor<1x28x28x128xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %377 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38, %39 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%327 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x128x28x28xi1>
    %378 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%377, %376, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %379 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_53, %378 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %380 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_54, %379 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %381 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380 : tensor<1x128x28x28xf32>) outs(%298 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_60 = tensor.pad %381 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %382 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_60, %338 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%339 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %383 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %382 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%298 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x28x28x128xf32>
    %384 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%383 : tensor<1x28x28x128xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %385 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%370, %384 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %386 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %37 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%327 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x128x28x28xi1>
    %387 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%386, %385, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %388 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_53, %387 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %389 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_54, %388 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %390 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389 : tensor<1x128x28x28xf32>) outs(%298 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %391 = tensor.empty() : tensor<64x1x1x128xf32>
    %392 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<128x1x1x64xf32>) outs(%391 : tensor<64x1x1x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x1x1x128xf32>
    %393 = tensor.empty() : tensor<64xf32>
    %padded_61 = tensor.pad %392 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<64x1x1x128xf32> to tensor<64x2x2x128xf32>
    %expanded_62 = tensor.expand_shape %padded_61 [[0, 1], [2, 3], [4], [5]] : tensor<64x2x2x128xf32> into tensor<64x1x2x1x2x128xf32>
    %394 = tensor.empty() : tensor<2x2x64x1x1x128xf32>
    %395 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_62 : tensor<64x1x2x1x2x128xf32>) outs(%394 : tensor<2x2x64x1x1x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x64x1x1x128xf32>
    %collapsed_63 = tensor.collapse_shape %390 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %collapsed_64 = tensor.collapse_shape %395 [[0, 1, 2, 3, 4], [5]] : tensor<2x2x64x1x1x128xf32> into tensor<256x128xf32>
    %396 = tensor.empty() : tensor<784x256xf32>
    %397 = linalg.fill ins(%cst_6 : f32) outs(%396 : tensor<784x256xf32>) -> tensor<784x256xf32>
    %398 = tensor.empty() : tensor<128x256xf32>
    %399 = linalg.generic {indexing_maps = [#map14, #map6], iterator_types = ["parallel", "parallel"]} ins(%collapsed_64 : tensor<256x128xf32>) outs(%398 : tensor<128x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x256xf32>
    %400 = linalg.matmul ins(%collapsed_63, %399 : tensor<784x128xf32>, tensor<128x256xf32>) outs(%397 : tensor<784x256xf32>) -> tensor<784x256xf32>
    %401 = linalg.generic {indexing_maps = [#map15, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%cst_2, %400 : tensor<256xf32>, tensor<784x256xf32>) outs(%396 : tensor<784x256xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<784x256xf32>
    %expanded_65 = tensor.expand_shape %401 [[0, 1, 2], [3, 4, 5]] : tensor<784x256xf32> into tensor<1x28x28x2x2x64xf32>
    %402 = tensor.empty() : tensor<1x28x2x28x2x64xf32>
    %403 = linalg.generic {indexing_maps = [#map16, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_65 : tensor<1x28x28x2x2x64xf32>) outs(%402 : tensor<1x28x2x28x2x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x2x28x2x64xf32>
    %collapsed_66 = tensor.collapse_shape %403 [[0], [1, 2], [3, 4], [5]] : tensor<1x28x2x28x2x64xf32> into tensor<1x56x56x64xf32>
    %404 = tensor.empty() : tensor<1x56x56x64xf32>
    %expanded_67 = tensor.expand_shape %393 [[0, 1]] : tensor<64xf32> into tensor<1x64xf32>
    %405 = linalg.generic {indexing_maps = [#map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_66, %expanded_67 : tensor<1x56x56x64xf32>, tensor<1x64xf32>) outs(%404 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x56x56x64xf32>
    %padded_68 = tensor.pad %390 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %406 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_68, %338 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%339 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %407 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %406 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%298 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x28x28x128xf32>
    %408 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407 : tensor<1x28x28x128xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %409 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34, %35 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%327 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x128x28x28xi1>
    %410 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%409, %408, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %411 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_53, %410 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %412 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_54, %411 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%325 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x128x28x28xf32>
    %413 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%412 : tensor<1x128x28x28xf32>) outs(%298 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %414 = tensor.empty() : tensor<64x3x3x128xf32>
    %415 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<128x3x3x64xf32>) outs(%414 : tensor<64x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x128xf32>
    %padded_69 = tensor.pad %415 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<64x3x3x128xf32> to tensor<64x4x4x128xf32>
    %expanded_70 = tensor.expand_shape %padded_69 [[0], [1, 2], [3, 4], [5]] : tensor<64x4x4x128xf32> into tensor<64x2x2x2x2x128xf32>
    %416 = tensor.empty() : tensor<2x2x64x2x2x128xf32>
    %417 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_70 : tensor<64x2x2x2x2x128xf32>) outs(%416 : tensor<2x2x64x2x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x64x2x2x128xf32>
    %collapsed_71 = tensor.collapse_shape %417 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x64x2x2x128xf32> into tensor<256x2x2x128xf32>
    %418 = tensor.empty() : tensor<256x2x2x128xf32>
    %419 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%418 : tensor<256x2x2x128xf32>) {
    ^bb0(%out: f32):
      %524 = linalg.index 0 : index
      %525 = linalg.index 1 : index
      %526 = arith.subi %c1, %525 : index
      %527 = linalg.index 2 : index
      %528 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_71[%524, %526, %527, %528] : tensor<256x2x2x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x2x2x128xf32>
    %420 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%418 : tensor<256x2x2x128xf32>) {
    ^bb0(%out: f32):
      %524 = linalg.index 0 : index
      %525 = linalg.index 1 : index
      %526 = linalg.index 2 : index
      %527 = arith.subi %c1, %526 : index
      %528 = linalg.index 3 : index
      %extracted = tensor.extract %419[%524, %525, %527, %528] : tensor<256x2x2x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x2x2x128xf32>
    %padded_72 = tensor.pad %413 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %421 = tensor.empty() : tensor<2x2x128x256xf32>
    %422 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%420 : tensor<256x2x2x128xf32>) outs(%421 : tensor<2x2x128x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x128x256xf32>
    %423 = tensor.empty() : tensor<1x29x29x256xf32>
    %424 = linalg.fill ins(%cst_6 : f32) outs(%423 : tensor<1x29x29x256xf32>) -> tensor<1x29x29x256xf32>
    %425 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_72, %422 : tensor<1x30x30x128xf32>, tensor<2x2x128x256xf32>) outs(%424 : tensor<1x29x29x256xf32>) -> tensor<1x29x29x256xf32>
    %426 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_2, %425 : tensor<256xf32>, tensor<1x29x29x256xf32>) outs(%423 : tensor<1x29x29x256xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x29x29x256xf32>
    %expanded_73 = tensor.expand_shape %426 [[0], [1], [2], [3, 4, 5]] : tensor<1x29x29x256xf32> into tensor<1x29x29x2x2x64xf32>
    %427 = tensor.empty() : tensor<1x29x2x29x2x64xf32>
    %428 = linalg.generic {indexing_maps = [#map16, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_73 : tensor<1x29x29x2x2x64xf32>) outs(%427 : tensor<1x29x2x29x2x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x29x2x29x2x64xf32>
    %collapsed_74 = tensor.collapse_shape %428 [[0], [1, 2], [3, 4], [5]] : tensor<1x29x2x29x2x64xf32> into tensor<1x58x58x64xf32>
    %extracted_slice_75 = tensor.extract_slice %collapsed_74[0, 1, 1, 0] [1, 56, 56, 64] [1, 1, 1, 1] : tensor<1x58x58x64xf32> to tensor<1x56x56x64xf32>
    %429 = linalg.generic {indexing_maps = [#map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_75, %expanded_67 : tensor<1x56x56x64xf32>, tensor<1x64xf32>) outs(%404 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x56x56x64xf32>
    %430 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%405, %429 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%404 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x56x56x64xf32>
    %431 = tensor.empty() : tensor<1x64x56x56xf32>
    %432 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%430 : tensor<1x56x56x64xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %433 = tensor.empty() : tensor<1x64x56x56xi1>
    %434 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %32 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%433 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x64x56x56xi1>
    %435 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434, %432, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x56x56xf32>
    %collapsed_76 = tensor.collapse_shape %14 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %436 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_76, %435 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x56x56xf32>
    %collapsed_77 = tensor.collapse_shape %16 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %437 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_77, %436 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x56x56xf32>
    %438 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%437 : tensor<1x64x56x56xf32>) outs(%404 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %439 = tensor.empty() : tensor<64x3x3x64xf32>
    %440 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<64x3x3x64xf32>) outs(%439 : tensor<64x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x64xf32>
    %441 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%439 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %524 = linalg.index 0 : index
      %525 = linalg.index 1 : index
      %526 = arith.subi %c2, %525 : index
      %527 = linalg.index 2 : index
      %528 = linalg.index 3 : index
      %extracted = tensor.extract %440[%524, %526, %527, %528] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %442 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%439 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %524 = linalg.index 0 : index
      %525 = linalg.index 1 : index
      %526 = linalg.index 2 : index
      %527 = arith.subi %c2, %526 : index
      %528 = linalg.index 3 : index
      %extracted = tensor.extract %441[%524, %525, %527, %528] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %padded_78 = tensor.pad %438 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %443 = tensor.empty() : tensor<3x3x64x64xf32>
    %444 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%442 : tensor<64x3x3x64xf32>) outs(%443 : tensor<3x3x64x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x64x64xf32>
    %445 = linalg.fill ins(%cst_6 : f32) outs(%404 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %446 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_78, %444 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%445 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %447 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%393, %446 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%404 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x56x56x64xf32>
    %448 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%447 : tensor<1x56x56x64xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %449 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %30 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%433 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x64x56x56xi1>
    %450 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%449, %448, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x56x56xf32>
    %451 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_76, %450 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x56x56xf32>
    %452 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_77, %451 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x56x56xf32>
    %453 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%452 : tensor<1x64x56x56xf32>) outs(%404 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_79 = tensor.pad %453 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %454 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_79, %444 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%445 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %455 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%393, %454 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%404 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x56x56x64xf32>
    %456 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%455 : tensor<1x56x56x64xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %457 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435, %456 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x56x56xf32>
    %458 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %28 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%433 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x64x56x56xi1>
    %459 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%458, %457, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x56x56xf32>
    %460 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_76, %459 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x56x56xf32>
    %461 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_77, %460 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x56x56xf32>
    %462 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%461 : tensor<1x64x56x56xf32>) outs(%404 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_80 = tensor.pad %462 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %463 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_80, %444 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%445 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %464 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%393, %463 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%404 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x56x56x64xf32>
    %465 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%464 : tensor<1x56x56x64xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %466 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %26 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%433 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x64x56x56xi1>
    %467 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%466, %465, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x56x56xf32>
    %468 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_76, %467 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x56x56xf32>
    %469 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_77, %468 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x56x56xf32>
    %470 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469 : tensor<1x64x56x56xf32>) outs(%404 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_81 = tensor.pad %470 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %471 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_81, %444 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%445 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %472 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%393, %471 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%404 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x56x56x64xf32>
    %473 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472 : tensor<1x56x56x64xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %474 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%459, %473 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x56x56xf32>
    %475 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %24 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%433 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x64x56x56xi1>
    %476 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%475, %474, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x56x56xf32>
    %477 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_76, %476 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x56x56xf32>
    %478 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_77, %477 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x56x56xf32>
    %479 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%478 : tensor<1x64x56x56xf32>) outs(%404 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_82 = tensor.pad %479 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %480 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_82, %444 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%445 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %481 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%393, %480 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%404 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x56x56x64xf32>
    %482 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%481 : tensor<1x56x56x64xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %483 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %22 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%433 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x64x56x56xi1>
    %484 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%483, %482, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x56x56xf32>
    %485 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_76, %484 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x56x56xf32>
    %486 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_77, %485 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%431 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x56x56xf32>
    %487 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%486 : tensor<1x64x56x56xf32>) outs(%404 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_83 = tensor.pad %487 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %488 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_83, %444 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%445 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %489 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%393, %488 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%404 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x56x56x64xf32>
    %490 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%476 : tensor<1x64x56x56xf32>) outs(%404 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %491 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%489, %490 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%404 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x56x56x64xf32>
    %padded_84 = tensor.pad %19 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_5 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %492 = tensor.empty() : tensor<1x113x113x64xf32>
    %493 = tensor.empty() : tensor<3x3xf32>
    %494 = linalg.generic {indexing_maps = [#map17, #map18, #map19, #map19, #map17], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded_84, %493, %20, %491 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%492 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_94: f32, %in_95: f32, %in_96: f32, %out: f32):
      %524 = arith.cmpf oge, %in, %in_95 : f32
      %525 = arith.select %524, %in_96, %cst_6 : f32
      %526 = arith.addf %out, %525 : f32
      linalg.yield %526 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice_85 = tensor.extract_slice %494[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %495 = tensor.empty() : tensor<1x64x112x112xf32>
    %496 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_85 : tensor<1x112x112x64xf32>) outs(%495 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x112x112xf32>
    %497 = tensor.empty() : tensor<1x64x112x112xi1>
    %498 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %18 : tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>) outs(%497 : tensor<1x64x112x112xi1>) {
    ^bb0(%in: f32, %in_94: f32, %out: i1):
      %524 = arith.cmpf oeq, %in, %in_94 : f32
      linalg.yield %524 : i1
    } -> tensor<1x64x112x112xi1>
    %499 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%498, %496, %cst : tensor<1x64x112x112xi1>, tensor<1x64x112x112xf32>, tensor<1xf32>) outs(%495 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: i1, %in_94: f32, %in_95: f32, %out: f32):
      %524 = arith.select %in, %in_94, %in_95 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x112x112xf32>
    %500 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_76, %499 : tensor<1x64xf32>, tensor<1x64x112x112xf32>) outs(%495 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x112x112xf32>
    %501 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_77, %500 : tensor<1x64xf32>, tensor<1x64x112x112xf32>) outs(%495 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.mulf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x64x112x112xf32>
    %502 = tensor.empty() : tensor<1x112x112x64xf32>
    %503 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%501 : tensor<1x64x112x112xf32>) outs(%502 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x64xf32>
    %504 = tensor.empty() : tensor<3x7x7x64xf32>
    %505 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<64x7x7x3xf32>) outs(%504 : tensor<3x7x7x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x7x7x64xf32>
    %506 = tensor.empty() : tensor<3xf32>
    %padded_86 = tensor.pad %505 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<3x7x7x64xf32> to tensor<3x8x8x64xf32>
    %expanded_87 = tensor.expand_shape %padded_86 [[0], [1, 2], [3, 4], [5]] : tensor<3x8x8x64xf32> into tensor<3x4x2x4x2x64xf32>
    %507 = tensor.empty() : tensor<2x2x3x4x4x64xf32>
    %508 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_87 : tensor<3x4x2x4x2x64xf32>) outs(%507 : tensor<2x2x3x4x4x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x3x4x4x64xf32>
    %collapsed_88 = tensor.collapse_shape %508 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x3x4x4x64xf32> into tensor<12x4x4x64xf32>
    %509 = tensor.empty() : tensor<12x4x4x64xf32>
    %510 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%509 : tensor<12x4x4x64xf32>) {
    ^bb0(%out: f32):
      %524 = linalg.index 0 : index
      %525 = linalg.index 1 : index
      %526 = arith.subi %c3, %525 : index
      %527 = linalg.index 2 : index
      %528 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_88[%524, %526, %527, %528] : tensor<12x4x4x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<12x4x4x64xf32>
    %511 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%509 : tensor<12x4x4x64xf32>) {
    ^bb0(%out: f32):
      %524 = linalg.index 0 : index
      %525 = linalg.index 1 : index
      %526 = linalg.index 2 : index
      %527 = arith.subi %c3, %526 : index
      %528 = linalg.index 3 : index
      %extracted = tensor.extract %510[%524, %525, %527, %528] : tensor<12x4x4x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<12x4x4x64xf32>
    %padded_89 = tensor.pad %503 low[%c0, %c3, %c3, %c0] high[%c0, %c3, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x118x118x64xf32>
    %512 = tensor.empty() : tensor<4x4x64x12xf32>
    %513 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511 : tensor<12x4x4x64xf32>) outs(%512 : tensor<4x4x64x12xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x4x64x12xf32>
    %514 = tensor.empty() : tensor<1x115x115x12xf32>
    %515 = linalg.fill ins(%cst_6 : f32) outs(%514 : tensor<1x115x115x12xf32>) -> tensor<1x115x115x12xf32>
    %516 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_89, %513 : tensor<1x118x118x64xf32>, tensor<4x4x64x12xf32>) outs(%515 : tensor<1x115x115x12xf32>) -> tensor<1x115x115x12xf32>
    %517 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_3, %516 : tensor<12xf32>, tensor<1x115x115x12xf32>) outs(%514 : tensor<1x115x115x12xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x115x115x12xf32>
    %expanded_90 = tensor.expand_shape %517 [[0], [1], [2], [3, 4, 5]] : tensor<1x115x115x12xf32> into tensor<1x115x115x2x2x3xf32>
    %518 = tensor.empty() : tensor<1x115x2x115x2x3xf32>
    %519 = linalg.generic {indexing_maps = [#map16, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_90 : tensor<1x115x115x2x2x3xf32>) outs(%518 : tensor<1x115x2x115x2x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x115x2x115x2x3xf32>
    %collapsed_91 = tensor.collapse_shape %519 [[0], [1, 2], [3, 4], [5]] : tensor<1x115x2x115x2x3xf32> into tensor<1x230x230x3xf32>
    %extracted_slice_92 = tensor.extract_slice %collapsed_91[0, 3, 3, 0] [1, 224, 224, 3] [1, 1, 1, 1] : tensor<1x230x230x3xf32> to tensor<1x224x224x3xf32>
    %520 = tensor.empty() : tensor<1x224x224x3xf32>
    %expanded_93 = tensor.expand_shape %506 [[0, 1]] : tensor<3xf32> into tensor<1x3xf32>
    %521 = linalg.generic {indexing_maps = [#map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_92, %expanded_93 : tensor<1x224x224x3xf32>, tensor<1x3xf32>) outs(%520 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %in_94: f32, %out: f32):
      %524 = arith.addf %in, %in_94 : f32
      linalg.yield %524 : f32
    } -> tensor<1x224x224x3xf32>
    %522 = tensor.empty() : tensor<1x3x224x224xf32>
    %523 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%521 : tensor<1x224x224x3xf32>) outs(%522 : tensor<1x3x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3x224x224xf32>
    return %523 : tensor<1x3x224x224xf32>
  }
}

