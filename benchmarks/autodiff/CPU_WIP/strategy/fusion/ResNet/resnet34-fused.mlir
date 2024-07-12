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
#map11 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map12 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d4, d1, d5, d2, d0)>
#map13 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3, d4, d5)>
#map14 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d2, d3, d0, d4, d1, d5)>
#map15 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d2, d4, d5)>
#map16 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d4, d3, d5, d1)>
#map17 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1)>
#map18 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d3, d4, d5, d1)>
#map19 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map20 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map21 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#map22 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d3)>
#map23 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d1, d2)>
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
      %173 = math.rsqrt %cst_1 : f32
      linalg.yield %173 : f32
    } -> tensor<1x64x1x1xf32>
    ml_program.global_store @global33 = %7 : tensor<1x64x1x1xf32>
    %collapsed = tensor.collapse_shape %7 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %8 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4, %collapsed : tensor<1x112x112x64xf32>, tensor<1x64xf32>) outs(%5 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_70: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      linalg.yield %177 : f32
    } -> tensor<1x64x112x112xf32>
    ml_program.global_store @global36 = %8 : tensor<1x64x112x112xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x64x112x112xf32>) outs(%5 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
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
    ^bb0(%in: f32, %in_70: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      linalg.yield %177 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global46 = %18 : tensor<1x64x56x56xf32>
    %19 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18 : tensor<1x64x56x56xf32>) outs(%15 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
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
    ^bb0(%in: f32, %in_70: f32, %in_71: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      %178 = arith.addf %177, %in_71 : f32
      linalg.yield %178 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global55 = %22 : tensor<1x64x56x56xf32>
    %23 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<1x64x56x56xf32>) outs(%15 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
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
    ^bb0(%in: f32, %in_70: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      linalg.yield %177 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global63 = %26 : tensor<1x64x56x56xf32>
    %27 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26 : tensor<1x64x56x56xf32>) outs(%15 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
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
    ^bb0(%in: f32, %in_70: f32, %in_71: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      %178 = arith.addf %177, %in_71 : f32
      linalg.yield %178 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global72 = %30 : tensor<1x64x56x56xf32>
    %31 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x64x56x56xf32>) outs(%15 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
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
    %33 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_37, %cst_13 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%16 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %collapsed : tensor<1x56x56x64xf32>, tensor<1x64xf32>) outs(%15 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_70: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      linalg.yield %177 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global80 = %34 : tensor<1x64x56x56xf32>
    %35 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34 : tensor<1x64x56x56xf32>) outs(%15 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global81 = %35 : tensor<1x64x56x56xf32>
    %36 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35 : tensor<1x64x56x56xf32>) outs(%11 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_38 = tensor.pad %36 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %37 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_38, %cst_13 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%16 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %38 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %collapsed, %31 : tensor<1x56x56x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%15 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_70: f32, %in_71: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      %178 = arith.addf %177, %in_71 : f32
      linalg.yield %178 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global89 = %38 : tensor<1x64x56x56xf32>
    %39 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38 : tensor<1x64x56x56xf32>) outs(%15 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global90 = %39 : tensor<1x64x56x56xf32>
    %40 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x64x56x56xf32>) outs(%11 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_39 = tensor.pad %40 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %41 = tensor.empty() : tensor<1x28x28x128xf32>
    %42 = linalg.fill ins(%cst_0 : f32) outs(%41 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %43 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_39, %cst_12 : tensor<1x58x58x64xf32>, tensor<3x3x64x128xf32>) outs(%42 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %44 = tensor.empty() : tensor<1x128x28x28xf32>
    %45 = tensor.empty() : tensor<1x128x1x1xf32>
    %46 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%45 : tensor<1x128x1x1xf32>) {
    ^bb0(%out: f32):
      %173 = math.rsqrt %cst_1 : f32
      linalg.yield %173 : f32
    } -> tensor<1x128x1x1xf32>
    ml_program.global_store @global96 = %46 : tensor<1x128x1x1xf32>
    %collapsed_40 = tensor.collapse_shape %46 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %47 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %collapsed_40 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%44 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_70: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      linalg.yield %177 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global99 = %47 : tensor<1x128x28x28xf32>
    %48 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47 : tensor<1x128x28x28xf32>) outs(%44 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global100 = %48 : tensor<1x128x28x28xf32>
    %49 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<1x128x28x28xf32>) outs(%41 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_41 = tensor.pad %49 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %50 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_41, %cst_10 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%42 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %51 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%40, %cst_11 : tensor<1x56x56x64xf32>, tensor<1x1x64x128xf32>) outs(%42 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %52 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %collapsed_40, %51 : tensor<1x28x28x128xf32>, tensor<1x128xf32>, tensor<1x28x28x128xf32>) outs(%44 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_70: f32, %in_71: f32, %out: f32):
      %173 = arith.addf %in_71, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      %178 = arith.addf %in, %cst_0 : f32
      %179 = arith.subf %178, %cst : f32
      %180 = arith.mulf %179, %in_70 : f32
      %181 = arith.mulf %180, %cst : f32
      %182 = arith.addf %181, %cst : f32
      %183 = arith.addf %182, %177 : f32
      linalg.yield %183 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global114 = %52 : tensor<1x128x28x28xf32>
    %53 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x128x28x28xf32>) outs(%44 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global115 = %53 : tensor<1x128x28x28xf32>
    %54 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53 : tensor<1x128x28x28xf32>) outs(%41 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_42 = tensor.pad %54 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %55 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_42, %cst_10 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%42 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %56 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55, %collapsed_40 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%44 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_70: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      linalg.yield %177 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global122 = %56 : tensor<1x128x28x28xf32>
    %57 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56 : tensor<1x128x28x28xf32>) outs(%44 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global123 = %57 : tensor<1x128x28x28xf32>
    %58 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57 : tensor<1x128x28x28xf32>) outs(%41 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_43 = tensor.pad %58 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %59 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_43, %cst_10 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%42 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %60 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %collapsed_40, %53 : tensor<1x28x28x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%44 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_70: f32, %in_71: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      %178 = arith.addf %177, %in_71 : f32
      linalg.yield %178 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global131 = %60 : tensor<1x128x28x28xf32>
    %61 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60 : tensor<1x128x28x28xf32>) outs(%44 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global132 = %61 : tensor<1x128x28x28xf32>
    %62 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x128x28x28xf32>) outs(%41 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_44 = tensor.pad %62 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %63 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_44, %cst_10 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%42 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %64 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %collapsed_40 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%44 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_70: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      linalg.yield %177 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global139 = %64 : tensor<1x128x28x28xf32>
    %65 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x128x28x28xf32>) outs(%44 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global140 = %65 : tensor<1x128x28x28xf32>
    %66 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65 : tensor<1x128x28x28xf32>) outs(%41 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_45 = tensor.pad %66 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %67 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_45, %cst_10 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%42 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %68 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %collapsed_40, %61 : tensor<1x28x28x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%44 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_70: f32, %in_71: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      %178 = arith.addf %177, %in_71 : f32
      linalg.yield %178 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global148 = %68 : tensor<1x128x28x28xf32>
    %69 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68 : tensor<1x128x28x28xf32>) outs(%44 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global149 = %69 : tensor<1x128x28x28xf32>
    %70 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69 : tensor<1x128x28x28xf32>) outs(%41 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_46 = tensor.pad %70 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %71 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_46, %cst_10 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%42 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %72 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %collapsed_40 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%44 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_70: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      linalg.yield %177 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global156 = %72 : tensor<1x128x28x28xf32>
    %73 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72 : tensor<1x128x28x28xf32>) outs(%44 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global157 = %73 : tensor<1x128x28x28xf32>
    %74 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73 : tensor<1x128x28x28xf32>) outs(%41 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_47 = tensor.pad %74 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %75 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_47, %cst_10 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%42 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %76 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %collapsed_40, %69 : tensor<1x28x28x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%44 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_70: f32, %in_71: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      %178 = arith.addf %177, %in_71 : f32
      linalg.yield %178 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global165 = %76 : tensor<1x128x28x28xf32>
    %77 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76 : tensor<1x128x28x28xf32>) outs(%44 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global166 = %77 : tensor<1x128x28x28xf32>
    %78 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77 : tensor<1x128x28x28xf32>) outs(%41 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_48 = tensor.pad %78 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %79 = tensor.empty() : tensor<1x14x14x256xf32>
    %80 = linalg.fill ins(%cst_0 : f32) outs(%79 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %81 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_48, %cst_9 : tensor<1x30x30x128xf32>, tensor<3x3x128x256xf32>) outs(%80 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %82 = tensor.empty() : tensor<1x256x14x14xf32>
    %83 = tensor.empty() : tensor<1x256x1x1xf32>
    %84 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%83 : tensor<1x256x1x1xf32>) {
    ^bb0(%out: f32):
      %173 = math.rsqrt %cst_1 : f32
      linalg.yield %173 : f32
    } -> tensor<1x256x1x1xf32>
    ml_program.global_store @global172 = %84 : tensor<1x256x1x1xf32>
    %collapsed_49 = tensor.collapse_shape %84 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %85 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %collapsed_49 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_70: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      linalg.yield %177 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global175 = %85 : tensor<1x256x14x14xf32>
    %86 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85 : tensor<1x256x14x14xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global176 = %86 : tensor<1x256x14x14xf32>
    %87 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86 : tensor<1x256x14x14xf32>) outs(%79 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_50 = tensor.pad %87 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %88 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_50, %cst_7 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%80 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %89 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%78, %cst_8 : tensor<1x28x28x128xf32>, tensor<1x1x128x256xf32>) outs(%80 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %90 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %collapsed_49, %89 : tensor<1x14x14x256xf32>, tensor<1x256xf32>, tensor<1x14x14x256xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_70: f32, %in_71: f32, %out: f32):
      %173 = arith.addf %in_71, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      %178 = arith.addf %in, %cst_0 : f32
      %179 = arith.subf %178, %cst : f32
      %180 = arith.mulf %179, %in_70 : f32
      %181 = arith.mulf %180, %cst : f32
      %182 = arith.addf %181, %cst : f32
      %183 = arith.addf %182, %177 : f32
      linalg.yield %183 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global190 = %90 : tensor<1x256x14x14xf32>
    %91 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90 : tensor<1x256x14x14xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global191 = %91 : tensor<1x256x14x14xf32>
    %92 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91 : tensor<1x256x14x14xf32>) outs(%79 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_51 = tensor.pad %92 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %93 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_51, %cst_7 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%80 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %94 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93, %collapsed_49 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_70: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      linalg.yield %177 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global198 = %94 : tensor<1x256x14x14xf32>
    %95 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<1x256x14x14xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global199 = %95 : tensor<1x256x14x14xf32>
    %96 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95 : tensor<1x256x14x14xf32>) outs(%79 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_52 = tensor.pad %96 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %97 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_52, %cst_7 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%80 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %98 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %collapsed_49, %91 : tensor<1x14x14x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_70: f32, %in_71: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      %178 = arith.addf %177, %in_71 : f32
      linalg.yield %178 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global207 = %98 : tensor<1x256x14x14xf32>
    %99 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98 : tensor<1x256x14x14xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global208 = %99 : tensor<1x256x14x14xf32>
    %100 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99 : tensor<1x256x14x14xf32>) outs(%79 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_53 = tensor.pad %100 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %101 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_53, %cst_7 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%80 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %102 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101, %collapsed_49 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_70: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      linalg.yield %177 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global215 = %102 : tensor<1x256x14x14xf32>
    %103 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102 : tensor<1x256x14x14xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global216 = %103 : tensor<1x256x14x14xf32>
    %104 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103 : tensor<1x256x14x14xf32>) outs(%79 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_54 = tensor.pad %104 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %105 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_54, %cst_7 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%80 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %106 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %collapsed_49, %99 : tensor<1x14x14x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_70: f32, %in_71: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      %178 = arith.addf %177, %in_71 : f32
      linalg.yield %178 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global224 = %106 : tensor<1x256x14x14xf32>
    %107 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106 : tensor<1x256x14x14xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global225 = %107 : tensor<1x256x14x14xf32>
    %108 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107 : tensor<1x256x14x14xf32>) outs(%79 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_55 = tensor.pad %108 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %109 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_55, %cst_7 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%80 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %110 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %collapsed_49 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_70: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      linalg.yield %177 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global232 = %110 : tensor<1x256x14x14xf32>
    %111 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110 : tensor<1x256x14x14xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global233 = %111 : tensor<1x256x14x14xf32>
    %112 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111 : tensor<1x256x14x14xf32>) outs(%79 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_56 = tensor.pad %112 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %113 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_56, %cst_7 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%80 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %114 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113, %collapsed_49, %107 : tensor<1x14x14x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_70: f32, %in_71: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      %178 = arith.addf %177, %in_71 : f32
      linalg.yield %178 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global241 = %114 : tensor<1x256x14x14xf32>
    %115 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114 : tensor<1x256x14x14xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global242 = %115 : tensor<1x256x14x14xf32>
    %116 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115 : tensor<1x256x14x14xf32>) outs(%79 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_57 = tensor.pad %116 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %117 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_57, %cst_7 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%80 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %118 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117, %collapsed_49 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_70: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      linalg.yield %177 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global249 = %118 : tensor<1x256x14x14xf32>
    %119 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118 : tensor<1x256x14x14xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global250 = %119 : tensor<1x256x14x14xf32>
    %120 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x256x14x14xf32>) outs(%79 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_58 = tensor.pad %120 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %121 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_58, %cst_7 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%80 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %122 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %collapsed_49, %115 : tensor<1x14x14x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_70: f32, %in_71: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      %178 = arith.addf %177, %in_71 : f32
      linalg.yield %178 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global258 = %122 : tensor<1x256x14x14xf32>
    %123 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x256x14x14xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global259 = %123 : tensor<1x256x14x14xf32>
    %124 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123 : tensor<1x256x14x14xf32>) outs(%79 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_59 = tensor.pad %124 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %125 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_59, %cst_7 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%80 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %126 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125, %collapsed_49 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_70: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      linalg.yield %177 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global266 = %126 : tensor<1x256x14x14xf32>
    %127 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x256x14x14xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global267 = %127 : tensor<1x256x14x14xf32>
    %128 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127 : tensor<1x256x14x14xf32>) outs(%79 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_60 = tensor.pad %128 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %129 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_60, %cst_7 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%80 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %130 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %collapsed_49, %123 : tensor<1x14x14x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_70: f32, %in_71: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      %178 = arith.addf %177, %in_71 : f32
      linalg.yield %178 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global275 = %130 : tensor<1x256x14x14xf32>
    %131 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130 : tensor<1x256x14x14xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global276 = %131 : tensor<1x256x14x14xf32>
    %132 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131 : tensor<1x256x14x14xf32>) outs(%79 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_61 = tensor.pad %132 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %133 = tensor.empty() : tensor<1x7x7x512xf32>
    %134 = linalg.fill ins(%cst_0 : f32) outs(%133 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %135 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_61, %cst_6 : tensor<1x16x16x256xf32>, tensor<3x3x256x512xf32>) outs(%134 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %136 = tensor.empty() : tensor<1x512x7x7xf32>
    %137 = tensor.empty() : tensor<1x512x1x1xf32>
    %138 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%137 : tensor<1x512x1x1xf32>) {
    ^bb0(%out: f32):
      %173 = math.rsqrt %cst_1 : f32
      linalg.yield %173 : f32
    } -> tensor<1x512x1x1xf32>
    ml_program.global_store @global282 = %138 : tensor<1x512x1x1xf32>
    %collapsed_62 = tensor.collapse_shape %138 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %139 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %collapsed_62 : tensor<1x7x7x512xf32>, tensor<1x512xf32>) outs(%136 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_70: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      linalg.yield %177 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global285 = %139 : tensor<1x512x7x7xf32>
    %140 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139 : tensor<1x512x7x7xf32>) outs(%136 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global286 = %140 : tensor<1x512x7x7xf32>
    %141 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140 : tensor<1x512x7x7xf32>) outs(%133 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_63 = tensor.pad %141 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %142 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_63, %cst_4 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%134 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %143 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%132, %cst_5 : tensor<1x14x14x256xf32>, tensor<1x1x256x512xf32>) outs(%134 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %144 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142, %collapsed_62, %143 : tensor<1x7x7x512xf32>, tensor<1x512xf32>, tensor<1x7x7x512xf32>) outs(%136 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_70: f32, %in_71: f32, %out: f32):
      %173 = arith.addf %in_71, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      %178 = arith.addf %in, %cst_0 : f32
      %179 = arith.subf %178, %cst : f32
      %180 = arith.mulf %179, %in_70 : f32
      %181 = arith.mulf %180, %cst : f32
      %182 = arith.addf %181, %cst : f32
      %183 = arith.addf %182, %177 : f32
      linalg.yield %183 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global300 = %144 : tensor<1x512x7x7xf32>
    %145 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144 : tensor<1x512x7x7xf32>) outs(%136 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global301 = %145 : tensor<1x512x7x7xf32>
    %146 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145 : tensor<1x512x7x7xf32>) outs(%133 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_64 = tensor.pad %146 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %147 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_64, %cst_4 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%134 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %148 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %collapsed_62 : tensor<1x7x7x512xf32>, tensor<1x512xf32>) outs(%136 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_70: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      linalg.yield %177 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global308 = %148 : tensor<1x512x7x7xf32>
    %149 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148 : tensor<1x512x7x7xf32>) outs(%136 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global309 = %149 : tensor<1x512x7x7xf32>
    %150 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x512x7x7xf32>) outs(%133 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_65 = tensor.pad %150 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %151 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_65, %cst_4 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%134 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %152 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %collapsed_62, %145 : tensor<1x7x7x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%136 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_70: f32, %in_71: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      %178 = arith.addf %177, %in_71 : f32
      linalg.yield %178 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global317 = %152 : tensor<1x512x7x7xf32>
    %153 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x512x7x7xf32>) outs(%136 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global318 = %153 : tensor<1x512x7x7xf32>
    %154 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153 : tensor<1x512x7x7xf32>) outs(%133 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_66 = tensor.pad %154 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %155 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_66, %cst_4 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%134 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %156 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155, %collapsed_62 : tensor<1x7x7x512xf32>, tensor<1x512xf32>) outs(%136 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_70: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      linalg.yield %177 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global325 = %156 : tensor<1x512x7x7xf32>
    %157 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156 : tensor<1x512x7x7xf32>) outs(%136 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global326 = %157 : tensor<1x512x7x7xf32>
    %158 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157 : tensor<1x512x7x7xf32>) outs(%133 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_67 = tensor.pad %158 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %159 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_67, %cst_4 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%134 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %160 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159, %collapsed_62, %153 : tensor<1x7x7x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%136 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_70: f32, %in_71: f32, %out: f32):
      %173 = arith.addf %in, %cst_0 : f32
      %174 = arith.subf %173, %cst : f32
      %175 = arith.mulf %174, %in_70 : f32
      %176 = arith.mulf %175, %cst : f32
      %177 = arith.addf %176, %cst : f32
      %178 = arith.addf %177, %in_71 : f32
      linalg.yield %178 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global334 = %160 : tensor<1x512x7x7xf32>
    %161 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160 : tensor<1x512x7x7xf32>) outs(%136 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.minf %in, %cst_2 : f32
      %174 = arith.maxf %173, %cst_0 : f32
      linalg.yield %174 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global335 = %161 : tensor<1x512x7x7xf32>
    %162 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161 : tensor<1x512x7x7xf32>) outs(%133 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %163 = tensor.empty() : tensor<1x1x1x512xf32>
    %164 = linalg.fill ins(%cst_0 : f32) outs(%163 : tensor<1x1x1x512xf32>) -> tensor<1x1x1x512xf32>
    %165 = tensor.empty() : tensor<7x7xf32>
    %166 = linalg.pooling_nhwc_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%162, %165 : tensor<1x7x7x512xf32>, tensor<7x7xf32>) outs(%164 : tensor<1x1x1x512xf32>) -> tensor<1x1x1x512xf32>
    %167 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166 : tensor<1x1x1x512xf32>) outs(%163 : tensor<1x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.divf %in, %cst_3 : f32
      linalg.yield %173 : f32
    } -> tensor<1x1x1x512xf32>
    %collapsed_68 = tensor.collapse_shape %167 [[0], [1, 2], [3]] : tensor<1x1x1x512xf32> into tensor<1x1x512xf32>
    %168 = tensor.empty() : tensor<1x1x1000xf32>
    %169 = linalg.fill ins(%cst_0 : f32) outs(%168 : tensor<1x1x1000xf32>) -> tensor<1x1x1000xf32>
    %170 = linalg.batch_matmul ins(%collapsed_68, %cst_16 : tensor<1x1x512xf32>, tensor<1x512x1000xf32>) outs(%169 : tensor<1x1x1000xf32>) -> tensor<1x1x1000xf32>
    %171 = tensor.empty() : tensor<1x1x1000xf32>
    %172 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = ["parallel", "parallel", "parallel"]} ins(%170 : tensor<1x1x1000xf32>) outs(%171 : tensor<1x1x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      %173 = arith.addf %in, %cst : f32
      linalg.yield %173 : f32
    } -> tensor<1x1x1000xf32>
    %collapsed_69 = tensor.collapse_shape %172 [[0, 1], [2]] : tensor<1x1x1000xf32> into tensor<1x1000xf32>
    return %collapsed_69 : tensor<1x1000xf32>
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
    %89 = linalg.generic {indexing_maps = [#map5, #map4], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<1x512x1000xf32>) outs(%88 : tensor<1x1000x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1000x512xf32>
    %90 = tensor.empty() : tensor<1x1x512xf32>
    %91 = linalg.fill ins(%cst : f32) outs(%90 : tensor<1x1x512xf32>) -> tensor<1x1x512xf32>
    %92 = linalg.batch_matmul ins(%expanded, %89 : tensor<1x1x1000xf32>, tensor<1x1000x512xf32>) outs(%91 : tensor<1x1x512xf32>) -> tensor<1x1x512xf32>
    %93 = tensor.empty() : tensor<1x7x7x512xf32>
    %94 = tensor.empty() : tensor<1x512x7x7xf32>
    %expanded_2 = tensor.expand_shape %86 [[0, 1], [2], [3], [4]] : tensor<1x512x7x7xf32> into tensor<1x1x512x7x7xf32>
    %expanded_3 = tensor.expand_shape %87 [[0, 1], [2], [3], [4]] : tensor<1x512x7x7xf32> into tensor<1x1x512x7x7xf32>
    %95 = tensor.empty() : tensor<1x1x512x7x7xf32>
    %96 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_2, %expanded_3, %92 : tensor<1x1x512x7x7xf32>, tensor<1x1x512x7x7xf32>, tensor<1x1x512xf32>) outs(%95 : tensor<1x1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %out: f32):
      %288 = arith.mulf %in_101, %cst_0 : f32
      %289 = arith.cmpf oeq, %in, %in_100 : f32
      %290 = arith.select %289, %288, %cst : f32
      linalg.yield %290 : f32
    } -> tensor<1x1x512x7x7xf32>
    %collapsed = tensor.collapse_shape %96 [[0, 1], [2], [3], [4]] : tensor<1x1x512x7x7xf32> into tensor<1x512x7x7xf32>
    %collapsed_4 = tensor.collapse_shape %3 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %collapsed_5 = tensor.collapse_shape %75 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %97 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_5, %collapsed_4, %collapsed : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%93 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %out: f32):
      %288 = arith.mulf %in_100, %in_101 : f32
      %289 = arith.mulf %in, %288 : f32
      linalg.yield %289 : f32
    } -> tensor<1x7x7x512xf32>
    %98 = tensor.empty() : tensor<512x3x3x512xf32>
    %99 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<512x3x3x512xf32>) outs(%98 : tensor<512x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x3x3x512xf32>
    %100 = tensor.empty() : tensor<512xf32>
    %101 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%98 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %288 = linalg.index 0 : index
      %289 = linalg.index 1 : index
      %290 = arith.subi %c2, %289 : index
      %291 = linalg.index 2 : index
      %292 = linalg.index 3 : index
      %extracted = tensor.extract %99[%288, %290, %291, %292] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded = tensor.pad %97 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %102 = tensor.empty() : tensor<3x3x512x512xf32>
    %103 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%102 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %288 = linalg.index 0 : index
      %289 = linalg.index 1 : index
      %290 = linalg.index 2 : index
      %291 = linalg.index 3 : index
      %292 = arith.subi %c2, %289 : index
      %extracted = tensor.extract %101[%291, %288, %292, %290] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %104 = linalg.fill ins(%cst : f32) outs(%93 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %105 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded, %103 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%104 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %106 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_5, %collapsed_4, %84, %85, %100, %105 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%93 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %288 = arith.addf %in_103, %in_104 : f32
      %289 = arith.cmpf oeq, %in_101, %in_102 : f32
      %290 = arith.select %289, %288, %cst : f32
      %291 = arith.mulf %in_100, %290 : f32
      %292 = arith.mulf %in, %291 : f32
      linalg.yield %292 : f32
    } -> tensor<1x7x7x512xf32>
    %padded_6 = tensor.pad %106 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %107 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_6, %103 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%104 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %108 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %83, %collapsed, %100, %107 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%94 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %288 = arith.addf %in_102, %in_103 : f32
      %289 = arith.addf %in_101, %288 : f32
      %290 = arith.cmpf oeq, %in, %in_100 : f32
      %291 = arith.select %290, %289, %cst : f32
      linalg.yield %291 : f32
    } -> tensor<1x512x7x7xf32>
    %109 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_5, %collapsed_4, %108 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%93 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %out: f32):
      %288 = arith.mulf %in_100, %in_101 : f32
      %289 = arith.mulf %in, %288 : f32
      linalg.yield %289 : f32
    } -> tensor<1x7x7x512xf32>
    %padded_7 = tensor.pad %109 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %110 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_7, %103 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%104 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %111 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_5, %collapsed_4, %80, %81, %100, %110 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%93 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %288 = arith.addf %in_103, %in_104 : f32
      %289 = arith.cmpf oeq, %in_101, %in_102 : f32
      %290 = arith.select %289, %288, %cst : f32
      %291 = arith.mulf %in_100, %290 : f32
      %292 = arith.mulf %in, %291 : f32
      linalg.yield %292 : f32
    } -> tensor<1x7x7x512xf32>
    %padded_8 = tensor.pad %111 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %112 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_8, %103 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%104 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %113 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_5, %collapsed_4, %78, %79, %108, %100, %112 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%93 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %in_105: f32, %out: f32):
      %288 = arith.addf %in_104, %in_105 : f32
      %289 = arith.addf %in_103, %288 : f32
      %290 = arith.cmpf oeq, %in_101, %in_102 : f32
      %291 = arith.select %290, %289, %cst : f32
      %292 = arith.mulf %in_100, %291 : f32
      %293 = arith.mulf %in, %292 : f32
      linalg.yield %293 : f32
    } -> tensor<1x7x7x512xf32>
    %114 = tensor.empty() : tensor<256x1x1x512xf32>
    %115 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1 : tensor<512x1x1x256xf32>) outs(%114 : tensor<256x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1x1x512xf32>
    %116 = tensor.empty() : tensor<256xf32>
    %padded_9 = tensor.pad %115 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<256x1x1x512xf32> to tensor<256x2x2x512xf32>
    %expanded_10 = tensor.expand_shape %padded_9 [[0, 1], [2, 3], [4], [5]] : tensor<256x2x2x512xf32> into tensor<256x1x2x1x2x512xf32>
    %collapsed_11 = tensor.collapse_shape %113 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %117 = tensor.empty() : tensor<49x1024xf32>
    %118 = linalg.fill ins(%cst : f32) outs(%117 : tensor<49x1024xf32>) -> tensor<49x1024xf32>
    %119 = tensor.empty() : tensor<512x2x2x256x1x1xf32>
    %120 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_10 : tensor<256x1x2x1x2x512xf32>) outs(%119 : tensor<512x2x2x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2x2x256x1x1xf32>
    %collapsed_12 = tensor.collapse_shape %120 [[0], [1, 2, 3, 4, 5]] : tensor<512x2x2x256x1x1xf32> into tensor<512x1024xf32>
    %121 = linalg.matmul ins(%collapsed_11, %collapsed_12 : tensor<49x512xf32>, tensor<512x1024xf32>) outs(%118 : tensor<49x1024xf32>) -> tensor<49x1024xf32>
    %expanded_13 = tensor.expand_shape %121 [[0, 1, 2], [3, 4, 5]] : tensor<49x1024xf32> into tensor<1x7x7x2x2x256xf32>
    %122 = tensor.empty() : tensor<1x14x14x256xf32>
    %expanded_14 = tensor.expand_shape %116 [[0, 1]] : tensor<256xf32> into tensor<1x256xf32>
    %padded_15 = tensor.pad %113 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %123 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_15, %103 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%104 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %124 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_5, %collapsed_4, %76, %77, %100, %123 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%93 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %288 = arith.addf %in_103, %in_104 : f32
      %289 = arith.cmpf oeq, %in_101, %in_102 : f32
      %290 = arith.select %289, %288, %cst : f32
      %291 = arith.mulf %in_100, %290 : f32
      %292 = arith.mulf %in, %291 : f32
      linalg.yield %292 : f32
    } -> tensor<1x7x7x512xf32>
    %125 = tensor.empty() : tensor<256x3x3x512xf32>
    %126 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<512x3x3x256xf32>) outs(%125 : tensor<256x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x512xf32>
    %padded_16 = tensor.pad %126 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<256x3x3x512xf32> to tensor<256x4x4x512xf32>
    %expanded_17 = tensor.expand_shape %padded_16 [[0], [1, 2], [3, 4], [5]] : tensor<256x4x4x512xf32> into tensor<256x2x2x2x2x512xf32>
    %127 = tensor.empty() : tensor<2x2x256x2x2x512xf32>
    %128 = linalg.generic {indexing_maps = [#map14, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_17 : tensor<256x2x2x2x2x512xf32>) outs(%127 : tensor<2x2x256x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x256x2x2x512xf32>
    %collapsed_18 = tensor.collapse_shape %128 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x256x2x2x512xf32> into tensor<1024x2x2x512xf32>
    %129 = tensor.empty() : tensor<1024x2x2x512xf32>
    %130 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%129 : tensor<1024x2x2x512xf32>) {
    ^bb0(%out: f32):
      %288 = linalg.index 0 : index
      %289 = linalg.index 1 : index
      %290 = arith.subi %c1, %289 : index
      %291 = linalg.index 2 : index
      %292 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_18[%288, %290, %291, %292] : tensor<1024x2x2x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<1024x2x2x512xf32>
    %padded_19 = tensor.pad %124 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %131 = tensor.empty() : tensor<2x2x512x1024xf32>
    %132 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%131 : tensor<2x2x512x1024xf32>) {
    ^bb0(%out: f32):
      %288 = linalg.index 0 : index
      %289 = linalg.index 1 : index
      %290 = linalg.index 2 : index
      %291 = linalg.index 3 : index
      %292 = arith.subi %c1, %289 : index
      %extracted = tensor.extract %130[%291, %288, %292, %290] : tensor<1024x2x2x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<2x2x512x1024xf32>
    %133 = tensor.empty() : tensor<1x8x8x1024xf32>
    %134 = linalg.fill ins(%cst : f32) outs(%133 : tensor<1x8x8x1024xf32>) -> tensor<1x8x8x1024xf32>
    %135 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_19, %132 : tensor<1x9x9x512xf32>, tensor<2x2x512x1024xf32>) outs(%134 : tensor<1x8x8x1024xf32>) -> tensor<1x8x8x1024xf32>
    %expanded_20 = tensor.expand_shape %135 [[0], [1], [2], [3, 4, 5]] : tensor<1x8x8x1024xf32> into tensor<1x8x8x2x2x256xf32>
    %136 = tensor.empty() : tensor<1x8x2x8x2x256xf32>
    %137 = linalg.generic {indexing_maps = [#map15, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_20 : tensor<1x8x8x2x2x256xf32>) outs(%136 : tensor<1x8x2x8x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %288 = arith.addf %in, %cst : f32
      linalg.yield %288 : f32
    } -> tensor<1x8x2x8x2x256xf32>
    %collapsed_21 = tensor.collapse_shape %137 [[0], [1, 2], [3, 4], [5]] : tensor<1x8x2x8x2x256xf32> into tensor<1x16x16x256xf32>
    %extracted_slice = tensor.extract_slice %collapsed_21[0, 1, 1, 0] [1, 14, 14, 256] [1, 1, 1, 1] : tensor<1x16x16x256xf32> to tensor<1x14x14x256xf32>
    %expanded_22 = tensor.expand_shape %extracted_slice [[0], [1, 2], [3, 4], [5]] : tensor<1x14x14x256xf32> into tensor<1x7x2x7x2x256xf32>
    %138 = tensor.empty() : tensor<1x256x14x14xf32>
    %expanded_23 = tensor.expand_shape %73 [[0], [1], [2, 3], [4, 5]] : tensor<1x256x14x14xf32> into tensor<1x256x7x2x7x2xf32>
    %expanded_24 = tensor.expand_shape %74 [[0], [1], [2, 3], [4, 5]] : tensor<1x256x14x14xf32> into tensor<1x256x7x2x7x2xf32>
    %139 = tensor.empty() : tensor<1x256x7x2x7x2xf32>
    %140 = linalg.generic {indexing_maps = [#map13, #map13, #map16, #map17, #map18, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_23, %expanded_24, %expanded_13, %expanded_14, %expanded_22 : tensor<1x256x7x2x7x2xf32>, tensor<1x256x7x2x7x2xf32>, tensor<1x7x7x2x2x256xf32>, tensor<1x256xf32>, tensor<1x7x2x7x2x256xf32>) outs(%139 : tensor<1x256x7x2x7x2xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %288 = arith.addf %in_101, %cst : f32
      %289 = arith.addf %288, %in_102 : f32
      %290 = arith.addf %in_103, %in_102 : f32
      %291 = arith.addf %289, %290 : f32
      %292 = arith.cmpf oeq, %in, %in_100 : f32
      %293 = arith.select %292, %291, %cst : f32
      linalg.yield %293 : f32
    } -> tensor<1x256x7x2x7x2xf32>
    %collapsed_25 = tensor.collapse_shape %140 [[0], [1], [2, 3], [4, 5]] : tensor<1x256x7x2x7x2xf32> into tensor<1x256x14x14xf32>
    %collapsed_26 = tensor.collapse_shape %7 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %collapsed_27 = tensor.collapse_shape %50 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %141 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %collapsed_26, %collapsed_25 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%122 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %out: f32):
      %288 = arith.mulf %in_100, %in_101 : f32
      %289 = arith.mulf %in, %288 : f32
      linalg.yield %289 : f32
    } -> tensor<1x14x14x256xf32>
    %142 = tensor.empty() : tensor<256x3x3x256xf32>
    %143 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<256x3x3x256xf32>) outs(%142 : tensor<256x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x256xf32>
    %144 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%142 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %288 = linalg.index 0 : index
      %289 = linalg.index 1 : index
      %290 = arith.subi %c2, %289 : index
      %291 = linalg.index 2 : index
      %292 = linalg.index 3 : index
      %extracted = tensor.extract %143[%288, %290, %291, %292] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_28 = tensor.pad %141 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %145 = tensor.empty() : tensor<3x3x256x256xf32>
    %146 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%145 : tensor<3x3x256x256xf32>) {
    ^bb0(%out: f32):
      %288 = linalg.index 0 : index
      %289 = linalg.index 1 : index
      %290 = linalg.index 2 : index
      %291 = linalg.index 3 : index
      %292 = arith.subi %c2, %289 : index
      %extracted = tensor.extract %144[%291, %288, %292, %290] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x256xf32>
    %147 = linalg.fill ins(%cst : f32) outs(%122 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %148 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_28, %146 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%147 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %149 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %collapsed_26, %71, %72, %116, %148 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%122 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %288 = arith.addf %in_103, %in_104 : f32
      %289 = arith.cmpf oeq, %in_101, %in_102 : f32
      %290 = arith.select %289, %288, %cst : f32
      %291 = arith.mulf %in_100, %290 : f32
      %292 = arith.mulf %in, %291 : f32
      linalg.yield %292 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_29 = tensor.pad %149 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %150 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_29, %146 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%147 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %151 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %70, %collapsed_25, %116, %150 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %288 = arith.addf %in_102, %in_103 : f32
      %289 = arith.addf %in_101, %288 : f32
      %290 = arith.cmpf oeq, %in, %in_100 : f32
      %291 = arith.select %290, %289, %cst : f32
      linalg.yield %291 : f32
    } -> tensor<1x256x14x14xf32>
    %152 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %collapsed_26, %151 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%122 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %out: f32):
      %288 = arith.mulf %in_100, %in_101 : f32
      %289 = arith.mulf %in, %288 : f32
      linalg.yield %289 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_30 = tensor.pad %152 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %153 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_30, %146 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%147 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %154 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %collapsed_26, %67, %68, %116, %153 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%122 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %288 = arith.addf %in_103, %in_104 : f32
      %289 = arith.cmpf oeq, %in_101, %in_102 : f32
      %290 = arith.select %289, %288, %cst : f32
      %291 = arith.mulf %in_100, %290 : f32
      %292 = arith.mulf %in, %291 : f32
      linalg.yield %292 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_31 = tensor.pad %154 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %155 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_31, %146 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%147 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %156 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65, %66, %151, %116, %155 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %288 = arith.addf %in_102, %in_103 : f32
      %289 = arith.addf %in_101, %288 : f32
      %290 = arith.cmpf oeq, %in, %in_100 : f32
      %291 = arith.select %290, %289, %cst : f32
      linalg.yield %291 : f32
    } -> tensor<1x256x14x14xf32>
    %157 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %collapsed_26, %156 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%122 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %out: f32):
      %288 = arith.mulf %in_100, %in_101 : f32
      %289 = arith.mulf %in, %288 : f32
      linalg.yield %289 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_32 = tensor.pad %157 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %158 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_32, %146 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%147 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %159 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %collapsed_26, %63, %64, %116, %158 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%122 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %288 = arith.addf %in_103, %in_104 : f32
      %289 = arith.cmpf oeq, %in_101, %in_102 : f32
      %290 = arith.select %289, %288, %cst : f32
      %291 = arith.mulf %in_100, %290 : f32
      %292 = arith.mulf %in, %291 : f32
      linalg.yield %292 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_33 = tensor.pad %159 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %160 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_33, %146 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%147 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %161 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61, %62, %156, %116, %160 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %288 = arith.addf %in_102, %in_103 : f32
      %289 = arith.addf %in_101, %288 : f32
      %290 = arith.cmpf oeq, %in, %in_100 : f32
      %291 = arith.select %290, %289, %cst : f32
      linalg.yield %291 : f32
    } -> tensor<1x256x14x14xf32>
    %162 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %collapsed_26, %161 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%122 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %out: f32):
      %288 = arith.mulf %in_100, %in_101 : f32
      %289 = arith.mulf %in, %288 : f32
      linalg.yield %289 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_34 = tensor.pad %162 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %163 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_34, %146 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%147 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %164 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %collapsed_26, %59, %60, %116, %163 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%122 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %288 = arith.addf %in_103, %in_104 : f32
      %289 = arith.cmpf oeq, %in_101, %in_102 : f32
      %290 = arith.select %289, %288, %cst : f32
      %291 = arith.mulf %in_100, %290 : f32
      %292 = arith.mulf %in, %291 : f32
      linalg.yield %292 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_35 = tensor.pad %164 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %165 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_35, %146 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%147 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %166 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %58, %161, %116, %165 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %288 = arith.addf %in_102, %in_103 : f32
      %289 = arith.addf %in_101, %288 : f32
      %290 = arith.cmpf oeq, %in, %in_100 : f32
      %291 = arith.select %290, %289, %cst : f32
      linalg.yield %291 : f32
    } -> tensor<1x256x14x14xf32>
    %167 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %collapsed_26, %166 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%122 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %out: f32):
      %288 = arith.mulf %in_100, %in_101 : f32
      %289 = arith.mulf %in, %288 : f32
      linalg.yield %289 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_36 = tensor.pad %167 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %168 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_36, %146 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%147 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %169 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %collapsed_26, %55, %56, %116, %168 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%122 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %288 = arith.addf %in_103, %in_104 : f32
      %289 = arith.cmpf oeq, %in_101, %in_102 : f32
      %290 = arith.select %289, %288, %cst : f32
      %291 = arith.mulf %in_100, %290 : f32
      %292 = arith.mulf %in, %291 : f32
      linalg.yield %292 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_37 = tensor.pad %169 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %170 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_37, %146 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%147 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %171 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %collapsed_26, %53, %54, %166, %116, %170 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%122 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %in_105: f32, %out: f32):
      %288 = arith.addf %in_104, %in_105 : f32
      %289 = arith.addf %in_103, %288 : f32
      %290 = arith.cmpf oeq, %in_101, %in_102 : f32
      %291 = arith.select %290, %289, %cst : f32
      %292 = arith.mulf %in_100, %291 : f32
      %293 = arith.mulf %in, %292 : f32
      linalg.yield %293 : f32
    } -> tensor<1x14x14x256xf32>
    %172 = tensor.empty() : tensor<128x1x1x256xf32>
    %173 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<256x1x1x128xf32>) outs(%172 : tensor<128x1x1x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x1x1x256xf32>
    %174 = tensor.empty() : tensor<128xf32>
    %padded_38 = tensor.pad %173 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<128x1x1x256xf32> to tensor<128x2x2x256xf32>
    %expanded_39 = tensor.expand_shape %padded_38 [[0, 1], [2, 3], [4], [5]] : tensor<128x2x2x256xf32> into tensor<128x1x2x1x2x256xf32>
    %collapsed_40 = tensor.collapse_shape %171 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %175 = tensor.empty() : tensor<196x512xf32>
    %176 = linalg.fill ins(%cst : f32) outs(%175 : tensor<196x512xf32>) -> tensor<196x512xf32>
    %177 = tensor.empty() : tensor<256x2x2x128x1x1xf32>
    %178 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_39 : tensor<128x1x2x1x2x256xf32>) outs(%177 : tensor<256x2x2x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x2x2x128x1x1xf32>
    %collapsed_41 = tensor.collapse_shape %178 [[0], [1, 2, 3, 4, 5]] : tensor<256x2x2x128x1x1xf32> into tensor<256x512xf32>
    %179 = linalg.matmul ins(%collapsed_40, %collapsed_41 : tensor<196x256xf32>, tensor<256x512xf32>) outs(%176 : tensor<196x512xf32>) -> tensor<196x512xf32>
    %expanded_42 = tensor.expand_shape %179 [[0, 1, 2], [3, 4, 5]] : tensor<196x512xf32> into tensor<1x14x14x2x2x128xf32>
    %180 = tensor.empty() : tensor<1x28x28x128xf32>
    %expanded_43 = tensor.expand_shape %174 [[0, 1]] : tensor<128xf32> into tensor<1x128xf32>
    %padded_44 = tensor.pad %171 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %181 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_44, %146 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%147 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %182 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_27, %collapsed_26, %51, %52, %116, %181 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%122 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %288 = arith.addf %in_103, %in_104 : f32
      %289 = arith.cmpf oeq, %in_101, %in_102 : f32
      %290 = arith.select %289, %288, %cst : f32
      %291 = arith.mulf %in_100, %290 : f32
      %292 = arith.mulf %in, %291 : f32
      linalg.yield %292 : f32
    } -> tensor<1x14x14x256xf32>
    %183 = tensor.empty() : tensor<128x3x3x256xf32>
    %184 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<256x3x3x128xf32>) outs(%183 : tensor<128x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x256xf32>
    %padded_45 = tensor.pad %184 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<128x3x3x256xf32> to tensor<128x4x4x256xf32>
    %expanded_46 = tensor.expand_shape %padded_45 [[0], [1, 2], [3, 4], [5]] : tensor<128x4x4x256xf32> into tensor<128x2x2x2x2x256xf32>
    %185 = tensor.empty() : tensor<2x2x128x2x2x256xf32>
    %186 = linalg.generic {indexing_maps = [#map14, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_46 : tensor<128x2x2x2x2x256xf32>) outs(%185 : tensor<2x2x128x2x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x128x2x2x256xf32>
    %collapsed_47 = tensor.collapse_shape %186 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x128x2x2x256xf32> into tensor<512x2x2x256xf32>
    %187 = tensor.empty() : tensor<512x2x2x256xf32>
    %188 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%187 : tensor<512x2x2x256xf32>) {
    ^bb0(%out: f32):
      %288 = linalg.index 0 : index
      %289 = linalg.index 1 : index
      %290 = arith.subi %c1, %289 : index
      %291 = linalg.index 2 : index
      %292 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_47[%288, %290, %291, %292] : tensor<512x2x2x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x2x2x256xf32>
    %padded_48 = tensor.pad %182 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %189 = tensor.empty() : tensor<2x2x256x512xf32>
    %190 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%189 : tensor<2x2x256x512xf32>) {
    ^bb0(%out: f32):
      %288 = linalg.index 0 : index
      %289 = linalg.index 1 : index
      %290 = linalg.index 2 : index
      %291 = linalg.index 3 : index
      %292 = arith.subi %c1, %289 : index
      %extracted = tensor.extract %188[%291, %288, %292, %290] : tensor<512x2x2x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<2x2x256x512xf32>
    %191 = tensor.empty() : tensor<1x15x15x512xf32>
    %192 = linalg.fill ins(%cst : f32) outs(%191 : tensor<1x15x15x512xf32>) -> tensor<1x15x15x512xf32>
    %193 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_48, %190 : tensor<1x16x16x256xf32>, tensor<2x2x256x512xf32>) outs(%192 : tensor<1x15x15x512xf32>) -> tensor<1x15x15x512xf32>
    %expanded_49 = tensor.expand_shape %193 [[0], [1], [2], [3, 4, 5]] : tensor<1x15x15x512xf32> into tensor<1x15x15x2x2x128xf32>
    %194 = tensor.empty() : tensor<1x15x2x15x2x128xf32>
    %195 = linalg.generic {indexing_maps = [#map15, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_49 : tensor<1x15x15x2x2x128xf32>) outs(%194 : tensor<1x15x2x15x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %288 = arith.addf %in, %cst : f32
      linalg.yield %288 : f32
    } -> tensor<1x15x2x15x2x128xf32>
    %collapsed_50 = tensor.collapse_shape %195 [[0], [1, 2], [3, 4], [5]] : tensor<1x15x2x15x2x128xf32> into tensor<1x30x30x128xf32>
    %extracted_slice_51 = tensor.extract_slice %collapsed_50[0, 1, 1, 0] [1, 28, 28, 128] [1, 1, 1, 1] : tensor<1x30x30x128xf32> to tensor<1x28x28x128xf32>
    %expanded_52 = tensor.expand_shape %extracted_slice_51 [[0], [1, 2], [3, 4], [5]] : tensor<1x28x28x128xf32> into tensor<1x14x2x14x2x128xf32>
    %196 = tensor.empty() : tensor<1x128x28x28xf32>
    %expanded_53 = tensor.expand_shape %48 [[0], [1], [2, 3], [4, 5]] : tensor<1x128x28x28xf32> into tensor<1x128x14x2x14x2xf32>
    %expanded_54 = tensor.expand_shape %49 [[0], [1], [2, 3], [4, 5]] : tensor<1x128x28x28xf32> into tensor<1x128x14x2x14x2xf32>
    %197 = tensor.empty() : tensor<1x128x14x2x14x2xf32>
    %198 = linalg.generic {indexing_maps = [#map13, #map13, #map16, #map17, #map18, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_53, %expanded_54, %expanded_42, %expanded_43, %expanded_52 : tensor<1x128x14x2x14x2xf32>, tensor<1x128x14x2x14x2xf32>, tensor<1x14x14x2x2x128xf32>, tensor<1x128xf32>, tensor<1x14x2x14x2x128xf32>) outs(%197 : tensor<1x128x14x2x14x2xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %288 = arith.addf %in_101, %cst : f32
      %289 = arith.addf %288, %in_102 : f32
      %290 = arith.addf %in_103, %in_102 : f32
      %291 = arith.addf %289, %290 : f32
      %292 = arith.cmpf oeq, %in, %in_100 : f32
      %293 = arith.select %292, %291, %cst : f32
      linalg.yield %293 : f32
    } -> tensor<1x128x14x2x14x2xf32>
    %collapsed_55 = tensor.collapse_shape %198 [[0], [1], [2, 3], [4, 5]] : tensor<1x128x14x2x14x2xf32> into tensor<1x128x28x28xf32>
    %collapsed_56 = tensor.collapse_shape %11 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %collapsed_57 = tensor.collapse_shape %33 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %199 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_57, %collapsed_56, %collapsed_55 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%180 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %out: f32):
      %288 = arith.mulf %in_100, %in_101 : f32
      %289 = arith.mulf %in, %288 : f32
      linalg.yield %289 : f32
    } -> tensor<1x28x28x128xf32>
    %200 = tensor.empty() : tensor<128x3x3x128xf32>
    %201 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<128x3x3x128xf32>) outs(%200 : tensor<128x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x128xf32>
    %202 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%200 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %288 = linalg.index 0 : index
      %289 = linalg.index 1 : index
      %290 = arith.subi %c2, %289 : index
      %291 = linalg.index 2 : index
      %292 = linalg.index 3 : index
      %extracted = tensor.extract %201[%288, %290, %291, %292] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %padded_58 = tensor.pad %199 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %203 = tensor.empty() : tensor<3x3x128x128xf32>
    %204 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%203 : tensor<3x3x128x128xf32>) {
    ^bb0(%out: f32):
      %288 = linalg.index 0 : index
      %289 = linalg.index 1 : index
      %290 = linalg.index 2 : index
      %291 = linalg.index 3 : index
      %292 = arith.subi %c2, %289 : index
      %extracted = tensor.extract %202[%291, %288, %292, %290] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x128x128xf32>
    %205 = linalg.fill ins(%cst : f32) outs(%180 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %206 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_58, %204 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%205 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %207 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_57, %collapsed_56, %46, %47, %174, %206 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%180 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %288 = arith.addf %in_103, %in_104 : f32
      %289 = arith.cmpf oeq, %in_101, %in_102 : f32
      %290 = arith.select %289, %288, %cst : f32
      %291 = arith.mulf %in_100, %290 : f32
      %292 = arith.mulf %in, %291 : f32
      linalg.yield %292 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_59 = tensor.pad %207 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %208 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_59, %204 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%205 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %209 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %45, %collapsed_55, %174, %208 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%196 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %288 = arith.addf %in_102, %in_103 : f32
      %289 = arith.addf %in_101, %288 : f32
      %290 = arith.cmpf oeq, %in, %in_100 : f32
      %291 = arith.select %290, %289, %cst : f32
      linalg.yield %291 : f32
    } -> tensor<1x128x28x28xf32>
    %210 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_57, %collapsed_56, %209 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%180 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %out: f32):
      %288 = arith.mulf %in_100, %in_101 : f32
      %289 = arith.mulf %in, %288 : f32
      linalg.yield %289 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_60 = tensor.pad %210 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %211 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_60, %204 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%205 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %212 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_57, %collapsed_56, %42, %43, %174, %211 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%180 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %288 = arith.addf %in_103, %in_104 : f32
      %289 = arith.cmpf oeq, %in_101, %in_102 : f32
      %290 = arith.select %289, %288, %cst : f32
      %291 = arith.mulf %in_100, %290 : f32
      %292 = arith.mulf %in, %291 : f32
      linalg.yield %292 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_61 = tensor.pad %212 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %213 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_61, %204 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%205 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %214 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %41, %209, %174, %213 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%196 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %288 = arith.addf %in_102, %in_103 : f32
      %289 = arith.addf %in_101, %288 : f32
      %290 = arith.cmpf oeq, %in, %in_100 : f32
      %291 = arith.select %290, %289, %cst : f32
      linalg.yield %291 : f32
    } -> tensor<1x128x28x28xf32>
    %215 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_57, %collapsed_56, %214 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%180 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %out: f32):
      %288 = arith.mulf %in_100, %in_101 : f32
      %289 = arith.mulf %in, %288 : f32
      linalg.yield %289 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_62 = tensor.pad %215 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %216 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_62, %204 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%205 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %217 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_57, %collapsed_56, %38, %39, %174, %216 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%180 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %288 = arith.addf %in_103, %in_104 : f32
      %289 = arith.cmpf oeq, %in_101, %in_102 : f32
      %290 = arith.select %289, %288, %cst : f32
      %291 = arith.mulf %in_100, %290 : f32
      %292 = arith.mulf %in, %291 : f32
      linalg.yield %292 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_63 = tensor.pad %217 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %218 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_63, %204 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%205 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %219 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_57, %collapsed_56, %36, %37, %214, %174, %218 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%180 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %in_105: f32, %out: f32):
      %288 = arith.addf %in_104, %in_105 : f32
      %289 = arith.addf %in_103, %288 : f32
      %290 = arith.cmpf oeq, %in_101, %in_102 : f32
      %291 = arith.select %290, %289, %cst : f32
      %292 = arith.mulf %in_100, %291 : f32
      %293 = arith.mulf %in, %292 : f32
      linalg.yield %293 : f32
    } -> tensor<1x28x28x128xf32>
    %220 = tensor.empty() : tensor<64x1x1x128xf32>
    %221 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<128x1x1x64xf32>) outs(%220 : tensor<64x1x1x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x1x1x128xf32>
    %222 = tensor.empty() : tensor<64xf32>
    %padded_64 = tensor.pad %221 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<64x1x1x128xf32> to tensor<64x2x2x128xf32>
    %expanded_65 = tensor.expand_shape %padded_64 [[0, 1], [2, 3], [4], [5]] : tensor<64x2x2x128xf32> into tensor<64x1x2x1x2x128xf32>
    %collapsed_66 = tensor.collapse_shape %219 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %223 = tensor.empty() : tensor<784x256xf32>
    %224 = linalg.fill ins(%cst : f32) outs(%223 : tensor<784x256xf32>) -> tensor<784x256xf32>
    %225 = tensor.empty() : tensor<128x2x2x64x1x1xf32>
    %226 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_65 : tensor<64x1x2x1x2x128xf32>) outs(%225 : tensor<128x2x2x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x2x2x64x1x1xf32>
    %collapsed_67 = tensor.collapse_shape %226 [[0], [1, 2, 3, 4, 5]] : tensor<128x2x2x64x1x1xf32> into tensor<128x256xf32>
    %227 = linalg.matmul ins(%collapsed_66, %collapsed_67 : tensor<784x128xf32>, tensor<128x256xf32>) outs(%224 : tensor<784x256xf32>) -> tensor<784x256xf32>
    %expanded_68 = tensor.expand_shape %227 [[0, 1, 2], [3, 4, 5]] : tensor<784x256xf32> into tensor<1x28x28x2x2x64xf32>
    %228 = tensor.empty() : tensor<1x56x56x64xf32>
    %expanded_69 = tensor.expand_shape %222 [[0, 1]] : tensor<64xf32> into tensor<1x64xf32>
    %padded_70 = tensor.pad %219 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %229 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_70, %204 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%205 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %230 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_57, %collapsed_56, %34, %35, %174, %229 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%180 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %288 = arith.addf %in_103, %in_104 : f32
      %289 = arith.cmpf oeq, %in_101, %in_102 : f32
      %290 = arith.select %289, %288, %cst : f32
      %291 = arith.mulf %in_100, %290 : f32
      %292 = arith.mulf %in, %291 : f32
      linalg.yield %292 : f32
    } -> tensor<1x28x28x128xf32>
    %231 = tensor.empty() : tensor<64x3x3x128xf32>
    %232 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<128x3x3x64xf32>) outs(%231 : tensor<64x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x128xf32>
    %padded_71 = tensor.pad %232 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<64x3x3x128xf32> to tensor<64x4x4x128xf32>
    %expanded_72 = tensor.expand_shape %padded_71 [[0], [1, 2], [3, 4], [5]] : tensor<64x4x4x128xf32> into tensor<64x2x2x2x2x128xf32>
    %233 = tensor.empty() : tensor<2x2x64x2x2x128xf32>
    %234 = linalg.generic {indexing_maps = [#map14, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_72 : tensor<64x2x2x2x2x128xf32>) outs(%233 : tensor<2x2x64x2x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x64x2x2x128xf32>
    %collapsed_73 = tensor.collapse_shape %234 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x64x2x2x128xf32> into tensor<256x2x2x128xf32>
    %235 = tensor.empty() : tensor<256x2x2x128xf32>
    %236 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%235 : tensor<256x2x2x128xf32>) {
    ^bb0(%out: f32):
      %288 = linalg.index 0 : index
      %289 = linalg.index 1 : index
      %290 = arith.subi %c1, %289 : index
      %291 = linalg.index 2 : index
      %292 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_73[%288, %290, %291, %292] : tensor<256x2x2x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x2x2x128xf32>
    %padded_74 = tensor.pad %230 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %237 = tensor.empty() : tensor<2x2x128x256xf32>
    %238 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%237 : tensor<2x2x128x256xf32>) {
    ^bb0(%out: f32):
      %288 = linalg.index 0 : index
      %289 = linalg.index 1 : index
      %290 = linalg.index 2 : index
      %291 = linalg.index 3 : index
      %292 = arith.subi %c1, %289 : index
      %extracted = tensor.extract %236[%291, %288, %292, %290] : tensor<256x2x2x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<2x2x128x256xf32>
    %239 = tensor.empty() : tensor<1x29x29x256xf32>
    %240 = linalg.fill ins(%cst : f32) outs(%239 : tensor<1x29x29x256xf32>) -> tensor<1x29x29x256xf32>
    %241 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_74, %238 : tensor<1x30x30x128xf32>, tensor<2x2x128x256xf32>) outs(%240 : tensor<1x29x29x256xf32>) -> tensor<1x29x29x256xf32>
    %expanded_75 = tensor.expand_shape %241 [[0], [1], [2], [3, 4, 5]] : tensor<1x29x29x256xf32> into tensor<1x29x29x2x2x64xf32>
    %242 = tensor.empty() : tensor<1x29x2x29x2x64xf32>
    %243 = linalg.generic {indexing_maps = [#map15, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_75 : tensor<1x29x29x2x2x64xf32>) outs(%242 : tensor<1x29x2x29x2x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %288 = arith.addf %in, %cst : f32
      linalg.yield %288 : f32
    } -> tensor<1x29x2x29x2x64xf32>
    %collapsed_76 = tensor.collapse_shape %243 [[0], [1, 2], [3, 4], [5]] : tensor<1x29x2x29x2x64xf32> into tensor<1x58x58x64xf32>
    %extracted_slice_77 = tensor.extract_slice %collapsed_76[0, 1, 1, 0] [1, 56, 56, 64] [1, 1, 1, 1] : tensor<1x58x58x64xf32> to tensor<1x56x56x64xf32>
    %expanded_78 = tensor.expand_shape %extracted_slice_77 [[0], [1, 2], [3, 4], [5]] : tensor<1x56x56x64xf32> into tensor<1x28x2x28x2x64xf32>
    %244 = tensor.empty() : tensor<1x64x56x56xf32>
    %expanded_79 = tensor.expand_shape %31 [[0], [1], [2, 3], [4, 5]] : tensor<1x64x56x56xf32> into tensor<1x64x28x2x28x2xf32>
    %expanded_80 = tensor.expand_shape %32 [[0], [1], [2, 3], [4, 5]] : tensor<1x64x56x56xf32> into tensor<1x64x28x2x28x2xf32>
    %245 = tensor.empty() : tensor<1x64x28x2x28x2xf32>
    %246 = linalg.generic {indexing_maps = [#map13, #map13, #map16, #map17, #map18, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_79, %expanded_80, %expanded_68, %expanded_69, %expanded_78 : tensor<1x64x28x2x28x2xf32>, tensor<1x64x28x2x28x2xf32>, tensor<1x28x28x2x2x64xf32>, tensor<1x64xf32>, tensor<1x28x2x28x2x64xf32>) outs(%245 : tensor<1x64x28x2x28x2xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %288 = arith.addf %in_101, %cst : f32
      %289 = arith.addf %288, %in_102 : f32
      %290 = arith.addf %in_103, %in_102 : f32
      %291 = arith.addf %289, %290 : f32
      %292 = arith.cmpf oeq, %in, %in_100 : f32
      %293 = arith.select %292, %291, %cst : f32
      linalg.yield %293 : f32
    } -> tensor<1x64x28x2x28x2xf32>
    %collapsed_81 = tensor.collapse_shape %246 [[0], [1], [2, 3], [4, 5]] : tensor<1x64x28x2x28x2xf32> into tensor<1x64x56x56xf32>
    %collapsed_82 = tensor.collapse_shape %14 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %collapsed_83 = tensor.collapse_shape %16 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %247 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_83, %collapsed_82, %collapsed_81 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%228 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %out: f32):
      %288 = arith.mulf %in_100, %in_101 : f32
      %289 = arith.mulf %in, %288 : f32
      linalg.yield %289 : f32
    } -> tensor<1x56x56x64xf32>
    %248 = tensor.empty() : tensor<64x3x3x64xf32>
    %249 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<64x3x3x64xf32>) outs(%248 : tensor<64x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x64xf32>
    %250 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%248 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %288 = linalg.index 0 : index
      %289 = linalg.index 1 : index
      %290 = arith.subi %c2, %289 : index
      %291 = linalg.index 2 : index
      %292 = linalg.index 3 : index
      %extracted = tensor.extract %249[%288, %290, %291, %292] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %padded_84 = tensor.pad %247 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %251 = tensor.empty() : tensor<3x3x64x64xf32>
    %252 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%251 : tensor<3x3x64x64xf32>) {
    ^bb0(%out: f32):
      %288 = linalg.index 0 : index
      %289 = linalg.index 1 : index
      %290 = linalg.index 2 : index
      %291 = linalg.index 3 : index
      %292 = arith.subi %c2, %289 : index
      %extracted = tensor.extract %250[%291, %288, %292, %290] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x64x64xf32>
    %253 = linalg.fill ins(%cst : f32) outs(%228 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %254 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_84, %252 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%253 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %255 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_83, %collapsed_82, %29, %30, %222, %254 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%228 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %288 = arith.addf %in_103, %in_104 : f32
      %289 = arith.cmpf oeq, %in_101, %in_102 : f32
      %290 = arith.select %289, %288, %cst : f32
      %291 = arith.mulf %in_100, %290 : f32
      %292 = arith.mulf %in, %291 : f32
      linalg.yield %292 : f32
    } -> tensor<1x56x56x64xf32>
    %padded_85 = tensor.pad %255 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %256 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_85, %252 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%253 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %257 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %28, %collapsed_81, %222, %256 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%244 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %288 = arith.addf %in_102, %in_103 : f32
      %289 = arith.addf %in_101, %288 : f32
      %290 = arith.cmpf oeq, %in, %in_100 : f32
      %291 = arith.select %290, %289, %cst : f32
      linalg.yield %291 : f32
    } -> tensor<1x64x56x56xf32>
    %258 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_83, %collapsed_82, %257 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%228 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %out: f32):
      %288 = arith.mulf %in_100, %in_101 : f32
      %289 = arith.mulf %in, %288 : f32
      linalg.yield %289 : f32
    } -> tensor<1x56x56x64xf32>
    %padded_86 = tensor.pad %258 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %259 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_86, %252 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%253 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %260 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_83, %collapsed_82, %25, %26, %222, %259 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%228 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %288 = arith.addf %in_103, %in_104 : f32
      %289 = arith.cmpf oeq, %in_101, %in_102 : f32
      %290 = arith.select %289, %288, %cst : f32
      %291 = arith.mulf %in_100, %290 : f32
      %292 = arith.mulf %in, %291 : f32
      linalg.yield %292 : f32
    } -> tensor<1x56x56x64xf32>
    %padded_87 = tensor.pad %260 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %261 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_87, %252 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%253 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %262 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %24, %257, %222, %261 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%244 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %288 = arith.addf %in_102, %in_103 : f32
      %289 = arith.addf %in_101, %288 : f32
      %290 = arith.cmpf oeq, %in, %in_100 : f32
      %291 = arith.select %290, %289, %cst : f32
      linalg.yield %291 : f32
    } -> tensor<1x64x56x56xf32>
    %263 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_83, %collapsed_82, %262 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%228 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %out: f32):
      %288 = arith.mulf %in_100, %in_101 : f32
      %289 = arith.mulf %in, %288 : f32
      linalg.yield %289 : f32
    } -> tensor<1x56x56x64xf32>
    %padded_88 = tensor.pad %263 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %264 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_88, %252 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%253 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %265 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map10, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_83, %collapsed_82, %21, %22, %222, %264 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%228 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %288 = arith.addf %in_103, %in_104 : f32
      %289 = arith.cmpf oeq, %in_101, %in_102 : f32
      %290 = arith.select %289, %288, %cst : f32
      %291 = arith.mulf %in_100, %290 : f32
      %292 = arith.mulf %in, %291 : f32
      linalg.yield %292 : f32
    } -> tensor<1x56x56x64xf32>
    %padded_89 = tensor.pad %265 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %266 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_89, %252 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%253 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %padded_90 = tensor.pad %19 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %267 = tensor.empty() : tensor<1x113x113x64xf32>
    %268 = tensor.empty() : tensor<3x3xf32>
    %269 = linalg.generic {indexing_maps = [#map19, #map20, #map21, #map22, #map21, #map23, #map19], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded_90, %268, %20, %222, %266, %262 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>, tensor<1x64x56x56xf32>) outs(%267 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %in_104: f32, %out: f32):
      %288 = arith.addf %in_102, %in_103 : f32
      %289 = arith.addf %288, %in_104 : f32
      %290 = arith.cmpf oge, %in, %in_101 : f32
      %291 = arith.select %290, %289, %cst : f32
      %292 = arith.addf %out, %291 : f32
      linalg.yield %292 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice_91 = tensor.extract_slice %269[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %270 = tensor.empty() : tensor<1x112x112x64xf32>
    %271 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_83, %collapsed_82, %17, %18, %extracted_slice_91 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>, tensor<1x112x112x64xf32>) outs(%270 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %in_100: f32, %in_101: f32, %in_102: f32, %in_103: f32, %out: f32):
      %288 = arith.cmpf oeq, %in_101, %in_102 : f32
      %289 = arith.select %288, %in_103, %cst : f32
      %290 = arith.mulf %in_100, %289 : f32
      %291 = arith.mulf %in, %290 : f32
      linalg.yield %291 : f32
    } -> tensor<1x112x112x64xf32>
    %272 = tensor.empty() : tensor<3x7x7x64xf32>
    %273 = linalg.generic {indexing_maps = [#map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<64x7x7x3xf32>) outs(%272 : tensor<3x7x7x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x7x7x64xf32>
    %274 = tensor.empty() : tensor<3xf32>
    %padded_92 = tensor.pad %273 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<3x7x7x64xf32> to tensor<3x8x8x64xf32>
    %expanded_93 = tensor.expand_shape %padded_92 [[0], [1, 2], [3, 4], [5]] : tensor<3x8x8x64xf32> into tensor<3x4x2x4x2x64xf32>
    %275 = tensor.empty() : tensor<2x2x3x4x4x64xf32>
    %276 = linalg.generic {indexing_maps = [#map14, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_93 : tensor<3x4x2x4x2x64xf32>) outs(%275 : tensor<2x2x3x4x4x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x3x4x4x64xf32>
    %collapsed_94 = tensor.collapse_shape %276 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x3x4x4x64xf32> into tensor<12x4x4x64xf32>
    %277 = tensor.empty() : tensor<12x4x4x64xf32>
    %278 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%277 : tensor<12x4x4x64xf32>) {
    ^bb0(%out: f32):
      %288 = linalg.index 0 : index
      %289 = linalg.index 1 : index
      %290 = arith.subi %c3, %289 : index
      %291 = linalg.index 2 : index
      %292 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_94[%288, %290, %291, %292] : tensor<12x4x4x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<12x4x4x64xf32>
    %padded_95 = tensor.pad %271 low[%c0, %c3, %c3, %c0] high[%c0, %c3, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x64xf32> to tensor<1x118x118x64xf32>
    %279 = tensor.empty() : tensor<4x4x64x12xf32>
    %280 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%279 : tensor<4x4x64x12xf32>) {
    ^bb0(%out: f32):
      %288 = linalg.index 0 : index
      %289 = linalg.index 1 : index
      %290 = linalg.index 2 : index
      %291 = linalg.index 3 : index
      %292 = arith.subi %c3, %289 : index
      %extracted = tensor.extract %278[%291, %288, %292, %290] : tensor<12x4x4x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<4x4x64x12xf32>
    %281 = tensor.empty() : tensor<1x115x115x12xf32>
    %282 = linalg.fill ins(%cst : f32) outs(%281 : tensor<1x115x115x12xf32>) -> tensor<1x115x115x12xf32>
    %283 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_95, %280 : tensor<1x118x118x64xf32>, tensor<4x4x64x12xf32>) outs(%282 : tensor<1x115x115x12xf32>) -> tensor<1x115x115x12xf32>
    %expanded_96 = tensor.expand_shape %283 [[0], [1], [2], [3, 4, 5]] : tensor<1x115x115x12xf32> into tensor<1x115x115x2x2x3xf32>
    %284 = tensor.empty() : tensor<1x115x2x115x2x3xf32>
    %285 = linalg.generic {indexing_maps = [#map15, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_96 : tensor<1x115x115x2x2x3xf32>) outs(%284 : tensor<1x115x2x115x2x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %288 = arith.addf %in, %cst : f32
      linalg.yield %288 : f32
    } -> tensor<1x115x2x115x2x3xf32>
    %collapsed_97 = tensor.collapse_shape %285 [[0], [1, 2], [3, 4], [5]] : tensor<1x115x2x115x2x3xf32> into tensor<1x230x230x3xf32>
    %extracted_slice_98 = tensor.extract_slice %collapsed_97[0, 3, 3, 0] [1, 224, 224, 3] [1, 1, 1, 1] : tensor<1x230x230x3xf32> to tensor<1x224x224x3xf32>
    %expanded_99 = tensor.expand_shape %274 [[0, 1]] : tensor<3xf32> into tensor<1x3xf32>
    %286 = tensor.empty() : tensor<1x3x224x224xf32>
    %287 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_98, %expanded_99 : tensor<1x224x224x3xf32>, tensor<1x3xf32>) outs(%286 : tensor<1x3x224x224xf32>) {
    ^bb0(%in: f32, %in_100: f32, %out: f32):
      %288 = arith.addf %in, %in_100 : f32
      linalg.yield %288 : f32
    } -> tensor<1x3x224x224xf32>
    return %287 : tensor<1x3x224x224xf32>
  }
}

