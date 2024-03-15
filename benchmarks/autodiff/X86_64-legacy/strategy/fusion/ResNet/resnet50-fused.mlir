#map = affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3, d1)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map5 = affine_map<(d0, d1, d2) -> (d0, d2, d1)>
#map6 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>
#map7 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2)>
#map8 = affine_map<(d0, d1, d2, d3) -> (d0, d3)>
#map9 = affine_map<(d0, d1, d2, d3) -> (d3)>
#map10 = affine_map<(d0, d1, d2, d3) -> (d3, d1, d2, d0)>
#map11 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map12 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d4, d1, d5, d2, d0)>
#map13 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3, d4, d5)>
#map14 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d2, d3, d0, d4, d1, d5)>
#map15 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d2, d4, d5)>
#map16 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d4, d3, d5, d1)>
#map17 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1)>
#map18 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d1)>
#map19 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d3, d4, d5, d1)>
#map20 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map21 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map22 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#map23 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d3)>
module attributes {torch.debug_module_name = "ResNet"} {
  ml_program.global private mutable @global487 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global486 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global478 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global477 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global470 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global469 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global462 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global461 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global453 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global452 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global445 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global444 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global437 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global436 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global426 : tensor<1x2048x1x1xf32>
  ml_program.global private mutable @global420 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global419 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global412 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global411 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global404 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global403 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global395 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global394 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global387 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global386 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global379 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global378 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global370 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global369 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global362 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global361 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global354 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global353 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global345 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global344 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global337 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global336 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global329 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global328 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global320 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global319 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global312 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global311 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global304 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global303 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global295 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global294 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global287 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global286 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global279 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global278 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global268 : tensor<1x1024x1x1xf32>
  ml_program.global private mutable @global262 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global261 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global254 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global253 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global246 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global245 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global237 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global236 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global229 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global228 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global221 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global220 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global212 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global211 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global204 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global203 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global196 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global195 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global187 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global186 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global179 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global178 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global171 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global170 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global160 : tensor<1x512x1x1xf32>
  ml_program.global private mutable @global154 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global153 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global146 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global145 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global142 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global136 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global135 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global127 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global126 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global119 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global118 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global111 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global110 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global102 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global101 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global94 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global93 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global86 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global85 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global75 : tensor<1x256x1x1xf32>
  ml_program.global private mutable @global69 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global68 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global61 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global60 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global54 : tensor<1x56x56x64xf32>
  ml_program.global private mutable @global53 : tensor<1x112x112x64xf32>
  ml_program.global private mutable @global52 : tensor<1x64x112x112xf32>
  ml_program.global private mutable @global51 : tensor<1x64x112x112xf32>
  ml_program.global private mutable @global48 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global42 : tensor<64x7x7x3xf32>
  ml_program.global private mutable @global41 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global39 : tensor<64x1x1x64xf32>
  ml_program.global private mutable @global38 : tensor<64x3x3x64xf32>
  ml_program.global private mutable @global37 : tensor<256x1x1x64xf32>
  ml_program.global private mutable @global36 : tensor<1x256x1x1xf32>
  ml_program.global private mutable @global34 : tensor<64x1x1x256xf32>
  ml_program.global private mutable @global33 : tensor<128x1x1x256xf32>
  ml_program.global private mutable @global32 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global30 : tensor<128x3x3x128xf32>
  ml_program.global private mutable @global29 : tensor<512x1x1x128xf32>
  ml_program.global private mutable @global28 : tensor<1x512x1x1xf32>
  ml_program.global private mutable @global26 : tensor<512x1x1x256xf32>
  ml_program.global private mutable @global25 : tensor<128x1x1x512xf32>
  ml_program.global private mutable @global24 : tensor<256x1x1x512xf32>
  ml_program.global private mutable @global23 : tensor<256x3x3x256xf32>
  ml_program.global private mutable @global22 : tensor<1024x1x1x256xf32>
  ml_program.global private mutable @global21 : tensor<1x1024x1x1xf32>
  ml_program.global private mutable @global19 : tensor<1024x1x1x512xf32>
  ml_program.global private mutable @global18 : tensor<256x1x1x1024xf32>
  ml_program.global private mutable @global17 : tensor<512x1x1x1024xf32>
  ml_program.global private mutable @global16 : tensor<512x3x3x512xf32>
  ml_program.global private mutable @global15 : tensor<2048x1x1x512xf32>
  ml_program.global private mutable @global14 : tensor<1x2048x1x1xf32>
  ml_program.global private mutable @global12 : tensor<2048x1x1x1024xf32>
  ml_program.global private mutable @global11 : tensor<512x1x1x2048xf32>
  ml_program.global private mutable @global10 : tensor<1x2048x1000xf32>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant 7.777000e-02 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %cst_1 = arith.constant 7.778000e-02 : f32
    %cst_2 = arith.constant 3.40282347E+38 : f32
    %cst_3 = arith.constant 4.900000e+01 : f32
    %cst_4 = arith.constant dense<7.777000e-02> : tensor<512x2048xf32>
    %cst_5 = arith.constant dense<7.777000e-02> : tensor<3x3x512x512xf32>
    %cst_6 = arith.constant dense<7.777000e-02> : tensor<2048x512xf32>
    %cst_7 = arith.constant dense<7.777000e-02> : tensor<1x1x1024x2048xf32>
    %cst_8 = arith.constant dense<7.777000e-02> : tensor<1024x512xf32>
    %cst_9 = arith.constant dense<7.777000e-02> : tensor<256x1024xf32>
    %cst_10 = arith.constant dense<7.777000e-02> : tensor<3x3x256x256xf32>
    %cst_11 = arith.constant dense<7.777000e-02> : tensor<1024x256xf32>
    %cst_12 = arith.constant dense<7.777000e-02> : tensor<1x1x512x1024xf32>
    %cst_13 = arith.constant dense<7.777000e-02> : tensor<512x256xf32>
    %cst_14 = arith.constant dense<7.777000e-02> : tensor<128x512xf32>
    %cst_15 = arith.constant dense<7.777000e-02> : tensor<3x3x128x128xf32>
    %cst_16 = arith.constant dense<7.777000e-02> : tensor<512x128xf32>
    %cst_17 = arith.constant dense<7.777000e-02> : tensor<1x1x256x512xf32>
    %cst_18 = arith.constant dense<7.777000e-02> : tensor<256x128xf32>
    %cst_19 = arith.constant dense<7.777000e-02> : tensor<64x256xf32>
    %cst_20 = arith.constant dense<7.777000e-02> : tensor<3x3x64x64xf32>
    %cst_21 = arith.constant dense<7.777000e-02> : tensor<256x64xf32>
    %cst_22 = arith.constant dense<7.777000e-02> : tensor<64x64xf32>
    %cst_23 = arith.constant dense<7.777000e-02> : tensor<7x7x3x64xf32>
    %cst_24 = arith.constant -3.40282347E+38 : f32
    %cst_25 = arith.constant dense<7.777000e-02> : tensor<1x2048x1000xf32>
    %cst_26 = arith.constant dense<7.777000e-02> : tensor<512x1x1x2048xf32>
    %cst_27 = arith.constant dense<7.777000e-02> : tensor<2048x1x1x1024xf32>
    %cst_28 = arith.constant dense<7.777000e-02> : tensor<1x2048x1x1xf32>
    %cst_29 = arith.constant dense<7.777000e-02> : tensor<2048x1x1x512xf32>
    %cst_30 = arith.constant dense<7.777000e-02> : tensor<512x3x3x512xf32>
    %cst_31 = arith.constant dense<7.777000e-02> : tensor<512x1x1x1024xf32>
    %cst_32 = arith.constant dense<7.777000e-02> : tensor<256x1x1x1024xf32>
    %cst_33 = arith.constant dense<7.777000e-02> : tensor<1024x1x1x512xf32>
    %cst_34 = arith.constant dense<7.777000e-02> : tensor<1x1024x1x1xf32>
    %cst_35 = arith.constant dense<7.777000e-02> : tensor<1024x1x1x256xf32>
    %cst_36 = arith.constant dense<7.777000e-02> : tensor<256x3x3x256xf32>
    %cst_37 = arith.constant dense<7.777000e-02> : tensor<256x1x1x512xf32>
    %cst_38 = arith.constant dense<7.777000e-02> : tensor<128x1x1x512xf32>
    %cst_39 = arith.constant dense<7.777000e-02> : tensor<512x1x1x256xf32>
    %cst_40 = arith.constant dense<7.777000e-02> : tensor<1x512x1x1xf32>
    %cst_41 = arith.constant dense<7.777000e-02> : tensor<512x1x1x128xf32>
    %cst_42 = arith.constant dense<7.777000e-02> : tensor<128x3x3x128xf32>
    %cst_43 = arith.constant dense<7.777000e-02> : tensor<1x128x1x1xf32>
    %cst_44 = arith.constant dense<7.777000e-02> : tensor<128x1x1x256xf32>
    %cst_45 = arith.constant dense<7.777000e-02> : tensor<64x1x1x256xf32>
    %cst_46 = arith.constant dense<7.777000e-02> : tensor<1x256x1x1xf32>
    %cst_47 = arith.constant dense<7.777000e-02> : tensor<256x1x1x64xf32>
    %cst_48 = arith.constant dense<7.777000e-02> : tensor<64x3x3x64xf32>
    %cst_49 = arith.constant dense<7.777000e-02> : tensor<64x1x1x64xf32>
    %cst_50 = arith.constant dense<7.777000e-02> : tensor<1x64x1x1xf32>
    %cst_51 = arith.constant dense<7.777000e-02> : tensor<64x7x7x3xf32>
    ml_program.global_store @global10 = %cst_25 : tensor<1x2048x1000xf32>
    ml_program.global_store @global11 = %cst_26 : tensor<512x1x1x2048xf32>
    ml_program.global_store @global12 = %cst_27 : tensor<2048x1x1x1024xf32>
    ml_program.global_store @global14 = %cst_28 : tensor<1x2048x1x1xf32>
    ml_program.global_store @global15 = %cst_29 : tensor<2048x1x1x512xf32>
    ml_program.global_store @global16 = %cst_30 : tensor<512x3x3x512xf32>
    ml_program.global_store @global17 = %cst_31 : tensor<512x1x1x1024xf32>
    ml_program.global_store @global18 = %cst_32 : tensor<256x1x1x1024xf32>
    ml_program.global_store @global19 = %cst_33 : tensor<1024x1x1x512xf32>
    ml_program.global_store @global21 = %cst_34 : tensor<1x1024x1x1xf32>
    ml_program.global_store @global22 = %cst_35 : tensor<1024x1x1x256xf32>
    ml_program.global_store @global23 = %cst_36 : tensor<256x3x3x256xf32>
    ml_program.global_store @global24 = %cst_37 : tensor<256x1x1x512xf32>
    ml_program.global_store @global25 = %cst_38 : tensor<128x1x1x512xf32>
    ml_program.global_store @global26 = %cst_39 : tensor<512x1x1x256xf32>
    ml_program.global_store @global28 = %cst_40 : tensor<1x512x1x1xf32>
    ml_program.global_store @global29 = %cst_41 : tensor<512x1x1x128xf32>
    ml_program.global_store @global30 = %cst_42 : tensor<128x3x3x128xf32>
    ml_program.global_store @global32 = %cst_43 : tensor<1x128x1x1xf32>
    ml_program.global_store @global33 = %cst_44 : tensor<128x1x1x256xf32>
    ml_program.global_store @global34 = %cst_45 : tensor<64x1x1x256xf32>
    ml_program.global_store @global36 = %cst_46 : tensor<1x256x1x1xf32>
    ml_program.global_store @global37 = %cst_47 : tensor<256x1x1x64xf32>
    ml_program.global_store @global38 = %cst_48 : tensor<64x3x3x64xf32>
    ml_program.global_store @global39 = %cst_49 : tensor<64x1x1x64xf32>
    ml_program.global_store @global41 = %cst_50 : tensor<1x64x1x1xf32>
    ml_program.global_store @global42 = %cst_51 : tensor<64x7x7x3xf32>
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
    %4 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded, %cst_23 : tensor<1x230x230x3xf32>, tensor<7x7x3x64xf32>) outs(%3 : tensor<1x112x112x64xf32>) -> tensor<1x112x112x64xf32>
    %5 = tensor.empty() : tensor<1x64x112x112xf32>
    %6 = tensor.empty() : tensor<1x64x1x1xf32>
    %7 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%6 : tensor<1x64x1x1xf32>) {
    ^bb0(%out: f32):
      %281 = math.rsqrt %cst_1 : f32
      linalg.yield %281 : f32
    } -> tensor<1x64x1x1xf32>
    ml_program.global_store @global48 = %7 : tensor<1x64x1x1xf32>
    %collapsed = tensor.collapse_shape %7 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %8 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4, %collapsed : tensor<1x112x112x64xf32>, tensor<1x64xf32>) outs(%5 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x64x112x112xf32>
    ml_program.global_store @global51 = %8 : tensor<1x64x112x112xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x64x112x112xf32>) outs(%5 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x64x112x112xf32>
    ml_program.global_store @global52 = %9 : tensor<1x64x112x112xf32>
    %10 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<1x64x112x112xf32>) outs(%2 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x64xf32>
    ml_program.global_store @global53 = %10 : tensor<1x112x112x64xf32>
    %padded_52 = tensor.pad %10 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %11 = tensor.empty() : tensor<1x56x56x64xf32>
    %12 = linalg.fill ins(%cst_24 : f32) outs(%11 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %13 = tensor.empty() : tensor<3x3xf32>
    %14 = linalg.pooling_nhwc_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_52, %13 : tensor<1x113x113x64xf32>, tensor<3x3xf32>) outs(%12 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    ml_program.global_store @global54 = %14 : tensor<1x56x56x64xf32>
    %collapsed_53 = tensor.collapse_shape %14 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %15 = tensor.empty() : tensor<3136x64xf32>
    %16 = linalg.fill ins(%cst_0 : f32) outs(%15 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %17 = linalg.matmul ins(%collapsed_53, %cst_22 : tensor<3136x64xf32>, tensor<64x64xf32>) outs(%16 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded = tensor.expand_shape %17 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %18 = tensor.empty() : tensor<1x64x56x56xf32>
    %19 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded, %collapsed : tensor<1x56x56x64xf32>, tensor<1x64xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global60 = %19 : tensor<1x64x56x56xf32>
    %20 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<1x64x56x56xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global61 = %20 : tensor<1x64x56x56xf32>
    %21 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20 : tensor<1x64x56x56xf32>) outs(%11 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_54 = tensor.pad %21 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %22 = linalg.fill ins(%cst_0 : f32) outs(%11 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %23 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_54, %cst_20 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%22 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %collapsed : tensor<1x56x56x64xf32>, tensor<1x64xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global68 = %24 : tensor<1x64x56x56xf32>
    %25 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<1x64x56x56xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global69 = %25 : tensor<1x64x56x56xf32>
    %26 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25 : tensor<1x64x56x56xf32>) outs(%11 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_55 = tensor.collapse_shape %26 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %27 = tensor.empty() : tensor<3136x256xf32>
    %28 = linalg.fill ins(%cst_0 : f32) outs(%27 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %29 = linalg.matmul ins(%collapsed_55, %cst_19 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%28 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_56 = tensor.expand_shape %29 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %30 = tensor.empty() : tensor<1x256x56x56xf32>
    %31 = tensor.empty() : tensor<1x256x1x1xf32>
    %32 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%31 : tensor<1x256x1x1xf32>) {
    ^bb0(%out: f32):
      %281 = math.rsqrt %cst_1 : f32
      linalg.yield %281 : f32
    } -> tensor<1x256x1x1xf32>
    ml_program.global_store @global75 = %32 : tensor<1x256x1x1xf32>
    %collapsed_57 = tensor.collapse_shape %32 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %33 = linalg.matmul ins(%collapsed_53, %cst_19 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%28 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_58 = tensor.expand_shape %33 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_56, %collapsed_57, %expanded_58 : tensor<1x56x56x256xf32>, tensor<1x256xf32>, tensor<1x56x56x256xf32>) outs(%30 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_140: f32, %in_141: f32, %out: f32):
      %281 = arith.addf %in_141, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      %286 = arith.addf %in, %cst_0 : f32
      %287 = arith.subf %286, %cst : f32
      %288 = arith.mulf %287, %in_140 : f32
      %289 = arith.mulf %288, %cst : f32
      %290 = arith.addf %289, %cst : f32
      %291 = arith.addf %290, %285 : f32
      linalg.yield %291 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global85 = %34 : tensor<1x256x56x56xf32>
    %35 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34 : tensor<1x256x56x56xf32>) outs(%30 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global86 = %35 : tensor<1x256x56x56xf32>
    %36 = tensor.empty() : tensor<1x56x56x256xf32>
    %37 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35 : tensor<1x256x56x56xf32>) outs(%36 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_59 = tensor.collapse_shape %37 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %38 = linalg.matmul ins(%collapsed_59, %cst_21 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%16 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_60 = tensor.expand_shape %38 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %39 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_60, %collapsed : tensor<1x56x56x64xf32>, tensor<1x64xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global93 = %39 : tensor<1x64x56x56xf32>
    %40 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x64x56x56xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global94 = %40 : tensor<1x64x56x56xf32>
    %41 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40 : tensor<1x64x56x56xf32>) outs(%11 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_61 = tensor.pad %41 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %42 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_61, %cst_20 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%22 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %43 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42, %collapsed : tensor<1x56x56x64xf32>, tensor<1x64xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global101 = %43 : tensor<1x64x56x56xf32>
    %44 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43 : tensor<1x64x56x56xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global102 = %44 : tensor<1x64x56x56xf32>
    %45 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44 : tensor<1x64x56x56xf32>) outs(%11 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_62 = tensor.collapse_shape %45 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %46 = linalg.matmul ins(%collapsed_62, %cst_19 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%28 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_63 = tensor.expand_shape %46 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %47 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_63, %collapsed_57, %35 : tensor<1x56x56x256xf32>, tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%30 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_140: f32, %in_141: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      %286 = arith.addf %285, %in_141 : f32
      linalg.yield %286 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global110 = %47 : tensor<1x256x56x56xf32>
    %48 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47 : tensor<1x256x56x56xf32>) outs(%30 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global111 = %48 : tensor<1x256x56x56xf32>
    %49 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<1x256x56x56xf32>) outs(%36 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_64 = tensor.collapse_shape %49 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %50 = linalg.matmul ins(%collapsed_64, %cst_21 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%16 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_65 = tensor.expand_shape %50 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %51 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_65, %collapsed : tensor<1x56x56x64xf32>, tensor<1x64xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global118 = %51 : tensor<1x64x56x56xf32>
    %52 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51 : tensor<1x64x56x56xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global119 = %52 : tensor<1x64x56x56xf32>
    %53 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x64x56x56xf32>) outs(%11 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_66 = tensor.pad %53 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %54 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_66, %cst_20 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%22 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %55 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54, %collapsed : tensor<1x56x56x64xf32>, tensor<1x64xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global126 = %55 : tensor<1x64x56x56xf32>
    %56 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55 : tensor<1x64x56x56xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global127 = %56 : tensor<1x64x56x56xf32>
    %57 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56 : tensor<1x64x56x56xf32>) outs(%11 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_67 = tensor.collapse_shape %57 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %58 = linalg.matmul ins(%collapsed_67, %cst_19 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%28 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_68 = tensor.expand_shape %58 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %59 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_68, %collapsed_57, %48 : tensor<1x56x56x256xf32>, tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%30 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_140: f32, %in_141: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      %286 = arith.addf %285, %in_141 : f32
      linalg.yield %286 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global135 = %59 : tensor<1x256x56x56xf32>
    %60 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59 : tensor<1x256x56x56xf32>) outs(%30 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global136 = %60 : tensor<1x256x56x56xf32>
    %61 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60 : tensor<1x256x56x56xf32>) outs(%36 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_69 = tensor.collapse_shape %61 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %62 = tensor.empty() : tensor<3136x128xf32>
    %63 = linalg.fill ins(%cst_0 : f32) outs(%62 : tensor<3136x128xf32>) -> tensor<3136x128xf32>
    %64 = linalg.matmul ins(%collapsed_69, %cst_18 : tensor<3136x256xf32>, tensor<256x128xf32>) outs(%63 : tensor<3136x128xf32>) -> tensor<3136x128xf32>
    %expanded_70 = tensor.expand_shape %64 [[0, 1, 2], [3]] : tensor<3136x128xf32> into tensor<1x56x56x128xf32>
    %65 = tensor.empty() : tensor<1x128x56x56xf32>
    %66 = tensor.empty() : tensor<1x128x1x1xf32>
    %67 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%66 : tensor<1x128x1x1xf32>) {
    ^bb0(%out: f32):
      %281 = math.rsqrt %cst_1 : f32
      linalg.yield %281 : f32
    } -> tensor<1x128x1x1xf32>
    ml_program.global_store @global142 = %67 : tensor<1x128x1x1xf32>
    %collapsed_71 = tensor.collapse_shape %67 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %68 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_70, %collapsed_71 : tensor<1x56x56x128xf32>, tensor<1x128xf32>) outs(%65 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x128x56x56xf32>
    ml_program.global_store @global145 = %68 : tensor<1x128x56x56xf32>
    %69 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68 : tensor<1x128x56x56xf32>) outs(%65 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x128x56x56xf32>
    ml_program.global_store @global146 = %69 : tensor<1x128x56x56xf32>
    %70 = tensor.empty() : tensor<1x56x56x128xf32>
    %71 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69 : tensor<1x128x56x56xf32>) outs(%70 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x128xf32>
    %padded_72 = tensor.pad %71 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x128xf32> to tensor<1x58x58x128xf32>
    %72 = tensor.empty() : tensor<1x28x28x128xf32>
    %73 = linalg.fill ins(%cst_0 : f32) outs(%72 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %74 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_72, %cst_15 : tensor<1x58x58x128xf32>, tensor<3x3x128x128xf32>) outs(%73 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %75 = tensor.empty() : tensor<1x128x28x28xf32>
    %76 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global153 = %76 : tensor<1x128x28x28xf32>
    %77 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global154 = %77 : tensor<1x128x28x28xf32>
    %78 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_73 = tensor.collapse_shape %78 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %79 = tensor.empty() : tensor<784x512xf32>
    %80 = linalg.fill ins(%cst_0 : f32) outs(%79 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %81 = linalg.matmul ins(%collapsed_73, %cst_14 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%80 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_74 = tensor.expand_shape %81 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %82 = tensor.empty() : tensor<1x512x28x28xf32>
    %83 = tensor.empty() : tensor<1x512x1x1xf32>
    %84 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%83 : tensor<1x512x1x1xf32>) {
    ^bb0(%out: f32):
      %281 = math.rsqrt %cst_1 : f32
      linalg.yield %281 : f32
    } -> tensor<1x512x1x1xf32>
    ml_program.global_store @global160 = %84 : tensor<1x512x1x1xf32>
    %collapsed_75 = tensor.collapse_shape %84 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %85 = tensor.empty() : tensor<1x28x28x512xf32>
    %86 = linalg.fill ins(%cst_0 : f32) outs(%85 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %87 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%61, %cst_17 : tensor<1x56x56x256xf32>, tensor<1x1x256x512xf32>) outs(%86 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %88 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_74, %collapsed_75, %87 : tensor<1x28x28x512xf32>, tensor<1x512xf32>, tensor<1x28x28x512xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_140: f32, %in_141: f32, %out: f32):
      %281 = arith.addf %in_141, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      %286 = arith.addf %in, %cst_0 : f32
      %287 = arith.subf %286, %cst : f32
      %288 = arith.mulf %287, %in_140 : f32
      %289 = arith.mulf %288, %cst : f32
      %290 = arith.addf %289, %cst : f32
      %291 = arith.addf %290, %285 : f32
      linalg.yield %291 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global170 = %88 : tensor<1x512x28x28xf32>
    %89 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88 : tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global171 = %89 : tensor<1x512x28x28xf32>
    %90 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89 : tensor<1x512x28x28xf32>) outs(%85 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_76 = tensor.collapse_shape %90 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %91 = tensor.empty() : tensor<784x128xf32>
    %92 = linalg.fill ins(%cst_0 : f32) outs(%91 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %93 = linalg.matmul ins(%collapsed_76, %cst_16 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%92 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_77 = tensor.expand_shape %93 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %94 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_77, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global178 = %94 : tensor<1x128x28x28xf32>
    %95 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global179 = %95 : tensor<1x128x28x28xf32>
    %96 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_78 = tensor.pad %96 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %97 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_78, %cst_15 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%73 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %98 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global186 = %98 : tensor<1x128x28x28xf32>
    %99 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global187 = %99 : tensor<1x128x28x28xf32>
    %100 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_79 = tensor.collapse_shape %100 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %101 = linalg.matmul ins(%collapsed_79, %cst_14 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%80 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_80 = tensor.expand_shape %101 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %102 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_80, %collapsed_75, %89 : tensor<1x28x28x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_140: f32, %in_141: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      %286 = arith.addf %285, %in_141 : f32
      linalg.yield %286 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global195 = %102 : tensor<1x512x28x28xf32>
    %103 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102 : tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global196 = %103 : tensor<1x512x28x28xf32>
    %104 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103 : tensor<1x512x28x28xf32>) outs(%85 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_81 = tensor.collapse_shape %104 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %105 = linalg.matmul ins(%collapsed_81, %cst_16 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%92 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_82 = tensor.expand_shape %105 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %106 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_82, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global203 = %106 : tensor<1x128x28x28xf32>
    %107 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global204 = %107 : tensor<1x128x28x28xf32>
    %108 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_83 = tensor.pad %108 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %109 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_83, %cst_15 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%73 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %110 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global211 = %110 : tensor<1x128x28x28xf32>
    %111 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global212 = %111 : tensor<1x128x28x28xf32>
    %112 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_84 = tensor.collapse_shape %112 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %113 = linalg.matmul ins(%collapsed_84, %cst_14 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%80 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_85 = tensor.expand_shape %113 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %114 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_85, %collapsed_75, %103 : tensor<1x28x28x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_140: f32, %in_141: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      %286 = arith.addf %285, %in_141 : f32
      linalg.yield %286 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global220 = %114 : tensor<1x512x28x28xf32>
    %115 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114 : tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global221 = %115 : tensor<1x512x28x28xf32>
    %116 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115 : tensor<1x512x28x28xf32>) outs(%85 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_86 = tensor.collapse_shape %116 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %117 = linalg.matmul ins(%collapsed_86, %cst_16 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%92 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_87 = tensor.expand_shape %117 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %118 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_87, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global228 = %118 : tensor<1x128x28x28xf32>
    %119 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global229 = %119 : tensor<1x128x28x28xf32>
    %120 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_88 = tensor.pad %120 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %121 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_88, %cst_15 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%73 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %122 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %collapsed_71 : tensor<1x28x28x128xf32>, tensor<1x128xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global236 = %122 : tensor<1x128x28x28xf32>
    %123 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x128x28x28xf32>) outs(%75 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global237 = %123 : tensor<1x128x28x28xf32>
    %124 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123 : tensor<1x128x28x28xf32>) outs(%72 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_89 = tensor.collapse_shape %124 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %125 = linalg.matmul ins(%collapsed_89, %cst_14 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%80 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_90 = tensor.expand_shape %125 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %126 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_90, %collapsed_75, %115 : tensor<1x28x28x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_140: f32, %in_141: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      %286 = arith.addf %285, %in_141 : f32
      linalg.yield %286 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global245 = %126 : tensor<1x512x28x28xf32>
    %127 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x512x28x28xf32>) outs(%82 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global246 = %127 : tensor<1x512x28x28xf32>
    %128 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127 : tensor<1x512x28x28xf32>) outs(%85 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_91 = tensor.collapse_shape %128 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %129 = tensor.empty() : tensor<784x256xf32>
    %130 = linalg.fill ins(%cst_0 : f32) outs(%129 : tensor<784x256xf32>) -> tensor<784x256xf32>
    %131 = linalg.matmul ins(%collapsed_91, %cst_13 : tensor<784x512xf32>, tensor<512x256xf32>) outs(%130 : tensor<784x256xf32>) -> tensor<784x256xf32>
    %expanded_92 = tensor.expand_shape %131 [[0, 1, 2], [3]] : tensor<784x256xf32> into tensor<1x28x28x256xf32>
    %132 = tensor.empty() : tensor<1x256x28x28xf32>
    %133 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_92, %collapsed_57 : tensor<1x28x28x256xf32>, tensor<1x256xf32>) outs(%132 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x256x28x28xf32>
    ml_program.global_store @global253 = %133 : tensor<1x256x28x28xf32>
    %134 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133 : tensor<1x256x28x28xf32>) outs(%132 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x256x28x28xf32>
    ml_program.global_store @global254 = %134 : tensor<1x256x28x28xf32>
    %135 = tensor.empty() : tensor<1x28x28x256xf32>
    %136 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134 : tensor<1x256x28x28xf32>) outs(%135 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x256xf32>
    %padded_93 = tensor.pad %136 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x256xf32> to tensor<1x30x30x256xf32>
    %137 = tensor.empty() : tensor<1x14x14x256xf32>
    %138 = linalg.fill ins(%cst_0 : f32) outs(%137 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %139 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_93, %cst_10 : tensor<1x30x30x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %140 = tensor.empty() : tensor<1x256x14x14xf32>
    %141 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global261 = %141 : tensor<1x256x14x14xf32>
    %142 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global262 = %142 : tensor<1x256x14x14xf32>
    %143 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_94 = tensor.collapse_shape %143 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %144 = tensor.empty() : tensor<196x1024xf32>
    %145 = linalg.fill ins(%cst_0 : f32) outs(%144 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %146 = linalg.matmul ins(%collapsed_94, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_95 = tensor.expand_shape %146 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %147 = tensor.empty() : tensor<1x1024x14x14xf32>
    %148 = tensor.empty() : tensor<1x1024x1x1xf32>
    %149 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%148 : tensor<1x1024x1x1xf32>) {
    ^bb0(%out: f32):
      %281 = math.rsqrt %cst_1 : f32
      linalg.yield %281 : f32
    } -> tensor<1x1024x1x1xf32>
    ml_program.global_store @global268 = %149 : tensor<1x1024x1x1xf32>
    %collapsed_96 = tensor.collapse_shape %149 [[0], [1, 2, 3]] : tensor<1x1024x1x1xf32> into tensor<1x1024xf32>
    %150 = tensor.empty() : tensor<1x14x14x1024xf32>
    %151 = linalg.fill ins(%cst_0 : f32) outs(%150 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %152 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%128, %cst_12 : tensor<1x28x28x512xf32>, tensor<1x1x512x1024xf32>) outs(%151 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %153 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_95, %collapsed_96, %152 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x14x14x1024xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_140: f32, %in_141: f32, %out: f32):
      %281 = arith.addf %in_141, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      %286 = arith.addf %in, %cst_0 : f32
      %287 = arith.subf %286, %cst : f32
      %288 = arith.mulf %287, %in_140 : f32
      %289 = arith.mulf %288, %cst : f32
      %290 = arith.addf %289, %cst : f32
      %291 = arith.addf %290, %285 : f32
      linalg.yield %291 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global278 = %153 : tensor<1x1024x14x14xf32>
    %154 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global279 = %154 : tensor<1x1024x14x14xf32>
    %155 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_97 = tensor.collapse_shape %155 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %156 = tensor.empty() : tensor<196x256xf32>
    %157 = linalg.fill ins(%cst_0 : f32) outs(%156 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %158 = linalg.matmul ins(%collapsed_97, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_98 = tensor.expand_shape %158 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %159 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_98, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global286 = %159 : tensor<1x256x14x14xf32>
    %160 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global287 = %160 : tensor<1x256x14x14xf32>
    %161 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_99 = tensor.pad %161 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %162 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_99, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %163 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global294 = %163 : tensor<1x256x14x14xf32>
    %164 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global295 = %164 : tensor<1x256x14x14xf32>
    %165 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_100 = tensor.collapse_shape %165 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %166 = linalg.matmul ins(%collapsed_100, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_101 = tensor.expand_shape %166 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %167 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_101, %collapsed_96, %154 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_140: f32, %in_141: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      %286 = arith.addf %285, %in_141 : f32
      linalg.yield %286 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global303 = %167 : tensor<1x1024x14x14xf32>
    %168 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global304 = %168 : tensor<1x1024x14x14xf32>
    %169 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_102 = tensor.collapse_shape %169 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %170 = linalg.matmul ins(%collapsed_102, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_103 = tensor.expand_shape %170 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %171 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_103, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global311 = %171 : tensor<1x256x14x14xf32>
    %172 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global312 = %172 : tensor<1x256x14x14xf32>
    %173 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_104 = tensor.pad %173 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %174 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_104, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %175 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global319 = %175 : tensor<1x256x14x14xf32>
    %176 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global320 = %176 : tensor<1x256x14x14xf32>
    %177 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_105 = tensor.collapse_shape %177 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %178 = linalg.matmul ins(%collapsed_105, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_106 = tensor.expand_shape %178 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %179 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_106, %collapsed_96, %168 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_140: f32, %in_141: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      %286 = arith.addf %285, %in_141 : f32
      linalg.yield %286 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global328 = %179 : tensor<1x1024x14x14xf32>
    %180 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global329 = %180 : tensor<1x1024x14x14xf32>
    %181 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_107 = tensor.collapse_shape %181 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %182 = linalg.matmul ins(%collapsed_107, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_108 = tensor.expand_shape %182 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %183 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_108, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global336 = %183 : tensor<1x256x14x14xf32>
    %184 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global337 = %184 : tensor<1x256x14x14xf32>
    %185 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_109 = tensor.pad %185 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %186 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_109, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %187 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global344 = %187 : tensor<1x256x14x14xf32>
    %188 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global345 = %188 : tensor<1x256x14x14xf32>
    %189 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_110 = tensor.collapse_shape %189 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %190 = linalg.matmul ins(%collapsed_110, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_111 = tensor.expand_shape %190 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %191 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_111, %collapsed_96, %180 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_140: f32, %in_141: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      %286 = arith.addf %285, %in_141 : f32
      linalg.yield %286 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global353 = %191 : tensor<1x1024x14x14xf32>
    %192 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global354 = %192 : tensor<1x1024x14x14xf32>
    %193 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_112 = tensor.collapse_shape %193 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %194 = linalg.matmul ins(%collapsed_112, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_113 = tensor.expand_shape %194 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %195 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_113, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global361 = %195 : tensor<1x256x14x14xf32>
    %196 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global362 = %196 : tensor<1x256x14x14xf32>
    %197 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_114 = tensor.pad %197 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %198 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_114, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %199 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global369 = %199 : tensor<1x256x14x14xf32>
    %200 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global370 = %200 : tensor<1x256x14x14xf32>
    %201 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_115 = tensor.collapse_shape %201 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %202 = linalg.matmul ins(%collapsed_115, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_116 = tensor.expand_shape %202 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %203 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_116, %collapsed_96, %192 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_140: f32, %in_141: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      %286 = arith.addf %285, %in_141 : f32
      linalg.yield %286 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global378 = %203 : tensor<1x1024x14x14xf32>
    %204 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global379 = %204 : tensor<1x1024x14x14xf32>
    %205 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_117 = tensor.collapse_shape %205 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %206 = linalg.matmul ins(%collapsed_117, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%157 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_118 = tensor.expand_shape %206 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %207 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_118, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global386 = %207 : tensor<1x256x14x14xf32>
    %208 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global387 = %208 : tensor<1x256x14x14xf32>
    %209 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_119 = tensor.pad %209 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %210 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_119, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%138 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %211 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210, %collapsed_57 : tensor<1x14x14x256xf32>, tensor<1x256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global394 = %211 : tensor<1x256x14x14xf32>
    %212 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211 : tensor<1x256x14x14xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global395 = %212 : tensor<1x256x14x14xf32>
    %213 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212 : tensor<1x256x14x14xf32>) outs(%137 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_120 = tensor.collapse_shape %213 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %214 = linalg.matmul ins(%collapsed_120, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%145 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_121 = tensor.expand_shape %214 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %215 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_121, %collapsed_96, %204 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_140: f32, %in_141: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      %286 = arith.addf %285, %in_141 : f32
      linalg.yield %286 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global403 = %215 : tensor<1x1024x14x14xf32>
    %216 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215 : tensor<1x1024x14x14xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global404 = %216 : tensor<1x1024x14x14xf32>
    %217 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216 : tensor<1x1024x14x14xf32>) outs(%150 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_122 = tensor.collapse_shape %217 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %218 = tensor.empty() : tensor<196x512xf32>
    %219 = linalg.fill ins(%cst_0 : f32) outs(%218 : tensor<196x512xf32>) -> tensor<196x512xf32>
    %220 = linalg.matmul ins(%collapsed_122, %cst_8 : tensor<196x1024xf32>, tensor<1024x512xf32>) outs(%219 : tensor<196x512xf32>) -> tensor<196x512xf32>
    %expanded_123 = tensor.expand_shape %220 [[0, 1, 2], [3]] : tensor<196x512xf32> into tensor<1x14x14x512xf32>
    %221 = tensor.empty() : tensor<1x512x14x14xf32>
    %222 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_123, %collapsed_75 : tensor<1x14x14x512xf32>, tensor<1x512xf32>) outs(%221 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x512x14x14xf32>
    ml_program.global_store @global411 = %222 : tensor<1x512x14x14xf32>
    %223 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222 : tensor<1x512x14x14xf32>) outs(%221 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x512x14x14xf32>
    ml_program.global_store @global412 = %223 : tensor<1x512x14x14xf32>
    %224 = tensor.empty() : tensor<1x14x14x512xf32>
    %225 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223 : tensor<1x512x14x14xf32>) outs(%224 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %padded_124 = tensor.pad %225 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %226 = tensor.empty() : tensor<1x7x7x512xf32>
    %227 = linalg.fill ins(%cst_0 : f32) outs(%226 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %228 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_124, %cst_5 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%227 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %229 = tensor.empty() : tensor<1x512x7x7xf32>
    %230 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228, %collapsed_75 : tensor<1x7x7x512xf32>, tensor<1x512xf32>) outs(%229 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global419 = %230 : tensor<1x512x7x7xf32>
    %231 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230 : tensor<1x512x7x7xf32>) outs(%229 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global420 = %231 : tensor<1x512x7x7xf32>
    %232 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231 : tensor<1x512x7x7xf32>) outs(%226 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_125 = tensor.collapse_shape %232 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %233 = tensor.empty() : tensor<49x2048xf32>
    %234 = linalg.fill ins(%cst_0 : f32) outs(%233 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %235 = linalg.matmul ins(%collapsed_125, %cst_4 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%234 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %expanded_126 = tensor.expand_shape %235 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %236 = tensor.empty() : tensor<1x2048x7x7xf32>
    %237 = tensor.empty() : tensor<1x2048x1x1xf32>
    %238 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%237 : tensor<1x2048x1x1xf32>) {
    ^bb0(%out: f32):
      %281 = math.rsqrt %cst_1 : f32
      linalg.yield %281 : f32
    } -> tensor<1x2048x1x1xf32>
    ml_program.global_store @global426 = %238 : tensor<1x2048x1x1xf32>
    %collapsed_127 = tensor.collapse_shape %238 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %239 = tensor.empty() : tensor<1x7x7x2048xf32>
    %240 = linalg.fill ins(%cst_0 : f32) outs(%239 : tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %241 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%217, %cst_7 : tensor<1x14x14x1024xf32>, tensor<1x1x1024x2048xf32>) outs(%240 : tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %242 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_126, %collapsed_127, %241 : tensor<1x7x7x2048xf32>, tensor<1x2048xf32>, tensor<1x7x7x2048xf32>) outs(%236 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_140: f32, %in_141: f32, %out: f32):
      %281 = arith.addf %in_141, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      %286 = arith.addf %in, %cst_0 : f32
      %287 = arith.subf %286, %cst : f32
      %288 = arith.mulf %287, %in_140 : f32
      %289 = arith.mulf %288, %cst : f32
      %290 = arith.addf %289, %cst : f32
      %291 = arith.addf %290, %285 : f32
      linalg.yield %291 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global436 = %242 : tensor<1x2048x7x7xf32>
    %243 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242 : tensor<1x2048x7x7xf32>) outs(%236 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global437 = %243 : tensor<1x2048x7x7xf32>
    %244 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243 : tensor<1x2048x7x7xf32>) outs(%239 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %collapsed_128 = tensor.collapse_shape %244 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %245 = tensor.empty() : tensor<49x512xf32>
    %246 = linalg.fill ins(%cst_0 : f32) outs(%245 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %247 = linalg.matmul ins(%collapsed_128, %cst_6 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%246 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %expanded_129 = tensor.expand_shape %247 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %248 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_129, %collapsed_75 : tensor<1x7x7x512xf32>, tensor<1x512xf32>) outs(%229 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global444 = %248 : tensor<1x512x7x7xf32>
    %249 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248 : tensor<1x512x7x7xf32>) outs(%229 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global445 = %249 : tensor<1x512x7x7xf32>
    %250 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249 : tensor<1x512x7x7xf32>) outs(%226 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_130 = tensor.pad %250 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %251 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_130, %cst_5 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%227 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %252 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251, %collapsed_75 : tensor<1x7x7x512xf32>, tensor<1x512xf32>) outs(%229 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global452 = %252 : tensor<1x512x7x7xf32>
    %253 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252 : tensor<1x512x7x7xf32>) outs(%229 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global453 = %253 : tensor<1x512x7x7xf32>
    %254 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253 : tensor<1x512x7x7xf32>) outs(%226 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_131 = tensor.collapse_shape %254 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %255 = linalg.matmul ins(%collapsed_131, %cst_4 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%234 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %expanded_132 = tensor.expand_shape %255 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %256 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_132, %collapsed_127, %243 : tensor<1x7x7x2048xf32>, tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%236 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_140: f32, %in_141: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      %286 = arith.addf %285, %in_141 : f32
      linalg.yield %286 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global461 = %256 : tensor<1x2048x7x7xf32>
    %257 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256 : tensor<1x2048x7x7xf32>) outs(%236 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global462 = %257 : tensor<1x2048x7x7xf32>
    %258 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257 : tensor<1x2048x7x7xf32>) outs(%239 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %collapsed_133 = tensor.collapse_shape %258 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %259 = linalg.matmul ins(%collapsed_133, %cst_6 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%246 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %expanded_134 = tensor.expand_shape %259 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %260 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_134, %collapsed_75 : tensor<1x7x7x512xf32>, tensor<1x512xf32>) outs(%229 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global469 = %260 : tensor<1x512x7x7xf32>
    %261 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260 : tensor<1x512x7x7xf32>) outs(%229 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global470 = %261 : tensor<1x512x7x7xf32>
    %262 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261 : tensor<1x512x7x7xf32>) outs(%226 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_135 = tensor.pad %262 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %263 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_135, %cst_5 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%227 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %264 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263, %collapsed_75 : tensor<1x7x7x512xf32>, tensor<1x512xf32>) outs(%229 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_140: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      linalg.yield %285 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global477 = %264 : tensor<1x512x7x7xf32>
    %265 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264 : tensor<1x512x7x7xf32>) outs(%229 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global478 = %265 : tensor<1x512x7x7xf32>
    %266 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265 : tensor<1x512x7x7xf32>) outs(%226 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_136 = tensor.collapse_shape %266 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %267 = linalg.matmul ins(%collapsed_136, %cst_4 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%234 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %expanded_137 = tensor.expand_shape %267 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %268 = linalg.generic {indexing_maps = [#map2, #map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_137, %collapsed_127, %257 : tensor<1x7x7x2048xf32>, tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%236 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_140: f32, %in_141: f32, %out: f32):
      %281 = arith.addf %in, %cst_0 : f32
      %282 = arith.subf %281, %cst : f32
      %283 = arith.mulf %282, %in_140 : f32
      %284 = arith.mulf %283, %cst : f32
      %285 = arith.addf %284, %cst : f32
      %286 = arith.addf %285, %in_141 : f32
      linalg.yield %286 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global486 = %268 : tensor<1x2048x7x7xf32>
    %269 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268 : tensor<1x2048x7x7xf32>) outs(%236 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.minf %in, %cst_2 : f32
      %282 = arith.maxf %281, %cst_0 : f32
      linalg.yield %282 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global487 = %269 : tensor<1x2048x7x7xf32>
    %270 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<1x2048x7x7xf32>) outs(%239 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %271 = tensor.empty() : tensor<1x1x1x2048xf32>
    %272 = linalg.fill ins(%cst_0 : f32) outs(%271 : tensor<1x1x1x2048xf32>) -> tensor<1x1x1x2048xf32>
    %273 = tensor.empty() : tensor<7x7xf32>
    %274 = linalg.pooling_nhwc_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%270, %273 : tensor<1x7x7x2048xf32>, tensor<7x7xf32>) outs(%272 : tensor<1x1x1x2048xf32>) -> tensor<1x1x1x2048xf32>
    %275 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274 : tensor<1x1x1x2048xf32>) outs(%271 : tensor<1x1x1x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.divf %in, %cst_3 : f32
      linalg.yield %281 : f32
    } -> tensor<1x1x1x2048xf32>
    %collapsed_138 = tensor.collapse_shape %275 [[0], [1, 2], [3]] : tensor<1x1x1x2048xf32> into tensor<1x1x2048xf32>
    %276 = tensor.empty() : tensor<1x1x1000xf32>
    %277 = linalg.fill ins(%cst_0 : f32) outs(%276 : tensor<1x1x1000xf32>) -> tensor<1x1x1000xf32>
    %278 = linalg.batch_matmul ins(%collapsed_138, %cst_25 : tensor<1x1x2048xf32>, tensor<1x2048x1000xf32>) outs(%277 : tensor<1x1x1000xf32>) -> tensor<1x1x1000xf32>
    %279 = tensor.empty() : tensor<1x1x1000xf32>
    %280 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = ["parallel", "parallel", "parallel"]} ins(%278 : tensor<1x1x1000xf32>) outs(%279 : tensor<1x1x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      %281 = arith.addf %in, %cst : f32
      linalg.yield %281 : f32
    } -> tensor<1x1x1000xf32>
    %collapsed_139 = tensor.collapse_shape %280 [[0, 1], [2]] : tensor<1x1x1000xf32> into tensor<1x1000xf32>
    return %collapsed_139 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0.0204081628 : f32
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    %cst_1 = arith.constant -3.40282347E+38 : f32
    %0 = ml_program.global_load @global10 : tensor<1x2048x1000xf32>
    %1 = ml_program.global_load @global11 : tensor<512x1x1x2048xf32>
    %2 = ml_program.global_load @global12 : tensor<2048x1x1x1024xf32>
    %3 = ml_program.global_load @global14 : tensor<1x2048x1x1xf32>
    %4 = ml_program.global_load @global15 : tensor<2048x1x1x512xf32>
    %5 = ml_program.global_load @global16 : tensor<512x3x3x512xf32>
    %6 = ml_program.global_load @global17 : tensor<512x1x1x1024xf32>
    %7 = ml_program.global_load @global18 : tensor<256x1x1x1024xf32>
    %8 = ml_program.global_load @global19 : tensor<1024x1x1x512xf32>
    %9 = ml_program.global_load @global21 : tensor<1x1024x1x1xf32>
    %10 = ml_program.global_load @global22 : tensor<1024x1x1x256xf32>
    %11 = ml_program.global_load @global23 : tensor<256x3x3x256xf32>
    %12 = ml_program.global_load @global24 : tensor<256x1x1x512xf32>
    %13 = ml_program.global_load @global25 : tensor<128x1x1x512xf32>
    %14 = ml_program.global_load @global26 : tensor<512x1x1x256xf32>
    %15 = ml_program.global_load @global28 : tensor<1x512x1x1xf32>
    %16 = ml_program.global_load @global29 : tensor<512x1x1x128xf32>
    %17 = ml_program.global_load @global30 : tensor<128x3x3x128xf32>
    %18 = ml_program.global_load @global32 : tensor<1x128x1x1xf32>
    %19 = ml_program.global_load @global33 : tensor<128x1x1x256xf32>
    %20 = ml_program.global_load @global34 : tensor<64x1x1x256xf32>
    %21 = ml_program.global_load @global36 : tensor<1x256x1x1xf32>
    %22 = ml_program.global_load @global37 : tensor<256x1x1x64xf32>
    %23 = ml_program.global_load @global38 : tensor<64x3x3x64xf32>
    %24 = ml_program.global_load @global39 : tensor<64x1x1x64xf32>
    %25 = ml_program.global_load @global41 : tensor<1x64x1x1xf32>
    %26 = ml_program.global_load @global42 : tensor<64x7x7x3xf32>
    %27 = ml_program.global_load @global48 : tensor<1x64x1x1xf32>
    %28 = ml_program.global_load @global51 : tensor<1x64x112x112xf32>
    %29 = ml_program.global_load @global52 : tensor<1x64x112x112xf32>
    %30 = ml_program.global_load @global53 : tensor<1x112x112x64xf32>
    %31 = ml_program.global_load @global54 : tensor<1x56x56x64xf32>
    %32 = ml_program.global_load @global60 : tensor<1x64x56x56xf32>
    %33 = ml_program.global_load @global61 : tensor<1x64x56x56xf32>
    %34 = ml_program.global_load @global68 : tensor<1x64x56x56xf32>
    %35 = ml_program.global_load @global69 : tensor<1x64x56x56xf32>
    %36 = ml_program.global_load @global75 : tensor<1x256x1x1xf32>
    %37 = ml_program.global_load @global85 : tensor<1x256x56x56xf32>
    %38 = ml_program.global_load @global86 : tensor<1x256x56x56xf32>
    %39 = ml_program.global_load @global93 : tensor<1x64x56x56xf32>
    %40 = ml_program.global_load @global94 : tensor<1x64x56x56xf32>
    %41 = ml_program.global_load @global101 : tensor<1x64x56x56xf32>
    %42 = ml_program.global_load @global102 : tensor<1x64x56x56xf32>
    %43 = ml_program.global_load @global110 : tensor<1x256x56x56xf32>
    %44 = ml_program.global_load @global111 : tensor<1x256x56x56xf32>
    %45 = ml_program.global_load @global118 : tensor<1x64x56x56xf32>
    %46 = ml_program.global_load @global119 : tensor<1x64x56x56xf32>
    %47 = ml_program.global_load @global126 : tensor<1x64x56x56xf32>
    %48 = ml_program.global_load @global127 : tensor<1x64x56x56xf32>
    %49 = ml_program.global_load @global135 : tensor<1x256x56x56xf32>
    %50 = ml_program.global_load @global136 : tensor<1x256x56x56xf32>
    %51 = ml_program.global_load @global142 : tensor<1x128x1x1xf32>
    %52 = ml_program.global_load @global145 : tensor<1x128x56x56xf32>
    %53 = ml_program.global_load @global146 : tensor<1x128x56x56xf32>
    %54 = ml_program.global_load @global153 : tensor<1x128x28x28xf32>
    %55 = ml_program.global_load @global154 : tensor<1x128x28x28xf32>
    %56 = ml_program.global_load @global160 : tensor<1x512x1x1xf32>
    %57 = ml_program.global_load @global170 : tensor<1x512x28x28xf32>
    %58 = ml_program.global_load @global171 : tensor<1x512x28x28xf32>
    %59 = ml_program.global_load @global178 : tensor<1x128x28x28xf32>
    %60 = ml_program.global_load @global179 : tensor<1x128x28x28xf32>
    %61 = ml_program.global_load @global186 : tensor<1x128x28x28xf32>
    %62 = ml_program.global_load @global187 : tensor<1x128x28x28xf32>
    %63 = ml_program.global_load @global195 : tensor<1x512x28x28xf32>
    %64 = ml_program.global_load @global196 : tensor<1x512x28x28xf32>
    %65 = ml_program.global_load @global203 : tensor<1x128x28x28xf32>
    %66 = ml_program.global_load @global204 : tensor<1x128x28x28xf32>
    %67 = ml_program.global_load @global211 : tensor<1x128x28x28xf32>
    %68 = ml_program.global_load @global212 : tensor<1x128x28x28xf32>
    %69 = ml_program.global_load @global220 : tensor<1x512x28x28xf32>
    %70 = ml_program.global_load @global221 : tensor<1x512x28x28xf32>
    %71 = ml_program.global_load @global228 : tensor<1x128x28x28xf32>
    %72 = ml_program.global_load @global229 : tensor<1x128x28x28xf32>
    %73 = ml_program.global_load @global236 : tensor<1x128x28x28xf32>
    %74 = ml_program.global_load @global237 : tensor<1x128x28x28xf32>
    %75 = ml_program.global_load @global245 : tensor<1x512x28x28xf32>
    %76 = ml_program.global_load @global246 : tensor<1x512x28x28xf32>
    %77 = ml_program.global_load @global253 : tensor<1x256x28x28xf32>
    %78 = ml_program.global_load @global254 : tensor<1x256x28x28xf32>
    %79 = ml_program.global_load @global261 : tensor<1x256x14x14xf32>
    %80 = ml_program.global_load @global262 : tensor<1x256x14x14xf32>
    %81 = ml_program.global_load @global268 : tensor<1x1024x1x1xf32>
    %82 = ml_program.global_load @global278 : tensor<1x1024x14x14xf32>
    %83 = ml_program.global_load @global279 : tensor<1x1024x14x14xf32>
    %84 = ml_program.global_load @global286 : tensor<1x256x14x14xf32>
    %85 = ml_program.global_load @global287 : tensor<1x256x14x14xf32>
    %86 = ml_program.global_load @global294 : tensor<1x256x14x14xf32>
    %87 = ml_program.global_load @global295 : tensor<1x256x14x14xf32>
    %88 = ml_program.global_load @global303 : tensor<1x1024x14x14xf32>
    %89 = ml_program.global_load @global304 : tensor<1x1024x14x14xf32>
    %90 = ml_program.global_load @global311 : tensor<1x256x14x14xf32>
    %91 = ml_program.global_load @global312 : tensor<1x256x14x14xf32>
    %92 = ml_program.global_load @global319 : tensor<1x256x14x14xf32>
    %93 = ml_program.global_load @global320 : tensor<1x256x14x14xf32>
    %94 = ml_program.global_load @global328 : tensor<1x1024x14x14xf32>
    %95 = ml_program.global_load @global329 : tensor<1x1024x14x14xf32>
    %96 = ml_program.global_load @global336 : tensor<1x256x14x14xf32>
    %97 = ml_program.global_load @global337 : tensor<1x256x14x14xf32>
    %98 = ml_program.global_load @global344 : tensor<1x256x14x14xf32>
    %99 = ml_program.global_load @global345 : tensor<1x256x14x14xf32>
    %100 = ml_program.global_load @global353 : tensor<1x1024x14x14xf32>
    %101 = ml_program.global_load @global354 : tensor<1x1024x14x14xf32>
    %102 = ml_program.global_load @global361 : tensor<1x256x14x14xf32>
    %103 = ml_program.global_load @global362 : tensor<1x256x14x14xf32>
    %104 = ml_program.global_load @global369 : tensor<1x256x14x14xf32>
    %105 = ml_program.global_load @global370 : tensor<1x256x14x14xf32>
    %106 = ml_program.global_load @global378 : tensor<1x1024x14x14xf32>
    %107 = ml_program.global_load @global379 : tensor<1x1024x14x14xf32>
    %108 = ml_program.global_load @global386 : tensor<1x256x14x14xf32>
    %109 = ml_program.global_load @global387 : tensor<1x256x14x14xf32>
    %110 = ml_program.global_load @global394 : tensor<1x256x14x14xf32>
    %111 = ml_program.global_load @global395 : tensor<1x256x14x14xf32>
    %112 = ml_program.global_load @global403 : tensor<1x1024x14x14xf32>
    %113 = ml_program.global_load @global404 : tensor<1x1024x14x14xf32>
    %114 = ml_program.global_load @global411 : tensor<1x512x14x14xf32>
    %115 = ml_program.global_load @global412 : tensor<1x512x14x14xf32>
    %116 = ml_program.global_load @global419 : tensor<1x512x7x7xf32>
    %117 = ml_program.global_load @global420 : tensor<1x512x7x7xf32>
    %118 = ml_program.global_load @global426 : tensor<1x2048x1x1xf32>
    %119 = ml_program.global_load @global436 : tensor<1x2048x7x7xf32>
    %120 = ml_program.global_load @global437 : tensor<1x2048x7x7xf32>
    %121 = ml_program.global_load @global444 : tensor<1x512x7x7xf32>
    %122 = ml_program.global_load @global445 : tensor<1x512x7x7xf32>
    %123 = ml_program.global_load @global452 : tensor<1x512x7x7xf32>
    %124 = ml_program.global_load @global453 : tensor<1x512x7x7xf32>
    %125 = ml_program.global_load @global461 : tensor<1x2048x7x7xf32>
    %126 = ml_program.global_load @global462 : tensor<1x2048x7x7xf32>
    %127 = ml_program.global_load @global469 : tensor<1x512x7x7xf32>
    %128 = ml_program.global_load @global470 : tensor<1x512x7x7xf32>
    %129 = ml_program.global_load @global477 : tensor<1x512x7x7xf32>
    %130 = ml_program.global_load @global478 : tensor<1x512x7x7xf32>
    %131 = ml_program.global_load @global486 : tensor<1x2048x7x7xf32>
    %132 = ml_program.global_load @global487 : tensor<1x2048x7x7xf32>
    %expanded = tensor.expand_shape %arg0 [[0, 1], [2]] : tensor<1x1000xf32> into tensor<1x1x1000xf32>
    %133 = tensor.empty() : tensor<1x1000x2048xf32>
    %134 = linalg.generic {indexing_maps = [#map5, #map4], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<1x2048x1000xf32>) outs(%133 : tensor<1x1000x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1000x2048xf32>
    %135 = tensor.empty() : tensor<1x1x2048xf32>
    %136 = linalg.fill ins(%cst : f32) outs(%135 : tensor<1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %137 = linalg.batch_matmul ins(%expanded, %134 : tensor<1x1x1000xf32>, tensor<1x1000x2048xf32>) outs(%136 : tensor<1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %138 = tensor.empty() : tensor<1x7x7x2048xf32>
    %139 = tensor.empty() : tensor<1x2048x7x7xf32>
    %expanded_2 = tensor.expand_shape %131 [[0, 1], [2], [3], [4]] : tensor<1x2048x7x7xf32> into tensor<1x1x2048x7x7xf32>
    %expanded_3 = tensor.expand_shape %132 [[0, 1], [2], [3], [4]] : tensor<1x2048x7x7xf32> into tensor<1x1x2048x7x7xf32>
    %140 = tensor.empty() : tensor<1x1x2048x7x7xf32>
    %141 = linalg.generic {indexing_maps = [#map6, #map6, #map7, #map6], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_2, %expanded_3, %137 : tensor<1x1x2048x7x7xf32>, tensor<1x1x2048x7x7xf32>, tensor<1x1x2048xf32>) outs(%140 : tensor<1x1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %out: f32):
      %409 = arith.mulf %in_160, %cst_0 : f32
      %410 = arith.cmpf oeq, %in, %in_159 : f32
      %411 = arith.select %410, %409, %cst : f32
      linalg.yield %411 : f32
    } -> tensor<1x1x2048x7x7xf32>
    %collapsed = tensor.collapse_shape %141 [[0, 1], [2], [3], [4]] : tensor<1x1x2048x7x7xf32> into tensor<1x2048x7x7xf32>
    %collapsed_4 = tensor.collapse_shape %3 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %collapsed_5 = tensor.collapse_shape %118 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %142 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_5, %collapsed_4, %collapsed : tensor<1x2048xf32>, tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%138 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %out: f32):
      %409 = arith.mulf %in_159, %in_160 : f32
      %410 = arith.mulf %in, %409 : f32
      linalg.yield %410 : f32
    } -> tensor<1x7x7x2048xf32>
    %143 = tensor.empty() : tensor<512xf32>
    %collapsed_6 = tensor.collapse_shape %142 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %144 = tensor.empty() : tensor<49x512xf32>
    %145 = linalg.fill ins(%cst : f32) outs(%144 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %146 = tensor.empty() : tensor<2048x512x1x1xf32>
    %147 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<2048x1x1x512xf32>) outs(%146 : tensor<2048x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512x1x1xf32>
    %collapsed_7 = tensor.collapse_shape %147 [[0], [1, 2, 3]] : tensor<2048x512x1x1xf32> into tensor<2048x512xf32>
    %148 = linalg.matmul ins(%collapsed_6, %collapsed_7 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%145 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %expanded_8 = tensor.expand_shape %148 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %collapsed_9 = tensor.collapse_shape %15 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %collapsed_10 = tensor.collapse_shape %56 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %149 = tensor.empty() : tensor<1x7x7x512xf32>
    %150 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %129, %130, %143, %expanded_8 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%149 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x7x7x512xf32>
    %151 = tensor.empty() : tensor<512x3x3x512xf32>
    %152 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<512x3x3x512xf32>) outs(%151 : tensor<512x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x3x3x512xf32>
    %153 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%151 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %409 = linalg.index 0 : index
      %410 = linalg.index 1 : index
      %411 = arith.subi %c2, %410 : index
      %412 = linalg.index 2 : index
      %413 = linalg.index 3 : index
      %extracted = tensor.extract %152[%409, %411, %412, %413] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded = tensor.pad %150 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %154 = tensor.empty() : tensor<3x3x512x512xf32>
    %155 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%154 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %409 = linalg.index 0 : index
      %410 = linalg.index 1 : index
      %411 = linalg.index 2 : index
      %412 = linalg.index 3 : index
      %413 = arith.subi %c2, %410 : index
      %extracted = tensor.extract %153[%412, %409, %413, %411] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %156 = linalg.fill ins(%cst : f32) outs(%149 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %157 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded, %155 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%156 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %158 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %127, %128, %143, %157 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%149 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x7x7x512xf32>
    %159 = tensor.empty() : tensor<2048xf32>
    %collapsed_11 = tensor.collapse_shape %158 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %160 = tensor.empty() : tensor<49x2048xf32>
    %161 = linalg.fill ins(%cst : f32) outs(%160 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %162 = tensor.empty() : tensor<512x2048x1x1xf32>
    %163 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1 : tensor<512x1x1x2048xf32>) outs(%162 : tensor<512x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048x1x1xf32>
    %collapsed_12 = tensor.collapse_shape %163 [[0], [1, 2, 3]] : tensor<512x2048x1x1xf32> into tensor<512x2048xf32>
    %164 = linalg.matmul ins(%collapsed_11, %collapsed_12 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%161 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %expanded_13 = tensor.expand_shape %164 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %165 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125, %126, %collapsed, %159, %expanded_13 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<1x7x7x2048xf32>) outs(%139 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %out: f32):
      %409 = arith.addf %in_161, %in_162 : f32
      %410 = arith.addf %in_160, %409 : f32
      %411 = arith.cmpf oeq, %in, %in_159 : f32
      %412 = arith.select %411, %410, %cst : f32
      linalg.yield %412 : f32
    } -> tensor<1x2048x7x7xf32>
    %166 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_5, %collapsed_4, %165 : tensor<1x2048xf32>, tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%138 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %out: f32):
      %409 = arith.mulf %in_159, %in_160 : f32
      %410 = arith.mulf %in, %409 : f32
      linalg.yield %410 : f32
    } -> tensor<1x7x7x2048xf32>
    %collapsed_14 = tensor.collapse_shape %166 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %167 = linalg.matmul ins(%collapsed_14, %collapsed_7 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%145 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %expanded_15 = tensor.expand_shape %167 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %168 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %123, %124, %143, %expanded_15 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%149 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x7x7x512xf32>
    %padded_16 = tensor.pad %168 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %169 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_16, %155 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%156 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %170 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %121, %122, %143, %169 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%149 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_17 = tensor.collapse_shape %170 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %171 = linalg.matmul ins(%collapsed_17, %collapsed_12 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%161 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %expanded_18 = tensor.expand_shape %171 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %172 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_5, %collapsed_4, %119, %120, %165, %159, %expanded_18 : tensor<1x2048xf32>, tensor<1x2048xf32>, tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<1x7x7x2048xf32>) outs(%138 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %in_164: f32, %out: f32):
      %409 = arith.addf %in_163, %in_164 : f32
      %410 = arith.addf %in_162, %409 : f32
      %411 = arith.cmpf oeq, %in_160, %in_161 : f32
      %412 = arith.select %411, %410, %cst : f32
      %413 = arith.mulf %in_159, %412 : f32
      %414 = arith.mulf %in, %413 : f32
      linalg.yield %414 : f32
    } -> tensor<1x7x7x2048xf32>
    %173 = tensor.empty() : tensor<1024x1x1x2048xf32>
    %174 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<2048x1x1x1024xf32>) outs(%173 : tensor<1024x1x1x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x1x1x2048xf32>
    %175 = tensor.empty() : tensor<1024xf32>
    %padded_19 = tensor.pad %174 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1024x1x1x2048xf32> to tensor<1024x2x2x2048xf32>
    %expanded_20 = tensor.expand_shape %padded_19 [[0, 1], [2, 3], [4], [5]] : tensor<1024x2x2x2048xf32> into tensor<1024x1x2x1x2x2048xf32>
    %collapsed_21 = tensor.collapse_shape %172 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %176 = tensor.empty() : tensor<49x4096xf32>
    %177 = linalg.fill ins(%cst : f32) outs(%176 : tensor<49x4096xf32>) -> tensor<49x4096xf32>
    %178 = tensor.empty() : tensor<2048x2x2x1024x1x1xf32>
    %179 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_20 : tensor<1024x1x2x1x2x2048xf32>) outs(%178 : tensor<2048x2x2x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x2x2x1024x1x1xf32>
    %collapsed_22 = tensor.collapse_shape %179 [[0], [1, 2, 3, 4, 5]] : tensor<2048x2x2x1024x1x1xf32> into tensor<2048x4096xf32>
    %180 = linalg.matmul ins(%collapsed_21, %collapsed_22 : tensor<49x2048xf32>, tensor<2048x4096xf32>) outs(%177 : tensor<49x4096xf32>) -> tensor<49x4096xf32>
    %expanded_23 = tensor.expand_shape %180 [[0, 1, 2], [3, 4, 5]] : tensor<49x4096xf32> into tensor<1x7x7x2x2x1024xf32>
    %181 = tensor.empty() : tensor<1x14x14x1024xf32>
    %expanded_24 = tensor.expand_shape %175 [[0, 1]] : tensor<1024xf32> into tensor<1x1024xf32>
    %182 = linalg.matmul ins(%collapsed_21, %collapsed_7 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%145 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %expanded_25 = tensor.expand_shape %182 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %183 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %116, %117, %143, %expanded_25 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%149 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x7x7x512xf32>
    %padded_26 = tensor.pad %152 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<512x3x3x512xf32> to tensor<512x4x4x512xf32>
    %expanded_27 = tensor.expand_shape %padded_26 [[0], [1, 2], [3, 4], [5]] : tensor<512x4x4x512xf32> into tensor<512x2x2x2x2x512xf32>
    %184 = tensor.empty() : tensor<2x2x512x2x2x512xf32>
    %185 = linalg.generic {indexing_maps = [#map14, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_27 : tensor<512x2x2x2x2x512xf32>) outs(%184 : tensor<2x2x512x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x512x2x2x512xf32>
    %collapsed_28 = tensor.collapse_shape %185 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x512x2x2x512xf32> into tensor<2048x2x2x512xf32>
    %186 = tensor.empty() : tensor<2048x2x2x512xf32>
    %187 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%186 : tensor<2048x2x2x512xf32>) {
    ^bb0(%out: f32):
      %409 = linalg.index 0 : index
      %410 = linalg.index 1 : index
      %411 = arith.subi %c1, %410 : index
      %412 = linalg.index 2 : index
      %413 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_28[%409, %411, %412, %413] : tensor<2048x2x2x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<2048x2x2x512xf32>
    %padded_29 = tensor.pad %183 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %188 = tensor.empty() : tensor<2x2x512x2048xf32>
    %189 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%188 : tensor<2x2x512x2048xf32>) {
    ^bb0(%out: f32):
      %409 = linalg.index 0 : index
      %410 = linalg.index 1 : index
      %411 = linalg.index 2 : index
      %412 = linalg.index 3 : index
      %413 = arith.subi %c1, %410 : index
      %extracted = tensor.extract %187[%412, %409, %413, %411] : tensor<2048x2x2x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<2x2x512x2048xf32>
    %190 = tensor.empty() : tensor<1x8x8x2048xf32>
    %191 = linalg.fill ins(%cst : f32) outs(%190 : tensor<1x8x8x2048xf32>) -> tensor<1x8x8x2048xf32>
    %192 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_29, %189 : tensor<1x9x9x512xf32>, tensor<2x2x512x2048xf32>) outs(%191 : tensor<1x8x8x2048xf32>) -> tensor<1x8x8x2048xf32>
    %expanded_30 = tensor.expand_shape %192 [[0], [1], [2], [3, 4, 5]] : tensor<1x8x8x2048xf32> into tensor<1x8x8x2x2x512xf32>
    %193 = tensor.empty() : tensor<1x8x2x8x2x512xf32>
    %194 = linalg.generic {indexing_maps = [#map15, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_30 : tensor<1x8x8x2x2x512xf32>) outs(%193 : tensor<1x8x2x8x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %409 = arith.addf %in, %cst : f32
      linalg.yield %409 : f32
    } -> tensor<1x8x2x8x2x512xf32>
    %collapsed_31 = tensor.collapse_shape %194 [[0], [1, 2], [3, 4], [5]] : tensor<1x8x2x8x2x512xf32> into tensor<1x16x16x512xf32>
    %extracted_slice = tensor.extract_slice %collapsed_31[0, 1, 1, 0] [1, 14, 14, 512] [1, 1, 1, 1] : tensor<1x16x16x512xf32> to tensor<1x14x14x512xf32>
    %195 = tensor.empty() : tensor<1x14x14x512xf32>
    %expanded_32 = tensor.expand_shape %143 [[0, 1]] : tensor<512xf32> into tensor<1x512xf32>
    %196 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %114, %115, %extracted_slice, %expanded_32 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>, tensor<1x14x14x512xf32>, tensor<1x512xf32>) outs(%195 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x14x14x512xf32>
    %collapsed_33 = tensor.collapse_shape %196 [[0, 1, 2], [3]] : tensor<1x14x14x512xf32> into tensor<196x512xf32>
    %197 = tensor.empty() : tensor<196x1024xf32>
    %198 = linalg.fill ins(%cst : f32) outs(%197 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %199 = tensor.empty() : tensor<512x1024x1x1xf32>
    %200 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<512x1x1x1024xf32>) outs(%199 : tensor<512x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1024x1x1xf32>
    %collapsed_34 = tensor.collapse_shape %200 [[0], [1, 2, 3]] : tensor<512x1024x1x1xf32> into tensor<512x1024xf32>
    %201 = linalg.matmul ins(%collapsed_33, %collapsed_34 : tensor<196x512xf32>, tensor<512x1024xf32>) outs(%198 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_35 = tensor.expand_shape %201 [[0, 1, 2, 3, 4], [5]] : tensor<196x1024xf32> into tensor<1x7x2x7x2x1024xf32>
    %202 = tensor.empty() : tensor<1x1024x14x14xf32>
    %expanded_36 = tensor.expand_shape %112 [[0], [1], [2, 3], [4, 5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x7x2x7x2xf32>
    %expanded_37 = tensor.expand_shape %113 [[0], [1], [2, 3], [4, 5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x7x2x7x2xf32>
    %203 = tensor.empty() : tensor<1x1024x7x2x7x2xf32>
    %204 = linalg.generic {indexing_maps = [#map13, #map13, #map16, #map17, #map18, #map19, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_36, %expanded_37, %expanded_23, %expanded_24, %175, %expanded_35 : tensor<1x1024x7x2x7x2xf32>, tensor<1x1024x7x2x7x2xf32>, tensor<1x7x7x2x2x1024xf32>, tensor<1x1024xf32>, tensor<1024xf32>, tensor<1x7x2x7x2x1024xf32>) outs(%203 : tensor<1x1024x7x2x7x2xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_160, %cst : f32
      %410 = arith.addf %409, %in_161 : f32
      %411 = arith.addf %in_162, %in_163 : f32
      %412 = arith.addf %410, %411 : f32
      %413 = arith.cmpf oeq, %in, %in_159 : f32
      %414 = arith.select %413, %412, %cst : f32
      linalg.yield %414 : f32
    } -> tensor<1x1024x7x2x7x2xf32>
    %collapsed_38 = tensor.collapse_shape %204 [[0], [1], [2, 3], [4, 5]] : tensor<1x1024x7x2x7x2xf32> into tensor<1x1024x14x14xf32>
    %collapsed_39 = tensor.collapse_shape %9 [[0], [1, 2, 3]] : tensor<1x1024x1x1xf32> into tensor<1x1024xf32>
    %collapsed_40 = tensor.collapse_shape %81 [[0], [1, 2, 3]] : tensor<1x1024x1x1xf32> into tensor<1x1024xf32>
    %205 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %collapsed_38 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%181 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %out: f32):
      %409 = arith.mulf %in_159, %in_160 : f32
      %410 = arith.mulf %in, %409 : f32
      linalg.yield %410 : f32
    } -> tensor<1x14x14x1024xf32>
    %206 = tensor.empty() : tensor<256xf32>
    %collapsed_41 = tensor.collapse_shape %205 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %207 = tensor.empty() : tensor<196x256xf32>
    %208 = linalg.fill ins(%cst : f32) outs(%207 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %209 = tensor.empty() : tensor<1024x256x1x1xf32>
    %210 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1024x1x1x256xf32>) outs(%209 : tensor<1024x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x256x1x1xf32>
    %collapsed_42 = tensor.collapse_shape %210 [[0], [1, 2, 3]] : tensor<1024x256x1x1xf32> into tensor<1024x256xf32>
    %211 = linalg.matmul ins(%collapsed_41, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%208 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_43 = tensor.expand_shape %211 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %collapsed_44 = tensor.collapse_shape %21 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %collapsed_45 = tensor.collapse_shape %36 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %212 = tensor.empty() : tensor<1x14x14x256xf32>
    %213 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %110, %111, %206, %expanded_43 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%212 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x14x14x256xf32>
    %214 = tensor.empty() : tensor<256x3x3x256xf32>
    %215 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11 : tensor<256x3x3x256xf32>) outs(%214 : tensor<256x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x256xf32>
    %216 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%214 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %409 = linalg.index 0 : index
      %410 = linalg.index 1 : index
      %411 = arith.subi %c2, %410 : index
      %412 = linalg.index 2 : index
      %413 = linalg.index 3 : index
      %extracted = tensor.extract %215[%409, %411, %412, %413] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_46 = tensor.pad %213 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %217 = tensor.empty() : tensor<3x3x256x256xf32>
    %218 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%217 : tensor<3x3x256x256xf32>) {
    ^bb0(%out: f32):
      %409 = linalg.index 0 : index
      %410 = linalg.index 1 : index
      %411 = linalg.index 2 : index
      %412 = linalg.index 3 : index
      %413 = arith.subi %c2, %410 : index
      %extracted = tensor.extract %216[%412, %409, %413, %411] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x256xf32>
    %219 = linalg.fill ins(%cst : f32) outs(%212 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %220 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_46, %218 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%219 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %221 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %108, %109, %206, %220 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%212 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_47 = tensor.collapse_shape %221 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %222 = tensor.empty() : tensor<256x1024x1x1xf32>
    %223 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<256x1x1x1024xf32>) outs(%222 : tensor<256x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1024x1x1xf32>
    %collapsed_48 = tensor.collapse_shape %223 [[0], [1, 2, 3]] : tensor<256x1024x1x1xf32> into tensor<256x1024xf32>
    %224 = linalg.matmul ins(%collapsed_47, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%198 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_49 = tensor.expand_shape %224 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %225 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %107, %collapsed_38, %175, %expanded_49 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%202 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %out: f32):
      %409 = arith.addf %in_161, %in_162 : f32
      %410 = arith.addf %in_160, %409 : f32
      %411 = arith.cmpf oeq, %in, %in_159 : f32
      %412 = arith.select %411, %410, %cst : f32
      linalg.yield %412 : f32
    } -> tensor<1x1024x14x14xf32>
    %226 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %225 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%181 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %out: f32):
      %409 = arith.mulf %in_159, %in_160 : f32
      %410 = arith.mulf %in, %409 : f32
      linalg.yield %410 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_50 = tensor.collapse_shape %226 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %227 = linalg.matmul ins(%collapsed_50, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%208 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_51 = tensor.expand_shape %227 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %228 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %104, %105, %206, %expanded_51 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%212 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_52 = tensor.pad %228 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %229 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_52, %218 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%219 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %230 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %102, %103, %206, %229 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%212 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_53 = tensor.collapse_shape %230 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %231 = linalg.matmul ins(%collapsed_53, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%198 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_54 = tensor.expand_shape %231 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %232 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %101, %225, %175, %expanded_54 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%202 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %out: f32):
      %409 = arith.addf %in_161, %in_162 : f32
      %410 = arith.addf %in_160, %409 : f32
      %411 = arith.cmpf oeq, %in, %in_159 : f32
      %412 = arith.select %411, %410, %cst : f32
      linalg.yield %412 : f32
    } -> tensor<1x1024x14x14xf32>
    %233 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %232 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%181 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %out: f32):
      %409 = arith.mulf %in_159, %in_160 : f32
      %410 = arith.mulf %in, %409 : f32
      linalg.yield %410 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_55 = tensor.collapse_shape %233 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %234 = linalg.matmul ins(%collapsed_55, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%208 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_56 = tensor.expand_shape %234 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %235 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %98, %99, %206, %expanded_56 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%212 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_57 = tensor.pad %235 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %236 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_57, %218 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%219 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %237 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %96, %97, %206, %236 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%212 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_58 = tensor.collapse_shape %237 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %238 = linalg.matmul ins(%collapsed_58, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%198 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_59 = tensor.expand_shape %238 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %239 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94, %95, %232, %175, %expanded_59 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%202 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %out: f32):
      %409 = arith.addf %in_161, %in_162 : f32
      %410 = arith.addf %in_160, %409 : f32
      %411 = arith.cmpf oeq, %in, %in_159 : f32
      %412 = arith.select %411, %410, %cst : f32
      linalg.yield %412 : f32
    } -> tensor<1x1024x14x14xf32>
    %240 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %239 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%181 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %out: f32):
      %409 = arith.mulf %in_159, %in_160 : f32
      %410 = arith.mulf %in, %409 : f32
      linalg.yield %410 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_60 = tensor.collapse_shape %240 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %241 = linalg.matmul ins(%collapsed_60, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%208 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_61 = tensor.expand_shape %241 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %242 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %92, %93, %206, %expanded_61 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%212 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_62 = tensor.pad %242 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %243 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_62, %218 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%219 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %244 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %90, %91, %206, %243 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%212 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_63 = tensor.collapse_shape %244 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %245 = linalg.matmul ins(%collapsed_63, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%198 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_64 = tensor.expand_shape %245 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %246 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %89, %239, %175, %expanded_64 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%202 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %out: f32):
      %409 = arith.addf %in_161, %in_162 : f32
      %410 = arith.addf %in_160, %409 : f32
      %411 = arith.cmpf oeq, %in, %in_159 : f32
      %412 = arith.select %411, %410, %cst : f32
      linalg.yield %412 : f32
    } -> tensor<1x1024x14x14xf32>
    %247 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %246 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%181 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %out: f32):
      %409 = arith.mulf %in_159, %in_160 : f32
      %410 = arith.mulf %in, %409 : f32
      linalg.yield %410 : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_65 = tensor.collapse_shape %247 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %248 = linalg.matmul ins(%collapsed_65, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%208 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_66 = tensor.expand_shape %248 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %249 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %86, %87, %206, %expanded_66 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%212 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_67 = tensor.pad %249 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %250 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_67, %218 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%219 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %251 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %84, %85, %206, %250 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%212 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_68 = tensor.collapse_shape %251 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %252 = linalg.matmul ins(%collapsed_68, %collapsed_48 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%198 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_69 = tensor.expand_shape %252 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %253 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_40, %collapsed_39, %82, %83, %246, %175, %expanded_69 : tensor<1x1024xf32>, tensor<1x1024xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%181 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %in_164: f32, %out: f32):
      %409 = arith.addf %in_163, %in_164 : f32
      %410 = arith.addf %in_162, %409 : f32
      %411 = arith.cmpf oeq, %in_160, %in_161 : f32
      %412 = arith.select %411, %410, %cst : f32
      %413 = arith.mulf %in_159, %412 : f32
      %414 = arith.mulf %in, %413 : f32
      linalg.yield %414 : f32
    } -> tensor<1x14x14x1024xf32>
    %254 = tensor.empty() : tensor<512x1x1x1024xf32>
    %255 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1024x1x1x512xf32>) outs(%254 : tensor<512x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1x1x1024xf32>
    %padded_70 = tensor.pad %255 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<512x1x1x1024xf32> to tensor<512x2x2x1024xf32>
    %expanded_71 = tensor.expand_shape %padded_70 [[0, 1], [2, 3], [4], [5]] : tensor<512x2x2x1024xf32> into tensor<512x1x2x1x2x1024xf32>
    %collapsed_72 = tensor.collapse_shape %253 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %256 = tensor.empty() : tensor<196x2048xf32>
    %257 = linalg.fill ins(%cst : f32) outs(%256 : tensor<196x2048xf32>) -> tensor<196x2048xf32>
    %258 = tensor.empty() : tensor<1024x2x2x512x1x1xf32>
    %259 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_71 : tensor<512x1x2x1x2x1024xf32>) outs(%258 : tensor<1024x2x2x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x2x2x512x1x1xf32>
    %collapsed_73 = tensor.collapse_shape %259 [[0], [1, 2, 3, 4, 5]] : tensor<1024x2x2x512x1x1xf32> into tensor<1024x2048xf32>
    %260 = linalg.matmul ins(%collapsed_72, %collapsed_73 : tensor<196x1024xf32>, tensor<1024x2048xf32>) outs(%257 : tensor<196x2048xf32>) -> tensor<196x2048xf32>
    %expanded_74 = tensor.expand_shape %260 [[0, 1, 2], [3, 4, 5]] : tensor<196x2048xf32> into tensor<1x14x14x2x2x512xf32>
    %261 = tensor.empty() : tensor<1x28x28x512xf32>
    %262 = linalg.matmul ins(%collapsed_72, %collapsed_42 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%208 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_75 = tensor.expand_shape %262 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %263 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %79, %80, %206, %expanded_75 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%212 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x14x14x256xf32>
    %padded_76 = tensor.pad %215 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<256x3x3x256xf32> to tensor<256x4x4x256xf32>
    %expanded_77 = tensor.expand_shape %padded_76 [[0], [1, 2], [3, 4], [5]] : tensor<256x4x4x256xf32> into tensor<256x2x2x2x2x256xf32>
    %264 = tensor.empty() : tensor<2x2x256x2x2x256xf32>
    %265 = linalg.generic {indexing_maps = [#map14, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_77 : tensor<256x2x2x2x2x256xf32>) outs(%264 : tensor<2x2x256x2x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x256x2x2x256xf32>
    %collapsed_78 = tensor.collapse_shape %265 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x256x2x2x256xf32> into tensor<1024x2x2x256xf32>
    %266 = tensor.empty() : tensor<1024x2x2x256xf32>
    %267 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%266 : tensor<1024x2x2x256xf32>) {
    ^bb0(%out: f32):
      %409 = linalg.index 0 : index
      %410 = linalg.index 1 : index
      %411 = arith.subi %c1, %410 : index
      %412 = linalg.index 2 : index
      %413 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_78[%409, %411, %412, %413] : tensor<1024x2x2x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<1024x2x2x256xf32>
    %padded_79 = tensor.pad %263 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %268 = tensor.empty() : tensor<2x2x256x1024xf32>
    %269 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%268 : tensor<2x2x256x1024xf32>) {
    ^bb0(%out: f32):
      %409 = linalg.index 0 : index
      %410 = linalg.index 1 : index
      %411 = linalg.index 2 : index
      %412 = linalg.index 3 : index
      %413 = arith.subi %c1, %410 : index
      %extracted = tensor.extract %267[%412, %409, %413, %411] : tensor<1024x2x2x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<2x2x256x1024xf32>
    %270 = tensor.empty() : tensor<1x15x15x1024xf32>
    %271 = linalg.fill ins(%cst : f32) outs(%270 : tensor<1x15x15x1024xf32>) -> tensor<1x15x15x1024xf32>
    %272 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_79, %269 : tensor<1x16x16x256xf32>, tensor<2x2x256x1024xf32>) outs(%271 : tensor<1x15x15x1024xf32>) -> tensor<1x15x15x1024xf32>
    %expanded_80 = tensor.expand_shape %272 [[0], [1], [2], [3, 4, 5]] : tensor<1x15x15x1024xf32> into tensor<1x15x15x2x2x256xf32>
    %273 = tensor.empty() : tensor<1x15x2x15x2x256xf32>
    %274 = linalg.generic {indexing_maps = [#map15, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_80 : tensor<1x15x15x2x2x256xf32>) outs(%273 : tensor<1x15x2x15x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %409 = arith.addf %in, %cst : f32
      linalg.yield %409 : f32
    } -> tensor<1x15x2x15x2x256xf32>
    %collapsed_81 = tensor.collapse_shape %274 [[0], [1, 2], [3, 4], [5]] : tensor<1x15x2x15x2x256xf32> into tensor<1x30x30x256xf32>
    %extracted_slice_82 = tensor.extract_slice %collapsed_81[0, 1, 1, 0] [1, 28, 28, 256] [1, 1, 1, 1] : tensor<1x30x30x256xf32> to tensor<1x28x28x256xf32>
    %275 = tensor.empty() : tensor<1x28x28x256xf32>
    %expanded_83 = tensor.expand_shape %206 [[0, 1]] : tensor<256xf32> into tensor<1x256xf32>
    %276 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %77, %78, %extracted_slice_82, %expanded_83 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>, tensor<1x28x28x256xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x28x28x256xf32>
    %collapsed_84 = tensor.collapse_shape %276 [[0, 1, 2], [3]] : tensor<1x28x28x256xf32> into tensor<784x256xf32>
    %277 = tensor.empty() : tensor<784x512xf32>
    %278 = linalg.fill ins(%cst : f32) outs(%277 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %279 = tensor.empty() : tensor<256x512x1x1xf32>
    %280 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<256x1x1x512xf32>) outs(%279 : tensor<256x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x512x1x1xf32>
    %collapsed_85 = tensor.collapse_shape %280 [[0], [1, 2, 3]] : tensor<256x512x1x1xf32> into tensor<256x512xf32>
    %281 = linalg.matmul ins(%collapsed_84, %collapsed_85 : tensor<784x256xf32>, tensor<256x512xf32>) outs(%278 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_86 = tensor.expand_shape %281 [[0, 1, 2, 3, 4], [5]] : tensor<784x512xf32> into tensor<1x14x2x14x2x512xf32>
    %282 = tensor.empty() : tensor<1x512x28x28xf32>
    %expanded_87 = tensor.expand_shape %75 [[0], [1], [2, 3], [4, 5]] : tensor<1x512x28x28xf32> into tensor<1x512x14x2x14x2xf32>
    %expanded_88 = tensor.expand_shape %76 [[0], [1], [2, 3], [4, 5]] : tensor<1x512x28x28xf32> into tensor<1x512x14x2x14x2xf32>
    %283 = tensor.empty() : tensor<1x512x14x2x14x2xf32>
    %284 = linalg.generic {indexing_maps = [#map13, #map13, #map16, #map17, #map18, #map19, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_87, %expanded_88, %expanded_74, %expanded_32, %143, %expanded_86 : tensor<1x512x14x2x14x2xf32>, tensor<1x512x14x2x14x2xf32>, tensor<1x14x14x2x2x512xf32>, tensor<1x512xf32>, tensor<512xf32>, tensor<1x14x2x14x2x512xf32>) outs(%283 : tensor<1x512x14x2x14x2xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_160, %cst : f32
      %410 = arith.addf %409, %in_161 : f32
      %411 = arith.addf %in_162, %in_163 : f32
      %412 = arith.addf %410, %411 : f32
      %413 = arith.cmpf oeq, %in, %in_159 : f32
      %414 = arith.select %413, %412, %cst : f32
      linalg.yield %414 : f32
    } -> tensor<1x512x14x2x14x2xf32>
    %collapsed_89 = tensor.collapse_shape %284 [[0], [1], [2, 3], [4, 5]] : tensor<1x512x14x2x14x2xf32> into tensor<1x512x28x28xf32>
    %285 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %collapsed_89 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%261 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %out: f32):
      %409 = arith.mulf %in_159, %in_160 : f32
      %410 = arith.mulf %in, %409 : f32
      linalg.yield %410 : f32
    } -> tensor<1x28x28x512xf32>
    %286 = tensor.empty() : tensor<128xf32>
    %collapsed_90 = tensor.collapse_shape %285 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %287 = tensor.empty() : tensor<784x128xf32>
    %288 = linalg.fill ins(%cst : f32) outs(%287 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %289 = tensor.empty() : tensor<512x128x1x1xf32>
    %290 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<512x1x1x128xf32>) outs(%289 : tensor<512x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x128x1x1xf32>
    %collapsed_91 = tensor.collapse_shape %290 [[0], [1, 2, 3]] : tensor<512x128x1x1xf32> into tensor<512x128xf32>
    %291 = linalg.matmul ins(%collapsed_90, %collapsed_91 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%288 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_92 = tensor.expand_shape %291 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %collapsed_93 = tensor.collapse_shape %18 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %collapsed_94 = tensor.collapse_shape %51 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %292 = tensor.empty() : tensor<1x28x28x128xf32>
    %293 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_94, %collapsed_93, %73, %74, %286, %expanded_92 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%292 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x28x28x128xf32>
    %294 = tensor.empty() : tensor<128x3x3x128xf32>
    %295 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17 : tensor<128x3x3x128xf32>) outs(%294 : tensor<128x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x128xf32>
    %296 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%294 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %409 = linalg.index 0 : index
      %410 = linalg.index 1 : index
      %411 = arith.subi %c2, %410 : index
      %412 = linalg.index 2 : index
      %413 = linalg.index 3 : index
      %extracted = tensor.extract %295[%409, %411, %412, %413] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %padded_95 = tensor.pad %293 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %297 = tensor.empty() : tensor<3x3x128x128xf32>
    %298 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%297 : tensor<3x3x128x128xf32>) {
    ^bb0(%out: f32):
      %409 = linalg.index 0 : index
      %410 = linalg.index 1 : index
      %411 = linalg.index 2 : index
      %412 = linalg.index 3 : index
      %413 = arith.subi %c2, %410 : index
      %extracted = tensor.extract %296[%412, %409, %413, %411] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x128x128xf32>
    %299 = linalg.fill ins(%cst : f32) outs(%292 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %300 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_95, %298 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%299 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %301 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_94, %collapsed_93, %71, %72, %286, %300 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%292 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_96 = tensor.collapse_shape %301 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %302 = tensor.empty() : tensor<128x512x1x1xf32>
    %303 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<128x1x1x512xf32>) outs(%302 : tensor<128x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x512x1x1xf32>
    %collapsed_97 = tensor.collapse_shape %303 [[0], [1, 2, 3]] : tensor<128x512x1x1xf32> into tensor<128x512xf32>
    %304 = linalg.matmul ins(%collapsed_96, %collapsed_97 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%278 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_98 = tensor.expand_shape %304 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %305 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %70, %collapsed_89, %143, %expanded_98 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%282 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %out: f32):
      %409 = arith.addf %in_161, %in_162 : f32
      %410 = arith.addf %in_160, %409 : f32
      %411 = arith.cmpf oeq, %in, %in_159 : f32
      %412 = arith.select %411, %410, %cst : f32
      linalg.yield %412 : f32
    } -> tensor<1x512x28x28xf32>
    %306 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %305 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%261 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %out: f32):
      %409 = arith.mulf %in_159, %in_160 : f32
      %410 = arith.mulf %in, %409 : f32
      linalg.yield %410 : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_99 = tensor.collapse_shape %306 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %307 = linalg.matmul ins(%collapsed_99, %collapsed_91 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%288 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_100 = tensor.expand_shape %307 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %308 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_94, %collapsed_93, %67, %68, %286, %expanded_100 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%292 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_101 = tensor.pad %308 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %309 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_101, %298 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%299 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %310 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_94, %collapsed_93, %65, %66, %286, %309 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%292 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_102 = tensor.collapse_shape %310 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %311 = linalg.matmul ins(%collapsed_102, %collapsed_97 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%278 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_103 = tensor.expand_shape %311 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %312 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %64, %305, %143, %expanded_103 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%282 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %out: f32):
      %409 = arith.addf %in_161, %in_162 : f32
      %410 = arith.addf %in_160, %409 : f32
      %411 = arith.cmpf oeq, %in, %in_159 : f32
      %412 = arith.select %411, %410, %cst : f32
      linalg.yield %412 : f32
    } -> tensor<1x512x28x28xf32>
    %313 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %312 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%261 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %out: f32):
      %409 = arith.mulf %in_159, %in_160 : f32
      %410 = arith.mulf %in, %409 : f32
      linalg.yield %410 : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_104 = tensor.collapse_shape %313 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %314 = linalg.matmul ins(%collapsed_104, %collapsed_91 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%288 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_105 = tensor.expand_shape %314 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %315 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_94, %collapsed_93, %61, %62, %286, %expanded_105 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%292 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_106 = tensor.pad %315 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %316 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_106, %298 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%299 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %317 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_94, %collapsed_93, %59, %60, %286, %316 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%292 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_107 = tensor.collapse_shape %317 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %318 = linalg.matmul ins(%collapsed_107, %collapsed_97 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%278 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_108 = tensor.expand_shape %318 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %319 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_10, %collapsed_9, %57, %58, %312, %143, %expanded_108 : tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%261 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %in_164: f32, %out: f32):
      %409 = arith.addf %in_163, %in_164 : f32
      %410 = arith.addf %in_162, %409 : f32
      %411 = arith.cmpf oeq, %in_160, %in_161 : f32
      %412 = arith.select %411, %410, %cst : f32
      %413 = arith.mulf %in_159, %412 : f32
      %414 = arith.mulf %in, %413 : f32
      linalg.yield %414 : f32
    } -> tensor<1x28x28x512xf32>
    %320 = tensor.empty() : tensor<256x1x1x512xf32>
    %321 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<512x1x1x256xf32>) outs(%320 : tensor<256x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1x1x512xf32>
    %padded_109 = tensor.pad %321 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<256x1x1x512xf32> to tensor<256x2x2x512xf32>
    %expanded_110 = tensor.expand_shape %padded_109 [[0, 1], [2, 3], [4], [5]] : tensor<256x2x2x512xf32> into tensor<256x1x2x1x2x512xf32>
    %collapsed_111 = tensor.collapse_shape %319 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %322 = tensor.empty() : tensor<784x1024xf32>
    %323 = linalg.fill ins(%cst : f32) outs(%322 : tensor<784x1024xf32>) -> tensor<784x1024xf32>
    %324 = tensor.empty() : tensor<512x2x2x256x1x1xf32>
    %325 = linalg.generic {indexing_maps = [#map12, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_110 : tensor<256x1x2x1x2x512xf32>) outs(%324 : tensor<512x2x2x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2x2x256x1x1xf32>
    %collapsed_112 = tensor.collapse_shape %325 [[0], [1, 2, 3, 4, 5]] : tensor<512x2x2x256x1x1xf32> into tensor<512x1024xf32>
    %326 = linalg.matmul ins(%collapsed_111, %collapsed_112 : tensor<784x512xf32>, tensor<512x1024xf32>) outs(%323 : tensor<784x1024xf32>) -> tensor<784x1024xf32>
    %expanded_113 = tensor.expand_shape %326 [[0, 1, 2], [3, 4, 5]] : tensor<784x1024xf32> into tensor<1x28x28x2x2x256xf32>
    %327 = tensor.empty() : tensor<1x56x56x256xf32>
    %328 = linalg.matmul ins(%collapsed_111, %collapsed_91 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%288 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_114 = tensor.expand_shape %328 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %329 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_94, %collapsed_93, %54, %55, %286, %expanded_114 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%292 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x28x28x128xf32>
    %padded_115 = tensor.pad %295 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<128x3x3x128xf32> to tensor<128x4x4x128xf32>
    %expanded_116 = tensor.expand_shape %padded_115 [[0], [1, 2], [3, 4], [5]] : tensor<128x4x4x128xf32> into tensor<128x2x2x2x2x128xf32>
    %330 = tensor.empty() : tensor<2x2x128x2x2x128xf32>
    %331 = linalg.generic {indexing_maps = [#map14, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_116 : tensor<128x2x2x2x2x128xf32>) outs(%330 : tensor<2x2x128x2x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x128x2x2x128xf32>
    %collapsed_117 = tensor.collapse_shape %331 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x128x2x2x128xf32> into tensor<512x2x2x128xf32>
    %332 = tensor.empty() : tensor<512x2x2x128xf32>
    %333 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%332 : tensor<512x2x2x128xf32>) {
    ^bb0(%out: f32):
      %409 = linalg.index 0 : index
      %410 = linalg.index 1 : index
      %411 = arith.subi %c1, %410 : index
      %412 = linalg.index 2 : index
      %413 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_117[%409, %411, %412, %413] : tensor<512x2x2x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x2x2x128xf32>
    %padded_118 = tensor.pad %329 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %334 = tensor.empty() : tensor<2x2x128x512xf32>
    %335 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%334 : tensor<2x2x128x512xf32>) {
    ^bb0(%out: f32):
      %409 = linalg.index 0 : index
      %410 = linalg.index 1 : index
      %411 = linalg.index 2 : index
      %412 = linalg.index 3 : index
      %413 = arith.subi %c1, %410 : index
      %extracted = tensor.extract %333[%412, %409, %413, %411] : tensor<512x2x2x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<2x2x128x512xf32>
    %336 = tensor.empty() : tensor<1x29x29x512xf32>
    %337 = linalg.fill ins(%cst : f32) outs(%336 : tensor<1x29x29x512xf32>) -> tensor<1x29x29x512xf32>
    %338 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_118, %335 : tensor<1x30x30x128xf32>, tensor<2x2x128x512xf32>) outs(%337 : tensor<1x29x29x512xf32>) -> tensor<1x29x29x512xf32>
    %expanded_119 = tensor.expand_shape %338 [[0], [1], [2], [3, 4, 5]] : tensor<1x29x29x512xf32> into tensor<1x29x29x2x2x128xf32>
    %339 = tensor.empty() : tensor<1x29x2x29x2x128xf32>
    %340 = linalg.generic {indexing_maps = [#map15, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_119 : tensor<1x29x29x2x2x128xf32>) outs(%339 : tensor<1x29x2x29x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %409 = arith.addf %in, %cst : f32
      linalg.yield %409 : f32
    } -> tensor<1x29x2x29x2x128xf32>
    %collapsed_120 = tensor.collapse_shape %340 [[0], [1, 2], [3, 4], [5]] : tensor<1x29x2x29x2x128xf32> into tensor<1x58x58x128xf32>
    %extracted_slice_121 = tensor.extract_slice %collapsed_120[0, 1, 1, 0] [1, 56, 56, 128] [1, 1, 1, 1] : tensor<1x58x58x128xf32> to tensor<1x56x56x128xf32>
    %341 = tensor.empty() : tensor<1x56x56x128xf32>
    %expanded_122 = tensor.expand_shape %286 [[0, 1]] : tensor<128xf32> into tensor<1x128xf32>
    %342 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map1, #map8, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_94, %collapsed_93, %52, %53, %extracted_slice_121, %expanded_122 : tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>, tensor<1x56x56x128xf32>, tensor<1x128xf32>) outs(%341 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x56x56x128xf32>
    %collapsed_123 = tensor.collapse_shape %342 [[0, 1, 2], [3]] : tensor<1x56x56x128xf32> into tensor<3136x128xf32>
    %343 = tensor.empty() : tensor<3136x256xf32>
    %344 = linalg.fill ins(%cst : f32) outs(%343 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %345 = tensor.empty() : tensor<128x256x1x1xf32>
    %346 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<128x1x1x256xf32>) outs(%345 : tensor<128x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x256x1x1xf32>
    %collapsed_124 = tensor.collapse_shape %346 [[0], [1, 2, 3]] : tensor<128x256x1x1xf32> into tensor<128x256xf32>
    %347 = linalg.matmul ins(%collapsed_123, %collapsed_124 : tensor<3136x128xf32>, tensor<128x256xf32>) outs(%344 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_125 = tensor.expand_shape %347 [[0, 1, 2, 3, 4], [5]] : tensor<3136x256xf32> into tensor<1x28x2x28x2x256xf32>
    %348 = tensor.empty() : tensor<1x256x56x56xf32>
    %expanded_126 = tensor.expand_shape %49 [[0], [1], [2, 3], [4, 5]] : tensor<1x256x56x56xf32> into tensor<1x256x28x2x28x2xf32>
    %expanded_127 = tensor.expand_shape %50 [[0], [1], [2, 3], [4, 5]] : tensor<1x256x56x56xf32> into tensor<1x256x28x2x28x2xf32>
    %349 = tensor.empty() : tensor<1x256x28x2x28x2xf32>
    %350 = linalg.generic {indexing_maps = [#map13, #map13, #map16, #map17, #map18, #map19, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_126, %expanded_127, %expanded_113, %expanded_83, %206, %expanded_125 : tensor<1x256x28x2x28x2xf32>, tensor<1x256x28x2x28x2xf32>, tensor<1x28x28x2x2x256xf32>, tensor<1x256xf32>, tensor<256xf32>, tensor<1x28x2x28x2x256xf32>) outs(%349 : tensor<1x256x28x2x28x2xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_160, %cst : f32
      %410 = arith.addf %409, %in_161 : f32
      %411 = arith.addf %in_162, %in_163 : f32
      %412 = arith.addf %410, %411 : f32
      %413 = arith.cmpf oeq, %in, %in_159 : f32
      %414 = arith.select %413, %412, %cst : f32
      linalg.yield %414 : f32
    } -> tensor<1x256x28x2x28x2xf32>
    %collapsed_128 = tensor.collapse_shape %350 [[0], [1], [2, 3], [4, 5]] : tensor<1x256x28x2x28x2xf32> into tensor<1x256x56x56xf32>
    %351 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %collapsed_128 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%327 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %out: f32):
      %409 = arith.mulf %in_159, %in_160 : f32
      %410 = arith.mulf %in, %409 : f32
      linalg.yield %410 : f32
    } -> tensor<1x56x56x256xf32>
    %352 = tensor.empty() : tensor<64xf32>
    %collapsed_129 = tensor.collapse_shape %351 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %353 = tensor.empty() : tensor<3136x64xf32>
    %354 = linalg.fill ins(%cst : f32) outs(%353 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %355 = tensor.empty() : tensor<256x64x1x1xf32>
    %356 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<256x1x1x64xf32>) outs(%355 : tensor<256x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x64x1x1xf32>
    %collapsed_130 = tensor.collapse_shape %356 [[0], [1, 2, 3]] : tensor<256x64x1x1xf32> into tensor<256x64xf32>
    %357 = linalg.matmul ins(%collapsed_129, %collapsed_130 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%354 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_131 = tensor.expand_shape %357 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %collapsed_132 = tensor.collapse_shape %25 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %collapsed_133 = tensor.collapse_shape %27 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %358 = tensor.empty() : tensor<1x56x56x64xf32>
    %359 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_133, %collapsed_132, %47, %48, %352, %expanded_131 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%358 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x56x56x64xf32>
    %360 = tensor.empty() : tensor<64x3x3x64xf32>
    %361 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<64x3x3x64xf32>) outs(%360 : tensor<64x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x64xf32>
    %362 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%360 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %409 = linalg.index 0 : index
      %410 = linalg.index 1 : index
      %411 = arith.subi %c2, %410 : index
      %412 = linalg.index 2 : index
      %413 = linalg.index 3 : index
      %extracted = tensor.extract %361[%409, %411, %412, %413] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %padded_134 = tensor.pad %359 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %363 = tensor.empty() : tensor<3x3x64x64xf32>
    %364 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%363 : tensor<3x3x64x64xf32>) {
    ^bb0(%out: f32):
      %409 = linalg.index 0 : index
      %410 = linalg.index 1 : index
      %411 = linalg.index 2 : index
      %412 = linalg.index 3 : index
      %413 = arith.subi %c2, %410 : index
      %extracted = tensor.extract %362[%412, %409, %413, %411] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x64x64xf32>
    %365 = linalg.fill ins(%cst : f32) outs(%358 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %366 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_134, %364 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%365 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %367 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_133, %collapsed_132, %45, %46, %352, %366 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%358 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_135 = tensor.collapse_shape %367 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %368 = tensor.empty() : tensor<64x256x1x1xf32>
    %369 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20 : tensor<64x1x1x256xf32>) outs(%368 : tensor<64x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x256x1x1xf32>
    %collapsed_136 = tensor.collapse_shape %369 [[0], [1, 2, 3]] : tensor<64x256x1x1xf32> into tensor<64x256xf32>
    %370 = linalg.matmul ins(%collapsed_135, %collapsed_136 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%344 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_137 = tensor.expand_shape %370 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %371 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map11, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %44, %collapsed_128, %206, %expanded_137 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%348 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %out: f32):
      %409 = arith.addf %in_161, %in_162 : f32
      %410 = arith.addf %in_160, %409 : f32
      %411 = arith.cmpf oeq, %in, %in_159 : f32
      %412 = arith.select %411, %410, %cst : f32
      linalg.yield %412 : f32
    } -> tensor<1x256x56x56xf32>
    %372 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %371 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%327 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %out: f32):
      %409 = arith.mulf %in_159, %in_160 : f32
      %410 = arith.mulf %in, %409 : f32
      linalg.yield %410 : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_138 = tensor.collapse_shape %372 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %373 = linalg.matmul ins(%collapsed_138, %collapsed_130 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%354 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_139 = tensor.expand_shape %373 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %374 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_133, %collapsed_132, %41, %42, %352, %expanded_139 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%358 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x56x56x64xf32>
    %padded_140 = tensor.pad %374 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %375 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_140, %364 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%365 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %376 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_133, %collapsed_132, %39, %40, %352, %375 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%358 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_141 = tensor.collapse_shape %376 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %377 = linalg.matmul ins(%collapsed_141, %collapsed_136 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%344 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_142 = tensor.expand_shape %377 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %378 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_45, %collapsed_44, %37, %38, %371, %206, %expanded_142 : tensor<1x256xf32>, tensor<1x256xf32>, tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%327 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %in_164: f32, %out: f32):
      %409 = arith.addf %in_163, %in_164 : f32
      %410 = arith.addf %in_162, %409 : f32
      %411 = arith.cmpf oeq, %in_160, %in_161 : f32
      %412 = arith.select %411, %410, %cst : f32
      %413 = arith.mulf %in_159, %412 : f32
      %414 = arith.mulf %in, %413 : f32
      linalg.yield %414 : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_143 = tensor.collapse_shape %378 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %379 = linalg.matmul ins(%collapsed_143, %collapsed_130 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%354 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_144 = tensor.expand_shape %379 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %380 = tensor.empty() : tensor<1x56x56x64xf32>
    %381 = linalg.generic {indexing_maps = [#map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352, %expanded_144 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%380 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_159: f32, %out: f32):
      %409 = arith.addf %in, %in_159 : f32
      linalg.yield %409 : f32
    } -> tensor<1x56x56x64xf32>
    %382 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_133, %collapsed_132, %34, %35, %381 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<1x56x56x64xf32>) outs(%358 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %out: f32):
      %409 = arith.cmpf oeq, %in_160, %in_161 : f32
      %410 = arith.select %409, %in_162, %cst : f32
      %411 = arith.mulf %in_159, %410 : f32
      %412 = arith.mulf %in, %411 : f32
      linalg.yield %412 : f32
    } -> tensor<1x56x56x64xf32>
    %padded_145 = tensor.pad %382 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %383 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_145, %364 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%365 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %384 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_133, %collapsed_132, %32, %33, %352, %383 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%358 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.cmpf oeq, %in_160, %in_161 : f32
      %411 = arith.select %410, %409, %cst : f32
      %412 = arith.mulf %in_159, %411 : f32
      %413 = arith.mulf %in, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_146 = tensor.collapse_shape %384 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %385 = tensor.empty() : tensor<64x64x1x1xf32>
    %386 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<64x1x1x64xf32>) outs(%385 : tensor<64x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x64x1x1xf32>
    %collapsed_147 = tensor.collapse_shape %386 [[0], [1, 2, 3]] : tensor<64x64x1x1xf32> into tensor<64x64xf32>
    %387 = linalg.matmul ins(%collapsed_146, %collapsed_147 : tensor<3136x64xf32>, tensor<64x64xf32>) outs(%354 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_148 = tensor.expand_shape %387 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %padded_149 = tensor.pad %30 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %388 = tensor.empty() : tensor<1x113x113x64xf32>
    %389 = tensor.empty() : tensor<3x3xf32>
    %390 = linalg.generic {indexing_maps = [#map20, #map21, #map22, #map22, #map23, #map22, #map20], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded_149, %389, %31, %381, %352, %expanded_148 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%388 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %in_163: f32, %out: f32):
      %409 = arith.addf %in_162, %in_163 : f32
      %410 = arith.addf %in_161, %409 : f32
      %411 = arith.cmpf oge, %in, %in_160 : f32
      %412 = arith.select %411, %410, %cst : f32
      %413 = arith.addf %out, %412 : f32
      linalg.yield %413 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice_150 = tensor.extract_slice %390[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %391 = tensor.empty() : tensor<1x112x112x64xf32>
    %392 = linalg.generic {indexing_maps = [#map8, #map8, #map, #map, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_133, %collapsed_132, %28, %29, %extracted_slice_150 : tensor<1x64xf32>, tensor<1x64xf32>, tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>, tensor<1x112x112x64xf32>) outs(%391 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %in_159: f32, %in_160: f32, %in_161: f32, %in_162: f32, %out: f32):
      %409 = arith.cmpf oeq, %in_160, %in_161 : f32
      %410 = arith.select %409, %in_162, %cst : f32
      %411 = arith.mulf %in_159, %410 : f32
      %412 = arith.mulf %in, %411 : f32
      linalg.yield %412 : f32
    } -> tensor<1x112x112x64xf32>
    %393 = tensor.empty() : tensor<3x7x7x64xf32>
    %394 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26 : tensor<64x7x7x3xf32>) outs(%393 : tensor<3x7x7x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x7x7x64xf32>
    %395 = tensor.empty() : tensor<3xf32>
    %padded_151 = tensor.pad %394 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<3x7x7x64xf32> to tensor<3x8x8x64xf32>
    %expanded_152 = tensor.expand_shape %padded_151 [[0], [1, 2], [3, 4], [5]] : tensor<3x8x8x64xf32> into tensor<3x4x2x4x2x64xf32>
    %396 = tensor.empty() : tensor<2x2x3x4x4x64xf32>
    %397 = linalg.generic {indexing_maps = [#map14, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_152 : tensor<3x4x2x4x2x64xf32>) outs(%396 : tensor<2x2x3x4x4x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x3x4x4x64xf32>
    %collapsed_153 = tensor.collapse_shape %397 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x3x4x4x64xf32> into tensor<12x4x4x64xf32>
    %398 = tensor.empty() : tensor<12x4x4x64xf32>
    %399 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%398 : tensor<12x4x4x64xf32>) {
    ^bb0(%out: f32):
      %409 = linalg.index 0 : index
      %410 = linalg.index 1 : index
      %411 = arith.subi %c3, %410 : index
      %412 = linalg.index 2 : index
      %413 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_153[%409, %411, %412, %413] : tensor<12x4x4x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<12x4x4x64xf32>
    %padded_154 = tensor.pad %392 low[%c0, %c3, %c3, %c0] high[%c0, %c3, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x64xf32> to tensor<1x118x118x64xf32>
    %400 = tensor.empty() : tensor<4x4x64x12xf32>
    %401 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%400 : tensor<4x4x64x12xf32>) {
    ^bb0(%out: f32):
      %409 = linalg.index 0 : index
      %410 = linalg.index 1 : index
      %411 = linalg.index 2 : index
      %412 = linalg.index 3 : index
      %413 = arith.subi %c3, %410 : index
      %extracted = tensor.extract %399[%412, %409, %413, %411] : tensor<12x4x4x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<4x4x64x12xf32>
    %402 = tensor.empty() : tensor<1x115x115x12xf32>
    %403 = linalg.fill ins(%cst : f32) outs(%402 : tensor<1x115x115x12xf32>) -> tensor<1x115x115x12xf32>
    %404 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_154, %401 : tensor<1x118x118x64xf32>, tensor<4x4x64x12xf32>) outs(%403 : tensor<1x115x115x12xf32>) -> tensor<1x115x115x12xf32>
    %expanded_155 = tensor.expand_shape %404 [[0], [1], [2], [3, 4, 5]] : tensor<1x115x115x12xf32> into tensor<1x115x115x2x2x3xf32>
    %405 = tensor.empty() : tensor<1x115x2x115x2x3xf32>
    %406 = linalg.generic {indexing_maps = [#map15, #map13], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_155 : tensor<1x115x115x2x2x3xf32>) outs(%405 : tensor<1x115x2x115x2x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %409 = arith.addf %in, %cst : f32
      linalg.yield %409 : f32
    } -> tensor<1x115x2x115x2x3xf32>
    %collapsed_156 = tensor.collapse_shape %406 [[0], [1, 2], [3, 4], [5]] : tensor<1x115x2x115x2x3xf32> into tensor<1x230x230x3xf32>
    %extracted_slice_157 = tensor.extract_slice %collapsed_156[0, 3, 3, 0] [1, 224, 224, 3] [1, 1, 1, 1] : tensor<1x230x230x3xf32> to tensor<1x224x224x3xf32>
    %expanded_158 = tensor.expand_shape %395 [[0, 1]] : tensor<3xf32> into tensor<1x3xf32>
    %407 = tensor.empty() : tensor<1x3x224x224xf32>
    %408 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_157, %expanded_158 : tensor<1x224x224x3xf32>, tensor<1x3xf32>) outs(%407 : tensor<1x3x224x224xf32>) {
    ^bb0(%in: f32, %in_159: f32, %out: f32):
      %409 = arith.addf %in, %in_159 : f32
      linalg.yield %409 : f32
    } -> tensor<1x3x224x224xf32>
    return %408 : tensor<1x3x224x224xf32>
  }
}

