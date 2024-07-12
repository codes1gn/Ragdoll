#map = affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3, d1)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map5 = affine_map<(d0, d1, d2) -> (d0, d2, d1)>
#map6 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>
#map7 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2)>
#map8 = affine_map<(d0, d1, d2, d3) -> (d0, d3)>
#map9 = affine_map<(d0, d1, d2, d3) -> (d3, d1, d2, d0)>
#map10 = affine_map<(d0, d1, d2, d3) -> (d3)>
#map11 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d4, d1, d5, d2, d0)>
#map12 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3, d4, d5)>
#map13 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d2, d3, d0, d4, d1, d5)>
#map14 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d2, d4, d5)>
#map15 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d4, d3, d5, d1)>
#map16 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1)>
#map17 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d3, d4, d5, d1)>
#map18 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map19 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map20 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map21 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#map22 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d3)>
#map23 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d1, d2)>
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
    %cst = arith.constant 7.777000e-02 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %cst_1 = arith.constant 7.778000e-02 : f32
    %cst_2 = arith.constant 3.40282347E+38 : f32
    %cst_3 = arith.constant 4.900000e+01 : f32
    %cst_4 = arith.constant dense<7.777000e-02> : tensor<3x3x512x512xf32>
    %cst_5 = arith.constant dense<7.777000e-02> : tensor<1x1x256x512xf32>
    %cst_6 = arith.constant dense<7.777000e-02> : tensor<3x3x256x512xf32>
    %cst_7 = arith.constant dense<7.777000e-02> : tensor<3x3x256x256xf32>
    %cst_8 = arith.constant dense<7.777000e-02> : tensor<1x1x128x256xf32>
    %cst_9 = arith.constant dense<7.777000e-02> : tensor<3x3x128x256xf32>
    %cst_10 = arith.constant dense<7.777000e-02> : tensor<3x3x128x128xf32>
    %cst_11 = arith.constant dense<7.777000e-02> : tensor<1x1x64x128xf32>
    %cst_12 = arith.constant dense<7.777000e-02> : tensor<3x3x64x128xf32>
    %cst_13 = arith.constant dense<7.777000e-02> : tensor<3x3x64x64xf32>
    %cst_14 = arith.constant dense<7.777000e-02> : tensor<7x7x3x64xf32>
    %cst_15 = arith.constant -3.40282347E+38 : f32
    %cst_16 = arith.constant dense<7.777000e-02> : tensor<1x512x1000xf32>
    %cst_17 = arith.constant dense<7.777000e-02> : tensor<512x1x1x256xf32>
    %cst_18 = arith.constant dense<7.777000e-02> : tensor<512x3x3x512xf32>
    %cst_19 = arith.constant dense<7.777000e-02> : tensor<1x512x1x1xf32>
    %cst_20 = arith.constant dense<7.777000e-02> : tensor<512x3x3x256xf32>
    %cst_21 = arith.constant dense<7.777000e-02> : tensor<256x1x1x128xf32>
    %cst_22 = arith.constant dense<7.777000e-02> : tensor<256x3x3x256xf32>
    %cst_23 = arith.constant dense<7.777000e-02> : tensor<1x256x1x1xf32>
    %cst_24 = arith.constant dense<7.777000e-02> : tensor<256x3x3x128xf32>
    %cst_25 = arith.constant dense<7.777000e-02> : tensor<128x1x1x64xf32>
    %cst_26 = arith.constant dense<7.777000e-02> : tensor<128x3x3x128xf32>
    %cst_27 = arith.constant dense<7.777000e-02> : tensor<1x128x1x1xf32>
    %cst_28 = arith.constant dense<7.777000e-02> : tensor<128x3x3x64xf32>
    %cst_29 = arith.constant dense<7.777000e-02> : tensor<64x3x3x64xf32>
    %cst_30 = arith.constant dense<7.777000e-02> : tensor<1x64x1x1xf32>
    %cst_31 = arith.constant dense<7.777000e-02> : tensor<64x7x7x3xf32>
    ml_program.global_store @global8 = %cst_16 : tensor<1x512x1000xf32>
    ml_program.global_store @global9 = %cst_17 : tensor<512x1x1x256xf32>
    ml_program.global_store @global10 = %cst_18 : tensor<512x3x3x512xf32>
    ml_program.global_store @global12 = %cst_19 : tensor<1x512x1x1xf32>
    ml_program.global_store @global13 = %cst_20 : tensor<512x3x3x256xf32>
    ml_program.global_store @global14 = %cst_21 : tensor<256x1x1x128xf32>
    ml_program.global_store @global15 = %cst_22 : tensor<256x3x3x256xf32>
    ml_program.global_store @global17 = %cst_23 : tensor<1x256x1x1xf32>
    ml_program.global_store @global18 = %cst_24 : tensor<256x3x3x128xf32>
    ml_program.global_store @global19 = %cst_25 : tensor<128x1x1x64xf32>
    ml_program.global_store @global20 = %cst_26 : tensor<128x3x3x128xf32>
    ml_program.global_store @global22 = %cst_27 : tensor<1x128x1x1xf32>
    ml_program.global_store @global23 = %cst_28 : tensor<128x3x3x64xf32>
    ml_program.global_store @global24 = %cst_29 : tensor<64x3x3x64xf32>
    ml_program.global_store @global26 = %cst_30 : tensor<1x64x1x1xf32>
    ml_program.global_store @global27 = %cst_31 : tensor<64x7x7x3xf32>
    %0 = tensor.empty() : tensor<1x224x224x3xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg0 : tensor<1x3x224x224xf32>) outs(%0 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x224x224x3xf32>
    %padded = tensor.pad %1 low[0, 3, 3, 0] high[0, 3, 3, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x224x224x3xf32> to tensor<1x230x230x3xf32>
    %2 = tensor.empty() : tensor<1x112x112x64xf32>
    %3 = linalg.fill ins(%cst_0 : f32) outs(%2 : tensor<1x112x112x64xf32>) -> tensor<1x112x112x64xf32>
    %4 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded, %cst_14 : tensor<1x230x230x3xf32>, tensor<7x7x3x64xf32>) outs(%3 : tensor<1x112x112x64xf32>) -> tensor<1x112x112x64xf32>
    %5 = tensor.empty() : tensor<1x64x112x112xf32>
    %6 = tensor.empty() : tensor<1x64x1x1xf32>
    %7 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%6 : tensor<1x64x1x1xf32>) {
    ^bb0(%out: f32):
      %109 = math.rsqrt %cst_1 : f32
      linalg.yield %109 : f32
    } -> tensor<1x64x1x1xf32>
    ml_program.global_store @global33 = %7 : tensor<1x64x1x1xf32>
    %collapsed = tensor.collapse_shape %7 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %8 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4, %collapsed : tensor<1x112x112x64xf32>, tensor<1x64xf32>) outs(%5 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_54: f32, %out: f32):
      %109 = arith.addf %in, %cst_0 : f32
      %110 = arith.subf %109, %cst : f32
      %111 = arith.mulf %110, %in_54 : f32
      %112 = arith.mulf %111, %cst : f32
      %113 = arith.addf %112, %cst : f32
      linalg.yield %113 : f32
    } -> tensor<1x64x112x112xf32>
    ml_program.global_store @global36 = %8 : tensor<1x64x112x112xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x64x112x112xf32>) outs(%5 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %109 = arith.minf %in, %cst_2 : f32
      %110 = arith.maxf %109, %cst_0 : f32
      linalg.yield %110 : f32
    } -> tensor<1x64x112x112xf32>
    ml_program.global_store @global37 = %9 : tensor<1x64x112x112xf32>
    %10 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<1x64x112x112xf32>) outs(%2 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x64xf32>
    ml_program.global_store @global38 = %10 : tensor<1x112x112x64xf32>
    %padded_32 = tensor.pad %10 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_15 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %11 = tensor.empty() : tensor<1x56x56x64xf32>
    %12 = linalg.fill ins(%cst_15 : f32) outs(%11 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %13 = tensor.empty() : tensor<3x3xf32>
    %14 = linalg.pooling_nhwc_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_32, %13 : tensor<1x113x113x64xf32>, tensor<3x3xf32>) outs(%12 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    ml_program.global_store @global39 = %14 : tensor<1x56x56x64xf32>
    %15 = tensor.empty() : tensor<1x64x56x56xf32>
    %padded_33 = tensor.pad %14 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %16 = linalg.fill ins(%cst_0 : f32) outs(%11 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %17 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_33, %cst_13 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%16 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %18 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %collapsed : tensor<1x56x56x64xf32>, tensor<1x64xf32>) outs(%15 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_54: f32, %out: f32):
      %109 = arith.addf %in, %cst_0 : f32
      %110 = arith.subf %109, %cst : f32
      %111 = arith.mulf %110, %in_54 : f32
      %112 = arith.mulf %111, %cst : f32
      %113 = arith.addf %112, %cst : f32
      linalg.yield %113 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global46 = %18 : tensor<1x64x56x56xf32>
    %19 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18 : tensor<1x64x56x56xf32>) outs(%15 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %109 = arith.minf %in, %cst_2 : f32
      %110 = arith.maxf %109, %cst_0 : f32
      linalg.yield %110 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global47 = %19 : tensor<1x64x56x56xf32>
    %20 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<1x64x56x56xf32>) outs(%11 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_34 = tensor.pad %20 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %21 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_34, %cst_13 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%16 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %22 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %collapsed, %14 : tensor<1x56x56x64xf32>, tensor<1x64xf32>, tensor<1x56x56x64xf32>) outs(%15 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_54: f32, %in_55: f32, %out: f32):
      %109 = arith.addf %in, %cst_0 : f32
      %110 = arith.subf %109, %cst : f32
      %111 = arith.mulf %110, %in_54 : f32
      %112 = arith.mulf %111, %cst : f32
      %113 = arith.addf %112, %cst : f32
      %114 = arith.addf %113, %in_55 : f32
      linalg.yield %114 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global55 = %22 : tensor<1x64x56x56xf32>
    %23 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<1x64x56x56xf32>) outs(%15 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %109 = arith.minf %in, %cst_2 : f32
      %110 = arith.maxf %109, %cst_0 : f32
      linalg.yield %110 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global56 = %23 : tensor<1x64x56x56xf32>
    %24 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x64x56x56xf32>) outs(%11 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_35 = tensor.pad %24 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %25 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_35, %cst_13 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%16 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %26 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %collapsed : tensor<1x56x56x64xf32>, tensor<1x64xf32>) outs(%15 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_54: f32, %out: f32):
      %109 = arith.addf %in, %cst_0 : f32
      %110 = arith.subf %109, %cst : f32
      %111 = arith.mulf %110, %in_54 : f32
      %112 = arith.mulf %111, %cst : f32
      %113 = arith.addf %112, %cst : f32
      linalg.yield %113 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global63 = %26 : tensor<1x64x56x56xf32>
    %27 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26 : tensor<1x64x56x56xf32>) outs(%15 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %109 = arith.minf %in, %cst_2 : f32
      %110 = arith.maxf %109, %cst_0 : f32
      linalg.yield %110 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global64 = %27 : tensor<1x64x56x56xf32>
    %28 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27 : tensor<1x64x56x56xf32>) outs(%11 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_36 = tensor.pad %28 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %29 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_36, %cst_13 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%16 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %30 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %collapsed, %23 : tensor<1x56x56x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%15 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_54: f32, %in_55: f32, %out: f32):
      %109 = arith.addf %in, %cst_0 : f32
      %110 = arith.subf %109, %cst : f32
      %111 = arith.mulf %110, %in_54 : f32
      %112 = arith.mulf %111, %cst : f32
      %113 = arith.addf %112, %cst : f32
      %114 = arith.addf %113, %in_55 : f32
      linalg.yield %114 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global72 = %30 : tensor<1x64x56x56xf32>
    %31 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x64x56x56xf32>) outs(%15 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %109 = arith.minf %in, %cst_2 : f32
      %110 = arith.maxf %109, %cst_0 : f32
      linalg.yield %110 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global73 = %31 : tensor<1x64x56x56xf32>
    %32 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31 : tensor<1x64x56x56xf32>) outs(%11 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_37 = tensor.pad %32 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %33 = tensor.empty() : tensor<1x28x28x128xf32>
    %34 = linalg.fill ins(%cst_0 : f32) outs(%33 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %35 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_37, %cst_12 : tensor<1x58x58x64xf32>, tensor<3x3x64x128xf32>) outs(%34 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %36 = tensor.empty() : tensor<1x128x28x28xf32>
    %37 = tensor.empty() : tensor<1x128x1x1xf32>
    %38 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%37 : tensor<1x128x1x1xf32>) {
    ^bb0(%out: f32):
      %109 = math.rsqrt %cst_1 : f32
      linalg.yield %109 : f32
    } -> tensor<1x128x1x1xf32>
    ml_program.global_store @global79 = %38 : tensor<1x128x1x1xf32>
    %collapsed_38 = tensor.collapse_shape %38 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %39 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %collapsed_38 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%36 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_54: f32, %out: f32):
      %109 = arith.addf %in, %cst_0 : f32
      %110 = arith.subf %109, %cst : f32
      %111 = arith.mulf %110, %in_54 : f32
      %112 = arith.mulf %111, %cst : f32
      %113 = arith.addf %112, %cst : f32
      linalg.yield %113 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global82 = %39 : tensor<1x128x28x28xf32>
    %40 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x128x28x28xf32>) outs(%36 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %109 = arith.minf %in, %cst_2 : f32
      %110 = arith.maxf %109, %cst_0 : f32
      linalg.yield %110 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global83 = %40 : tensor<1x128x28x28xf32>
    %41 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40 : tensor<1x128x28x28xf32>) outs(%33 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_39 = tensor.pad %41 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %42 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_39, %cst_10 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%34 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %43 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%32, %cst_11 : tensor<1x56x56x64xf32>, tensor<1x1x64x128xf32>) outs(%34 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %44 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42, %collapsed_38, %43 : tensor<1x28x28x128xf32>, tensor<1x128xf32>, tensor<1x28x28x128xf32>) outs(%36 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_54: f32, %in_55: f32, %out: f32):
      %109 = arith.addf %in_55, %cst_0 : f32
      %110 = arith.subf %109, %cst : f32
      %111 = arith.mulf %110, %in_54 : f32
      %112 = arith.mulf %111, %cst : f32
      %113 = arith.addf %112, %cst : f32
      %114 = arith.addf %in, %cst_0 : f32
      %115 = arith.subf %114, %cst : f32
      %116 = arith.mulf %115, %in_54 : f32
      %117 = arith.mulf %116, %cst : f32
      %118 = arith.addf %117, %cst : f32
      %119 = arith.addf %118, %113 : f32
      linalg.yield %119 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global97 = %44 : tensor<1x128x28x28xf32>
    %45 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44 : tensor<1x128x28x28xf32>) outs(%36 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %109 = arith.minf %in, %cst_2 : f32
      %110 = arith.maxf %109, %cst_0 : f32
      linalg.yield %110 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global98 = %45 : tensor<1x128x28x28xf32>
    %46 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45 : tensor<1x128x28x28xf32>) outs(%33 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_40 = tensor.pad %46 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %47 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_40, %cst_10 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%34 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %48 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %collapsed_38 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%36 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_54: f32, %out: f32):
      %109 = arith.addf %in, %cst_0 : f32
      %110 = arith.subf %109, %cst : f32
      %111 = arith.mulf %110, %in_54 : f32
      %112 = arith.mulf %111, %cst : f32
      %113 = arith.addf %112, %cst : f32
      linalg.yield %113 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global105 = %48 : tensor<1x128x28x28xf32>
    %49 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<1x128x28x28xf32>) outs(%36 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %109 = arith.minf %in, %cst_2 : f32
      %110 = arith.maxf %109, %cst_0 : f32
      linalg.yield %110 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global106 = %49 : tensor<1x128x28x28xf32>
    %50 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49 : tensor<1x128x28x28xf32>) outs(%33 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_41 = tensor.pad %50 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %51 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_41, %cst_10 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%34 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %52 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %collapsed_38, %45 : tensor<1x28x28x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%36 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_54: f32, %in_55: f32, %out: f32):
      %109 = arith.addf %in, %cst_0 : f32
      %110 = arith.subf %109, %cst : f32
      %111 = arith.mulf %110, %in_54 : f32
      %112 = arith.mulf %111, %cst : f32
      %113 = arith.addf %112, %cst : f32
      %114 = arith.addf %113, %in_55 : f32
      linalg.yield %114 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global114 = %52 : tensor<1x128x28x28xf32>
    %53 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x128x28x28xf32>) outs(%36 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %109 = arith.minf %in, %cst_2 : f32
      %110 = arith.maxf %109, %cst_0 : f32
      linalg.yield %110 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global115 = %53 : tensor<1x128x28x28xf32>
    %54 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53 : tensor<1x128x28x28xf32>) outs(%33 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_42 = tensor.pad %54 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %55 = tensor.empty() : tensor<1x14x14x256xf32>
    %56 = linalg.fill ins(%cst_0 : f32) outs(%55 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %57 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_42, %cst_9 : tensor<1x30x30x128xf32>, tensor<3x3x128x256xf32>) outs(%56 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %58 = tensor.empty() : tensor<1x256x14x14xf32>
    %59 = tensor.empty() : tensor<1x256x1x1xf32>
    %60 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%59 : tensor<1x256x1x1xf32>) {
    ^bb0(%out: f32):
      %109 = math.rsqrt %cst_1 : f32
      linalg.yield %109 : f32
    } -> tensor<1x256x1x1xf32>
    ml_program.global_store @global121 = %60 : tensor<1x256x1x1xf32>
    %collapsed_43 = tensor.collapse_shape %60 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %61 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %collapsed_43 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%58 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_54: f32, %out: f32):
      %109 = arith.addf %in, %cst_0 : f32
      %110 = arith.subf %109, %cst : f32
      %111 = arith.mulf %110, %in_54 : f32
      %112 = arith.mulf %111, %cst : f32
      %113 = arith.addf %112, %cst : f32
      linalg.yield %113 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global124 = %61 : tensor<1x256x14x14xf32>
    %62 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x256x14x14xf32>) outs(%58 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %109 = arith.minf %in, %cst_2 : f32
      %110 = arith.maxf %109, %cst_0 : f32
      linalg.yield %110 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global125 = %62 : tensor<1x256x14x14xf32>
    %63 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62 : tensor<1x256x14x14xf32>) outs(%55 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_44 = tensor.pad %63 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %64 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_44, %cst_7 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%56 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %65 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%54, %cst_8 : tensor<1x28x28x128xf32>, tensor<1x1x128x256xf32>) outs(%56 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %66 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %collapsed_43, %65 : tensor<1x14x14x256xf32>, tensor<1x256xf32>, tensor<1x14x14x256xf32>) outs(%58 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_54: f32, %in_55: f32, %out: f32):
      %109 = arith.addf %in_55, %cst_0 : f32
      %110 = arith.subf %109, %cst : f32
      %111 = arith.mulf %110, %in_54 : f32
      %112 = arith.mulf %111, %cst : f32
      %113 = arith.addf %112, %cst : f32
      %114 = arith.addf %in, %cst_0 : f32
      %115 = arith.subf %114, %cst : f32
      %116 = arith.mulf %115, %in_54 : f32
      %117 = arith.mulf %116, %cst : f32
      %118 = arith.addf %117, %cst : f32
      %119 = arith.addf %118, %113 : f32
      linalg.yield %119 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global139 = %66 : tensor<1x256x14x14xf32>
    %67 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66 : tensor<1x256x14x14xf32>) outs(%58 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %109 = arith.minf %in, %cst_2 : f32
      %110 = arith.maxf %109, %cst_0 : f32
      linalg.yield %110 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global140 = %67 : tensor<1x256x14x14xf32>
    %68 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67 : tensor<1x256x14x14xf32>) outs(%55 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_45 = tensor.pad %68 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %69 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_45, %cst_7 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%56 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %70 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %collapsed_43 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%58 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_54: f32, %out: f32):
      %109 = arith.addf %in, %cst_0 : f32
      %110 = arith.subf %109, %cst : f32
      %111 = arith.mulf %110, %in_54 : f32
      %112 = arith.mulf %111, %cst : f32
      %113 = arith.addf %112, %cst : f32
      linalg.yield %113 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global147 = %70 : tensor<1x256x14x14xf32>
    %71 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x256x14x14xf32>) outs(%58 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %109 = arith.minf %in, %cst_2 : f32
      %110 = arith.maxf %109, %cst_0 : f32
      linalg.yield %110 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global148 = %71 : tensor<1x256x14x14xf32>
    %72 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71 : tensor<1x256x14x14xf32>) outs(%55 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_46 = tensor.pad %72 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %73 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_46, %cst_7 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%56 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %74 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %collapsed_43, %67 : tensor<1x14x14x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%58 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_54: f32, %in_55: f32, %out: f32):
      %109 = arith.addf %in, %cst_0 : f32
      %110 = arith.subf %109, %cst : f32
      %111 = arith.mulf %110, %in_54 : f32
      %112 = arith.mulf %111, %cst : f32
      %113 = arith.addf %112, %cst : f32
      %114 = arith.addf %113, %in_55 : f32
      linalg.yield %114 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global156 = %74 : tensor<1x256x14x14xf32>
    %75 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74 : tensor<1x256x14x14xf32>) outs(%58 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %109 = arith.minf %in, %cst_2 : f32
      %110 = arith.maxf %109, %cst_0 : f32
      linalg.yield %110 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global157 = %75 : tensor<1x256x14x14xf32>
    %76 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75 : tensor<1x256x14x14xf32>) outs(%55 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_47 = tensor.pad %76 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %77 = tensor.empty() : tensor<1x7x7x512xf32>
    %78 = linalg.fill ins(%cst_0 : f32) outs(%77 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %79 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_47, %cst_6 : tensor<1x16x16x256xf32>, tensor<3x3x256x512xf32>) outs(%78 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %80 = tensor.empty() : tensor<1x512x7x7xf32>
    %81 = tensor.empty() : tensor<1x512x1x1xf32>
    %82 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%81 : tensor<1x512x1x1xf32>) {
    ^bb0(%out: f32):
      %109 = math.rsqrt %cst_1 : f32
      linalg.yield %109 : f32
    } -> tensor<1x512x1x1xf32>
    ml_program.global_store @global163 = %82 : tensor<1x512x1x1xf32>
    %collapsed_48 = tensor.collapse_shape %82 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %83 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %collapsed_48 : tensor<1x7x7x512xf32>, tensor<1x512xf32>) outs(%80 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_54: f32, %out: f32):
      %109 = arith.addf %in, %cst_0 : f32
      %110 = arith.subf %109, %cst : f32
      %111 = arith.mulf %110, %in_54 : f32
      %112 = arith.mulf %111, %cst : f32
      %113 = arith.addf %112, %cst : f32
      linalg.yield %113 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global166 = %83 : tensor<1x512x7x7xf32>
    %84 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83 : tensor<1x512x7x7xf32>) outs(%80 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %109 = arith.minf %in, %cst_2 : f32
      %110 = arith.maxf %109, %cst_0 : f32
      linalg.yield %110 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global167 = %84 : tensor<1x512x7x7xf32>
    %85 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84 : tensor<1x512x7x7xf32>) outs(%77 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_49 = tensor.pad %85 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %86 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_49, %cst_4 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%78 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %87 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%76, %cst_5 : tensor<1x14x14x256xf32>, tensor<1x1x256x512xf32>) outs(%78 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %88 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %collapsed_48, %87 : tensor<1x7x7x512xf32>, tensor<1x512xf32>, tensor<1x7x7x512xf32>) outs(%80 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_54: f32, %in_55: f32, %out: f32):
      %109 = arith.addf %in_55, %cst_0 : f32
      %110 = arith.subf %109, %cst : f32
      %111 = arith.mulf %110, %in_54 : f32
      %112 = arith.mulf %111, %cst : f32
      %113 = arith.addf %112, %cst : f32
      %114 = arith.addf %in, %cst_0 : f32
      %115 = arith.subf %114, %cst : f32
      %116 = arith.mulf %115, %in_54 : f32
      %117 = arith.mulf %116, %cst : f32
      %118 = arith.addf %117, %cst : f32
      %119 = arith.addf %118, %113 : f32
      linalg.yield %119 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global181 = %88 : tensor<1x512x7x7xf32>
    %89 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88 : tensor<1x512x7x7xf32>) outs(%80 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %109 = arith.minf %in, %cst_2 : f32
      %110 = arith.maxf %109, %cst_0 : f32
      linalg.yield %110 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global182 = %89 : tensor<1x512x7x7xf32>
    %90 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89 : tensor<1x512x7x7xf32>) outs(%77 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_50 = tensor.pad %90 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %91 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_50, %cst_4 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%78 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %92 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91, %collapsed_48 : tensor<1x7x7x512xf32>, tensor<1x512xf32>) outs(%80 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_54: f32, %out: f32):
      %109 = arith.addf %in, %cst_0 : f32
      %110 = arith.subf %109, %cst : f32
      %111 = arith.mulf %110, %in_54 : f32
      %112 = arith.mulf %111, %cst : f32
      %113 = arith.addf %112, %cst : f32
      linalg.yield %113 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global189 = %92 : tensor<1x512x7x7xf32>
    %93 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92 : tensor<1x512x7x7xf32>) outs(%80 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %109 = arith.minf %in, %cst_2 : f32
      %110 = arith.maxf %109, %cst_0 : f32
      linalg.yield %110 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global190 = %93 : tensor<1x512x7x7xf32>
    %94 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93 : tensor<1x512x7x7xf32>) outs(%77 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_51 = tensor.pad %94 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %95 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_51, %cst_4 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%78 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %96 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %collapsed_48, %89 : tensor<1x7x7x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%80 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_54: f32, %in_55: f32, %out: f32):
      %109 = arith.addf %in, %cst_0 : f32
      %110 = arith.subf %109, %cst : f32
      %111 = arith.mulf %110, %in_54 : f32
      %112 = arith.mulf %111, %cst : f32
      %113 = arith.addf %112, %cst : f32
      %114 = arith.addf %113, %in_55 : f32
      linalg.yield %114 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global198 = %96 : tensor<1x512x7x7xf32>
    %97 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96 : tensor<1x512x7x7xf32>) outs(%80 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %109 = arith.minf %in, %cst_2 : f32
      %110 = arith.maxf %109, %cst_0 : f32
      linalg.yield %110 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global199 = %97 : tensor<1x512x7x7xf32>
    %98 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97 : tensor<1x512x7x7xf32>) outs(%77 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %99 = tensor.empty() : tensor<1x1x1x512xf32>
    %100 = linalg.fill ins(%cst_0 : f32) outs(%99 : tensor<1x1x1x512xf32>) -> tensor<1x1x1x512xf32>
    %101 = tensor.empty() : tensor<7x7xf32>
    %102 = linalg.pooling_nhwc_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%98, %101 : tensor<1x7x7x512xf32>, tensor<7x7xf32>) outs(%100 : tensor<1x1x1x512xf32>) -> tensor<1x1x1x512xf32>
    %103 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102 : tensor<1x1x1x512xf32>) outs(%99 : tensor<1x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %109 = arith.divf %in, %cst_3 : f32
      linalg.yield %109 : f32
    } -> tensor<1x1x1x512xf32>
    %collapsed_52 = tensor.collapse_shape %103 [[0], [1, 2], [3]] : tensor<1x1x1x512xf32> into tensor<1x1x512xf32>
    %104 = tensor.empty() : tensor<1x1x1000xf32>
    %105 = linalg.fill ins(%cst_0 : f32) outs(%104 : tensor<1x1x1000xf32>) -> tensor<1x1x1000xf32>
    %106 = linalg.batch_matmul ins(%collapsed_52, %cst_16 : tensor<1x1x512xf32>, tensor<1x512x1000xf32>) outs(%105 : tensor<1x1x1000xf32>) -> tensor<1x1x1000xf32>
    %107 = tensor.empty() : tensor<1x1x1000xf32>
    %108 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = ["parallel", "parallel", "parallel"]} ins(%106 : tensor<1x1x1000xf32>) outs(%107 : tensor<1x1x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      %109 = arith.addf %in, %cst : f32
      linalg.yield %109 : f32
    } -> tensor<1x1x1000xf32>
    %collapsed_53 = tensor.collapse_shape %108 [[0, 1], [2]] : tensor<1x1x1000xf32> into tensor<1x1000xf32>
    return %collapsed_53 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0.0204081628 : f32
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    %cst_1 = arith.constant -3.40282347E+38 : f32
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
    %57 = linalg.generic {indexing_maps = [#map5, #map4], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<1x512x1000xf32>) outs(%56 : tensor<1x1000x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1000x512xf32>
    %58 = tensor.empty() : tensor<1x1x512xf32>
    %59 = linalg.fill ins(%cst : f32) outs(%58 : tensor<1x1x512xf32>) -> tensor<1x1x512xf32>
    %60 = linalg.batch_matmul ins(%expanded, %57 : tensor<1x1x1000xf32>, tensor<1x1000x512xf32>) outs(%59 : tensor<1x1x512xf32>) -> tensor<1x1x512xf32>
    %61 = tensor.empty() : tensor<1x7x7x512xf32>
    %expanded_2 = tensor.expand_shape %54 [[0, 1], [2], [3], [4]] : tensor<1x512x7x7xf32> into tensor<1x1x512x7x7xf32>
    %expanded_3 = tensor.expand_shape %55 [[0, 1], [2], [3], [4]] : tensor<1x512x7x7xf32> into tensor<1x1x512x7x7xf32>
    %62 = tensor.empty() : tensor<1x1x512x7x7xf32>
    %63 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_2, %expanded_3, %60 : tensor<1x1x512x7x7xf32>, tensor<1x1x512x7x7xf32>, tensor<1x1x512xf32>) outs(%62 : tensor<1x1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %out: f32):
      %213 = arith.mulf %in_85, %cst_0 : f32
      %214 = arith.cmpf oeq, %in, %in_84 : f32
      %215 = arith.select %214, %213, %cst : f32
      linalg.yield %215 : f32
    } -> tensor<1x1x512x7x7xf32>
    %collapsed = tensor.collapse_shape %63 [[0, 1], [2], [3], [4]] : tensor<1x1x512x7x7xf32> into tensor<1x512x7x7xf32>
    %collapsed_4 = tensor.collapse_shape %3 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %collapsed_5 = tensor.collapse_shape %47 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %64 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_5, %collapsed_4, %collapsed : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%61 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %out: f32):
      %213 = arith.mulf %in_84, %in_85 : f32
      %214 = arith.mulf %in, %213 : f32
      linalg.yield %214 : f32
    } -> tensor<1x7x7x512xf32>
    %65 = tensor.empty() : tensor<512x3x3x512xf32>
    %66 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<512x3x3x512xf32>) outs(%65 : tensor<512x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x3x3x512xf32>
    %67 = tensor.empty() : tensor<512xf32>
    %68 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%65 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c2, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %66[%213, %215, %216, %217] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded = tensor.pad %64 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %69 = tensor.empty() : tensor<3x3x512x512xf32>
    %70 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%69 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c2, %214 : index
      %extracted = tensor.extract %68[%216, %213, %217, %215] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %71 = linalg.fill ins(%cst : f32) outs(%61 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %72 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded, %70 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%71 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %73 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_5, %collapsed_4, %52, %53, %67, %72 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%61 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %in_86: f32, %in_87: f32, %in_88: f32, %out: f32):
      %213 = arith.addf %in_87, %in_88 : f32
      %214 = arith.cmpf oeq, %in_85, %in_86 : f32
      %215 = arith.select %214, %213, %cst : f32
      %216 = arith.mulf %in_84, %215 : f32
      %217 = arith.mulf %in, %216 : f32
      linalg.yield %217 : f32
    } -> tensor<1x7x7x512xf32>
    %padded_6 = tensor.pad %73 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %74 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_6, %70 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%71 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %75 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_5, %collapsed_4, %50, %51, %collapsed, %67, %74 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%61 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %213 = arith.addf %in_88, %in_89 : f32
      %214 = arith.addf %in_87, %213 : f32
      %215 = arith.cmpf oeq, %in_85, %in_86 : f32
      %216 = arith.select %215, %214, %cst : f32
      %217 = arith.mulf %in_84, %216 : f32
      %218 = arith.mulf %in, %217 : f32
      linalg.yield %218 : f32
    } -> tensor<1x7x7x512xf32>
    %76 = tensor.empty() : tensor<256x1x1x512xf32>
    %77 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1 : tensor<512x1x1x256xf32>) outs(%76 : tensor<256x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1x1x512xf32>
    %78 = tensor.empty() : tensor<256xf32>
    %padded_7 = tensor.pad %77 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<256x1x1x512xf32> to tensor<256x2x2x512xf32>
    %expanded_8 = tensor.expand_shape %padded_7 [[0, 1], [2, 3], [4], [5]] : tensor<256x2x2x512xf32> into tensor<256x1x2x1x2x512xf32>
    %collapsed_9 = tensor.collapse_shape %75 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %79 = tensor.empty() : tensor<49x1024xf32>
    %80 = linalg.fill ins(%cst : f32) outs(%79 : tensor<49x1024xf32>) -> tensor<49x1024xf32>
    %81 = tensor.empty() : tensor<512x2x2x256x1x1xf32>
    %82 = linalg.generic {indexing_maps = [#map11, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_8 : tensor<256x1x2x1x2x512xf32>) outs(%81 : tensor<512x2x2x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2x2x256x1x1xf32>
    %collapsed_10 = tensor.collapse_shape %82 [[0], [1, 2, 3, 4, 5]] : tensor<512x2x2x256x1x1xf32> into tensor<512x1024xf32>
    %83 = linalg.matmul ins(%collapsed_9, %collapsed_10 : tensor<49x512xf32>, tensor<512x1024xf32>) outs(%80 : tensor<49x1024xf32>) -> tensor<49x1024xf32>
    %expanded_11 = tensor.expand_shape %83 [[0, 1, 2], [3, 4, 5]] : tensor<49x1024xf32> into tensor<1x7x7x2x2x256xf32>
    %84 = tensor.empty() : tensor<1x14x14x256xf32>
    %expanded_12 = tensor.expand_shape %78 [[0, 1]] : tensor<256xf32> into tensor<1x256xf32>
    %padded_13 = tensor.pad %75 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %85 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_13, %70 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%71 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %86 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_5, %collapsed_4, %48, %49, %67, %85 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%61 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %in_86: f32, %in_87: f32, %in_88: f32, %out: f32):
      %213 = arith.addf %in_87, %in_88 : f32
      %214 = arith.cmpf oeq, %in_85, %in_86 : f32
      %215 = arith.select %214, %213, %cst : f32
      %216 = arith.mulf %in_84, %215 : f32
      %217 = arith.mulf %in, %216 : f32
      linalg.yield %217 : f32
    } -> tensor<1x7x7x512xf32>
    %87 = tensor.empty() : tensor<256x3x3x512xf32>
    %88 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<512x3x3x256xf32>) outs(%87 : tensor<256x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x512xf32>
    %padded_14 = tensor.pad %88 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<256x3x3x512xf32> to tensor<256x4x4x512xf32>
    %expanded_15 = tensor.expand_shape %padded_14 [[0], [1, 2], [3, 4], [5]] : tensor<256x4x4x512xf32> into tensor<256x2x2x2x2x512xf32>
    %89 = tensor.empty() : tensor<2x2x256x2x2x512xf32>
    %90 = linalg.generic {indexing_maps = [#map13, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_15 : tensor<256x2x2x2x2x512xf32>) outs(%89 : tensor<2x2x256x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x256x2x2x512xf32>
    %collapsed_16 = tensor.collapse_shape %90 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x256x2x2x512xf32> into tensor<1024x2x2x512xf32>
    %91 = tensor.empty() : tensor<1024x2x2x512xf32>
    %92 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%91 : tensor<1024x2x2x512xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c1, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_16[%213, %215, %216, %217] : tensor<1024x2x2x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<1024x2x2x512xf32>
    %padded_17 = tensor.pad %86 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %93 = tensor.empty() : tensor<2x2x512x1024xf32>
    %94 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%93 : tensor<2x2x512x1024xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c1, %214 : index
      %extracted = tensor.extract %92[%216, %213, %217, %215] : tensor<1024x2x2x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<2x2x512x1024xf32>
    %95 = tensor.empty() : tensor<1x8x8x1024xf32>
    %96 = linalg.fill ins(%cst : f32) outs(%95 : tensor<1x8x8x1024xf32>) -> tensor<1x8x8x1024xf32>
    %97 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_17, %94 : tensor<1x9x9x512xf32>, tensor<2x2x512x1024xf32>) outs(%96 : tensor<1x8x8x1024xf32>) -> tensor<1x8x8x1024xf32>
    %expanded_18 = tensor.expand_shape %97 [[0], [1], [2], [3, 4, 5]] : tensor<1x8x8x1024xf32> into tensor<1x8x8x2x2x256xf32>
    %98 = tensor.empty() : tensor<1x8x2x8x2x256xf32>
    %99 = linalg.generic {indexing_maps = [#map14, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_18 : tensor<1x8x8x2x2x256xf32>) outs(%98 : tensor<1x8x2x8x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %213 = arith.addf %in, %cst : f32
      linalg.yield %213 : f32
    } -> tensor<1x8x2x8x2x256xf32>
    %collapsed_19 = tensor.collapse_shape %99 [[0], [1, 2], [3, 4], [5]] : tensor<1x8x2x8x2x256xf32> into tensor<1x16x16x256xf32>
    %extracted_slice = tensor.extract_slice %collapsed_19[0, 1, 1, 0] [1, 14, 14, 256] [1, 1, 1, 1] : tensor<1x16x16x256xf32> to tensor<1x14x14x256xf32>
    %expanded_20 = tensor.expand_shape %extracted_slice [[0], [1, 2], [3, 4], [5]] : tensor<1x14x14x256xf32> into tensor<1x7x2x7x2x256xf32>
    %expanded_21 = tensor.expand_shape %45 [[0], [1], [2, 3], [4, 5]] : tensor<1x256x14x14xf32> into tensor<1x256x7x2x7x2xf32>
    %expanded_22 = tensor.expand_shape %46 [[0], [1], [2, 3], [4, 5]] : tensor<1x256x14x14xf32> into tensor<1x256x7x2x7x2xf32>
    %100 = tensor.empty() : tensor<1x256x7x2x7x2xf32>
    %101 = linalg.generic {indexing_maps = [#map12, #map12, #map15, #map16, #map17, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_21, %expanded_22, %expanded_11, %expanded_12, %expanded_20 : tensor<1x256x7x2x7x2xf32>, tensor<1x256x7x2x7x2xf32>, tensor<1x7x7x2x2x256xf32>, tensor<1x256xf32>, tensor<1x7x2x7x2x256xf32>) outs(%100 : tensor<1x256x7x2x7x2xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %in_86: f32, %in_87: f32, %out: f32):
      %213 = arith.addf %in_85, %cst : f32
      %214 = arith.addf %213, %in_86 : f32
      %215 = arith.addf %in_87, %in_86 : f32
      %216 = arith.addf %214, %215 : f32
      %217 = arith.cmpf oeq, %in, %in_84 : f32
      %218 = arith.select %217, %216, %cst : f32
      linalg.yield %218 : f32
    } -> tensor<1x256x7x2x7x2xf32>
    %collapsed_23 = tensor.collapse_shape %101 [[0], [1], [2, 3], [4, 5]] : tensor<1x256x7x2x7x2xf32> into tensor<1x256x14x14xf32>
    %collapsed_24 = tensor.collapse_shape %7 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %collapsed_25 = tensor.collapse_shape %38 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %102 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_25, %collapsed_24, %collapsed_23 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%84 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %out: f32):
      %213 = arith.mulf %in_84, %in_85 : f32
      %214 = arith.mulf %in, %213 : f32
      linalg.yield %214 : f32
    } -> tensor<1x14x14x256xf32>
    %103 = tensor.empty() : tensor<256x3x3x256xf32>
    %104 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<256x3x3x256xf32>) outs(%103 : tensor<256x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x256xf32>
    %105 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%103 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c2, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %104[%213, %215, %216, %217] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_26 = tensor.pad %102 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %106 = tensor.empty() : tensor<3x3x256x256xf32>
    %107 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%106 : tensor<3x3x256x256xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c2, %214 : index
      %extracted = tensor.extract %105[%216, %213, %217, %215] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x256xf32>
    %108 = linalg.fill ins(%cst : f32) outs(%84 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %109 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_26, %107 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%108 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %110 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_25, %collapsed_24, %43, %44, %78, %109 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%84 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %in_86: f32, %in_87: f32, %in_88: f32, %out: f32):
      %213 = arith.addf %in_87, %in_88 : f32
      %214 = arith.cmpf oeq, %in_85, %in_86 : f32
      %215 = arith.select %214, %213, %cst : f32
      %216 = arith.mulf %in_84, %215 : f32
      %217 = arith.mulf %in, %216 : f32
      linalg.yield %217 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_27 = tensor.pad %110 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %111 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_27, %107 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%108 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %112 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_25, %collapsed_24, %41, %42, %collapsed_23, %78, %111 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%84 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %213 = arith.addf %in_88, %in_89 : f32
      %214 = arith.addf %in_87, %213 : f32
      %215 = arith.cmpf oeq, %in_85, %in_86 : f32
      %216 = arith.select %215, %214, %cst : f32
      %217 = arith.mulf %in_84, %216 : f32
      %218 = arith.mulf %in, %217 : f32
      linalg.yield %218 : f32
    } -> tensor<1x14x14x256xf32>
    %113 = tensor.empty() : tensor<128x1x1x256xf32>
    %114 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<256x1x1x128xf32>) outs(%113 : tensor<128x1x1x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x1x1x256xf32>
    %115 = tensor.empty() : tensor<128xf32>
    %padded_28 = tensor.pad %114 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<128x1x1x256xf32> to tensor<128x2x2x256xf32>
    %expanded_29 = tensor.expand_shape %padded_28 [[0, 1], [2, 3], [4], [5]] : tensor<128x2x2x256xf32> into tensor<128x1x2x1x2x256xf32>
    %collapsed_30 = tensor.collapse_shape %112 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %116 = tensor.empty() : tensor<196x512xf32>
    %117 = linalg.fill ins(%cst : f32) outs(%116 : tensor<196x512xf32>) -> tensor<196x512xf32>
    %118 = tensor.empty() : tensor<256x2x2x128x1x1xf32>
    %119 = linalg.generic {indexing_maps = [#map11, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_29 : tensor<128x1x2x1x2x256xf32>) outs(%118 : tensor<256x2x2x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x2x2x128x1x1xf32>
    %collapsed_31 = tensor.collapse_shape %119 [[0], [1, 2, 3, 4, 5]] : tensor<256x2x2x128x1x1xf32> into tensor<256x512xf32>
    %120 = linalg.matmul ins(%collapsed_30, %collapsed_31 : tensor<196x256xf32>, tensor<256x512xf32>) outs(%117 : tensor<196x512xf32>) -> tensor<196x512xf32>
    %expanded_32 = tensor.expand_shape %120 [[0, 1, 2], [3, 4, 5]] : tensor<196x512xf32> into tensor<1x14x14x2x2x128xf32>
    %121 = tensor.empty() : tensor<1x28x28x128xf32>
    %expanded_33 = tensor.expand_shape %115 [[0, 1]] : tensor<128xf32> into tensor<1x128xf32>
    %padded_34 = tensor.pad %112 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %122 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_34, %107 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%108 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %123 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_25, %collapsed_24, %39, %40, %78, %122 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%84 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %in_86: f32, %in_87: f32, %in_88: f32, %out: f32):
      %213 = arith.addf %in_87, %in_88 : f32
      %214 = arith.cmpf oeq, %in_85, %in_86 : f32
      %215 = arith.select %214, %213, %cst : f32
      %216 = arith.mulf %in_84, %215 : f32
      %217 = arith.mulf %in, %216 : f32
      linalg.yield %217 : f32
    } -> tensor<1x14x14x256xf32>
    %124 = tensor.empty() : tensor<128x3x3x256xf32>
    %125 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<256x3x3x128xf32>) outs(%124 : tensor<128x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x256xf32>
    %padded_35 = tensor.pad %125 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<128x3x3x256xf32> to tensor<128x4x4x256xf32>
    %expanded_36 = tensor.expand_shape %padded_35 [[0], [1, 2], [3, 4], [5]] : tensor<128x4x4x256xf32> into tensor<128x2x2x2x2x256xf32>
    %126 = tensor.empty() : tensor<2x2x128x2x2x256xf32>
    %127 = linalg.generic {indexing_maps = [#map13, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_36 : tensor<128x2x2x2x2x256xf32>) outs(%126 : tensor<2x2x128x2x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x128x2x2x256xf32>
    %collapsed_37 = tensor.collapse_shape %127 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x128x2x2x256xf32> into tensor<512x2x2x256xf32>
    %128 = tensor.empty() : tensor<512x2x2x256xf32>
    %129 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%128 : tensor<512x2x2x256xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c1, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_37[%213, %215, %216, %217] : tensor<512x2x2x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x2x2x256xf32>
    %padded_38 = tensor.pad %123 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %130 = tensor.empty() : tensor<2x2x256x512xf32>
    %131 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%130 : tensor<2x2x256x512xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c1, %214 : index
      %extracted = tensor.extract %129[%216, %213, %217, %215] : tensor<512x2x2x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<2x2x256x512xf32>
    %132 = tensor.empty() : tensor<1x15x15x512xf32>
    %133 = linalg.fill ins(%cst : f32) outs(%132 : tensor<1x15x15x512xf32>) -> tensor<1x15x15x512xf32>
    %134 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_38, %131 : tensor<1x16x16x256xf32>, tensor<2x2x256x512xf32>) outs(%133 : tensor<1x15x15x512xf32>) -> tensor<1x15x15x512xf32>
    %expanded_39 = tensor.expand_shape %134 [[0], [1], [2], [3, 4, 5]] : tensor<1x15x15x512xf32> into tensor<1x15x15x2x2x128xf32>
    %135 = tensor.empty() : tensor<1x15x2x15x2x128xf32>
    %136 = linalg.generic {indexing_maps = [#map14, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_39 : tensor<1x15x15x2x2x128xf32>) outs(%135 : tensor<1x15x2x15x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %213 = arith.addf %in, %cst : f32
      linalg.yield %213 : f32
    } -> tensor<1x15x2x15x2x128xf32>
    %collapsed_40 = tensor.collapse_shape %136 [[0], [1, 2], [3, 4], [5]] : tensor<1x15x2x15x2x128xf32> into tensor<1x30x30x128xf32>
    %extracted_slice_41 = tensor.extract_slice %collapsed_40[0, 1, 1, 0] [1, 28, 28, 128] [1, 1, 1, 1] : tensor<1x30x30x128xf32> to tensor<1x28x28x128xf32>
    %expanded_42 = tensor.expand_shape %extracted_slice_41 [[0], [1, 2], [3, 4], [5]] : tensor<1x28x28x128xf32> into tensor<1x14x2x14x2x128xf32>
    %expanded_43 = tensor.expand_shape %36 [[0], [1], [2, 3], [4, 5]] : tensor<1x128x28x28xf32> into tensor<1x128x14x2x14x2xf32>
    %expanded_44 = tensor.expand_shape %37 [[0], [1], [2, 3], [4, 5]] : tensor<1x128x28x28xf32> into tensor<1x128x14x2x14x2xf32>
    %137 = tensor.empty() : tensor<1x128x14x2x14x2xf32>
    %138 = linalg.generic {indexing_maps = [#map12, #map12, #map15, #map16, #map17, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_43, %expanded_44, %expanded_32, %expanded_33, %expanded_42 : tensor<1x128x14x2x14x2xf32>, tensor<1x128x14x2x14x2xf32>, tensor<1x14x14x2x2x128xf32>, tensor<1x128xf32>, tensor<1x14x2x14x2x128xf32>) outs(%137 : tensor<1x128x14x2x14x2xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %in_86: f32, %in_87: f32, %out: f32):
      %213 = arith.addf %in_85, %cst : f32
      %214 = arith.addf %213, %in_86 : f32
      %215 = arith.addf %in_87, %in_86 : f32
      %216 = arith.addf %214, %215 : f32
      %217 = arith.cmpf oeq, %in, %in_84 : f32
      %218 = arith.select %217, %216, %cst : f32
      linalg.yield %218 : f32
    } -> tensor<1x128x14x2x14x2xf32>
    %collapsed_45 = tensor.collapse_shape %138 [[0], [1], [2, 3], [4, 5]] : tensor<1x128x14x2x14x2xf32> into tensor<1x128x28x28xf32>
    %collapsed_46 = tensor.collapse_shape %11 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %collapsed_47 = tensor.collapse_shape %29 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %139 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %collapsed_46, %collapsed_45 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%121 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %out: f32):
      %213 = arith.mulf %in_84, %in_85 : f32
      %214 = arith.mulf %in, %213 : f32
      linalg.yield %214 : f32
    } -> tensor<1x28x28x128xf32>
    %140 = tensor.empty() : tensor<128x3x3x128xf32>
    %141 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<128x3x3x128xf32>) outs(%140 : tensor<128x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x128xf32>
    %142 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%140 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c2, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %141[%213, %215, %216, %217] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %padded_48 = tensor.pad %139 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %143 = tensor.empty() : tensor<3x3x128x128xf32>
    %144 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%143 : tensor<3x3x128x128xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c2, %214 : index
      %extracted = tensor.extract %142[%216, %213, %217, %215] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x128x128xf32>
    %145 = linalg.fill ins(%cst : f32) outs(%121 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %146 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_48, %144 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%145 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %147 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %collapsed_46, %34, %35, %115, %146 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%121 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %in_86: f32, %in_87: f32, %in_88: f32, %out: f32):
      %213 = arith.addf %in_87, %in_88 : f32
      %214 = arith.cmpf oeq, %in_85, %in_86 : f32
      %215 = arith.select %214, %213, %cst : f32
      %216 = arith.mulf %in_84, %215 : f32
      %217 = arith.mulf %in, %216 : f32
      linalg.yield %217 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_49 = tensor.pad %147 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %148 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_49, %144 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%145 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %149 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %collapsed_46, %32, %33, %collapsed_45, %115, %148 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%121 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %213 = arith.addf %in_88, %in_89 : f32
      %214 = arith.addf %in_87, %213 : f32
      %215 = arith.cmpf oeq, %in_85, %in_86 : f32
      %216 = arith.select %215, %214, %cst : f32
      %217 = arith.mulf %in_84, %216 : f32
      %218 = arith.mulf %in, %217 : f32
      linalg.yield %218 : f32
    } -> tensor<1x28x28x128xf32>
    %150 = tensor.empty() : tensor<64x1x1x128xf32>
    %151 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<128x1x1x64xf32>) outs(%150 : tensor<64x1x1x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x1x1x128xf32>
    %152 = tensor.empty() : tensor<64xf32>
    %padded_50 = tensor.pad %151 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<64x1x1x128xf32> to tensor<64x2x2x128xf32>
    %expanded_51 = tensor.expand_shape %padded_50 [[0, 1], [2, 3], [4], [5]] : tensor<64x2x2x128xf32> into tensor<64x1x2x1x2x128xf32>
    %collapsed_52 = tensor.collapse_shape %149 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %153 = tensor.empty() : tensor<784x256xf32>
    %154 = linalg.fill ins(%cst : f32) outs(%153 : tensor<784x256xf32>) -> tensor<784x256xf32>
    %155 = tensor.empty() : tensor<128x2x2x64x1x1xf32>
    %156 = linalg.generic {indexing_maps = [#map11, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_51 : tensor<64x1x2x1x2x128xf32>) outs(%155 : tensor<128x2x2x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x2x2x64x1x1xf32>
    %collapsed_53 = tensor.collapse_shape %156 [[0], [1, 2, 3, 4, 5]] : tensor<128x2x2x64x1x1xf32> into tensor<128x256xf32>
    %157 = linalg.matmul ins(%collapsed_52, %collapsed_53 : tensor<784x128xf32>, tensor<128x256xf32>) outs(%154 : tensor<784x256xf32>) -> tensor<784x256xf32>
    %expanded_54 = tensor.expand_shape %157 [[0, 1, 2], [3, 4, 5]] : tensor<784x256xf32> into tensor<1x28x28x2x2x64xf32>
    %158 = tensor.empty() : tensor<1x56x56x64xf32>
    %expanded_55 = tensor.expand_shape %152 [[0, 1]] : tensor<64xf32> into tensor<1x64xf32>
    %padded_56 = tensor.pad %149 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %159 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_56, %144 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%145 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %160 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %collapsed_46, %30, %31, %115, %159 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%121 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %in_86: f32, %in_87: f32, %in_88: f32, %out: f32):
      %213 = arith.addf %in_87, %in_88 : f32
      %214 = arith.cmpf oeq, %in_85, %in_86 : f32
      %215 = arith.select %214, %213, %cst : f32
      %216 = arith.mulf %in_84, %215 : f32
      %217 = arith.mulf %in, %216 : f32
      linalg.yield %217 : f32
    } -> tensor<1x28x28x128xf32>
    %161 = tensor.empty() : tensor<64x3x3x128xf32>
    %162 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<128x3x3x64xf32>) outs(%161 : tensor<64x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x128xf32>
    %padded_57 = tensor.pad %162 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<64x3x3x128xf32> to tensor<64x4x4x128xf32>
    %expanded_58 = tensor.expand_shape %padded_57 [[0], [1, 2], [3, 4], [5]] : tensor<64x4x4x128xf32> into tensor<64x2x2x2x2x128xf32>
    %163 = tensor.empty() : tensor<2x2x64x2x2x128xf32>
    %164 = linalg.generic {indexing_maps = [#map13, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_58 : tensor<64x2x2x2x2x128xf32>) outs(%163 : tensor<2x2x64x2x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x64x2x2x128xf32>
    %collapsed_59 = tensor.collapse_shape %164 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x64x2x2x128xf32> into tensor<256x2x2x128xf32>
    %165 = tensor.empty() : tensor<256x2x2x128xf32>
    %166 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%165 : tensor<256x2x2x128xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c1, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_59[%213, %215, %216, %217] : tensor<256x2x2x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x2x2x128xf32>
    %padded_60 = tensor.pad %160 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %167 = tensor.empty() : tensor<2x2x128x256xf32>
    %168 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%167 : tensor<2x2x128x256xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c1, %214 : index
      %extracted = tensor.extract %166[%216, %213, %217, %215] : tensor<256x2x2x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<2x2x128x256xf32>
    %169 = tensor.empty() : tensor<1x29x29x256xf32>
    %170 = linalg.fill ins(%cst : f32) outs(%169 : tensor<1x29x29x256xf32>) -> tensor<1x29x29x256xf32>
    %171 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_60, %168 : tensor<1x30x30x128xf32>, tensor<2x2x128x256xf32>) outs(%170 : tensor<1x29x29x256xf32>) -> tensor<1x29x29x256xf32>
    %expanded_61 = tensor.expand_shape %171 [[0], [1], [2], [3, 4, 5]] : tensor<1x29x29x256xf32> into tensor<1x29x29x2x2x64xf32>
    %172 = tensor.empty() : tensor<1x29x2x29x2x64xf32>
    %173 = linalg.generic {indexing_maps = [#map14, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_61 : tensor<1x29x29x2x2x64xf32>) outs(%172 : tensor<1x29x2x29x2x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %213 = arith.addf %in, %cst : f32
      linalg.yield %213 : f32
    } -> tensor<1x29x2x29x2x64xf32>
    %collapsed_62 = tensor.collapse_shape %173 [[0], [1, 2], [3, 4], [5]] : tensor<1x29x2x29x2x64xf32> into tensor<1x58x58x64xf32>
    %extracted_slice_63 = tensor.extract_slice %collapsed_62[0, 1, 1, 0] [1, 56, 56, 64] [1, 1, 1, 1] : tensor<1x58x58x64xf32> to tensor<1x56x56x64xf32>
    %expanded_64 = tensor.expand_shape %extracted_slice_63 [[0], [1, 2], [3, 4], [5]] : tensor<1x56x56x64xf32> into tensor<1x28x2x28x2x64xf32>
    %174 = tensor.empty() : tensor<1x64x56x56xf32>
    %expanded_65 = tensor.expand_shape %27 [[0], [1], [2, 3], [4, 5]] : tensor<1x64x56x56xf32> into tensor<1x64x28x2x28x2xf32>
    %expanded_66 = tensor.expand_shape %28 [[0], [1], [2, 3], [4, 5]] : tensor<1x64x56x56xf32> into tensor<1x64x28x2x28x2xf32>
    %175 = tensor.empty() : tensor<1x64x28x2x28x2xf32>
    %176 = linalg.generic {indexing_maps = [#map12, #map12, #map15, #map16, #map17, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_65, %expanded_66, %expanded_54, %expanded_55, %expanded_64 : tensor<1x64x28x2x28x2xf32>, tensor<1x64x28x2x28x2xf32>, tensor<1x28x28x2x2x64xf32>, tensor<1x64xf32>, tensor<1x28x2x28x2x64xf32>) outs(%175 : tensor<1x64x28x2x28x2xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %in_86: f32, %in_87: f32, %out: f32):
      %213 = arith.addf %in_85, %cst : f32
      %214 = arith.addf %213, %in_86 : f32
      %215 = arith.addf %in_87, %in_86 : f32
      %216 = arith.addf %214, %215 : f32
      %217 = arith.cmpf oeq, %in, %in_84 : f32
      %218 = arith.select %217, %216, %cst : f32
      linalg.yield %218 : f32
    } -> tensor<1x64x28x2x28x2xf32>
    %collapsed_67 = tensor.collapse_shape %176 [[0], [1], [2, 3], [4, 5]] : tensor<1x64x28x2x28x2xf32> into tensor<1x64x56x56xf32>
    %collapsed_68 = tensor.collapse_shape %14 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %collapsed_69 = tensor.collapse_shape %16 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %177 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_69, %collapsed_68, %collapsed_67 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%158 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %out: f32):
      %213 = arith.mulf %in_84, %in_85 : f32
      %214 = arith.mulf %in, %213 : f32
      linalg.yield %214 : f32
    } -> tensor<1x56x56x64xf32>
    %178 = tensor.empty() : tensor<64x3x3x64xf32>
    %179 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<64x3x3x64xf32>) outs(%178 : tensor<64x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x64xf32>
    %180 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%178 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c2, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %179[%213, %215, %216, %217] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %padded_70 = tensor.pad %177 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %181 = tensor.empty() : tensor<3x3x64x64xf32>
    %182 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%181 : tensor<3x3x64x64xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c2, %214 : index
      %extracted = tensor.extract %180[%216, %213, %217, %215] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x64x64xf32>
    %183 = linalg.fill ins(%cst : f32) outs(%158 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %184 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_70, %182 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%183 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %185 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_69, %collapsed_68, %25, %26, %152, %184 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%158 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %in_86: f32, %in_87: f32, %in_88: f32, %out: f32):
      %213 = arith.addf %in_87, %in_88 : f32
      %214 = arith.cmpf oeq, %in_85, %in_86 : f32
      %215 = arith.select %214, %213, %cst : f32
      %216 = arith.mulf %in_84, %215 : f32
      %217 = arith.mulf %in, %216 : f32
      linalg.yield %217 : f32
    } -> tensor<1x56x56x64xf32>
    %padded_71 = tensor.pad %185 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %186 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_71, %182 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%183 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %187 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map18, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %24, %collapsed_67, %152, %186 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%174 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %in_86: f32, %in_87: f32, %out: f32):
      %213 = arith.addf %in_86, %in_87 : f32
      %214 = arith.addf %in_85, %213 : f32
      %215 = arith.cmpf oeq, %in, %in_84 : f32
      %216 = arith.select %215, %214, %cst : f32
      linalg.yield %216 : f32
    } -> tensor<1x64x56x56xf32>
    %188 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_69, %collapsed_68, %187 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%158 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %out: f32):
      %213 = arith.mulf %in_84, %in_85 : f32
      %214 = arith.mulf %in, %213 : f32
      linalg.yield %214 : f32
    } -> tensor<1x56x56x64xf32>
    %padded_72 = tensor.pad %188 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %189 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_72, %182 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%183 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %190 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_69, %collapsed_68, %21, %22, %152, %189 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%158 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %in_86: f32, %in_87: f32, %in_88: f32, %out: f32):
      %213 = arith.addf %in_87, %in_88 : f32
      %214 = arith.cmpf oeq, %in_85, %in_86 : f32
      %215 = arith.select %214, %213, %cst : f32
      %216 = arith.mulf %in_84, %215 : f32
      %217 = arith.mulf %in, %216 : f32
      linalg.yield %217 : f32
    } -> tensor<1x56x56x64xf32>
    %padded_73 = tensor.pad %190 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %191 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_73, %182 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%183 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %padded_74 = tensor.pad %19 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %192 = tensor.empty() : tensor<1x113x113x64xf32>
    %193 = tensor.empty() : tensor<3x3xf32>
    %194 = linalg.generic {indexing_maps = [#map19, #map20, #map21, #map22, #map21, #map23, #map19], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded_74, %193, %20, %152, %191, %187 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>, tensor<1x64x56x56xf32>) outs(%192 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %in_86: f32, %in_87: f32, %in_88: f32, %out: f32):
      %213 = arith.addf %in_86, %in_87 : f32
      %214 = arith.addf %213, %in_88 : f32
      %215 = arith.cmpf oge, %in, %in_85 : f32
      %216 = arith.select %215, %214, %cst : f32
      %217 = arith.addf %out, %216 : f32
      linalg.yield %217 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice_75 = tensor.extract_slice %194[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %195 = tensor.empty() : tensor<1x112x112x64xf32>
    %196 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_69, %collapsed_68, %17, %18, %extracted_slice_75 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>, tensor<1x112x112x64xf32>) outs(%195 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %in_84: f32, %in_85: f32, %in_86: f32, %in_87: f32, %out: f32):
      %213 = arith.cmpf oeq, %in_85, %in_86 : f32
      %214 = arith.select %213, %in_87, %cst : f32
      %215 = arith.mulf %in_84, %214 : f32
      %216 = arith.mulf %in, %215 : f32
      linalg.yield %216 : f32
    } -> tensor<1x112x112x64xf32>
    %197 = tensor.empty() : tensor<3x7x7x64xf32>
    %198 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<64x7x7x3xf32>) outs(%197 : tensor<3x7x7x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x7x7x64xf32>
    %199 = tensor.empty() : tensor<3xf32>
    %padded_76 = tensor.pad %198 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<3x7x7x64xf32> to tensor<3x8x8x64xf32>
    %expanded_77 = tensor.expand_shape %padded_76 [[0], [1, 2], [3, 4], [5]] : tensor<3x8x8x64xf32> into tensor<3x4x2x4x2x64xf32>
    %200 = tensor.empty() : tensor<2x2x3x4x4x64xf32>
    %201 = linalg.generic {indexing_maps = [#map13, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_77 : tensor<3x4x2x4x2x64xf32>) outs(%200 : tensor<2x2x3x4x4x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x3x4x4x64xf32>
    %collapsed_78 = tensor.collapse_shape %201 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x3x4x4x64xf32> into tensor<12x4x4x64xf32>
    %202 = tensor.empty() : tensor<12x4x4x64xf32>
    %203 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%202 : tensor<12x4x4x64xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = arith.subi %c3, %214 : index
      %216 = linalg.index 2 : index
      %217 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_78[%213, %215, %216, %217] : tensor<12x4x4x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<12x4x4x64xf32>
    %padded_79 = tensor.pad %196 low[%c0, %c3, %c3, %c0] high[%c0, %c3, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x64xf32> to tensor<1x118x118x64xf32>
    %204 = tensor.empty() : tensor<4x4x64x12xf32>
    %205 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%204 : tensor<4x4x64x12xf32>) {
    ^bb0(%out: f32):
      %213 = linalg.index 0 : index
      %214 = linalg.index 1 : index
      %215 = linalg.index 2 : index
      %216 = linalg.index 3 : index
      %217 = arith.subi %c3, %214 : index
      %extracted = tensor.extract %203[%216, %213, %217, %215] : tensor<12x4x4x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<4x4x64x12xf32>
    %206 = tensor.empty() : tensor<1x115x115x12xf32>
    %207 = linalg.fill ins(%cst : f32) outs(%206 : tensor<1x115x115x12xf32>) -> tensor<1x115x115x12xf32>
    %208 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_79, %205 : tensor<1x118x118x64xf32>, tensor<4x4x64x12xf32>) outs(%207 : tensor<1x115x115x12xf32>) -> tensor<1x115x115x12xf32>
    %expanded_80 = tensor.expand_shape %208 [[0], [1], [2], [3, 4, 5]] : tensor<1x115x115x12xf32> into tensor<1x115x115x2x2x3xf32>
    %209 = tensor.empty() : tensor<1x115x2x115x2x3xf32>
    %210 = linalg.generic {indexing_maps = [#map14, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_80 : tensor<1x115x115x2x2x3xf32>) outs(%209 : tensor<1x115x2x115x2x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %213 = arith.addf %in, %cst : f32
      linalg.yield %213 : f32
    } -> tensor<1x115x2x115x2x3xf32>
    %collapsed_81 = tensor.collapse_shape %210 [[0], [1, 2], [3, 4], [5]] : tensor<1x115x2x115x2x3xf32> into tensor<1x230x230x3xf32>
    %extracted_slice_82 = tensor.extract_slice %collapsed_81[0, 3, 3, 0] [1, 224, 224, 3] [1, 1, 1, 1] : tensor<1x230x230x3xf32> to tensor<1x224x224x3xf32>
    %expanded_83 = tensor.expand_shape %199 [[0, 1]] : tensor<3xf32> into tensor<1x3xf32>
    %211 = tensor.empty() : tensor<1x3x224x224xf32>
    %212 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_82, %expanded_83 : tensor<1x224x224x3xf32>, tensor<1x3xf32>) outs(%211 : tensor<1x3x224x224xf32>) {
    ^bb0(%in: f32, %in_84: f32, %out: f32):
      %213 = arith.addf %in, %in_84 : f32
      linalg.yield %213 : f32
    } -> tensor<1x3x224x224xf32>
    return %212 : tensor<1x3x224x224xf32>
  }
}

