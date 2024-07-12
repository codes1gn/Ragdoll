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
  ml_program.global private mutable @global199 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global198 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global190 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global189 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global182 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global181 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global167 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global166 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global163 : tensor<1x512x1x1xf32>
  ml_program.global private mutable @global157 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global156 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global148 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global147 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global140 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global139 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global125 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global124 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global121 : tensor<1x256x1x1xf32>
  ml_program.global private mutable @global115 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global114 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global106 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global105 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global98 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global97 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global83 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global82 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global79 : tensor<1x128x1x1xf32>
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
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x112x112x64xf32>
    %6 = tensor.empty() : tensor<1x64x112x112xf32>
    %7 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<1x112x112x64xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x112x112xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %cst_3 : tensor<1x64x112x112xf32>, tensor<1x64xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.subf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x112x112xf32>
    %9 = tensor.empty() : tensor<64x1x1xf32>
    %10 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_40 : tensor<64x1x1xf32>) outs(%9 : tensor<64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = math.rsqrt %in : f32
      linalg.yield %221 : f32
    } -> tensor<64x1x1xf32>
    %expanded = tensor.expand_shape %10 [[0, 1], [2], [3]] : tensor<64x1x1xf32> into tensor<1x64x1x1xf32>
    ml_program.global_store @global33 = %expanded : tensor<1x64x1x1xf32>
    %collapsed = tensor.collapse_shape %expanded [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %11 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8, %collapsed : tensor<1x64x112x112xf32>, tensor<1x64xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x112x112xf32>
    %12 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %cst_3 : tensor<1x64x112x112xf32>, tensor<1x64xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x112x112xf32>
    %13 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12, %cst_3 : tensor<1x64x112x112xf32>, tensor<1x64xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x112x112xf32>
    ml_program.global_store @global36 = %13 : tensor<1x64x112x112xf32>
    %14 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x64x112x112xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = arith.minf %in, %cst_2 : f32
      %222 = arith.maxf %221, %cst_17 : f32
      linalg.yield %222 : f32
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
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x56x56x64xf32>
    %25 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<1x56x56x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %26 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.subf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x56x56xf32>
    %27 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x56x56xf32>
    %28 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x56x56xf32>
    %29 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global46 = %29 : tensor<1x64x56x56xf32>
    %30 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29 : tensor<1x64x56x56xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = arith.minf %in, %cst_2 : f32
      %222 = arith.maxf %221, %cst_17 : f32
      linalg.yield %222 : f32
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
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x56x56x64xf32>
    %34 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33 : tensor<1x56x56x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %35 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.subf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x56x56xf32>
    %36 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x56x56xf32>
    %37 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x56x56xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x56x56xf32>
    %39 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38, %21 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global55 = %39 : tensor<1x64x56x56xf32>
    %40 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x64x56x56xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = arith.minf %in, %cst_2 : f32
      %222 = arith.maxf %221, %cst_17 : f32
      linalg.yield %222 : f32
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
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x56x56x64xf32>
    %44 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43 : tensor<1x56x56x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %45 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.subf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x56x56xf32>
    %46 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x56x56xf32>
    %47 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x56x56xf32>
    %48 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global63 = %48 : tensor<1x64x56x56xf32>
    %49 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<1x64x56x56xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = arith.minf %in, %cst_2 : f32
      %222 = arith.maxf %221, %cst_17 : f32
      linalg.yield %222 : f32
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
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x56x56x64xf32>
    %53 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x56x56x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %54 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.subf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x56x56xf32>
    %55 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x56x56xf32>
    %56 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x56x56xf32>
    %57 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %cst_3 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x56x56xf32>
    %58 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %40 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global72 = %58 : tensor<1x64x56x56xf32>
    %59 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58 : tensor<1x64x56x56xf32>) outs(%20 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = arith.minf %in, %cst_2 : f32
      %222 = arith.maxf %221, %cst_17 : f32
      linalg.yield %222 : f32
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
    %61 = tensor.empty() : tensor<1x28x28x128xf32>
    %62 = linalg.fill ins(%cst_17 : f32) outs(%61 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %63 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_48, %cst_13 : tensor<1x58x58x64xf32>, tensor<3x3x64x128xf32>) outs(%62 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %64 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_19, %63 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%61 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x28x28x128xf32>
    %65 = tensor.empty() : tensor<1x128x28x28xf32>
    %66 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x28x28x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %67 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.subf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    %68 = tensor.empty() : tensor<128x1x1xf32>
    %69 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_36 : tensor<128x1x1xf32>) outs(%68 : tensor<128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = math.rsqrt %in : f32
      linalg.yield %221 : f32
    } -> tensor<128x1x1xf32>
    %expanded_49 = tensor.expand_shape %69 [[0, 1], [2], [3]] : tensor<128x1x1xf32> into tensor<1x128x1x1xf32>
    ml_program.global_store @global79 = %expanded_49 : tensor<1x128x1x1xf32>
    %collapsed_50 = tensor.collapse_shape %expanded_49 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %70 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %collapsed_50 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    %71 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    %72 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global82 = %72 : tensor<1x128x28x28xf32>
    %73 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72 : tensor<1x128x28x28xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = arith.minf %in, %cst_2 : f32
      %222 = arith.maxf %221, %cst_17 : f32
      linalg.yield %222 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global83 = %73 : tensor<1x128x28x28xf32>
    %74 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73 : tensor<1x128x28x28xf32>) outs(%61 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_51 = tensor.pad %74 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %75 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_51, %cst_11 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%62 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %76 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_19, %75 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%61 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x28x28x128xf32>
    %77 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76 : tensor<1x28x28x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %78 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.subf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    %79 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78, %collapsed_50 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    %80 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    %81 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    %82 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%60, %cst_12 : tensor<1x56x56x64xf32>, tensor<1x1x64x128xf32>) outs(%62 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %83 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_19, %82 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%61 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x28x28x128xf32>
    %84 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83 : tensor<1x28x28x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %85 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.subf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    %86 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %collapsed_50 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    %87 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    %88 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    %89 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %88 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global97 = %89 : tensor<1x128x28x28xf32>
    %90 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89 : tensor<1x128x28x28xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = arith.minf %in, %cst_2 : f32
      %222 = arith.maxf %221, %cst_17 : f32
      linalg.yield %222 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global98 = %90 : tensor<1x128x28x28xf32>
    %91 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90 : tensor<1x128x28x28xf32>) outs(%61 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_52 = tensor.pad %91 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %92 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_52, %cst_11 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%62 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %93 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_19, %92 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%61 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x28x28x128xf32>
    %94 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93 : tensor<1x28x28x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %95 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.subf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    %96 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %collapsed_50 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    %97 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    %98 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global105 = %98 : tensor<1x128x28x28xf32>
    %99 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98 : tensor<1x128x28x28xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = arith.minf %in, %cst_2 : f32
      %222 = arith.maxf %221, %cst_17 : f32
      linalg.yield %222 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global106 = %99 : tensor<1x128x28x28xf32>
    %100 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99 : tensor<1x128x28x28xf32>) outs(%61 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_53 = tensor.pad %100 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %101 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_53, %cst_11 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%62 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %102 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_19, %101 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%61 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x28x28x128xf32>
    %103 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102 : tensor<1x28x28x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %104 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.subf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    %105 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104, %collapsed_50 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    %106 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    %107 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %cst_1 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    %108 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107, %90 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global114 = %108 : tensor<1x128x28x28xf32>
    %109 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108 : tensor<1x128x28x28xf32>) outs(%65 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = arith.minf %in, %cst_2 : f32
      %222 = arith.maxf %221, %cst_17 : f32
      linalg.yield %222 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global115 = %109 : tensor<1x128x28x28xf32>
    %110 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109 : tensor<1x128x28x28xf32>) outs(%61 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_54 = tensor.pad %110 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %111 = tensor.empty() : tensor<1x14x14x256xf32>
    %112 = linalg.fill ins(%cst_17 : f32) outs(%111 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %113 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_54, %cst_10 : tensor<1x30x30x128xf32>, tensor<3x3x128x256xf32>) outs(%112 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %114 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20, %113 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%111 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x14x14x256xf32>
    %115 = tensor.empty() : tensor<1x256x14x14xf32>
    %116 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114 : tensor<1x14x14x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %117 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.subf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    %118 = tensor.empty() : tensor<256x1x1xf32>
    %119 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_31 : tensor<256x1x1xf32>) outs(%118 : tensor<256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = math.rsqrt %in : f32
      linalg.yield %221 : f32
    } -> tensor<256x1x1xf32>
    %expanded_55 = tensor.expand_shape %119 [[0, 1], [2], [3]] : tensor<256x1x1xf32> into tensor<1x256x1x1xf32>
    ml_program.global_store @global121 = %expanded_55 : tensor<1x256x1x1xf32>
    %collapsed_56 = tensor.collapse_shape %expanded_55 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %120 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117, %collapsed_56 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    %121 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    %122 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global124 = %122 : tensor<1x256x14x14xf32>
    %123 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x256x14x14xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = arith.minf %in, %cst_2 : f32
      %222 = arith.maxf %221, %cst_17 : f32
      linalg.yield %222 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global125 = %123 : tensor<1x256x14x14xf32>
    %124 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123 : tensor<1x256x14x14xf32>) outs(%111 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_57 = tensor.pad %124 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %125 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_57, %cst_8 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%112 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %126 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20, %125 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%111 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x14x14x256xf32>
    %127 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x14x14x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %128 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.subf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    %129 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %collapsed_56 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    %130 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    %131 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    %132 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%110, %cst_9 : tensor<1x28x28x128xf32>, tensor<1x1x128x256xf32>) outs(%112 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %133 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20, %132 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%111 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x14x14x256xf32>
    %134 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133 : tensor<1x14x14x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %135 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.subf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    %136 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %collapsed_56 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    %137 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    %138 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    %139 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %138 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global139 = %139 : tensor<1x256x14x14xf32>
    %140 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139 : tensor<1x256x14x14xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = arith.minf %in, %cst_2 : f32
      %222 = arith.maxf %221, %cst_17 : f32
      linalg.yield %222 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global140 = %140 : tensor<1x256x14x14xf32>
    %141 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140 : tensor<1x256x14x14xf32>) outs(%111 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_58 = tensor.pad %141 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %142 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_58, %cst_8 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%112 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %143 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20, %142 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%111 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x14x14x256xf32>
    %144 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143 : tensor<1x14x14x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %145 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.subf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    %146 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145, %collapsed_56 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    %147 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    %148 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global147 = %148 : tensor<1x256x14x14xf32>
    %149 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148 : tensor<1x256x14x14xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = arith.minf %in, %cst_2 : f32
      %222 = arith.maxf %221, %cst_17 : f32
      linalg.yield %222 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global148 = %149 : tensor<1x256x14x14xf32>
    %150 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x256x14x14xf32>) outs(%111 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_59 = tensor.pad %150 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %151 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_59, %cst_8 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%112 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %152 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20, %151 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%111 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x14x14x256xf32>
    %153 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x14x14x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %154 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.subf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    %155 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %collapsed_56 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    %156 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    %157 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156, %cst_0 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    %158 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157, %140 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global156 = %158 : tensor<1x256x14x14xf32>
    %159 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158 : tensor<1x256x14x14xf32>) outs(%115 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = arith.minf %in, %cst_2 : f32
      %222 = arith.maxf %221, %cst_17 : f32
      linalg.yield %222 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global157 = %159 : tensor<1x256x14x14xf32>
    %160 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159 : tensor<1x256x14x14xf32>) outs(%111 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_60 = tensor.pad %160 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %161 = tensor.empty() : tensor<1x7x7x512xf32>
    %162 = linalg.fill ins(%cst_17 : f32) outs(%161 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %163 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_60, %cst_7 : tensor<1x16x16x256xf32>, tensor<3x3x256x512xf32>) outs(%162 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %164 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_21, %163 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%161 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x7x7x512xf32>
    %165 = tensor.empty() : tensor<1x512x7x7xf32>
    %166 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164 : tensor<1x7x7x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %167 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.subf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    %168 = tensor.empty() : tensor<512x1x1xf32>
    %169 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_26 : tensor<512x1x1xf32>) outs(%168 : tensor<512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = math.rsqrt %in : f32
      linalg.yield %221 : f32
    } -> tensor<512x1x1xf32>
    %expanded_61 = tensor.expand_shape %169 [[0, 1], [2], [3]] : tensor<512x1x1xf32> into tensor<1x512x1x1xf32>
    ml_program.global_store @global163 = %expanded_61 : tensor<1x512x1x1xf32>
    %collapsed_62 = tensor.collapse_shape %expanded_61 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %170 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167, %collapsed_62 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    %171 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    %172 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global166 = %172 : tensor<1x512x7x7xf32>
    %173 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172 : tensor<1x512x7x7xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = arith.minf %in, %cst_2 : f32
      %222 = arith.maxf %221, %cst_17 : f32
      linalg.yield %222 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global167 = %173 : tensor<1x512x7x7xf32>
    %174 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173 : tensor<1x512x7x7xf32>) outs(%161 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_63 = tensor.pad %174 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %175 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_63, %cst_5 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%162 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %176 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_21, %175 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%161 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x7x7x512xf32>
    %177 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x7x7x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %178 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.subf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    %179 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %collapsed_62 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    %180 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    %181 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    %182 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%160, %cst_6 : tensor<1x14x14x256xf32>, tensor<1x1x256x512xf32>) outs(%162 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %183 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_21, %182 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%161 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x7x7x512xf32>
    %184 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x7x7x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %185 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.subf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    %186 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %collapsed_62 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    %187 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    %188 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    %189 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %188 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global181 = %189 : tensor<1x512x7x7xf32>
    %190 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189 : tensor<1x512x7x7xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = arith.minf %in, %cst_2 : f32
      %222 = arith.maxf %221, %cst_17 : f32
      linalg.yield %222 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global182 = %190 : tensor<1x512x7x7xf32>
    %191 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190 : tensor<1x512x7x7xf32>) outs(%161 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_64 = tensor.pad %191 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %192 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_64, %cst_5 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%162 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %193 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_21, %192 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%161 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x7x7x512xf32>
    %194 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%193 : tensor<1x7x7x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %195 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.subf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    %196 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195, %collapsed_62 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    %197 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    %198 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global189 = %198 : tensor<1x512x7x7xf32>
    %199 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198 : tensor<1x512x7x7xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = arith.minf %in, %cst_2 : f32
      %222 = arith.maxf %221, %cst_17 : f32
      linalg.yield %222 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global190 = %199 : tensor<1x512x7x7xf32>
    %200 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199 : tensor<1x512x7x7xf32>) outs(%161 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_65 = tensor.pad %200 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_17 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %201 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_65, %cst_5 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%162 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %202 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_21, %201 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%161 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x7x7x512xf32>
    %203 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202 : tensor<1x7x7x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %204 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.subf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    %205 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %collapsed_62 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    %206 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.mulf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    %207 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206, %cst : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    %208 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207, %190 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global198 = %208 : tensor<1x512x7x7xf32>
    %209 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208 : tensor<1x512x7x7xf32>) outs(%165 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = arith.minf %in, %cst_2 : f32
      %222 = arith.maxf %221, %cst_17 : f32
      linalg.yield %222 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global199 = %209 : tensor<1x512x7x7xf32>
    %210 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209 : tensor<1x512x7x7xf32>) outs(%161 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %211 = tensor.empty() : tensor<1x1x1x512xf32>
    %212 = linalg.fill ins(%cst_17 : f32) outs(%211 : tensor<1x1x1x512xf32>) -> tensor<1x1x1x512xf32>
    %213 = tensor.empty() : tensor<7x7xf32>
    %214 = linalg.pooling_nhwc_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%210, %213 : tensor<1x7x7x512xf32>, tensor<7x7xf32>) outs(%212 : tensor<1x1x1x512xf32>) -> tensor<1x1x1x512xf32>
    %215 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214 : tensor<1x1x1x512xf32>) outs(%211 : tensor<1x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %221 = arith.divf %in, %cst_4 : f32
      linalg.yield %221 : f32
    } -> tensor<1x1x1x512xf32>
    %collapsed_66 = tensor.collapse_shape %215 [[0], [1, 2], [3]] : tensor<1x1x1x512xf32> into tensor<1x1x512xf32>
    %216 = tensor.empty() : tensor<1x1x1000xf32>
    %217 = linalg.fill ins(%cst_17 : f32) outs(%216 : tensor<1x1x1000xf32>) -> tensor<1x1x1000xf32>
    %218 = linalg.batch_matmul ins(%collapsed_66, %cst_23 : tensor<1x1x512xf32>, tensor<1x512x1000xf32>) outs(%217 : tensor<1x1x1000xf32>) -> tensor<1x1x1000xf32>
    %collapsed_67 = tensor.collapse_shape %218 [[0, 1], [2]] : tensor<1x1x1000xf32> into tensor<1x1000xf32>
    %219 = tensor.empty() : tensor<1x1000xf32>
    %220 = linalg.generic {indexing_maps = [#map6, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%collapsed_67, %cst_22 : tensor<1x1000xf32>, tensor<1x1000xf32>) outs(%219 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_68: f32, %out: f32):
      %221 = arith.addf %in, %in_68 : f32
      linalg.yield %221 : f32
    } -> tensor<1x1000xf32>
    return %220 : tensor<1x1000xf32>
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
    %29 = ml_program.global_load @global79 : tensor<1x128x1x1xf32>
    %30 = ml_program.global_load @global82 : tensor<1x128x28x28xf32>
    %31 = ml_program.global_load @global83 : tensor<1x128x28x28xf32>
    %32 = ml_program.global_load @global97 : tensor<1x128x28x28xf32>
    %33 = ml_program.global_load @global98 : tensor<1x128x28x28xf32>
    %34 = ml_program.global_load @global105 : tensor<1x128x28x28xf32>
    %35 = ml_program.global_load @global106 : tensor<1x128x28x28xf32>
    %36 = ml_program.global_load @global114 : tensor<1x128x28x28xf32>
    %37 = ml_program.global_load @global115 : tensor<1x128x28x28xf32>
    %38 = ml_program.global_load @global121 : tensor<1x256x1x1xf32>
    %39 = ml_program.global_load @global124 : tensor<1x256x14x14xf32>
    %40 = ml_program.global_load @global125 : tensor<1x256x14x14xf32>
    %41 = ml_program.global_load @global139 : tensor<1x256x14x14xf32>
    %42 = ml_program.global_load @global140 : tensor<1x256x14x14xf32>
    %43 = ml_program.global_load @global147 : tensor<1x256x14x14xf32>
    %44 = ml_program.global_load @global148 : tensor<1x256x14x14xf32>
    %45 = ml_program.global_load @global156 : tensor<1x256x14x14xf32>
    %46 = ml_program.global_load @global157 : tensor<1x256x14x14xf32>
    %47 = ml_program.global_load @global163 : tensor<1x512x1x1xf32>
    %48 = ml_program.global_load @global166 : tensor<1x512x7x7xf32>
    %49 = ml_program.global_load @global167 : tensor<1x512x7x7xf32>
    %50 = ml_program.global_load @global181 : tensor<1x512x7x7xf32>
    %51 = ml_program.global_load @global182 : tensor<1x512x7x7xf32>
    %52 = ml_program.global_load @global189 : tensor<1x512x7x7xf32>
    %53 = ml_program.global_load @global190 : tensor<1x512x7x7xf32>
    %54 = ml_program.global_load @global198 : tensor<1x512x7x7xf32>
    %55 = ml_program.global_load @global199 : tensor<1x512x7x7xf32>
    %expanded = tensor.expand_shape %arg0 [[0, 1], [2]] : tensor<1x1000xf32> into tensor<1x1x1000xf32>
    %56 = tensor.empty() : tensor<1x1000x512xf32>
    %57 = linalg.generic {indexing_maps = [#map7, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<1x512x1000xf32>) outs(%56 : tensor<1x1000x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1000x512xf32>
    %58 = tensor.empty() : tensor<1x1x512xf32>
    %59 = linalg.fill ins(%cst_6 : f32) outs(%58 : tensor<1x1x512xf32>) -> tensor<1x1x512xf32>
    %60 = linalg.batch_matmul ins(%expanded, %57 : tensor<1x1x1000xf32>, tensor<1x1000x512xf32>) outs(%59 : tensor<1x1x512xf32>) -> tensor<1x1x512xf32>
    %61 = tensor.empty() : tensor<1x7x7x512xf32>
    %collapsed = tensor.collapse_shape %60 [[0, 1], [2]] : tensor<1x1x512xf32> into tensor<1x512xf32>
    %62 = linalg.generic {indexing_maps = [#map8, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed, %cst_4 : tensor<1x512xf32>, tensor<1x7x7x512xf32>) outs(%61 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x7x7x512xf32>
    %63 = tensor.empty() : tensor<1x512x7x7xf32>
    %64 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62 : tensor<1x7x7x512xf32>) outs(%63 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %65 = tensor.empty() : tensor<1x512x7x7xi1>
    %66 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54, %55 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%65 : tensor<1x512x7x7xi1>) {
    ^bb0(%in: f32, %in_78: f32, %out: i1):
      %356 = arith.cmpf oeq, %in, %in_78 : f32
      linalg.yield %356 : i1
    } -> tensor<1x512x7x7xi1>
    %67 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %64, %cst : tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<1xf32>) outs(%63 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: i1, %in_78: f32, %in_79: f32, %out: f32):
      %356 = arith.select %in, %in_78, %in_79 : f32
      linalg.yield %356 : f32
    } -> tensor<1x512x7x7xf32>
    %collapsed_7 = tensor.collapse_shape %3 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %68 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_7, %67 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%63 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x512x7x7xf32>
    %collapsed_8 = tensor.collapse_shape %47 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %69 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_8, %68 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%63 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x512x7x7xf32>
    %70 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69 : tensor<1x512x7x7xf32>) outs(%61 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %71 = tensor.empty() : tensor<512x3x3x512xf32>
    %72 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<512x3x3x512xf32>) outs(%71 : tensor<512x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x3x3x512xf32>
    %73 = tensor.empty() : tensor<512xf32>
    %74 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%71 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %356 = linalg.index 0 : index
      %357 = linalg.index 1 : index
      %358 = arith.subi %c2, %357 : index
      %359 = linalg.index 2 : index
      %360 = linalg.index 3 : index
      %extracted = tensor.extract %72[%356, %358, %359, %360] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %75 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%71 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %356 = linalg.index 0 : index
      %357 = linalg.index 1 : index
      %358 = linalg.index 2 : index
      %359 = arith.subi %c2, %358 : index
      %360 = linalg.index 3 : index
      %extracted = tensor.extract %74[%356, %357, %359, %360] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded = tensor.pad %70 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %76 = tensor.empty() : tensor<3x3x512x512xf32>
    %77 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75 : tensor<512x3x3x512xf32>) outs(%76 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %78 = linalg.fill ins(%cst_6 : f32) outs(%61 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %79 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded, %77 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%78 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %80 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %79 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%61 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x7x7x512xf32>
    %81 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80 : tensor<1x7x7x512xf32>) outs(%63 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %82 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52, %53 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%65 : tensor<1x512x7x7xi1>) {
    ^bb0(%in: f32, %in_78: f32, %out: i1):
      %356 = arith.cmpf oeq, %in, %in_78 : f32
      linalg.yield %356 : i1
    } -> tensor<1x512x7x7xi1>
    %83 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %81, %cst : tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<1xf32>) outs(%63 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: i1, %in_78: f32, %in_79: f32, %out: f32):
      %356 = arith.select %in, %in_78, %in_79 : f32
      linalg.yield %356 : f32
    } -> tensor<1x512x7x7xf32>
    %84 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_7, %83 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%63 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x512x7x7xf32>
    %85 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_8, %84 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%63 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x512x7x7xf32>
    %86 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85 : tensor<1x512x7x7xf32>) outs(%61 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_9 = tensor.pad %86 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %87 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_9, %77 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%78 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %88 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %87 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%61 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x7x7x512xf32>
    %89 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88 : tensor<1x7x7x512xf32>) outs(%63 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %90 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %89 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%63 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x512x7x7xf32>
    %91 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %51 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%65 : tensor<1x512x7x7xi1>) {
    ^bb0(%in: f32, %in_78: f32, %out: i1):
      %356 = arith.cmpf oeq, %in, %in_78 : f32
      linalg.yield %356 : i1
    } -> tensor<1x512x7x7xi1>
    %92 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91, %90, %cst : tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<1xf32>) outs(%63 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: i1, %in_78: f32, %in_79: f32, %out: f32):
      %356 = arith.select %in, %in_78, %in_79 : f32
      linalg.yield %356 : f32
    } -> tensor<1x512x7x7xf32>
    %93 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_7, %92 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%63 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x512x7x7xf32>
    %94 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_8, %93 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%63 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x512x7x7xf32>
    %95 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<1x512x7x7xf32>) outs(%61 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %96 = tensor.empty() : tensor<256x1x1x512xf32>
    %97 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1 : tensor<512x1x1x256xf32>) outs(%96 : tensor<256x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1x1x512xf32>
    %98 = tensor.empty() : tensor<256xf32>
    %padded_10 = tensor.pad %97 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<256x1x1x512xf32> to tensor<256x2x2x512xf32>
    %expanded_11 = tensor.expand_shape %padded_10 [[0, 1], [2, 3], [4], [5]] : tensor<256x2x2x512xf32> into tensor<256x1x2x1x2x512xf32>
    %99 = tensor.empty() : tensor<2x2x256x1x1x512xf32>
    %100 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_11 : tensor<256x1x2x1x2x512xf32>) outs(%99 : tensor<2x2x256x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x256x1x1x512xf32>
    %collapsed_12 = tensor.collapse_shape %95 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %collapsed_13 = tensor.collapse_shape %100 [[0, 1, 2, 3, 4], [5]] : tensor<2x2x256x1x1x512xf32> into tensor<1024x512xf32>
    %101 = tensor.empty() : tensor<49x1024xf32>
    %102 = linalg.fill ins(%cst_6 : f32) outs(%101 : tensor<49x1024xf32>) -> tensor<49x1024xf32>
    %103 = tensor.empty() : tensor<512x1024xf32>
    %104 = linalg.generic {indexing_maps = [#map14, #map6], iterator_types = ["parallel", "parallel"]} ins(%collapsed_13 : tensor<1024x512xf32>) outs(%103 : tensor<512x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1024xf32>
    %105 = linalg.matmul ins(%collapsed_12, %104 : tensor<49x512xf32>, tensor<512x1024xf32>) outs(%102 : tensor<49x1024xf32>) -> tensor<49x1024xf32>
    %106 = linalg.generic {indexing_maps = [#map15, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%cst_0, %105 : tensor<1024xf32>, tensor<49x1024xf32>) outs(%101 : tensor<49x1024xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<49x1024xf32>
    %expanded_14 = tensor.expand_shape %106 [[0, 1, 2], [3, 4, 5]] : tensor<49x1024xf32> into tensor<1x7x7x2x2x256xf32>
    %107 = tensor.empty() : tensor<1x7x2x7x2x256xf32>
    %108 = linalg.generic {indexing_maps = [#map16, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_14 : tensor<1x7x7x2x2x256xf32>) outs(%107 : tensor<1x7x2x7x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x2x7x2x256xf32>
    %collapsed_15 = tensor.collapse_shape %108 [[0], [1, 2], [3, 4], [5]] : tensor<1x7x2x7x2x256xf32> into tensor<1x14x14x256xf32>
    %109 = tensor.empty() : tensor<1x14x14x256xf32>
    %expanded_16 = tensor.expand_shape %98 [[0, 1]] : tensor<256xf32> into tensor<1x256xf32>
    %110 = linalg.generic {indexing_maps = [#map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_15, %expanded_16 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%109 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_17 = tensor.pad %95 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %111 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_17, %77 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%78 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %112 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %111 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%61 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x7x7x512xf32>
    %113 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112 : tensor<1x7x7x512xf32>) outs(%63 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %114 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %49 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%65 : tensor<1x512x7x7xi1>) {
    ^bb0(%in: f32, %in_78: f32, %out: i1):
      %356 = arith.cmpf oeq, %in, %in_78 : f32
      linalg.yield %356 : i1
    } -> tensor<1x512x7x7xi1>
    %115 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %113, %cst : tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<1xf32>) outs(%63 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: i1, %in_78: f32, %in_79: f32, %out: f32):
      %356 = arith.select %in, %in_78, %in_79 : f32
      linalg.yield %356 : f32
    } -> tensor<1x512x7x7xf32>
    %116 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_7, %115 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%63 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x512x7x7xf32>
    %117 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_8, %116 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%63 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x512x7x7xf32>
    %118 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117 : tensor<1x512x7x7xf32>) outs(%61 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %119 = tensor.empty() : tensor<256x3x3x512xf32>
    %120 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<512x3x3x256xf32>) outs(%119 : tensor<256x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x512xf32>
    %padded_18 = tensor.pad %120 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<256x3x3x512xf32> to tensor<256x4x4x512xf32>
    %expanded_19 = tensor.expand_shape %padded_18 [[0], [1, 2], [3, 4], [5]] : tensor<256x4x4x512xf32> into tensor<256x2x2x2x2x512xf32>
    %121 = tensor.empty() : tensor<2x2x256x2x2x512xf32>
    %122 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_19 : tensor<256x2x2x2x2x512xf32>) outs(%121 : tensor<2x2x256x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x256x2x2x512xf32>
    %collapsed_20 = tensor.collapse_shape %122 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x256x2x2x512xf32> into tensor<1024x2x2x512xf32>
    %123 = tensor.empty() : tensor<1024x2x2x512xf32>
    %124 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%123 : tensor<1024x2x2x512xf32>) {
    ^bb0(%out: f32):
      %356 = linalg.index 0 : index
      %357 = linalg.index 1 : index
      %358 = arith.subi %c1, %357 : index
      %359 = linalg.index 2 : index
      %360 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_20[%356, %358, %359, %360] : tensor<1024x2x2x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<1024x2x2x512xf32>
    %125 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%123 : tensor<1024x2x2x512xf32>) {
    ^bb0(%out: f32):
      %356 = linalg.index 0 : index
      %357 = linalg.index 1 : index
      %358 = linalg.index 2 : index
      %359 = arith.subi %c1, %358 : index
      %360 = linalg.index 3 : index
      %extracted = tensor.extract %124[%356, %357, %359, %360] : tensor<1024x2x2x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<1024x2x2x512xf32>
    %padded_21 = tensor.pad %118 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %126 = tensor.empty() : tensor<2x2x512x1024xf32>
    %127 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125 : tensor<1024x2x2x512xf32>) outs(%126 : tensor<2x2x512x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x512x1024xf32>
    %128 = tensor.empty() : tensor<1x8x8x1024xf32>
    %129 = linalg.fill ins(%cst_6 : f32) outs(%128 : tensor<1x8x8x1024xf32>) -> tensor<1x8x8x1024xf32>
    %130 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_21, %127 : tensor<1x9x9x512xf32>, tensor<2x2x512x1024xf32>) outs(%129 : tensor<1x8x8x1024xf32>) -> tensor<1x8x8x1024xf32>
    %131 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %130 : tensor<1024xf32>, tensor<1x8x8x1024xf32>) outs(%128 : tensor<1x8x8x1024xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x8x8x1024xf32>
    %expanded_22 = tensor.expand_shape %131 [[0], [1], [2], [3, 4, 5]] : tensor<1x8x8x1024xf32> into tensor<1x8x8x2x2x256xf32>
    %132 = tensor.empty() : tensor<1x8x2x8x2x256xf32>
    %133 = linalg.generic {indexing_maps = [#map16, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_22 : tensor<1x8x8x2x2x256xf32>) outs(%132 : tensor<1x8x2x8x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x2x8x2x256xf32>
    %collapsed_23 = tensor.collapse_shape %133 [[0], [1, 2], [3, 4], [5]] : tensor<1x8x2x8x2x256xf32> into tensor<1x16x16x256xf32>
    %extracted_slice = tensor.extract_slice %collapsed_23[0, 1, 1, 0] [1, 14, 14, 256] [1, 1, 1, 1] : tensor<1x16x16x256xf32> to tensor<1x14x14x256xf32>
    %134 = linalg.generic {indexing_maps = [#map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice, %expanded_16 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%109 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x14x14x256xf32>
    %135 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110, %134 : tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) outs(%109 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x14x14x256xf32>
    %136 = tensor.empty() : tensor<1x256x14x14xf32>
    %137 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135 : tensor<1x14x14x256xf32>) outs(%136 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %138 = tensor.empty() : tensor<1x256x14x14xi1>
    %139 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %46 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_78: f32, %out: i1):
      %356 = arith.cmpf oeq, %in, %in_78 : f32
      linalg.yield %356 : i1
    } -> tensor<1x256x14x14xi1>
    %140 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139, %137, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%136 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_78: f32, %in_79: f32, %out: f32):
      %356 = arith.select %in, %in_78, %in_79 : f32
      linalg.yield %356 : f32
    } -> tensor<1x256x14x14xf32>
    %collapsed_24 = tensor.collapse_shape %7 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %141 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_24, %140 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%136 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x256x14x14xf32>
    %collapsed_25 = tensor.collapse_shape %38 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %142 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_25, %141 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%136 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x256x14x14xf32>
    %143 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x256x14x14xf32>) outs(%109 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %144 = tensor.empty() : tensor<256x3x3x256xf32>
    %145 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<256x3x3x256xf32>) outs(%144 : tensor<256x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x256xf32>
    %146 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%144 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %356 = linalg.index 0 : index
      %357 = linalg.index 1 : index
      %358 = arith.subi %c2, %357 : index
      %359 = linalg.index 2 : index
      %360 = linalg.index 3 : index
      %extracted = tensor.extract %145[%356, %358, %359, %360] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %147 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%144 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %356 = linalg.index 0 : index
      %357 = linalg.index 1 : index
      %358 = linalg.index 2 : index
      %359 = arith.subi %c2, %358 : index
      %360 = linalg.index 3 : index
      %extracted = tensor.extract %146[%356, %357, %359, %360] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_26 = tensor.pad %143 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %148 = tensor.empty() : tensor<3x3x256x256xf32>
    %149 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147 : tensor<256x3x3x256xf32>) outs(%148 : tensor<3x3x256x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x256x256xf32>
    %150 = linalg.fill ins(%cst_6 : f32) outs(%109 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %151 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_26, %149 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%150 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %152 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %151 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%109 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x14x14x256xf32>
    %153 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x14x14x256xf32>) outs(%136 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %154 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %44 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_78: f32, %out: i1):
      %356 = arith.cmpf oeq, %in, %in_78 : f32
      linalg.yield %356 : i1
    } -> tensor<1x256x14x14xi1>
    %155 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %153, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%136 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_78: f32, %in_79: f32, %out: f32):
      %356 = arith.select %in, %in_78, %in_79 : f32
      linalg.yield %356 : f32
    } -> tensor<1x256x14x14xf32>
    %156 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_24, %155 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%136 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x256x14x14xf32>
    %157 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_25, %156 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%136 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x256x14x14xf32>
    %158 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157 : tensor<1x256x14x14xf32>) outs(%109 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_27 = tensor.pad %158 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %159 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_27, %149 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%150 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %160 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %159 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%109 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x14x14x256xf32>
    %161 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160 : tensor<1x14x14x256xf32>) outs(%136 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %162 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140, %161 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%136 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x256x14x14xf32>
    %163 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %42 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_78: f32, %out: i1):
      %356 = arith.cmpf oeq, %in, %in_78 : f32
      linalg.yield %356 : i1
    } -> tensor<1x256x14x14xi1>
    %164 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %162, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%136 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_78: f32, %in_79: f32, %out: f32):
      %356 = arith.select %in, %in_78, %in_79 : f32
      linalg.yield %356 : f32
    } -> tensor<1x256x14x14xf32>
    %165 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_24, %164 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%136 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x256x14x14xf32>
    %166 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_25, %165 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%136 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x256x14x14xf32>
    %167 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166 : tensor<1x256x14x14xf32>) outs(%109 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %168 = tensor.empty() : tensor<128x1x1x256xf32>
    %169 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<256x1x1x128xf32>) outs(%168 : tensor<128x1x1x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x1x1x256xf32>
    %170 = tensor.empty() : tensor<128xf32>
    %padded_28 = tensor.pad %169 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<128x1x1x256xf32> to tensor<128x2x2x256xf32>
    %expanded_29 = tensor.expand_shape %padded_28 [[0, 1], [2, 3], [4], [5]] : tensor<128x2x2x256xf32> into tensor<128x1x2x1x2x256xf32>
    %171 = tensor.empty() : tensor<2x2x128x1x1x256xf32>
    %172 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_29 : tensor<128x1x2x1x2x256xf32>) outs(%171 : tensor<2x2x128x1x1x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x128x1x1x256xf32>
    %collapsed_30 = tensor.collapse_shape %167 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %collapsed_31 = tensor.collapse_shape %172 [[0, 1, 2, 3, 4], [5]] : tensor<2x2x128x1x1x256xf32> into tensor<512x256xf32>
    %173 = tensor.empty() : tensor<196x512xf32>
    %174 = linalg.fill ins(%cst_6 : f32) outs(%173 : tensor<196x512xf32>) -> tensor<196x512xf32>
    %175 = tensor.empty() : tensor<256x512xf32>
    %176 = linalg.generic {indexing_maps = [#map14, #map6], iterator_types = ["parallel", "parallel"]} ins(%collapsed_31 : tensor<512x256xf32>) outs(%175 : tensor<256x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x512xf32>
    %177 = linalg.matmul ins(%collapsed_30, %176 : tensor<196x256xf32>, tensor<256x512xf32>) outs(%174 : tensor<196x512xf32>) -> tensor<196x512xf32>
    %178 = linalg.generic {indexing_maps = [#map15, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%cst_1, %177 : tensor<512xf32>, tensor<196x512xf32>) outs(%173 : tensor<196x512xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<196x512xf32>
    %expanded_32 = tensor.expand_shape %178 [[0, 1, 2], [3, 4, 5]] : tensor<196x512xf32> into tensor<1x14x14x2x2x128xf32>
    %179 = tensor.empty() : tensor<1x14x2x14x2x128xf32>
    %180 = linalg.generic {indexing_maps = [#map16, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_32 : tensor<1x14x14x2x2x128xf32>) outs(%179 : tensor<1x14x2x14x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x2x14x2x128xf32>
    %collapsed_33 = tensor.collapse_shape %180 [[0], [1, 2], [3, 4], [5]] : tensor<1x14x2x14x2x128xf32> into tensor<1x28x28x128xf32>
    %181 = tensor.empty() : tensor<1x28x28x128xf32>
    %expanded_34 = tensor.expand_shape %170 [[0, 1]] : tensor<128xf32> into tensor<1x128xf32>
    %182 = linalg.generic {indexing_maps = [#map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_33, %expanded_34 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%181 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_35 = tensor.pad %167 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %183 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_35, %149 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%150 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %184 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %183 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%109 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x14x14x256xf32>
    %185 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<1x14x14x256xf32>) outs(%136 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %186 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %40 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_78: f32, %out: i1):
      %356 = arith.cmpf oeq, %in, %in_78 : f32
      linalg.yield %356 : i1
    } -> tensor<1x256x14x14xi1>
    %187 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %185, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%136 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_78: f32, %in_79: f32, %out: f32):
      %356 = arith.select %in, %in_78, %in_79 : f32
      linalg.yield %356 : f32
    } -> tensor<1x256x14x14xf32>
    %188 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_24, %187 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%136 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x256x14x14xf32>
    %189 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_25, %188 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%136 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x256x14x14xf32>
    %190 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189 : tensor<1x256x14x14xf32>) outs(%109 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %191 = tensor.empty() : tensor<128x3x3x256xf32>
    %192 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<256x3x3x128xf32>) outs(%191 : tensor<128x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x256xf32>
    %padded_36 = tensor.pad %192 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<128x3x3x256xf32> to tensor<128x4x4x256xf32>
    %expanded_37 = tensor.expand_shape %padded_36 [[0], [1, 2], [3, 4], [5]] : tensor<128x4x4x256xf32> into tensor<128x2x2x2x2x256xf32>
    %193 = tensor.empty() : tensor<2x2x128x2x2x256xf32>
    %194 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_37 : tensor<128x2x2x2x2x256xf32>) outs(%193 : tensor<2x2x128x2x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x128x2x2x256xf32>
    %collapsed_38 = tensor.collapse_shape %194 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x128x2x2x256xf32> into tensor<512x2x2x256xf32>
    %195 = tensor.empty() : tensor<512x2x2x256xf32>
    %196 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%195 : tensor<512x2x2x256xf32>) {
    ^bb0(%out: f32):
      %356 = linalg.index 0 : index
      %357 = linalg.index 1 : index
      %358 = arith.subi %c1, %357 : index
      %359 = linalg.index 2 : index
      %360 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_38[%356, %358, %359, %360] : tensor<512x2x2x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x2x2x256xf32>
    %197 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%195 : tensor<512x2x2x256xf32>) {
    ^bb0(%out: f32):
      %356 = linalg.index 0 : index
      %357 = linalg.index 1 : index
      %358 = linalg.index 2 : index
      %359 = arith.subi %c1, %358 : index
      %360 = linalg.index 3 : index
      %extracted = tensor.extract %196[%356, %357, %359, %360] : tensor<512x2x2x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x2x2x256xf32>
    %padded_39 = tensor.pad %190 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %198 = tensor.empty() : tensor<2x2x256x512xf32>
    %199 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197 : tensor<512x2x2x256xf32>) outs(%198 : tensor<2x2x256x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x256x512xf32>
    %200 = tensor.empty() : tensor<1x15x15x512xf32>
    %201 = linalg.fill ins(%cst_6 : f32) outs(%200 : tensor<1x15x15x512xf32>) -> tensor<1x15x15x512xf32>
    %202 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_39, %199 : tensor<1x16x16x256xf32>, tensor<2x2x256x512xf32>) outs(%201 : tensor<1x15x15x512xf32>) -> tensor<1x15x15x512xf32>
    %203 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1, %202 : tensor<512xf32>, tensor<1x15x15x512xf32>) outs(%200 : tensor<1x15x15x512xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x15x15x512xf32>
    %expanded_40 = tensor.expand_shape %203 [[0], [1], [2], [3, 4, 5]] : tensor<1x15x15x512xf32> into tensor<1x15x15x2x2x128xf32>
    %204 = tensor.empty() : tensor<1x15x2x15x2x128xf32>
    %205 = linalg.generic {indexing_maps = [#map16, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_40 : tensor<1x15x15x2x2x128xf32>) outs(%204 : tensor<1x15x2x15x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x15x2x15x2x128xf32>
    %collapsed_41 = tensor.collapse_shape %205 [[0], [1, 2], [3, 4], [5]] : tensor<1x15x2x15x2x128xf32> into tensor<1x30x30x128xf32>
    %extracted_slice_42 = tensor.extract_slice %collapsed_41[0, 1, 1, 0] [1, 28, 28, 128] [1, 1, 1, 1] : tensor<1x30x30x128xf32> to tensor<1x28x28x128xf32>
    %206 = linalg.generic {indexing_maps = [#map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_42, %expanded_34 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%181 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x28x28x128xf32>
    %207 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182, %206 : tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) outs(%181 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x28x28x128xf32>
    %208 = tensor.empty() : tensor<1x128x28x28xf32>
    %209 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207 : tensor<1x28x28x128xf32>) outs(%208 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %210 = tensor.empty() : tensor<1x128x28x28xi1>
    %211 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %37 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%210 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_78: f32, %out: i1):
      %356 = arith.cmpf oeq, %in, %in_78 : f32
      linalg.yield %356 : i1
    } -> tensor<1x128x28x28xi1>
    %212 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %209, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%208 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_78: f32, %in_79: f32, %out: f32):
      %356 = arith.select %in, %in_78, %in_79 : f32
      linalg.yield %356 : f32
    } -> tensor<1x128x28x28xf32>
    %collapsed_43 = tensor.collapse_shape %11 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %213 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_43, %212 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%208 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x128x28x28xf32>
    %collapsed_44 = tensor.collapse_shape %29 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %214 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_44, %213 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%208 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x128x28x28xf32>
    %215 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214 : tensor<1x128x28x28xf32>) outs(%181 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %216 = tensor.empty() : tensor<128x3x3x128xf32>
    %217 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<128x3x3x128xf32>) outs(%216 : tensor<128x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x128xf32>
    %218 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%216 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %356 = linalg.index 0 : index
      %357 = linalg.index 1 : index
      %358 = arith.subi %c2, %357 : index
      %359 = linalg.index 2 : index
      %360 = linalg.index 3 : index
      %extracted = tensor.extract %217[%356, %358, %359, %360] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %219 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%216 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %356 = linalg.index 0 : index
      %357 = linalg.index 1 : index
      %358 = linalg.index 2 : index
      %359 = arith.subi %c2, %358 : index
      %360 = linalg.index 3 : index
      %extracted = tensor.extract %218[%356, %357, %359, %360] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %padded_45 = tensor.pad %215 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %220 = tensor.empty() : tensor<3x3x128x128xf32>
    %221 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219 : tensor<128x3x3x128xf32>) outs(%220 : tensor<3x3x128x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x128x128xf32>
    %222 = linalg.fill ins(%cst_6 : f32) outs(%181 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %223 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_45, %221 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%222 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %224 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %223 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%181 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x28x28x128xf32>
    %225 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224 : tensor<1x28x28x128xf32>) outs(%208 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %226 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34, %35 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%210 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_78: f32, %out: i1):
      %356 = arith.cmpf oeq, %in, %in_78 : f32
      linalg.yield %356 : i1
    } -> tensor<1x128x28x28xi1>
    %227 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226, %225, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%208 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_78: f32, %in_79: f32, %out: f32):
      %356 = arith.select %in, %in_78, %in_79 : f32
      linalg.yield %356 : f32
    } -> tensor<1x128x28x28xf32>
    %228 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_43, %227 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%208 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x128x28x28xf32>
    %229 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_44, %228 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%208 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x128x28x28xf32>
    %230 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229 : tensor<1x128x28x28xf32>) outs(%181 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_46 = tensor.pad %230 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %231 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_46, %221 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%222 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %232 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %231 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%181 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x28x28x128xf32>
    %233 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232 : tensor<1x28x28x128xf32>) outs(%208 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %234 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %233 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%208 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x128x28x28xf32>
    %235 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %33 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%210 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_78: f32, %out: i1):
      %356 = arith.cmpf oeq, %in, %in_78 : f32
      linalg.yield %356 : i1
    } -> tensor<1x128x28x28xi1>
    %236 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235, %234, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%208 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_78: f32, %in_79: f32, %out: f32):
      %356 = arith.select %in, %in_78, %in_79 : f32
      linalg.yield %356 : f32
    } -> tensor<1x128x28x28xf32>
    %237 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_43, %236 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%208 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x128x28x28xf32>
    %238 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_44, %237 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%208 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x128x28x28xf32>
    %239 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238 : tensor<1x128x28x28xf32>) outs(%181 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %240 = tensor.empty() : tensor<64x1x1x128xf32>
    %241 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<128x1x1x64xf32>) outs(%240 : tensor<64x1x1x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x1x1x128xf32>
    %242 = tensor.empty() : tensor<64xf32>
    %padded_47 = tensor.pad %241 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<64x1x1x128xf32> to tensor<64x2x2x128xf32>
    %expanded_48 = tensor.expand_shape %padded_47 [[0, 1], [2, 3], [4], [5]] : tensor<64x2x2x128xf32> into tensor<64x1x2x1x2x128xf32>
    %243 = tensor.empty() : tensor<2x2x64x1x1x128xf32>
    %244 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_48 : tensor<64x1x2x1x2x128xf32>) outs(%243 : tensor<2x2x64x1x1x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x64x1x1x128xf32>
    %collapsed_49 = tensor.collapse_shape %239 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %collapsed_50 = tensor.collapse_shape %244 [[0, 1, 2, 3, 4], [5]] : tensor<2x2x64x1x1x128xf32> into tensor<256x128xf32>
    %245 = tensor.empty() : tensor<784x256xf32>
    %246 = linalg.fill ins(%cst_6 : f32) outs(%245 : tensor<784x256xf32>) -> tensor<784x256xf32>
    %247 = tensor.empty() : tensor<128x256xf32>
    %248 = linalg.generic {indexing_maps = [#map14, #map6], iterator_types = ["parallel", "parallel"]} ins(%collapsed_50 : tensor<256x128xf32>) outs(%247 : tensor<128x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x256xf32>
    %249 = linalg.matmul ins(%collapsed_49, %248 : tensor<784x128xf32>, tensor<128x256xf32>) outs(%246 : tensor<784x256xf32>) -> tensor<784x256xf32>
    %250 = linalg.generic {indexing_maps = [#map15, #map6, #map6], iterator_types = ["parallel", "parallel"]} ins(%cst_2, %249 : tensor<256xf32>, tensor<784x256xf32>) outs(%245 : tensor<784x256xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<784x256xf32>
    %expanded_51 = tensor.expand_shape %250 [[0, 1, 2], [3, 4, 5]] : tensor<784x256xf32> into tensor<1x28x28x2x2x64xf32>
    %251 = tensor.empty() : tensor<1x28x2x28x2x64xf32>
    %252 = linalg.generic {indexing_maps = [#map16, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_51 : tensor<1x28x28x2x2x64xf32>) outs(%251 : tensor<1x28x2x28x2x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x2x28x2x64xf32>
    %collapsed_52 = tensor.collapse_shape %252 [[0], [1, 2], [3, 4], [5]] : tensor<1x28x2x28x2x64xf32> into tensor<1x56x56x64xf32>
    %253 = tensor.empty() : tensor<1x56x56x64xf32>
    %expanded_53 = tensor.expand_shape %242 [[0, 1]] : tensor<64xf32> into tensor<1x64xf32>
    %254 = linalg.generic {indexing_maps = [#map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_52, %expanded_53 : tensor<1x56x56x64xf32>, tensor<1x64xf32>) outs(%253 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x56x56x64xf32>
    %padded_54 = tensor.pad %239 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %255 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_54, %221 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%222 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %256 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %255 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%181 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x28x28x128xf32>
    %257 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256 : tensor<1x28x28x128xf32>) outs(%208 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %258 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30, %31 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%210 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_78: f32, %out: i1):
      %356 = arith.cmpf oeq, %in, %in_78 : f32
      linalg.yield %356 : i1
    } -> tensor<1x128x28x28xi1>
    %259 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258, %257, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%208 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_78: f32, %in_79: f32, %out: f32):
      %356 = arith.select %in, %in_78, %in_79 : f32
      linalg.yield %356 : f32
    } -> tensor<1x128x28x28xf32>
    %260 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_43, %259 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%208 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x128x28x28xf32>
    %261 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_44, %260 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%208 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x128x28x28xf32>
    %262 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261 : tensor<1x128x28x28xf32>) outs(%181 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %263 = tensor.empty() : tensor<64x3x3x128xf32>
    %264 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<128x3x3x64xf32>) outs(%263 : tensor<64x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x128xf32>
    %padded_55 = tensor.pad %264 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<64x3x3x128xf32> to tensor<64x4x4x128xf32>
    %expanded_56 = tensor.expand_shape %padded_55 [[0], [1, 2], [3, 4], [5]] : tensor<64x4x4x128xf32> into tensor<64x2x2x2x2x128xf32>
    %265 = tensor.empty() : tensor<2x2x64x2x2x128xf32>
    %266 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_56 : tensor<64x2x2x2x2x128xf32>) outs(%265 : tensor<2x2x64x2x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x64x2x2x128xf32>
    %collapsed_57 = tensor.collapse_shape %266 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x64x2x2x128xf32> into tensor<256x2x2x128xf32>
    %267 = tensor.empty() : tensor<256x2x2x128xf32>
    %268 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%267 : tensor<256x2x2x128xf32>) {
    ^bb0(%out: f32):
      %356 = linalg.index 0 : index
      %357 = linalg.index 1 : index
      %358 = arith.subi %c1, %357 : index
      %359 = linalg.index 2 : index
      %360 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_57[%356, %358, %359, %360] : tensor<256x2x2x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x2x2x128xf32>
    %269 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%267 : tensor<256x2x2x128xf32>) {
    ^bb0(%out: f32):
      %356 = linalg.index 0 : index
      %357 = linalg.index 1 : index
      %358 = linalg.index 2 : index
      %359 = arith.subi %c1, %358 : index
      %360 = linalg.index 3 : index
      %extracted = tensor.extract %268[%356, %357, %359, %360] : tensor<256x2x2x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x2x2x128xf32>
    %padded_58 = tensor.pad %262 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %270 = tensor.empty() : tensor<2x2x128x256xf32>
    %271 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<256x2x2x128xf32>) outs(%270 : tensor<2x2x128x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x128x256xf32>
    %272 = tensor.empty() : tensor<1x29x29x256xf32>
    %273 = linalg.fill ins(%cst_6 : f32) outs(%272 : tensor<1x29x29x256xf32>) -> tensor<1x29x29x256xf32>
    %274 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_58, %271 : tensor<1x30x30x128xf32>, tensor<2x2x128x256xf32>) outs(%273 : tensor<1x29x29x256xf32>) -> tensor<1x29x29x256xf32>
    %275 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_2, %274 : tensor<256xf32>, tensor<1x29x29x256xf32>) outs(%272 : tensor<1x29x29x256xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x29x29x256xf32>
    %expanded_59 = tensor.expand_shape %275 [[0], [1], [2], [3, 4, 5]] : tensor<1x29x29x256xf32> into tensor<1x29x29x2x2x64xf32>
    %276 = tensor.empty() : tensor<1x29x2x29x2x64xf32>
    %277 = linalg.generic {indexing_maps = [#map16, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_59 : tensor<1x29x29x2x2x64xf32>) outs(%276 : tensor<1x29x2x29x2x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x29x2x29x2x64xf32>
    %collapsed_60 = tensor.collapse_shape %277 [[0], [1, 2], [3, 4], [5]] : tensor<1x29x2x29x2x64xf32> into tensor<1x58x58x64xf32>
    %extracted_slice_61 = tensor.extract_slice %collapsed_60[0, 1, 1, 0] [1, 56, 56, 64] [1, 1, 1, 1] : tensor<1x58x58x64xf32> to tensor<1x56x56x64xf32>
    %278 = linalg.generic {indexing_maps = [#map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_61, %expanded_53 : tensor<1x56x56x64xf32>, tensor<1x64xf32>) outs(%253 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x56x56x64xf32>
    %279 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %278 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%253 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x56x56x64xf32>
    %280 = tensor.empty() : tensor<1x64x56x56xf32>
    %281 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279 : tensor<1x56x56x64xf32>) outs(%280 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %282 = tensor.empty() : tensor<1x64x56x56xi1>
    %283 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %28 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%282 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_78: f32, %out: i1):
      %356 = arith.cmpf oeq, %in, %in_78 : f32
      linalg.yield %356 : i1
    } -> tensor<1x64x56x56xi1>
    %284 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283, %281, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%280 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_78: f32, %in_79: f32, %out: f32):
      %356 = arith.select %in, %in_78, %in_79 : f32
      linalg.yield %356 : f32
    } -> tensor<1x64x56x56xf32>
    %collapsed_62 = tensor.collapse_shape %14 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %285 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_62, %284 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%280 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x64x56x56xf32>
    %collapsed_63 = tensor.collapse_shape %16 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %286 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_63, %285 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%280 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x64x56x56xf32>
    %287 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%286 : tensor<1x64x56x56xf32>) outs(%253 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %288 = tensor.empty() : tensor<64x3x3x64xf32>
    %289 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<64x3x3x64xf32>) outs(%288 : tensor<64x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x64xf32>
    %290 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%288 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %356 = linalg.index 0 : index
      %357 = linalg.index 1 : index
      %358 = arith.subi %c2, %357 : index
      %359 = linalg.index 2 : index
      %360 = linalg.index 3 : index
      %extracted = tensor.extract %289[%356, %358, %359, %360] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %291 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%288 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %356 = linalg.index 0 : index
      %357 = linalg.index 1 : index
      %358 = linalg.index 2 : index
      %359 = arith.subi %c2, %358 : index
      %360 = linalg.index 3 : index
      %extracted = tensor.extract %290[%356, %357, %359, %360] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %padded_64 = tensor.pad %287 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %292 = tensor.empty() : tensor<3x3x64x64xf32>
    %293 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291 : tensor<64x3x3x64xf32>) outs(%292 : tensor<3x3x64x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x64x64xf32>
    %294 = linalg.fill ins(%cst_6 : f32) outs(%253 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %295 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_64, %293 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%294 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %296 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242, %295 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%253 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x56x56x64xf32>
    %297 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296 : tensor<1x56x56x64xf32>) outs(%280 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %298 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %26 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%282 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_78: f32, %out: i1):
      %356 = arith.cmpf oeq, %in, %in_78 : f32
      linalg.yield %356 : i1
    } -> tensor<1x64x56x56xi1>
    %299 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %297, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%280 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_78: f32, %in_79: f32, %out: f32):
      %356 = arith.select %in, %in_78, %in_79 : f32
      linalg.yield %356 : f32
    } -> tensor<1x64x56x56xf32>
    %300 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_62, %299 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%280 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x64x56x56xf32>
    %301 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_63, %300 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%280 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x64x56x56xf32>
    %302 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301 : tensor<1x64x56x56xf32>) outs(%253 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_65 = tensor.pad %302 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %303 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_65, %293 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%294 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %304 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242, %303 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%253 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x56x56x64xf32>
    %305 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304 : tensor<1x56x56x64xf32>) outs(%280 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %306 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284, %305 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%280 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x64x56x56xf32>
    %307 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %24 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%282 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_78: f32, %out: i1):
      %356 = arith.cmpf oeq, %in, %in_78 : f32
      linalg.yield %356 : i1
    } -> tensor<1x64x56x56xi1>
    %308 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307, %306, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%280 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_78: f32, %in_79: f32, %out: f32):
      %356 = arith.select %in, %in_78, %in_79 : f32
      linalg.yield %356 : f32
    } -> tensor<1x64x56x56xf32>
    %309 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_62, %308 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%280 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x64x56x56xf32>
    %310 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_63, %309 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%280 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x64x56x56xf32>
    %311 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310 : tensor<1x64x56x56xf32>) outs(%253 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_66 = tensor.pad %311 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %312 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_66, %293 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%294 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %313 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242, %312 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%253 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x56x56x64xf32>
    %314 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313 : tensor<1x56x56x64xf32>) outs(%280 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %315 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %22 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%282 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_78: f32, %out: i1):
      %356 = arith.cmpf oeq, %in, %in_78 : f32
      linalg.yield %356 : i1
    } -> tensor<1x64x56x56xi1>
    %316 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315, %314, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%280 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_78: f32, %in_79: f32, %out: f32):
      %356 = arith.select %in, %in_78, %in_79 : f32
      linalg.yield %356 : f32
    } -> tensor<1x64x56x56xf32>
    %317 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_62, %316 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%280 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x64x56x56xf32>
    %318 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_63, %317 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%280 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x64x56x56xf32>
    %319 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318 : tensor<1x64x56x56xf32>) outs(%253 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_67 = tensor.pad %319 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %320 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_67, %293 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%294 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %321 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242, %320 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%253 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x56x56x64xf32>
    %322 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308 : tensor<1x64x56x56xf32>) outs(%253 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %323 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %322 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%253 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x56x56x64xf32>
    %padded_68 = tensor.pad %19 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_5 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %324 = tensor.empty() : tensor<1x113x113x64xf32>
    %325 = tensor.empty() : tensor<3x3xf32>
    %326 = linalg.generic {indexing_maps = [#map17, #map18, #map19, #map19, #map17], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded_68, %325, %20, %323 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%324 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_78: f32, %in_79: f32, %in_80: f32, %out: f32):
      %356 = arith.cmpf oge, %in, %in_79 : f32
      %357 = arith.select %356, %in_80, %cst_6 : f32
      %358 = arith.addf %out, %357 : f32
      linalg.yield %358 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice_69 = tensor.extract_slice %326[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %327 = tensor.empty() : tensor<1x64x112x112xf32>
    %328 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_69 : tensor<1x112x112x64xf32>) outs(%327 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x112x112xf32>
    %329 = tensor.empty() : tensor<1x64x112x112xi1>
    %330 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %18 : tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>) outs(%329 : tensor<1x64x112x112xi1>) {
    ^bb0(%in: f32, %in_78: f32, %out: i1):
      %356 = arith.cmpf oeq, %in, %in_78 : f32
      linalg.yield %356 : i1
    } -> tensor<1x64x112x112xi1>
    %331 = linalg.generic {indexing_maps = [#map1, #map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330, %328, %cst : tensor<1x64x112x112xi1>, tensor<1x64x112x112xf32>, tensor<1xf32>) outs(%327 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: i1, %in_78: f32, %in_79: f32, %out: f32):
      %356 = arith.select %in, %in_78, %in_79 : f32
      linalg.yield %356 : f32
    } -> tensor<1x64x112x112xf32>
    %332 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_62, %331 : tensor<1x64xf32>, tensor<1x64x112x112xf32>) outs(%327 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x64x112x112xf32>
    %333 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_63, %332 : tensor<1x64xf32>, tensor<1x64x112x112xf32>) outs(%327 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.mulf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x64x112x112xf32>
    %334 = tensor.empty() : tensor<1x112x112x64xf32>
    %335 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%333 : tensor<1x64x112x112xf32>) outs(%334 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x64xf32>
    %336 = tensor.empty() : tensor<3x7x7x64xf32>
    %337 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<64x7x7x3xf32>) outs(%336 : tensor<3x7x7x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x7x7x64xf32>
    %338 = tensor.empty() : tensor<3xf32>
    %padded_70 = tensor.pad %337 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<3x7x7x64xf32> to tensor<3x8x8x64xf32>
    %expanded_71 = tensor.expand_shape %padded_70 [[0], [1, 2], [3, 4], [5]] : tensor<3x8x8x64xf32> into tensor<3x4x2x4x2x64xf32>
    %339 = tensor.empty() : tensor<2x2x3x4x4x64xf32>
    %340 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_71 : tensor<3x4x2x4x2x64xf32>) outs(%339 : tensor<2x2x3x4x4x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x3x4x4x64xf32>
    %collapsed_72 = tensor.collapse_shape %340 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x3x4x4x64xf32> into tensor<12x4x4x64xf32>
    %341 = tensor.empty() : tensor<12x4x4x64xf32>
    %342 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%341 : tensor<12x4x4x64xf32>) {
    ^bb0(%out: f32):
      %356 = linalg.index 0 : index
      %357 = linalg.index 1 : index
      %358 = arith.subi %c3, %357 : index
      %359 = linalg.index 2 : index
      %360 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_72[%356, %358, %359, %360] : tensor<12x4x4x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<12x4x4x64xf32>
    %343 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%341 : tensor<12x4x4x64xf32>) {
    ^bb0(%out: f32):
      %356 = linalg.index 0 : index
      %357 = linalg.index 1 : index
      %358 = linalg.index 2 : index
      %359 = arith.subi %c3, %358 : index
      %360 = linalg.index 3 : index
      %extracted = tensor.extract %342[%356, %357, %359, %360] : tensor<12x4x4x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<12x4x4x64xf32>
    %padded_73 = tensor.pad %335 low[%c0, %c3, %c3, %c0] high[%c0, %c3, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x118x118x64xf32>
    %344 = tensor.empty() : tensor<4x4x64x12xf32>
    %345 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343 : tensor<12x4x4x64xf32>) outs(%344 : tensor<4x4x64x12xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x4x64x12xf32>
    %346 = tensor.empty() : tensor<1x115x115x12xf32>
    %347 = linalg.fill ins(%cst_6 : f32) outs(%346 : tensor<1x115x115x12xf32>) -> tensor<1x115x115x12xf32>
    %348 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_73, %345 : tensor<1x118x118x64xf32>, tensor<4x4x64x12xf32>) outs(%347 : tensor<1x115x115x12xf32>) -> tensor<1x115x115x12xf32>
    %349 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_3, %348 : tensor<12xf32>, tensor<1x115x115x12xf32>) outs(%346 : tensor<1x115x115x12xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x115x115x12xf32>
    %expanded_74 = tensor.expand_shape %349 [[0], [1], [2], [3, 4, 5]] : tensor<1x115x115x12xf32> into tensor<1x115x115x2x2x3xf32>
    %350 = tensor.empty() : tensor<1x115x2x115x2x3xf32>
    %351 = linalg.generic {indexing_maps = [#map16, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_74 : tensor<1x115x115x2x2x3xf32>) outs(%350 : tensor<1x115x2x115x2x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x115x2x115x2x3xf32>
    %collapsed_75 = tensor.collapse_shape %351 [[0], [1, 2], [3, 4], [5]] : tensor<1x115x2x115x2x3xf32> into tensor<1x230x230x3xf32>
    %extracted_slice_76 = tensor.extract_slice %collapsed_75[0, 3, 3, 0] [1, 224, 224, 3] [1, 1, 1, 1] : tensor<1x230x230x3xf32> to tensor<1x224x224x3xf32>
    %352 = tensor.empty() : tensor<1x224x224x3xf32>
    %expanded_77 = tensor.expand_shape %338 [[0, 1]] : tensor<3xf32> into tensor<1x3xf32>
    %353 = linalg.generic {indexing_maps = [#map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_76, %expanded_77 : tensor<1x224x224x3xf32>, tensor<1x3xf32>) outs(%352 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %in_78: f32, %out: f32):
      %356 = arith.addf %in, %in_78 : f32
      linalg.yield %356 : f32
    } -> tensor<1x224x224x3xf32>
    %354 = tensor.empty() : tensor<1x3x224x224xf32>
    %355 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353 : tensor<1x224x224x3xf32>) outs(%354 : tensor<1x3x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3x224x224xf32>
    return %355 : tensor<1x3x224x224xf32>
  }
}

