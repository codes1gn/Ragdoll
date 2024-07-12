#map = affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d4, d5, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#map4 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3, d4, d5)>
#map5 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map6 = affine_map<(d0, d1, d2) -> (d0, d2, d1)>
#map7 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>
#map8 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2)>
#map9 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>
#map10 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5, d1, d2)>
#map11 = affine_map<(d0, d1, d2, d3) -> (d3, d1, d2, d0)>
#map12 = affine_map<(d0, d1, d2, d3) -> (d1, d2, d3, d0)>
#map13 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d4, d5)>
#map14 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map15 = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3, d1)>
#map16 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d4, d1, d5, d2, d0)>
#map17 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d2, d3, d0, d4, d1, d5)>
#map18 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d2, d4, d5)>
#map19 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d4, d3, d5, d1)>
#map20 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1)>
#map21 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d1)>
#map22 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d3, d4, d5, d1)>
#map23 = affine_map<(d0, d1, d2, d3) -> (d3)>
#map24 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map25 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map26 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d3)>
#map27 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
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
    %5 = tensor.empty() : tensor<1x64x1x1xf32>
    %6 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%5 : tensor<1x64x1x1xf32>) {
    ^bb0(%out: f32):
      %482 = math.rsqrt %cst_1 : f32
      linalg.yield %482 : f32
    } -> tensor<1x64x1x1xf32>
    ml_program.global_store @global48 = %6 : tensor<1x64x1x1xf32>
    %expanded = tensor.expand_shape %4 [[0], [1], [2], [3, 4, 5]] : tensor<1x112x112x64xf32> into tensor<1x112x112x64x1x1xf32>
    %7 = tensor.empty() : tensor<1x64x1x1x112x112xf32>
    %8 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded, %6 : tensor<1x112x112x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%7 : tensor<1x64x1x1x112x112xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x64x1x1x112x112xf32>
    %collapsed = tensor.collapse_shape %8 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x1x1x112x112xf32> into tensor<1x64x112x112xf32>
    ml_program.global_store @global51 = %collapsed : tensor<1x64x112x112xf32>
    %9 = tensor.empty() : tensor<1x64x112x112xf32>
    %10 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed : tensor<1x64x112x112xf32>) outs(%9 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x64x112x112xf32>
    ml_program.global_store @global52 = %10 : tensor<1x64x112x112xf32>
    %11 = tensor.empty() : tensor<1x112x112x64xf32>
    %12 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x64x112x112xf32>) outs(%11 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x64xf32>
    ml_program.global_store @global53 = %12 : tensor<1x112x112x64xf32>
    %padded_52 = tensor.pad %12 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %13 = tensor.empty() : tensor<1x56x56x64xf32>
    %14 = linalg.fill ins(%cst_24 : f32) outs(%13 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %15 = tensor.empty() : tensor<3x3xf32>
    %16 = linalg.pooling_nhwc_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_52, %15 : tensor<1x113x113x64xf32>, tensor<3x3xf32>) outs(%14 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    ml_program.global_store @global54 = %16 : tensor<1x56x56x64xf32>
    %collapsed_53 = tensor.collapse_shape %16 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %17 = tensor.empty() : tensor<3136x64xf32>
    %18 = linalg.fill ins(%cst_0 : f32) outs(%17 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %19 = linalg.matmul ins(%collapsed_53, %cst_22 : tensor<3136x64xf32>, tensor<64x64xf32>) outs(%18 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_54 = tensor.expand_shape %19 [[0, 1, 2], [3, 4, 5]] : tensor<3136x64xf32> into tensor<1x56x56x64x1x1xf32>
    %20 = tensor.empty() : tensor<1x64x1x1x56x56xf32>
    %21 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_54, %6 : tensor<1x56x56x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%20 : tensor<1x64x1x1x56x56xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x64x1x1x56x56xf32>
    %collapsed_55 = tensor.collapse_shape %21 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x1x1x56x56xf32> into tensor<1x64x56x56xf32>
    ml_program.global_store @global60 = %collapsed_55 : tensor<1x64x56x56xf32>
    %22 = tensor.empty() : tensor<1x64x56x56xf32>
    %23 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_55 : tensor<1x64x56x56xf32>) outs(%22 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global61 = %23 : tensor<1x64x56x56xf32>
    %24 = tensor.empty() : tensor<1x56x56x64xf32>
    %25 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x64x56x56xf32>) outs(%24 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_56 = tensor.pad %25 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %26 = tensor.empty() : tensor<1x56x56x64xf32>
    %27 = linalg.fill ins(%cst_0 : f32) outs(%26 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %28 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_56, %cst_20 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%27 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %expanded_57 = tensor.expand_shape %28 [[0], [1], [2], [3, 4, 5]] : tensor<1x56x56x64xf32> into tensor<1x56x56x64x1x1xf32>
    %29 = tensor.empty() : tensor<1x64x1x1x56x56xf32>
    %30 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_57, %6 : tensor<1x56x56x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%29 : tensor<1x64x1x1x56x56xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x64x1x1x56x56xf32>
    %collapsed_58 = tensor.collapse_shape %30 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x1x1x56x56xf32> into tensor<1x64x56x56xf32>
    ml_program.global_store @global68 = %collapsed_58 : tensor<1x64x56x56xf32>
    %31 = tensor.empty() : tensor<1x64x56x56xf32>
    %32 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_58 : tensor<1x64x56x56xf32>) outs(%31 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global69 = %32 : tensor<1x64x56x56xf32>
    %33 = tensor.empty() : tensor<1x56x56x64xf32>
    %34 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32 : tensor<1x64x56x56xf32>) outs(%33 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_59 = tensor.collapse_shape %34 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %35 = tensor.empty() : tensor<3136x256xf32>
    %36 = linalg.fill ins(%cst_0 : f32) outs(%35 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %37 = linalg.matmul ins(%collapsed_59, %cst_19 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%36 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %38 = tensor.empty() : tensor<1x256x1x1xf32>
    %39 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%38 : tensor<1x256x1x1xf32>) {
    ^bb0(%out: f32):
      %482 = math.rsqrt %cst_1 : f32
      linalg.yield %482 : f32
    } -> tensor<1x256x1x1xf32>
    ml_program.global_store @global75 = %39 : tensor<1x256x1x1xf32>
    %expanded_60 = tensor.expand_shape %37 [[0, 1, 2], [3, 4, 5]] : tensor<3136x256xf32> into tensor<1x56x56x256x1x1xf32>
    %collapsed_61 = tensor.collapse_shape %16 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %40 = tensor.empty() : tensor<3136x256xf32>
    %41 = linalg.fill ins(%cst_0 : f32) outs(%40 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %42 = linalg.matmul ins(%collapsed_61, %cst_19 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%41 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_62 = tensor.expand_shape %42 [[0, 1, 2], [3, 4, 5]] : tensor<3136x256xf32> into tensor<1x56x56x256x1x1xf32>
    %43 = tensor.empty() : tensor<1x256x1x1x56x56xf32>
    %44 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_60, %39, %expanded_62 : tensor<1x56x56x256x1x1xf32>, tensor<1x256x1x1xf32>, tensor<1x56x56x256x1x1xf32>) outs(%43 : tensor<1x256x1x1x56x56xf32>) {
    ^bb0(%in: f32, %in_216: f32, %in_217: f32, %out: f32):
      %482 = arith.addf %in_217, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      %487 = arith.addf %in, %cst_0 : f32
      %488 = arith.subf %487, %cst : f32
      %489 = arith.mulf %488, %in_216 : f32
      %490 = arith.mulf %489, %cst : f32
      %491 = arith.addf %490, %cst : f32
      %492 = arith.addf %491, %486 : f32
      linalg.yield %492 : f32
    } -> tensor<1x256x1x1x56x56xf32>
    %collapsed_63 = tensor.collapse_shape %44 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x1x1x56x56xf32> into tensor<1x256x56x56xf32>
    ml_program.global_store @global85 = %collapsed_63 : tensor<1x256x56x56xf32>
    %45 = tensor.empty() : tensor<1x256x56x56xf32>
    %46 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_63 : tensor<1x256x56x56xf32>) outs(%45 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global86 = %46 : tensor<1x256x56x56xf32>
    %47 = tensor.empty() : tensor<1x56x56x256xf32>
    %48 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46 : tensor<1x256x56x56xf32>) outs(%47 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_64 = tensor.collapse_shape %48 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %49 = tensor.empty() : tensor<3136x64xf32>
    %50 = linalg.fill ins(%cst_0 : f32) outs(%49 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %51 = linalg.matmul ins(%collapsed_64, %cst_21 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%50 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_65 = tensor.expand_shape %51 [[0, 1, 2], [3, 4, 5]] : tensor<3136x64xf32> into tensor<1x56x56x64x1x1xf32>
    %52 = tensor.empty() : tensor<1x64x1x1x56x56xf32>
    %53 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_65, %6 : tensor<1x56x56x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%52 : tensor<1x64x1x1x56x56xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x64x1x1x56x56xf32>
    %collapsed_66 = tensor.collapse_shape %53 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x1x1x56x56xf32> into tensor<1x64x56x56xf32>
    ml_program.global_store @global93 = %collapsed_66 : tensor<1x64x56x56xf32>
    %54 = tensor.empty() : tensor<1x64x56x56xf32>
    %55 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_66 : tensor<1x64x56x56xf32>) outs(%54 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global94 = %55 : tensor<1x64x56x56xf32>
    %56 = tensor.empty() : tensor<1x56x56x64xf32>
    %57 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55 : tensor<1x64x56x56xf32>) outs(%56 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_67 = tensor.pad %57 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %58 = tensor.empty() : tensor<1x56x56x64xf32>
    %59 = linalg.fill ins(%cst_0 : f32) outs(%58 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %60 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_67, %cst_20 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%59 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %expanded_68 = tensor.expand_shape %60 [[0], [1], [2], [3, 4, 5]] : tensor<1x56x56x64xf32> into tensor<1x56x56x64x1x1xf32>
    %61 = tensor.empty() : tensor<1x64x1x1x56x56xf32>
    %62 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_68, %6 : tensor<1x56x56x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%61 : tensor<1x64x1x1x56x56xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x64x1x1x56x56xf32>
    %collapsed_69 = tensor.collapse_shape %62 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x1x1x56x56xf32> into tensor<1x64x56x56xf32>
    ml_program.global_store @global101 = %collapsed_69 : tensor<1x64x56x56xf32>
    %63 = tensor.empty() : tensor<1x64x56x56xf32>
    %64 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_69 : tensor<1x64x56x56xf32>) outs(%63 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global102 = %64 : tensor<1x64x56x56xf32>
    %65 = tensor.empty() : tensor<1x56x56x64xf32>
    %66 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x64x56x56xf32>) outs(%65 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_70 = tensor.collapse_shape %66 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %67 = tensor.empty() : tensor<3136x256xf32>
    %68 = linalg.fill ins(%cst_0 : f32) outs(%67 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %69 = linalg.matmul ins(%collapsed_70, %cst_19 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%68 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_71 = tensor.expand_shape %69 [[0, 1, 2], [3, 4, 5]] : tensor<3136x256xf32> into tensor<1x56x56x256x1x1xf32>
    %expanded_72 = tensor.expand_shape %46 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x56x56xf32> into tensor<1x256x1x1x56x56xf32>
    %70 = tensor.empty() : tensor<1x256x1x1x56x56xf32>
    %71 = linalg.generic {indexing_maps = [#map2, #map3, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_71, %39, %expanded_72 : tensor<1x56x56x256x1x1xf32>, tensor<1x256x1x1xf32>, tensor<1x256x1x1x56x56xf32>) outs(%70 : tensor<1x256x1x1x56x56xf32>) {
    ^bb0(%in: f32, %in_216: f32, %in_217: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      %487 = arith.addf %486, %in_217 : f32
      linalg.yield %487 : f32
    } -> tensor<1x256x1x1x56x56xf32>
    %collapsed_73 = tensor.collapse_shape %71 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x1x1x56x56xf32> into tensor<1x256x56x56xf32>
    ml_program.global_store @global110 = %collapsed_73 : tensor<1x256x56x56xf32>
    %72 = tensor.empty() : tensor<1x256x56x56xf32>
    %73 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_73 : tensor<1x256x56x56xf32>) outs(%72 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global111 = %73 : tensor<1x256x56x56xf32>
    %74 = tensor.empty() : tensor<1x56x56x256xf32>
    %75 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73 : tensor<1x256x56x56xf32>) outs(%74 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_74 = tensor.collapse_shape %75 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %76 = tensor.empty() : tensor<3136x64xf32>
    %77 = linalg.fill ins(%cst_0 : f32) outs(%76 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %78 = linalg.matmul ins(%collapsed_74, %cst_21 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%77 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_75 = tensor.expand_shape %78 [[0, 1, 2], [3, 4, 5]] : tensor<3136x64xf32> into tensor<1x56x56x64x1x1xf32>
    %79 = tensor.empty() : tensor<1x64x1x1x56x56xf32>
    %80 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_75, %6 : tensor<1x56x56x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%79 : tensor<1x64x1x1x56x56xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x64x1x1x56x56xf32>
    %collapsed_76 = tensor.collapse_shape %80 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x1x1x56x56xf32> into tensor<1x64x56x56xf32>
    ml_program.global_store @global118 = %collapsed_76 : tensor<1x64x56x56xf32>
    %81 = tensor.empty() : tensor<1x64x56x56xf32>
    %82 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_76 : tensor<1x64x56x56xf32>) outs(%81 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global119 = %82 : tensor<1x64x56x56xf32>
    %83 = tensor.empty() : tensor<1x56x56x64xf32>
    %84 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82 : tensor<1x64x56x56xf32>) outs(%83 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_77 = tensor.pad %84 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %85 = tensor.empty() : tensor<1x56x56x64xf32>
    %86 = linalg.fill ins(%cst_0 : f32) outs(%85 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %87 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_77, %cst_20 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%86 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %expanded_78 = tensor.expand_shape %87 [[0], [1], [2], [3, 4, 5]] : tensor<1x56x56x64xf32> into tensor<1x56x56x64x1x1xf32>
    %88 = tensor.empty() : tensor<1x64x1x1x56x56xf32>
    %89 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_78, %6 : tensor<1x56x56x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%88 : tensor<1x64x1x1x56x56xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x64x1x1x56x56xf32>
    %collapsed_79 = tensor.collapse_shape %89 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x1x1x56x56xf32> into tensor<1x64x56x56xf32>
    ml_program.global_store @global126 = %collapsed_79 : tensor<1x64x56x56xf32>
    %90 = tensor.empty() : tensor<1x64x56x56xf32>
    %91 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_79 : tensor<1x64x56x56xf32>) outs(%90 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global127 = %91 : tensor<1x64x56x56xf32>
    %92 = tensor.empty() : tensor<1x56x56x64xf32>
    %93 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91 : tensor<1x64x56x56xf32>) outs(%92 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_80 = tensor.collapse_shape %93 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %94 = tensor.empty() : tensor<3136x256xf32>
    %95 = linalg.fill ins(%cst_0 : f32) outs(%94 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %96 = linalg.matmul ins(%collapsed_80, %cst_19 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%95 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_81 = tensor.expand_shape %96 [[0, 1, 2], [3, 4, 5]] : tensor<3136x256xf32> into tensor<1x56x56x256x1x1xf32>
    %expanded_82 = tensor.expand_shape %73 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x56x56xf32> into tensor<1x256x1x1x56x56xf32>
    %97 = tensor.empty() : tensor<1x256x1x1x56x56xf32>
    %98 = linalg.generic {indexing_maps = [#map2, #map3, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_81, %39, %expanded_82 : tensor<1x56x56x256x1x1xf32>, tensor<1x256x1x1xf32>, tensor<1x256x1x1x56x56xf32>) outs(%97 : tensor<1x256x1x1x56x56xf32>) {
    ^bb0(%in: f32, %in_216: f32, %in_217: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      %487 = arith.addf %486, %in_217 : f32
      linalg.yield %487 : f32
    } -> tensor<1x256x1x1x56x56xf32>
    %collapsed_83 = tensor.collapse_shape %98 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x1x1x56x56xf32> into tensor<1x256x56x56xf32>
    ml_program.global_store @global135 = %collapsed_83 : tensor<1x256x56x56xf32>
    %99 = tensor.empty() : tensor<1x256x56x56xf32>
    %100 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_83 : tensor<1x256x56x56xf32>) outs(%99 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global136 = %100 : tensor<1x256x56x56xf32>
    %101 = tensor.empty() : tensor<1x56x56x256xf32>
    %102 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100 : tensor<1x256x56x56xf32>) outs(%101 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_84 = tensor.collapse_shape %102 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %103 = tensor.empty() : tensor<3136x128xf32>
    %104 = linalg.fill ins(%cst_0 : f32) outs(%103 : tensor<3136x128xf32>) -> tensor<3136x128xf32>
    %105 = linalg.matmul ins(%collapsed_84, %cst_18 : tensor<3136x256xf32>, tensor<256x128xf32>) outs(%104 : tensor<3136x128xf32>) -> tensor<3136x128xf32>
    %106 = tensor.empty() : tensor<1x128x1x1xf32>
    %107 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%106 : tensor<1x128x1x1xf32>) {
    ^bb0(%out: f32):
      %482 = math.rsqrt %cst_1 : f32
      linalg.yield %482 : f32
    } -> tensor<1x128x1x1xf32>
    ml_program.global_store @global142 = %107 : tensor<1x128x1x1xf32>
    %expanded_85 = tensor.expand_shape %105 [[0, 1, 2], [3, 4, 5]] : tensor<3136x128xf32> into tensor<1x56x56x128x1x1xf32>
    %108 = tensor.empty() : tensor<1x128x1x1x56x56xf32>
    %109 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_85, %107 : tensor<1x56x56x128x1x1xf32>, tensor<1x128x1x1xf32>) outs(%108 : tensor<1x128x1x1x56x56xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x128x1x1x56x56xf32>
    %collapsed_86 = tensor.collapse_shape %109 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x1x1x56x56xf32> into tensor<1x128x56x56xf32>
    ml_program.global_store @global145 = %collapsed_86 : tensor<1x128x56x56xf32>
    %110 = tensor.empty() : tensor<1x128x56x56xf32>
    %111 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_86 : tensor<1x128x56x56xf32>) outs(%110 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x128x56x56xf32>
    ml_program.global_store @global146 = %111 : tensor<1x128x56x56xf32>
    %112 = tensor.empty() : tensor<1x56x56x128xf32>
    %113 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111 : tensor<1x128x56x56xf32>) outs(%112 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x128xf32>
    %padded_87 = tensor.pad %113 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x56x56x128xf32> to tensor<1x58x58x128xf32>
    %114 = tensor.empty() : tensor<1x28x28x128xf32>
    %115 = linalg.fill ins(%cst_0 : f32) outs(%114 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %116 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_87, %cst_15 : tensor<1x58x58x128xf32>, tensor<3x3x128x128xf32>) outs(%115 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %expanded_88 = tensor.expand_shape %116 [[0], [1], [2], [3, 4, 5]] : tensor<1x28x28x128xf32> into tensor<1x28x28x128x1x1xf32>
    %117 = tensor.empty() : tensor<1x128x1x1x28x28xf32>
    %118 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_88, %107 : tensor<1x28x28x128x1x1xf32>, tensor<1x128x1x1xf32>) outs(%117 : tensor<1x128x1x1x28x28xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x128x1x1x28x28xf32>
    %collapsed_89 = tensor.collapse_shape %118 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x1x1x28x28xf32> into tensor<1x128x28x28xf32>
    ml_program.global_store @global153 = %collapsed_89 : tensor<1x128x28x28xf32>
    %119 = tensor.empty() : tensor<1x128x28x28xf32>
    %120 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_89 : tensor<1x128x28x28xf32>) outs(%119 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global154 = %120 : tensor<1x128x28x28xf32>
    %121 = tensor.empty() : tensor<1x28x28x128xf32>
    %122 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120 : tensor<1x128x28x28xf32>) outs(%121 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_90 = tensor.collapse_shape %122 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %123 = tensor.empty() : tensor<784x512xf32>
    %124 = linalg.fill ins(%cst_0 : f32) outs(%123 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %125 = linalg.matmul ins(%collapsed_90, %cst_14 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%124 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %126 = tensor.empty() : tensor<1x512x1x1xf32>
    %127 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%126 : tensor<1x512x1x1xf32>) {
    ^bb0(%out: f32):
      %482 = math.rsqrt %cst_1 : f32
      linalg.yield %482 : f32
    } -> tensor<1x512x1x1xf32>
    ml_program.global_store @global160 = %127 : tensor<1x512x1x1xf32>
    %expanded_91 = tensor.expand_shape %125 [[0, 1, 2], [3, 4, 5]] : tensor<784x512xf32> into tensor<1x28x28x512x1x1xf32>
    %128 = tensor.empty() : tensor<1x28x28x512xf32>
    %129 = linalg.fill ins(%cst_0 : f32) outs(%128 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %130 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%102, %cst_17 : tensor<1x56x56x256xf32>, tensor<1x1x256x512xf32>) outs(%129 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %expanded_92 = tensor.expand_shape %130 [[0], [1], [2], [3, 4, 5]] : tensor<1x28x28x512xf32> into tensor<1x28x28x512x1x1xf32>
    %131 = tensor.empty() : tensor<1x512x1x1x28x28xf32>
    %132 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_91, %127, %expanded_92 : tensor<1x28x28x512x1x1xf32>, tensor<1x512x1x1xf32>, tensor<1x28x28x512x1x1xf32>) outs(%131 : tensor<1x512x1x1x28x28xf32>) {
    ^bb0(%in: f32, %in_216: f32, %in_217: f32, %out: f32):
      %482 = arith.addf %in_217, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      %487 = arith.addf %in, %cst_0 : f32
      %488 = arith.subf %487, %cst : f32
      %489 = arith.mulf %488, %in_216 : f32
      %490 = arith.mulf %489, %cst : f32
      %491 = arith.addf %490, %cst : f32
      %492 = arith.addf %491, %486 : f32
      linalg.yield %492 : f32
    } -> tensor<1x512x1x1x28x28xf32>
    %collapsed_93 = tensor.collapse_shape %132 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x1x1x28x28xf32> into tensor<1x512x28x28xf32>
    ml_program.global_store @global170 = %collapsed_93 : tensor<1x512x28x28xf32>
    %133 = tensor.empty() : tensor<1x512x28x28xf32>
    %134 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_93 : tensor<1x512x28x28xf32>) outs(%133 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global171 = %134 : tensor<1x512x28x28xf32>
    %135 = tensor.empty() : tensor<1x28x28x512xf32>
    %136 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134 : tensor<1x512x28x28xf32>) outs(%135 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_94 = tensor.collapse_shape %136 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %137 = tensor.empty() : tensor<784x128xf32>
    %138 = linalg.fill ins(%cst_0 : f32) outs(%137 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %139 = linalg.matmul ins(%collapsed_94, %cst_16 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%138 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_95 = tensor.expand_shape %139 [[0, 1, 2], [3, 4, 5]] : tensor<784x128xf32> into tensor<1x28x28x128x1x1xf32>
    %140 = tensor.empty() : tensor<1x128x1x1x28x28xf32>
    %141 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_95, %107 : tensor<1x28x28x128x1x1xf32>, tensor<1x128x1x1xf32>) outs(%140 : tensor<1x128x1x1x28x28xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x128x1x1x28x28xf32>
    %collapsed_96 = tensor.collapse_shape %141 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x1x1x28x28xf32> into tensor<1x128x28x28xf32>
    ml_program.global_store @global178 = %collapsed_96 : tensor<1x128x28x28xf32>
    %142 = tensor.empty() : tensor<1x128x28x28xf32>
    %143 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_96 : tensor<1x128x28x28xf32>) outs(%142 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global179 = %143 : tensor<1x128x28x28xf32>
    %144 = tensor.empty() : tensor<1x28x28x128xf32>
    %145 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143 : tensor<1x128x28x28xf32>) outs(%144 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_97 = tensor.pad %145 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %146 = tensor.empty() : tensor<1x28x28x128xf32>
    %147 = linalg.fill ins(%cst_0 : f32) outs(%146 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %148 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_97, %cst_15 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%147 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %expanded_98 = tensor.expand_shape %148 [[0], [1], [2], [3, 4, 5]] : tensor<1x28x28x128xf32> into tensor<1x28x28x128x1x1xf32>
    %149 = tensor.empty() : tensor<1x128x1x1x28x28xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_98, %107 : tensor<1x28x28x128x1x1xf32>, tensor<1x128x1x1xf32>) outs(%149 : tensor<1x128x1x1x28x28xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x128x1x1x28x28xf32>
    %collapsed_99 = tensor.collapse_shape %150 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x1x1x28x28xf32> into tensor<1x128x28x28xf32>
    ml_program.global_store @global186 = %collapsed_99 : tensor<1x128x28x28xf32>
    %151 = tensor.empty() : tensor<1x128x28x28xf32>
    %152 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_99 : tensor<1x128x28x28xf32>) outs(%151 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global187 = %152 : tensor<1x128x28x28xf32>
    %153 = tensor.empty() : tensor<1x28x28x128xf32>
    %154 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x128x28x28xf32>) outs(%153 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_100 = tensor.collapse_shape %154 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %155 = tensor.empty() : tensor<784x512xf32>
    %156 = linalg.fill ins(%cst_0 : f32) outs(%155 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %157 = linalg.matmul ins(%collapsed_100, %cst_14 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%156 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_101 = tensor.expand_shape %157 [[0, 1, 2], [3, 4, 5]] : tensor<784x512xf32> into tensor<1x28x28x512x1x1xf32>
    %expanded_102 = tensor.expand_shape %134 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x28x28xf32> into tensor<1x512x1x1x28x28xf32>
    %158 = tensor.empty() : tensor<1x512x1x1x28x28xf32>
    %159 = linalg.generic {indexing_maps = [#map2, #map3, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_101, %127, %expanded_102 : tensor<1x28x28x512x1x1xf32>, tensor<1x512x1x1xf32>, tensor<1x512x1x1x28x28xf32>) outs(%158 : tensor<1x512x1x1x28x28xf32>) {
    ^bb0(%in: f32, %in_216: f32, %in_217: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      %487 = arith.addf %486, %in_217 : f32
      linalg.yield %487 : f32
    } -> tensor<1x512x1x1x28x28xf32>
    %collapsed_103 = tensor.collapse_shape %159 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x1x1x28x28xf32> into tensor<1x512x28x28xf32>
    ml_program.global_store @global195 = %collapsed_103 : tensor<1x512x28x28xf32>
    %160 = tensor.empty() : tensor<1x512x28x28xf32>
    %161 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_103 : tensor<1x512x28x28xf32>) outs(%160 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global196 = %161 : tensor<1x512x28x28xf32>
    %162 = tensor.empty() : tensor<1x28x28x512xf32>
    %163 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161 : tensor<1x512x28x28xf32>) outs(%162 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_104 = tensor.collapse_shape %163 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %164 = tensor.empty() : tensor<784x128xf32>
    %165 = linalg.fill ins(%cst_0 : f32) outs(%164 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %166 = linalg.matmul ins(%collapsed_104, %cst_16 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%165 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_105 = tensor.expand_shape %166 [[0, 1, 2], [3, 4, 5]] : tensor<784x128xf32> into tensor<1x28x28x128x1x1xf32>
    %167 = tensor.empty() : tensor<1x128x1x1x28x28xf32>
    %168 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_105, %107 : tensor<1x28x28x128x1x1xf32>, tensor<1x128x1x1xf32>) outs(%167 : tensor<1x128x1x1x28x28xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x128x1x1x28x28xf32>
    %collapsed_106 = tensor.collapse_shape %168 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x1x1x28x28xf32> into tensor<1x128x28x28xf32>
    ml_program.global_store @global203 = %collapsed_106 : tensor<1x128x28x28xf32>
    %169 = tensor.empty() : tensor<1x128x28x28xf32>
    %170 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_106 : tensor<1x128x28x28xf32>) outs(%169 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global204 = %170 : tensor<1x128x28x28xf32>
    %171 = tensor.empty() : tensor<1x28x28x128xf32>
    %172 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170 : tensor<1x128x28x28xf32>) outs(%171 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_107 = tensor.pad %172 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %173 = tensor.empty() : tensor<1x28x28x128xf32>
    %174 = linalg.fill ins(%cst_0 : f32) outs(%173 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %175 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_107, %cst_15 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%174 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %expanded_108 = tensor.expand_shape %175 [[0], [1], [2], [3, 4, 5]] : tensor<1x28x28x128xf32> into tensor<1x28x28x128x1x1xf32>
    %176 = tensor.empty() : tensor<1x128x1x1x28x28xf32>
    %177 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_108, %107 : tensor<1x28x28x128x1x1xf32>, tensor<1x128x1x1xf32>) outs(%176 : tensor<1x128x1x1x28x28xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x128x1x1x28x28xf32>
    %collapsed_109 = tensor.collapse_shape %177 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x1x1x28x28xf32> into tensor<1x128x28x28xf32>
    ml_program.global_store @global211 = %collapsed_109 : tensor<1x128x28x28xf32>
    %178 = tensor.empty() : tensor<1x128x28x28xf32>
    %179 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_109 : tensor<1x128x28x28xf32>) outs(%178 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global212 = %179 : tensor<1x128x28x28xf32>
    %180 = tensor.empty() : tensor<1x28x28x128xf32>
    %181 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179 : tensor<1x128x28x28xf32>) outs(%180 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_110 = tensor.collapse_shape %181 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %182 = tensor.empty() : tensor<784x512xf32>
    %183 = linalg.fill ins(%cst_0 : f32) outs(%182 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %184 = linalg.matmul ins(%collapsed_110, %cst_14 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%183 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_111 = tensor.expand_shape %184 [[0, 1, 2], [3, 4, 5]] : tensor<784x512xf32> into tensor<1x28x28x512x1x1xf32>
    %expanded_112 = tensor.expand_shape %161 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x28x28xf32> into tensor<1x512x1x1x28x28xf32>
    %185 = tensor.empty() : tensor<1x512x1x1x28x28xf32>
    %186 = linalg.generic {indexing_maps = [#map2, #map3, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_111, %127, %expanded_112 : tensor<1x28x28x512x1x1xf32>, tensor<1x512x1x1xf32>, tensor<1x512x1x1x28x28xf32>) outs(%185 : tensor<1x512x1x1x28x28xf32>) {
    ^bb0(%in: f32, %in_216: f32, %in_217: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      %487 = arith.addf %486, %in_217 : f32
      linalg.yield %487 : f32
    } -> tensor<1x512x1x1x28x28xf32>
    %collapsed_113 = tensor.collapse_shape %186 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x1x1x28x28xf32> into tensor<1x512x28x28xf32>
    ml_program.global_store @global220 = %collapsed_113 : tensor<1x512x28x28xf32>
    %187 = tensor.empty() : tensor<1x512x28x28xf32>
    %188 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_113 : tensor<1x512x28x28xf32>) outs(%187 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global221 = %188 : tensor<1x512x28x28xf32>
    %189 = tensor.empty() : tensor<1x28x28x512xf32>
    %190 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188 : tensor<1x512x28x28xf32>) outs(%189 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_114 = tensor.collapse_shape %190 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %191 = tensor.empty() : tensor<784x128xf32>
    %192 = linalg.fill ins(%cst_0 : f32) outs(%191 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %193 = linalg.matmul ins(%collapsed_114, %cst_16 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%192 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_115 = tensor.expand_shape %193 [[0, 1, 2], [3, 4, 5]] : tensor<784x128xf32> into tensor<1x28x28x128x1x1xf32>
    %194 = tensor.empty() : tensor<1x128x1x1x28x28xf32>
    %195 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_115, %107 : tensor<1x28x28x128x1x1xf32>, tensor<1x128x1x1xf32>) outs(%194 : tensor<1x128x1x1x28x28xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x128x1x1x28x28xf32>
    %collapsed_116 = tensor.collapse_shape %195 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x1x1x28x28xf32> into tensor<1x128x28x28xf32>
    ml_program.global_store @global228 = %collapsed_116 : tensor<1x128x28x28xf32>
    %196 = tensor.empty() : tensor<1x128x28x28xf32>
    %197 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_116 : tensor<1x128x28x28xf32>) outs(%196 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global229 = %197 : tensor<1x128x28x28xf32>
    %198 = tensor.empty() : tensor<1x28x28x128xf32>
    %199 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197 : tensor<1x128x28x28xf32>) outs(%198 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_117 = tensor.pad %199 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %200 = tensor.empty() : tensor<1x28x28x128xf32>
    %201 = linalg.fill ins(%cst_0 : f32) outs(%200 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %202 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_117, %cst_15 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%201 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %expanded_118 = tensor.expand_shape %202 [[0], [1], [2], [3, 4, 5]] : tensor<1x28x28x128xf32> into tensor<1x28x28x128x1x1xf32>
    %203 = tensor.empty() : tensor<1x128x1x1x28x28xf32>
    %204 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_118, %107 : tensor<1x28x28x128x1x1xf32>, tensor<1x128x1x1xf32>) outs(%203 : tensor<1x128x1x1x28x28xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x128x1x1x28x28xf32>
    %collapsed_119 = tensor.collapse_shape %204 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x1x1x28x28xf32> into tensor<1x128x28x28xf32>
    ml_program.global_store @global236 = %collapsed_119 : tensor<1x128x28x28xf32>
    %205 = tensor.empty() : tensor<1x128x28x28xf32>
    %206 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_119 : tensor<1x128x28x28xf32>) outs(%205 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global237 = %206 : tensor<1x128x28x28xf32>
    %207 = tensor.empty() : tensor<1x28x28x128xf32>
    %208 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206 : tensor<1x128x28x28xf32>) outs(%207 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_120 = tensor.collapse_shape %208 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %209 = tensor.empty() : tensor<784x512xf32>
    %210 = linalg.fill ins(%cst_0 : f32) outs(%209 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %211 = linalg.matmul ins(%collapsed_120, %cst_14 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%210 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_121 = tensor.expand_shape %211 [[0, 1, 2], [3, 4, 5]] : tensor<784x512xf32> into tensor<1x28x28x512x1x1xf32>
    %expanded_122 = tensor.expand_shape %188 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x28x28xf32> into tensor<1x512x1x1x28x28xf32>
    %212 = tensor.empty() : tensor<1x512x1x1x28x28xf32>
    %213 = linalg.generic {indexing_maps = [#map2, #map3, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_121, %127, %expanded_122 : tensor<1x28x28x512x1x1xf32>, tensor<1x512x1x1xf32>, tensor<1x512x1x1x28x28xf32>) outs(%212 : tensor<1x512x1x1x28x28xf32>) {
    ^bb0(%in: f32, %in_216: f32, %in_217: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      %487 = arith.addf %486, %in_217 : f32
      linalg.yield %487 : f32
    } -> tensor<1x512x1x1x28x28xf32>
    %collapsed_123 = tensor.collapse_shape %213 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x1x1x28x28xf32> into tensor<1x512x28x28xf32>
    ml_program.global_store @global245 = %collapsed_123 : tensor<1x512x28x28xf32>
    %214 = tensor.empty() : tensor<1x512x28x28xf32>
    %215 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_123 : tensor<1x512x28x28xf32>) outs(%214 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global246 = %215 : tensor<1x512x28x28xf32>
    %216 = tensor.empty() : tensor<1x28x28x512xf32>
    %217 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215 : tensor<1x512x28x28xf32>) outs(%216 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_124 = tensor.collapse_shape %217 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %218 = tensor.empty() : tensor<784x256xf32>
    %219 = linalg.fill ins(%cst_0 : f32) outs(%218 : tensor<784x256xf32>) -> tensor<784x256xf32>
    %220 = linalg.matmul ins(%collapsed_124, %cst_13 : tensor<784x512xf32>, tensor<512x256xf32>) outs(%219 : tensor<784x256xf32>) -> tensor<784x256xf32>
    %expanded_125 = tensor.expand_shape %220 [[0, 1, 2], [3, 4, 5]] : tensor<784x256xf32> into tensor<1x28x28x256x1x1xf32>
    %221 = tensor.empty() : tensor<1x256x1x1x28x28xf32>
    %222 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_125, %39 : tensor<1x28x28x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%221 : tensor<1x256x1x1x28x28xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x1x1x28x28xf32>
    %collapsed_126 = tensor.collapse_shape %222 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x1x1x28x28xf32> into tensor<1x256x28x28xf32>
    ml_program.global_store @global253 = %collapsed_126 : tensor<1x256x28x28xf32>
    %223 = tensor.empty() : tensor<1x256x28x28xf32>
    %224 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_126 : tensor<1x256x28x28xf32>) outs(%223 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x256x28x28xf32>
    ml_program.global_store @global254 = %224 : tensor<1x256x28x28xf32>
    %225 = tensor.empty() : tensor<1x28x28x256xf32>
    %226 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224 : tensor<1x256x28x28xf32>) outs(%225 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x256xf32>
    %padded_127 = tensor.pad %226 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x28x28x256xf32> to tensor<1x30x30x256xf32>
    %227 = tensor.empty() : tensor<1x14x14x256xf32>
    %228 = linalg.fill ins(%cst_0 : f32) outs(%227 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %229 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_127, %cst_10 : tensor<1x30x30x256xf32>, tensor<3x3x256x256xf32>) outs(%228 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %expanded_128 = tensor.expand_shape %229 [[0], [1], [2], [3, 4, 5]] : tensor<1x14x14x256xf32> into tensor<1x14x14x256x1x1xf32>
    %230 = tensor.empty() : tensor<1x256x1x1x14x14xf32>
    %231 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_128, %39 : tensor<1x14x14x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%230 : tensor<1x256x1x1x14x14xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x1x1x14x14xf32>
    %collapsed_129 = tensor.collapse_shape %231 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x1x1x14x14xf32> into tensor<1x256x14x14xf32>
    ml_program.global_store @global261 = %collapsed_129 : tensor<1x256x14x14xf32>
    %232 = tensor.empty() : tensor<1x256x14x14xf32>
    %233 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_129 : tensor<1x256x14x14xf32>) outs(%232 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global262 = %233 : tensor<1x256x14x14xf32>
    %234 = tensor.empty() : tensor<1x14x14x256xf32>
    %235 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233 : tensor<1x256x14x14xf32>) outs(%234 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_130 = tensor.collapse_shape %235 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %236 = tensor.empty() : tensor<196x1024xf32>
    %237 = linalg.fill ins(%cst_0 : f32) outs(%236 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %238 = linalg.matmul ins(%collapsed_130, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%237 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %239 = tensor.empty() : tensor<1x1024x1x1xf32>
    %240 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%239 : tensor<1x1024x1x1xf32>) {
    ^bb0(%out: f32):
      %482 = math.rsqrt %cst_1 : f32
      linalg.yield %482 : f32
    } -> tensor<1x1024x1x1xf32>
    ml_program.global_store @global268 = %240 : tensor<1x1024x1x1xf32>
    %expanded_131 = tensor.expand_shape %238 [[0, 1, 2], [3, 4, 5]] : tensor<196x1024xf32> into tensor<1x14x14x1024x1x1xf32>
    %241 = tensor.empty() : tensor<1x14x14x1024xf32>
    %242 = linalg.fill ins(%cst_0 : f32) outs(%241 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %243 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%217, %cst_12 : tensor<1x28x28x512xf32>, tensor<1x1x512x1024xf32>) outs(%242 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %expanded_132 = tensor.expand_shape %243 [[0], [1], [2], [3, 4, 5]] : tensor<1x14x14x1024xf32> into tensor<1x14x14x1024x1x1xf32>
    %244 = tensor.empty() : tensor<1x1024x1x1x14x14xf32>
    %245 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_131, %240, %expanded_132 : tensor<1x14x14x1024x1x1xf32>, tensor<1x1024x1x1xf32>, tensor<1x14x14x1024x1x1xf32>) outs(%244 : tensor<1x1024x1x1x14x14xf32>) {
    ^bb0(%in: f32, %in_216: f32, %in_217: f32, %out: f32):
      %482 = arith.addf %in_217, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      %487 = arith.addf %in, %cst_0 : f32
      %488 = arith.subf %487, %cst : f32
      %489 = arith.mulf %488, %in_216 : f32
      %490 = arith.mulf %489, %cst : f32
      %491 = arith.addf %490, %cst : f32
      %492 = arith.addf %491, %486 : f32
      linalg.yield %492 : f32
    } -> tensor<1x1024x1x1x14x14xf32>
    %collapsed_133 = tensor.collapse_shape %245 [[0], [1, 2, 3], [4], [5]] : tensor<1x1024x1x1x14x14xf32> into tensor<1x1024x14x14xf32>
    ml_program.global_store @global278 = %collapsed_133 : tensor<1x1024x14x14xf32>
    %246 = tensor.empty() : tensor<1x1024x14x14xf32>
    %247 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_133 : tensor<1x1024x14x14xf32>) outs(%246 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global279 = %247 : tensor<1x1024x14x14xf32>
    %248 = tensor.empty() : tensor<1x14x14x1024xf32>
    %249 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247 : tensor<1x1024x14x14xf32>) outs(%248 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_134 = tensor.collapse_shape %249 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %250 = tensor.empty() : tensor<196x256xf32>
    %251 = linalg.fill ins(%cst_0 : f32) outs(%250 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %252 = linalg.matmul ins(%collapsed_134, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%251 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_135 = tensor.expand_shape %252 [[0, 1, 2], [3, 4, 5]] : tensor<196x256xf32> into tensor<1x14x14x256x1x1xf32>
    %253 = tensor.empty() : tensor<1x256x1x1x14x14xf32>
    %254 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_135, %39 : tensor<1x14x14x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%253 : tensor<1x256x1x1x14x14xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x1x1x14x14xf32>
    %collapsed_136 = tensor.collapse_shape %254 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x1x1x14x14xf32> into tensor<1x256x14x14xf32>
    ml_program.global_store @global286 = %collapsed_136 : tensor<1x256x14x14xf32>
    %255 = tensor.empty() : tensor<1x256x14x14xf32>
    %256 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_136 : tensor<1x256x14x14xf32>) outs(%255 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global287 = %256 : tensor<1x256x14x14xf32>
    %257 = tensor.empty() : tensor<1x14x14x256xf32>
    %258 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256 : tensor<1x256x14x14xf32>) outs(%257 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_137 = tensor.pad %258 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %259 = tensor.empty() : tensor<1x14x14x256xf32>
    %260 = linalg.fill ins(%cst_0 : f32) outs(%259 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %261 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_137, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%260 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %expanded_138 = tensor.expand_shape %261 [[0], [1], [2], [3, 4, 5]] : tensor<1x14x14x256xf32> into tensor<1x14x14x256x1x1xf32>
    %262 = tensor.empty() : tensor<1x256x1x1x14x14xf32>
    %263 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_138, %39 : tensor<1x14x14x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%262 : tensor<1x256x1x1x14x14xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x1x1x14x14xf32>
    %collapsed_139 = tensor.collapse_shape %263 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x1x1x14x14xf32> into tensor<1x256x14x14xf32>
    ml_program.global_store @global294 = %collapsed_139 : tensor<1x256x14x14xf32>
    %264 = tensor.empty() : tensor<1x256x14x14xf32>
    %265 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_139 : tensor<1x256x14x14xf32>) outs(%264 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global295 = %265 : tensor<1x256x14x14xf32>
    %266 = tensor.empty() : tensor<1x14x14x256xf32>
    %267 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265 : tensor<1x256x14x14xf32>) outs(%266 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_140 = tensor.collapse_shape %267 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %268 = tensor.empty() : tensor<196x1024xf32>
    %269 = linalg.fill ins(%cst_0 : f32) outs(%268 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %270 = linalg.matmul ins(%collapsed_140, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%269 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_141 = tensor.expand_shape %270 [[0, 1, 2], [3, 4, 5]] : tensor<196x1024xf32> into tensor<1x14x14x1024x1x1xf32>
    %expanded_142 = tensor.expand_shape %247 [[0], [1, 2, 3], [4], [5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x1x1x14x14xf32>
    %271 = tensor.empty() : tensor<1x1024x1x1x14x14xf32>
    %272 = linalg.generic {indexing_maps = [#map2, #map3, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_141, %240, %expanded_142 : tensor<1x14x14x1024x1x1xf32>, tensor<1x1024x1x1xf32>, tensor<1x1024x1x1x14x14xf32>) outs(%271 : tensor<1x1024x1x1x14x14xf32>) {
    ^bb0(%in: f32, %in_216: f32, %in_217: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      %487 = arith.addf %486, %in_217 : f32
      linalg.yield %487 : f32
    } -> tensor<1x1024x1x1x14x14xf32>
    %collapsed_143 = tensor.collapse_shape %272 [[0], [1, 2, 3], [4], [5]] : tensor<1x1024x1x1x14x14xf32> into tensor<1x1024x14x14xf32>
    ml_program.global_store @global303 = %collapsed_143 : tensor<1x1024x14x14xf32>
    %273 = tensor.empty() : tensor<1x1024x14x14xf32>
    %274 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_143 : tensor<1x1024x14x14xf32>) outs(%273 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global304 = %274 : tensor<1x1024x14x14xf32>
    %275 = tensor.empty() : tensor<1x14x14x1024xf32>
    %276 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274 : tensor<1x1024x14x14xf32>) outs(%275 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_144 = tensor.collapse_shape %276 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %277 = tensor.empty() : tensor<196x256xf32>
    %278 = linalg.fill ins(%cst_0 : f32) outs(%277 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %279 = linalg.matmul ins(%collapsed_144, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%278 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_145 = tensor.expand_shape %279 [[0, 1, 2], [3, 4, 5]] : tensor<196x256xf32> into tensor<1x14x14x256x1x1xf32>
    %280 = tensor.empty() : tensor<1x256x1x1x14x14xf32>
    %281 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_145, %39 : tensor<1x14x14x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%280 : tensor<1x256x1x1x14x14xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x1x1x14x14xf32>
    %collapsed_146 = tensor.collapse_shape %281 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x1x1x14x14xf32> into tensor<1x256x14x14xf32>
    ml_program.global_store @global311 = %collapsed_146 : tensor<1x256x14x14xf32>
    %282 = tensor.empty() : tensor<1x256x14x14xf32>
    %283 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_146 : tensor<1x256x14x14xf32>) outs(%282 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global312 = %283 : tensor<1x256x14x14xf32>
    %284 = tensor.empty() : tensor<1x14x14x256xf32>
    %285 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283 : tensor<1x256x14x14xf32>) outs(%284 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_147 = tensor.pad %285 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %286 = tensor.empty() : tensor<1x14x14x256xf32>
    %287 = linalg.fill ins(%cst_0 : f32) outs(%286 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %288 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_147, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%287 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %expanded_148 = tensor.expand_shape %288 [[0], [1], [2], [3, 4, 5]] : tensor<1x14x14x256xf32> into tensor<1x14x14x256x1x1xf32>
    %289 = tensor.empty() : tensor<1x256x1x1x14x14xf32>
    %290 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_148, %39 : tensor<1x14x14x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%289 : tensor<1x256x1x1x14x14xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x1x1x14x14xf32>
    %collapsed_149 = tensor.collapse_shape %290 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x1x1x14x14xf32> into tensor<1x256x14x14xf32>
    ml_program.global_store @global319 = %collapsed_149 : tensor<1x256x14x14xf32>
    %291 = tensor.empty() : tensor<1x256x14x14xf32>
    %292 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_149 : tensor<1x256x14x14xf32>) outs(%291 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global320 = %292 : tensor<1x256x14x14xf32>
    %293 = tensor.empty() : tensor<1x14x14x256xf32>
    %294 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292 : tensor<1x256x14x14xf32>) outs(%293 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_150 = tensor.collapse_shape %294 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %295 = tensor.empty() : tensor<196x1024xf32>
    %296 = linalg.fill ins(%cst_0 : f32) outs(%295 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %297 = linalg.matmul ins(%collapsed_150, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%296 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_151 = tensor.expand_shape %297 [[0, 1, 2], [3, 4, 5]] : tensor<196x1024xf32> into tensor<1x14x14x1024x1x1xf32>
    %expanded_152 = tensor.expand_shape %274 [[0], [1, 2, 3], [4], [5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x1x1x14x14xf32>
    %298 = tensor.empty() : tensor<1x1024x1x1x14x14xf32>
    %299 = linalg.generic {indexing_maps = [#map2, #map3, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_151, %240, %expanded_152 : tensor<1x14x14x1024x1x1xf32>, tensor<1x1024x1x1xf32>, tensor<1x1024x1x1x14x14xf32>) outs(%298 : tensor<1x1024x1x1x14x14xf32>) {
    ^bb0(%in: f32, %in_216: f32, %in_217: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      %487 = arith.addf %486, %in_217 : f32
      linalg.yield %487 : f32
    } -> tensor<1x1024x1x1x14x14xf32>
    %collapsed_153 = tensor.collapse_shape %299 [[0], [1, 2, 3], [4], [5]] : tensor<1x1024x1x1x14x14xf32> into tensor<1x1024x14x14xf32>
    ml_program.global_store @global328 = %collapsed_153 : tensor<1x1024x14x14xf32>
    %300 = tensor.empty() : tensor<1x1024x14x14xf32>
    %301 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_153 : tensor<1x1024x14x14xf32>) outs(%300 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global329 = %301 : tensor<1x1024x14x14xf32>
    %302 = tensor.empty() : tensor<1x14x14x1024xf32>
    %303 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301 : tensor<1x1024x14x14xf32>) outs(%302 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_154 = tensor.collapse_shape %303 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %304 = tensor.empty() : tensor<196x256xf32>
    %305 = linalg.fill ins(%cst_0 : f32) outs(%304 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %306 = linalg.matmul ins(%collapsed_154, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%305 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_155 = tensor.expand_shape %306 [[0, 1, 2], [3, 4, 5]] : tensor<196x256xf32> into tensor<1x14x14x256x1x1xf32>
    %307 = tensor.empty() : tensor<1x256x1x1x14x14xf32>
    %308 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_155, %39 : tensor<1x14x14x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%307 : tensor<1x256x1x1x14x14xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x1x1x14x14xf32>
    %collapsed_156 = tensor.collapse_shape %308 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x1x1x14x14xf32> into tensor<1x256x14x14xf32>
    ml_program.global_store @global336 = %collapsed_156 : tensor<1x256x14x14xf32>
    %309 = tensor.empty() : tensor<1x256x14x14xf32>
    %310 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_156 : tensor<1x256x14x14xf32>) outs(%309 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global337 = %310 : tensor<1x256x14x14xf32>
    %311 = tensor.empty() : tensor<1x14x14x256xf32>
    %312 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310 : tensor<1x256x14x14xf32>) outs(%311 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_157 = tensor.pad %312 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %313 = tensor.empty() : tensor<1x14x14x256xf32>
    %314 = linalg.fill ins(%cst_0 : f32) outs(%313 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %315 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_157, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%314 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %expanded_158 = tensor.expand_shape %315 [[0], [1], [2], [3, 4, 5]] : tensor<1x14x14x256xf32> into tensor<1x14x14x256x1x1xf32>
    %316 = tensor.empty() : tensor<1x256x1x1x14x14xf32>
    %317 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_158, %39 : tensor<1x14x14x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%316 : tensor<1x256x1x1x14x14xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x1x1x14x14xf32>
    %collapsed_159 = tensor.collapse_shape %317 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x1x1x14x14xf32> into tensor<1x256x14x14xf32>
    ml_program.global_store @global344 = %collapsed_159 : tensor<1x256x14x14xf32>
    %318 = tensor.empty() : tensor<1x256x14x14xf32>
    %319 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_159 : tensor<1x256x14x14xf32>) outs(%318 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global345 = %319 : tensor<1x256x14x14xf32>
    %320 = tensor.empty() : tensor<1x14x14x256xf32>
    %321 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319 : tensor<1x256x14x14xf32>) outs(%320 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_160 = tensor.collapse_shape %321 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %322 = tensor.empty() : tensor<196x1024xf32>
    %323 = linalg.fill ins(%cst_0 : f32) outs(%322 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %324 = linalg.matmul ins(%collapsed_160, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%323 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_161 = tensor.expand_shape %324 [[0, 1, 2], [3, 4, 5]] : tensor<196x1024xf32> into tensor<1x14x14x1024x1x1xf32>
    %expanded_162 = tensor.expand_shape %301 [[0], [1, 2, 3], [4], [5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x1x1x14x14xf32>
    %325 = tensor.empty() : tensor<1x1024x1x1x14x14xf32>
    %326 = linalg.generic {indexing_maps = [#map2, #map3, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_161, %240, %expanded_162 : tensor<1x14x14x1024x1x1xf32>, tensor<1x1024x1x1xf32>, tensor<1x1024x1x1x14x14xf32>) outs(%325 : tensor<1x1024x1x1x14x14xf32>) {
    ^bb0(%in: f32, %in_216: f32, %in_217: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      %487 = arith.addf %486, %in_217 : f32
      linalg.yield %487 : f32
    } -> tensor<1x1024x1x1x14x14xf32>
    %collapsed_163 = tensor.collapse_shape %326 [[0], [1, 2, 3], [4], [5]] : tensor<1x1024x1x1x14x14xf32> into tensor<1x1024x14x14xf32>
    ml_program.global_store @global353 = %collapsed_163 : tensor<1x1024x14x14xf32>
    %327 = tensor.empty() : tensor<1x1024x14x14xf32>
    %328 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_163 : tensor<1x1024x14x14xf32>) outs(%327 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global354 = %328 : tensor<1x1024x14x14xf32>
    %329 = tensor.empty() : tensor<1x14x14x1024xf32>
    %330 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328 : tensor<1x1024x14x14xf32>) outs(%329 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_164 = tensor.collapse_shape %330 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %331 = tensor.empty() : tensor<196x256xf32>
    %332 = linalg.fill ins(%cst_0 : f32) outs(%331 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %333 = linalg.matmul ins(%collapsed_164, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%332 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_165 = tensor.expand_shape %333 [[0, 1, 2], [3, 4, 5]] : tensor<196x256xf32> into tensor<1x14x14x256x1x1xf32>
    %334 = tensor.empty() : tensor<1x256x1x1x14x14xf32>
    %335 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_165, %39 : tensor<1x14x14x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%334 : tensor<1x256x1x1x14x14xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x1x1x14x14xf32>
    %collapsed_166 = tensor.collapse_shape %335 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x1x1x14x14xf32> into tensor<1x256x14x14xf32>
    ml_program.global_store @global361 = %collapsed_166 : tensor<1x256x14x14xf32>
    %336 = tensor.empty() : tensor<1x256x14x14xf32>
    %337 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_166 : tensor<1x256x14x14xf32>) outs(%336 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global362 = %337 : tensor<1x256x14x14xf32>
    %338 = tensor.empty() : tensor<1x14x14x256xf32>
    %339 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337 : tensor<1x256x14x14xf32>) outs(%338 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_167 = tensor.pad %339 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %340 = tensor.empty() : tensor<1x14x14x256xf32>
    %341 = linalg.fill ins(%cst_0 : f32) outs(%340 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %342 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_167, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%341 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %expanded_168 = tensor.expand_shape %342 [[0], [1], [2], [3, 4, 5]] : tensor<1x14x14x256xf32> into tensor<1x14x14x256x1x1xf32>
    %343 = tensor.empty() : tensor<1x256x1x1x14x14xf32>
    %344 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_168, %39 : tensor<1x14x14x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%343 : tensor<1x256x1x1x14x14xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x1x1x14x14xf32>
    %collapsed_169 = tensor.collapse_shape %344 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x1x1x14x14xf32> into tensor<1x256x14x14xf32>
    ml_program.global_store @global369 = %collapsed_169 : tensor<1x256x14x14xf32>
    %345 = tensor.empty() : tensor<1x256x14x14xf32>
    %346 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_169 : tensor<1x256x14x14xf32>) outs(%345 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global370 = %346 : tensor<1x256x14x14xf32>
    %347 = tensor.empty() : tensor<1x14x14x256xf32>
    %348 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346 : tensor<1x256x14x14xf32>) outs(%347 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_170 = tensor.collapse_shape %348 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %349 = tensor.empty() : tensor<196x1024xf32>
    %350 = linalg.fill ins(%cst_0 : f32) outs(%349 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %351 = linalg.matmul ins(%collapsed_170, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%350 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_171 = tensor.expand_shape %351 [[0, 1, 2], [3, 4, 5]] : tensor<196x1024xf32> into tensor<1x14x14x1024x1x1xf32>
    %expanded_172 = tensor.expand_shape %328 [[0], [1, 2, 3], [4], [5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x1x1x14x14xf32>
    %352 = tensor.empty() : tensor<1x1024x1x1x14x14xf32>
    %353 = linalg.generic {indexing_maps = [#map2, #map3, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_171, %240, %expanded_172 : tensor<1x14x14x1024x1x1xf32>, tensor<1x1024x1x1xf32>, tensor<1x1024x1x1x14x14xf32>) outs(%352 : tensor<1x1024x1x1x14x14xf32>) {
    ^bb0(%in: f32, %in_216: f32, %in_217: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      %487 = arith.addf %486, %in_217 : f32
      linalg.yield %487 : f32
    } -> tensor<1x1024x1x1x14x14xf32>
    %collapsed_173 = tensor.collapse_shape %353 [[0], [1, 2, 3], [4], [5]] : tensor<1x1024x1x1x14x14xf32> into tensor<1x1024x14x14xf32>
    ml_program.global_store @global378 = %collapsed_173 : tensor<1x1024x14x14xf32>
    %354 = tensor.empty() : tensor<1x1024x14x14xf32>
    %355 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_173 : tensor<1x1024x14x14xf32>) outs(%354 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global379 = %355 : tensor<1x1024x14x14xf32>
    %356 = tensor.empty() : tensor<1x14x14x1024xf32>
    %357 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355 : tensor<1x1024x14x14xf32>) outs(%356 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_174 = tensor.collapse_shape %357 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %358 = tensor.empty() : tensor<196x256xf32>
    %359 = linalg.fill ins(%cst_0 : f32) outs(%358 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %360 = linalg.matmul ins(%collapsed_174, %cst_11 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%359 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_175 = tensor.expand_shape %360 [[0, 1, 2], [3, 4, 5]] : tensor<196x256xf32> into tensor<1x14x14x256x1x1xf32>
    %361 = tensor.empty() : tensor<1x256x1x1x14x14xf32>
    %362 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_175, %39 : tensor<1x14x14x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%361 : tensor<1x256x1x1x14x14xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x1x1x14x14xf32>
    %collapsed_176 = tensor.collapse_shape %362 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x1x1x14x14xf32> into tensor<1x256x14x14xf32>
    ml_program.global_store @global386 = %collapsed_176 : tensor<1x256x14x14xf32>
    %363 = tensor.empty() : tensor<1x256x14x14xf32>
    %364 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_176 : tensor<1x256x14x14xf32>) outs(%363 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global387 = %364 : tensor<1x256x14x14xf32>
    %365 = tensor.empty() : tensor<1x14x14x256xf32>
    %366 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364 : tensor<1x256x14x14xf32>) outs(%365 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_177 = tensor.pad %366 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %367 = tensor.empty() : tensor<1x14x14x256xf32>
    %368 = linalg.fill ins(%cst_0 : f32) outs(%367 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %369 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_177, %cst_10 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%368 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %expanded_178 = tensor.expand_shape %369 [[0], [1], [2], [3, 4, 5]] : tensor<1x14x14x256xf32> into tensor<1x14x14x256x1x1xf32>
    %370 = tensor.empty() : tensor<1x256x1x1x14x14xf32>
    %371 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_178, %39 : tensor<1x14x14x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%370 : tensor<1x256x1x1x14x14xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x256x1x1x14x14xf32>
    %collapsed_179 = tensor.collapse_shape %371 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x1x1x14x14xf32> into tensor<1x256x14x14xf32>
    ml_program.global_store @global394 = %collapsed_179 : tensor<1x256x14x14xf32>
    %372 = tensor.empty() : tensor<1x256x14x14xf32>
    %373 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_179 : tensor<1x256x14x14xf32>) outs(%372 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global395 = %373 : tensor<1x256x14x14xf32>
    %374 = tensor.empty() : tensor<1x14x14x256xf32>
    %375 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%373 : tensor<1x256x14x14xf32>) outs(%374 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_180 = tensor.collapse_shape %375 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %376 = tensor.empty() : tensor<196x1024xf32>
    %377 = linalg.fill ins(%cst_0 : f32) outs(%376 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %378 = linalg.matmul ins(%collapsed_180, %cst_9 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%377 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_181 = tensor.expand_shape %378 [[0, 1, 2], [3, 4, 5]] : tensor<196x1024xf32> into tensor<1x14x14x1024x1x1xf32>
    %expanded_182 = tensor.expand_shape %355 [[0], [1, 2, 3], [4], [5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x1x1x14x14xf32>
    %379 = tensor.empty() : tensor<1x1024x1x1x14x14xf32>
    %380 = linalg.generic {indexing_maps = [#map2, #map3, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_181, %240, %expanded_182 : tensor<1x14x14x1024x1x1xf32>, tensor<1x1024x1x1xf32>, tensor<1x1024x1x1x14x14xf32>) outs(%379 : tensor<1x1024x1x1x14x14xf32>) {
    ^bb0(%in: f32, %in_216: f32, %in_217: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      %487 = arith.addf %486, %in_217 : f32
      linalg.yield %487 : f32
    } -> tensor<1x1024x1x1x14x14xf32>
    %collapsed_183 = tensor.collapse_shape %380 [[0], [1, 2, 3], [4], [5]] : tensor<1x1024x1x1x14x14xf32> into tensor<1x1024x14x14xf32>
    ml_program.global_store @global403 = %collapsed_183 : tensor<1x1024x14x14xf32>
    %381 = tensor.empty() : tensor<1x1024x14x14xf32>
    %382 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_183 : tensor<1x1024x14x14xf32>) outs(%381 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global404 = %382 : tensor<1x1024x14x14xf32>
    %383 = tensor.empty() : tensor<1x14x14x1024xf32>
    %384 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%382 : tensor<1x1024x14x14xf32>) outs(%383 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_184 = tensor.collapse_shape %384 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %385 = tensor.empty() : tensor<196x512xf32>
    %386 = linalg.fill ins(%cst_0 : f32) outs(%385 : tensor<196x512xf32>) -> tensor<196x512xf32>
    %387 = linalg.matmul ins(%collapsed_184, %cst_8 : tensor<196x1024xf32>, tensor<1024x512xf32>) outs(%386 : tensor<196x512xf32>) -> tensor<196x512xf32>
    %expanded_185 = tensor.expand_shape %387 [[0, 1, 2], [3, 4, 5]] : tensor<196x512xf32> into tensor<1x14x14x512x1x1xf32>
    %388 = tensor.empty() : tensor<1x512x1x1x14x14xf32>
    %389 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_185, %127 : tensor<1x14x14x512x1x1xf32>, tensor<1x512x1x1xf32>) outs(%388 : tensor<1x512x1x1x14x14xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x512x1x1x14x14xf32>
    %collapsed_186 = tensor.collapse_shape %389 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x1x1x14x14xf32> into tensor<1x512x14x14xf32>
    ml_program.global_store @global411 = %collapsed_186 : tensor<1x512x14x14xf32>
    %390 = tensor.empty() : tensor<1x512x14x14xf32>
    %391 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_186 : tensor<1x512x14x14xf32>) outs(%390 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x512x14x14xf32>
    ml_program.global_store @global412 = %391 : tensor<1x512x14x14xf32>
    %392 = tensor.empty() : tensor<1x14x14x512xf32>
    %393 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%391 : tensor<1x512x14x14xf32>) outs(%392 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %padded_187 = tensor.pad %393 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %394 = tensor.empty() : tensor<1x7x7x512xf32>
    %395 = linalg.fill ins(%cst_0 : f32) outs(%394 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %396 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_187, %cst_5 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%395 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %expanded_188 = tensor.expand_shape %396 [[0], [1], [2], [3, 4, 5]] : tensor<1x7x7x512xf32> into tensor<1x7x7x512x1x1xf32>
    %397 = tensor.empty() : tensor<1x512x1x1x7x7xf32>
    %398 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_188, %127 : tensor<1x7x7x512x1x1xf32>, tensor<1x512x1x1xf32>) outs(%397 : tensor<1x512x1x1x7x7xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x512x1x1x7x7xf32>
    %collapsed_189 = tensor.collapse_shape %398 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x1x1x7x7xf32> into tensor<1x512x7x7xf32>
    ml_program.global_store @global419 = %collapsed_189 : tensor<1x512x7x7xf32>
    %399 = tensor.empty() : tensor<1x512x7x7xf32>
    %400 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_189 : tensor<1x512x7x7xf32>) outs(%399 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global420 = %400 : tensor<1x512x7x7xf32>
    %401 = tensor.empty() : tensor<1x7x7x512xf32>
    %402 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%400 : tensor<1x512x7x7xf32>) outs(%401 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_190 = tensor.collapse_shape %402 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %403 = tensor.empty() : tensor<49x2048xf32>
    %404 = linalg.fill ins(%cst_0 : f32) outs(%403 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %405 = linalg.matmul ins(%collapsed_190, %cst_4 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%404 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %406 = tensor.empty() : tensor<1x2048x1x1xf32>
    %407 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%406 : tensor<1x2048x1x1xf32>) {
    ^bb0(%out: f32):
      %482 = math.rsqrt %cst_1 : f32
      linalg.yield %482 : f32
    } -> tensor<1x2048x1x1xf32>
    ml_program.global_store @global426 = %407 : tensor<1x2048x1x1xf32>
    %expanded_191 = tensor.expand_shape %405 [[0, 1, 2], [3, 4, 5]] : tensor<49x2048xf32> into tensor<1x7x7x2048x1x1xf32>
    %408 = tensor.empty() : tensor<1x7x7x2048xf32>
    %409 = linalg.fill ins(%cst_0 : f32) outs(%408 : tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %410 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%384, %cst_7 : tensor<1x14x14x1024xf32>, tensor<1x1x1024x2048xf32>) outs(%409 : tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %expanded_192 = tensor.expand_shape %410 [[0], [1], [2], [3, 4, 5]] : tensor<1x7x7x2048xf32> into tensor<1x7x7x2048x1x1xf32>
    %411 = tensor.empty() : tensor<1x2048x1x1x7x7xf32>
    %412 = linalg.generic {indexing_maps = [#map2, #map3, #map2, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_191, %407, %expanded_192 : tensor<1x7x7x2048x1x1xf32>, tensor<1x2048x1x1xf32>, tensor<1x7x7x2048x1x1xf32>) outs(%411 : tensor<1x2048x1x1x7x7xf32>) {
    ^bb0(%in: f32, %in_216: f32, %in_217: f32, %out: f32):
      %482 = arith.addf %in_217, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      %487 = arith.addf %in, %cst_0 : f32
      %488 = arith.subf %487, %cst : f32
      %489 = arith.mulf %488, %in_216 : f32
      %490 = arith.mulf %489, %cst : f32
      %491 = arith.addf %490, %cst : f32
      %492 = arith.addf %491, %486 : f32
      linalg.yield %492 : f32
    } -> tensor<1x2048x1x1x7x7xf32>
    %collapsed_193 = tensor.collapse_shape %412 [[0], [1, 2, 3], [4], [5]] : tensor<1x2048x1x1x7x7xf32> into tensor<1x2048x7x7xf32>
    ml_program.global_store @global436 = %collapsed_193 : tensor<1x2048x7x7xf32>
    %413 = tensor.empty() : tensor<1x2048x7x7xf32>
    %414 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_193 : tensor<1x2048x7x7xf32>) outs(%413 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global437 = %414 : tensor<1x2048x7x7xf32>
    %415 = tensor.empty() : tensor<1x7x7x2048xf32>
    %416 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%414 : tensor<1x2048x7x7xf32>) outs(%415 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %collapsed_194 = tensor.collapse_shape %416 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %417 = tensor.empty() : tensor<49x512xf32>
    %418 = linalg.fill ins(%cst_0 : f32) outs(%417 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %419 = linalg.matmul ins(%collapsed_194, %cst_6 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%418 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %expanded_195 = tensor.expand_shape %419 [[0, 1, 2], [3, 4, 5]] : tensor<49x512xf32> into tensor<1x7x7x512x1x1xf32>
    %420 = tensor.empty() : tensor<1x512x1x1x7x7xf32>
    %421 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_195, %127 : tensor<1x7x7x512x1x1xf32>, tensor<1x512x1x1xf32>) outs(%420 : tensor<1x512x1x1x7x7xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x512x1x1x7x7xf32>
    %collapsed_196 = tensor.collapse_shape %421 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x1x1x7x7xf32> into tensor<1x512x7x7xf32>
    ml_program.global_store @global444 = %collapsed_196 : tensor<1x512x7x7xf32>
    %422 = tensor.empty() : tensor<1x512x7x7xf32>
    %423 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_196 : tensor<1x512x7x7xf32>) outs(%422 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global445 = %423 : tensor<1x512x7x7xf32>
    %424 = tensor.empty() : tensor<1x7x7x512xf32>
    %425 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%423 : tensor<1x512x7x7xf32>) outs(%424 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_197 = tensor.pad %425 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %426 = tensor.empty() : tensor<1x7x7x512xf32>
    %427 = linalg.fill ins(%cst_0 : f32) outs(%426 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %428 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_197, %cst_5 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%427 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %expanded_198 = tensor.expand_shape %428 [[0], [1], [2], [3, 4, 5]] : tensor<1x7x7x512xf32> into tensor<1x7x7x512x1x1xf32>
    %429 = tensor.empty() : tensor<1x512x1x1x7x7xf32>
    %430 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_198, %127 : tensor<1x7x7x512x1x1xf32>, tensor<1x512x1x1xf32>) outs(%429 : tensor<1x512x1x1x7x7xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x512x1x1x7x7xf32>
    %collapsed_199 = tensor.collapse_shape %430 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x1x1x7x7xf32> into tensor<1x512x7x7xf32>
    ml_program.global_store @global452 = %collapsed_199 : tensor<1x512x7x7xf32>
    %431 = tensor.empty() : tensor<1x512x7x7xf32>
    %432 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_199 : tensor<1x512x7x7xf32>) outs(%431 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global453 = %432 : tensor<1x512x7x7xf32>
    %433 = tensor.empty() : tensor<1x7x7x512xf32>
    %434 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%432 : tensor<1x512x7x7xf32>) outs(%433 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_200 = tensor.collapse_shape %434 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %435 = tensor.empty() : tensor<49x2048xf32>
    %436 = linalg.fill ins(%cst_0 : f32) outs(%435 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %437 = linalg.matmul ins(%collapsed_200, %cst_4 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%436 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %expanded_201 = tensor.expand_shape %437 [[0, 1, 2], [3, 4, 5]] : tensor<49x2048xf32> into tensor<1x7x7x2048x1x1xf32>
    %expanded_202 = tensor.expand_shape %414 [[0], [1, 2, 3], [4], [5]] : tensor<1x2048x7x7xf32> into tensor<1x2048x1x1x7x7xf32>
    %438 = tensor.empty() : tensor<1x2048x1x1x7x7xf32>
    %439 = linalg.generic {indexing_maps = [#map2, #map3, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_201, %407, %expanded_202 : tensor<1x7x7x2048x1x1xf32>, tensor<1x2048x1x1xf32>, tensor<1x2048x1x1x7x7xf32>) outs(%438 : tensor<1x2048x1x1x7x7xf32>) {
    ^bb0(%in: f32, %in_216: f32, %in_217: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      %487 = arith.addf %486, %in_217 : f32
      linalg.yield %487 : f32
    } -> tensor<1x2048x1x1x7x7xf32>
    %collapsed_203 = tensor.collapse_shape %439 [[0], [1, 2, 3], [4], [5]] : tensor<1x2048x1x1x7x7xf32> into tensor<1x2048x7x7xf32>
    ml_program.global_store @global461 = %collapsed_203 : tensor<1x2048x7x7xf32>
    %440 = tensor.empty() : tensor<1x2048x7x7xf32>
    %441 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_203 : tensor<1x2048x7x7xf32>) outs(%440 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global462 = %441 : tensor<1x2048x7x7xf32>
    %442 = tensor.empty() : tensor<1x7x7x2048xf32>
    %443 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441 : tensor<1x2048x7x7xf32>) outs(%442 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %collapsed_204 = tensor.collapse_shape %443 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %444 = tensor.empty() : tensor<49x512xf32>
    %445 = linalg.fill ins(%cst_0 : f32) outs(%444 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %446 = linalg.matmul ins(%collapsed_204, %cst_6 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%445 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %expanded_205 = tensor.expand_shape %446 [[0, 1, 2], [3, 4, 5]] : tensor<49x512xf32> into tensor<1x7x7x512x1x1xf32>
    %447 = tensor.empty() : tensor<1x512x1x1x7x7xf32>
    %448 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_205, %127 : tensor<1x7x7x512x1x1xf32>, tensor<1x512x1x1xf32>) outs(%447 : tensor<1x512x1x1x7x7xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x512x1x1x7x7xf32>
    %collapsed_206 = tensor.collapse_shape %448 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x1x1x7x7xf32> into tensor<1x512x7x7xf32>
    ml_program.global_store @global469 = %collapsed_206 : tensor<1x512x7x7xf32>
    %449 = tensor.empty() : tensor<1x512x7x7xf32>
    %450 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_206 : tensor<1x512x7x7xf32>) outs(%449 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global470 = %450 : tensor<1x512x7x7xf32>
    %451 = tensor.empty() : tensor<1x7x7x512xf32>
    %452 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%450 : tensor<1x512x7x7xf32>) outs(%451 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_207 = tensor.pad %452 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %453 = tensor.empty() : tensor<1x7x7x512xf32>
    %454 = linalg.fill ins(%cst_0 : f32) outs(%453 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %455 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_207, %cst_5 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%454 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %expanded_208 = tensor.expand_shape %455 [[0], [1], [2], [3, 4, 5]] : tensor<1x7x7x512xf32> into tensor<1x7x7x512x1x1xf32>
    %456 = tensor.empty() : tensor<1x512x1x1x7x7xf32>
    %457 = linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_208, %127 : tensor<1x7x7x512x1x1xf32>, tensor<1x512x1x1xf32>) outs(%456 : tensor<1x512x1x1x7x7xf32>) {
    ^bb0(%in: f32, %in_216: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      linalg.yield %486 : f32
    } -> tensor<1x512x1x1x7x7xf32>
    %collapsed_209 = tensor.collapse_shape %457 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x1x1x7x7xf32> into tensor<1x512x7x7xf32>
    ml_program.global_store @global477 = %collapsed_209 : tensor<1x512x7x7xf32>
    %458 = tensor.empty() : tensor<1x512x7x7xf32>
    %459 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_209 : tensor<1x512x7x7xf32>) outs(%458 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global478 = %459 : tensor<1x512x7x7xf32>
    %460 = tensor.empty() : tensor<1x7x7x512xf32>
    %461 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%459 : tensor<1x512x7x7xf32>) outs(%460 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_210 = tensor.collapse_shape %461 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %462 = tensor.empty() : tensor<49x2048xf32>
    %463 = linalg.fill ins(%cst_0 : f32) outs(%462 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %464 = linalg.matmul ins(%collapsed_210, %cst_4 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%463 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %expanded_211 = tensor.expand_shape %464 [[0, 1, 2], [3, 4, 5]] : tensor<49x2048xf32> into tensor<1x7x7x2048x1x1xf32>
    %expanded_212 = tensor.expand_shape %441 [[0], [1, 2, 3], [4], [5]] : tensor<1x2048x7x7xf32> into tensor<1x2048x1x1x7x7xf32>
    %465 = tensor.empty() : tensor<1x2048x1x1x7x7xf32>
    %466 = linalg.generic {indexing_maps = [#map2, #map3, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_211, %407, %expanded_212 : tensor<1x7x7x2048x1x1xf32>, tensor<1x2048x1x1xf32>, tensor<1x2048x1x1x7x7xf32>) outs(%465 : tensor<1x2048x1x1x7x7xf32>) {
    ^bb0(%in: f32, %in_216: f32, %in_217: f32, %out: f32):
      %482 = arith.addf %in, %cst_0 : f32
      %483 = arith.subf %482, %cst : f32
      %484 = arith.mulf %483, %in_216 : f32
      %485 = arith.mulf %484, %cst : f32
      %486 = arith.addf %485, %cst : f32
      %487 = arith.addf %486, %in_217 : f32
      linalg.yield %487 : f32
    } -> tensor<1x2048x1x1x7x7xf32>
    %collapsed_213 = tensor.collapse_shape %466 [[0], [1, 2, 3], [4], [5]] : tensor<1x2048x1x1x7x7xf32> into tensor<1x2048x7x7xf32>
    ml_program.global_store @global486 = %collapsed_213 : tensor<1x2048x7x7xf32>
    %467 = tensor.empty() : tensor<1x2048x7x7xf32>
    %468 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_213 : tensor<1x2048x7x7xf32>) outs(%467 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.minf %in, %cst_2 : f32
      %483 = arith.maxf %482, %cst_0 : f32
      linalg.yield %483 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global487 = %468 : tensor<1x2048x7x7xf32>
    %469 = tensor.empty() : tensor<1x7x7x2048xf32>
    %470 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%468 : tensor<1x2048x7x7xf32>) outs(%469 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %471 = tensor.empty() : tensor<1x1x1x2048xf32>
    %472 = linalg.fill ins(%cst_0 : f32) outs(%471 : tensor<1x1x1x2048xf32>) -> tensor<1x1x1x2048xf32>
    %473 = tensor.empty() : tensor<7x7xf32>
    %474 = linalg.pooling_nhwc_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%470, %473 : tensor<1x7x7x2048xf32>, tensor<7x7xf32>) outs(%472 : tensor<1x1x1x2048xf32>) -> tensor<1x1x1x2048xf32>
    %475 = tensor.empty() : tensor<1x1x1x2048xf32>
    %476 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%474 : tensor<1x1x1x2048xf32>) outs(%475 : tensor<1x1x1x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.divf %in, %cst_3 : f32
      linalg.yield %482 : f32
    } -> tensor<1x1x1x2048xf32>
    %collapsed_214 = tensor.collapse_shape %476 [[0], [1, 2], [3]] : tensor<1x1x1x2048xf32> into tensor<1x1x2048xf32>
    %477 = tensor.empty() : tensor<1x1x1000xf32>
    %478 = linalg.fill ins(%cst_0 : f32) outs(%477 : tensor<1x1x1000xf32>) -> tensor<1x1x1000xf32>
    %479 = linalg.batch_matmul ins(%collapsed_214, %cst_25 : tensor<1x1x2048xf32>, tensor<1x2048x1000xf32>) outs(%478 : tensor<1x1x1000xf32>) -> tensor<1x1x1000xf32>
    %480 = tensor.empty() : tensor<1x1x1000xf32>
    %481 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%479 : tensor<1x1x1000xf32>) outs(%480 : tensor<1x1x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      %482 = arith.addf %in, %cst : f32
      linalg.yield %482 : f32
    } -> tensor<1x1x1000xf32>
    %collapsed_215 = tensor.collapse_shape %481 [[0, 1], [2]] : tensor<1x1x1000xf32> into tensor<1x1000xf32>
    return %collapsed_215 : tensor<1x1000xf32>
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
    %134 = linalg.generic {indexing_maps = [#map6, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<1x2048x1000xf32>) outs(%133 : tensor<1x1000x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1000x2048xf32>
    %135 = tensor.empty() : tensor<1x1x2048xf32>
    %136 = linalg.fill ins(%cst : f32) outs(%135 : tensor<1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %137 = linalg.batch_matmul ins(%expanded, %134 : tensor<1x1x1000xf32>, tensor<1x1000x2048xf32>) outs(%136 : tensor<1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %expanded_2 = tensor.expand_shape %131 [[0, 1], [2], [3], [4]] : tensor<1x2048x7x7xf32> into tensor<1x1x2048x7x7xf32>
    %expanded_3 = tensor.expand_shape %132 [[0, 1], [2], [3], [4]] : tensor<1x2048x7x7xf32> into tensor<1x1x2048x7x7xf32>
    %138 = tensor.empty() : tensor<1x1x2048x7x7xf32>
    %139 = linalg.generic {indexing_maps = [#map7, #map7, #map8, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_2, %expanded_3, %137 : tensor<1x1x2048x7x7xf32>, tensor<1x1x2048x7x7xf32>, tensor<1x1x2048xf32>) outs(%138 : tensor<1x1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %616 = arith.mulf %in_330, %cst_0 : f32
      %617 = arith.cmpf oeq, %in, %in_329 : f32
      %618 = arith.select %617, %616, %cst : f32
      linalg.yield %618 : f32
    } -> tensor<1x1x2048x7x7xf32>
    %collapsed = tensor.collapse_shape %139 [[0, 1], [2], [3], [4]] : tensor<1x1x2048x7x7xf32> into tensor<1x2048x7x7xf32>
    %expanded_4 = tensor.expand_shape %collapsed [[0], [1, 2, 3], [4], [5]] : tensor<1x2048x7x7xf32> into tensor<1x2048x1x1x7x7xf32>
    %140 = tensor.empty() : tensor<1x7x7x2048x1x1xf32>
    %141 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%118, %3, %expanded_4 : tensor<1x2048x1x1xf32>, tensor<1x2048x1x1xf32>, tensor<1x2048x1x1x7x7xf32>) outs(%140 : tensor<1x7x7x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %616 = arith.mulf %in_329, %in_330 : f32
      %617 = arith.mulf %in, %616 : f32
      linalg.yield %617 : f32
    } -> tensor<1x7x7x2048x1x1xf32>
    %142 = tensor.empty() : tensor<512x1x1x2048xf32>
    %143 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<2048x1x1x512xf32>) outs(%142 : tensor<512x1x1x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1x1x2048xf32>
    %144 = tensor.empty() : tensor<512xf32>
    %collapsed_5 = tensor.collapse_shape %141 [[0, 1, 2], [3, 4, 5]] : tensor<1x7x7x2048x1x1xf32> into tensor<49x2048xf32>
    %145 = tensor.empty() : tensor<49x512xf32>
    %146 = linalg.fill ins(%cst : f32) outs(%145 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %147 = tensor.empty() : tensor<2048x512x1x1xf32>
    %148 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143 : tensor<512x1x1x2048xf32>) outs(%147 : tensor<2048x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512x1x1xf32>
    %collapsed_6 = tensor.collapse_shape %148 [[0], [1, 2, 3]] : tensor<2048x512x1x1xf32> into tensor<2048x512xf32>
    %149 = linalg.matmul ins(%collapsed_5, %collapsed_6 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%146 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %expanded_7 = tensor.expand_shape %129 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x7x7xf32> into tensor<1x512x1x1x7x7xf32>
    %expanded_8 = tensor.expand_shape %130 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x7x7xf32> into tensor<1x512x1x1x7x7xf32>
    %expanded_9 = tensor.expand_shape %144 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_10 = tensor.expand_shape %149 [[0, 1, 2], [3, 4, 5]] : tensor<49x512xf32> into tensor<1x7x7x512x1x1xf32>
    %150 = tensor.empty() : tensor<1x7x7x512x1x1xf32>
    %151 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%56, %15, %expanded_7, %expanded_8, %expanded_9, %expanded_10 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>, tensor<1x512x1x1x7x7xf32>, tensor<1x512x1x1x7x7xf32>, tensor<512x1x1xf32>, tensor<1x7x7x512x1x1xf32>) outs(%150 : tensor<1x7x7x512x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x7x7x512x1x1xf32>
    %collapsed_11 = tensor.collapse_shape %151 [[0], [1], [2], [3, 4, 5]] : tensor<1x7x7x512x1x1xf32> into tensor<1x7x7x512xf32>
    %152 = tensor.empty() : tensor<512x3x3x512xf32>
    %153 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<512x3x3x512xf32>) outs(%152 : tensor<512x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x3x3x512xf32>
    %154 = tensor.empty() : tensor<512x3x3x512xf32>
    %155 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%154 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = arith.subi %c2, %617 : index
      %619 = linalg.index 2 : index
      %620 = linalg.index 3 : index
      %extracted = tensor.extract %153[%616, %618, %619, %620] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded = tensor.pad %collapsed_11 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %156 = tensor.empty() : tensor<3x3x512x512xf32>
    %157 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%156 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = linalg.index 2 : index
      %619 = linalg.index 3 : index
      %620 = arith.subi %c2, %617 : index
      %extracted = tensor.extract %155[%619, %616, %620, %618] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %158 = tensor.empty() : tensor<1x7x7x512xf32>
    %159 = linalg.fill ins(%cst : f32) outs(%158 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %160 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded, %157 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%159 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %expanded_12 = tensor.expand_shape %127 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x7x7xf32> into tensor<1x512x1x1x7x7xf32>
    %expanded_13 = tensor.expand_shape %128 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x7x7xf32> into tensor<1x512x1x1x7x7xf32>
    %expanded_14 = tensor.expand_shape %144 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_15 = tensor.expand_shape %160 [[0], [1], [2], [3, 4, 5]] : tensor<1x7x7x512xf32> into tensor<1x7x7x512x1x1xf32>
    %161 = tensor.empty() : tensor<1x7x7x512x1x1xf32>
    %162 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%56, %15, %expanded_12, %expanded_13, %expanded_14, %expanded_15 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>, tensor<1x512x1x1x7x7xf32>, tensor<1x512x1x1x7x7xf32>, tensor<512x1x1xf32>, tensor<1x7x7x512x1x1xf32>) outs(%161 : tensor<1x7x7x512x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x7x7x512x1x1xf32>
    %163 = tensor.empty() : tensor<2048x1x1x512xf32>
    %164 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1 : tensor<512x1x1x2048xf32>) outs(%163 : tensor<2048x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x1x1x512xf32>
    %165 = tensor.empty() : tensor<2048xf32>
    %collapsed_16 = tensor.collapse_shape %162 [[0, 1, 2], [3, 4, 5]] : tensor<1x7x7x512x1x1xf32> into tensor<49x512xf32>
    %166 = tensor.empty() : tensor<49x2048xf32>
    %167 = linalg.fill ins(%cst : f32) outs(%166 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %168 = tensor.empty() : tensor<512x2048x1x1xf32>
    %169 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164 : tensor<2048x1x1x512xf32>) outs(%168 : tensor<512x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048x1x1xf32>
    %collapsed_17 = tensor.collapse_shape %169 [[0], [1, 2, 3]] : tensor<512x2048x1x1xf32> into tensor<512x2048xf32>
    %170 = linalg.matmul ins(%collapsed_16, %collapsed_17 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%167 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %expanded_18 = tensor.expand_shape %170 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %171 = tensor.empty() : tensor<1x2048x7x7xf32>
    %172 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map14, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125, %126, %collapsed, %165, %expanded_18 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<1x7x7x2048xf32>) outs(%171 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %616 = arith.addf %in_331, %in_332 : f32
      %617 = arith.addf %in_330, %616 : f32
      %618 = arith.cmpf oeq, %in, %in_329 : f32
      %619 = arith.select %618, %617, %cst : f32
      linalg.yield %619 : f32
    } -> tensor<1x2048x7x7xf32>
    %expanded_19 = tensor.expand_shape %172 [[0], [1, 2, 3], [4], [5]] : tensor<1x2048x7x7xf32> into tensor<1x2048x1x1x7x7xf32>
    %173 = tensor.empty() : tensor<1x7x7x2048x1x1xf32>
    %174 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%118, %3, %expanded_19 : tensor<1x2048x1x1xf32>, tensor<1x2048x1x1xf32>, tensor<1x2048x1x1x7x7xf32>) outs(%173 : tensor<1x7x7x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %616 = arith.mulf %in_329, %in_330 : f32
      %617 = arith.mulf %in, %616 : f32
      linalg.yield %617 : f32
    } -> tensor<1x7x7x2048x1x1xf32>
    %collapsed_20 = tensor.collapse_shape %174 [[0, 1, 2], [3, 4, 5]] : tensor<1x7x7x2048x1x1xf32> into tensor<49x2048xf32>
    %175 = tensor.empty() : tensor<49x512xf32>
    %176 = linalg.fill ins(%cst : f32) outs(%175 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %177 = tensor.empty() : tensor<2048x512x1x1xf32>
    %178 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143 : tensor<512x1x1x2048xf32>) outs(%177 : tensor<2048x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512x1x1xf32>
    %collapsed_21 = tensor.collapse_shape %178 [[0], [1, 2, 3]] : tensor<2048x512x1x1xf32> into tensor<2048x512xf32>
    %179 = linalg.matmul ins(%collapsed_20, %collapsed_21 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%176 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %expanded_22 = tensor.expand_shape %123 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x7x7xf32> into tensor<1x512x1x1x7x7xf32>
    %expanded_23 = tensor.expand_shape %124 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x7x7xf32> into tensor<1x512x1x1x7x7xf32>
    %expanded_24 = tensor.expand_shape %144 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_25 = tensor.expand_shape %179 [[0, 1, 2], [3, 4, 5]] : tensor<49x512xf32> into tensor<1x7x7x512x1x1xf32>
    %180 = tensor.empty() : tensor<1x7x7x512x1x1xf32>
    %181 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%56, %15, %expanded_22, %expanded_23, %expanded_24, %expanded_25 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>, tensor<1x512x1x1x7x7xf32>, tensor<1x512x1x1x7x7xf32>, tensor<512x1x1xf32>, tensor<1x7x7x512x1x1xf32>) outs(%180 : tensor<1x7x7x512x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x7x7x512x1x1xf32>
    %collapsed_26 = tensor.collapse_shape %181 [[0], [1], [2], [3, 4, 5]] : tensor<1x7x7x512x1x1xf32> into tensor<1x7x7x512xf32>
    %182 = tensor.empty() : tensor<512x3x3x512xf32>
    %183 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%182 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = arith.subi %c2, %617 : index
      %619 = linalg.index 2 : index
      %620 = linalg.index 3 : index
      %extracted = tensor.extract %153[%616, %618, %619, %620] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded_27 = tensor.pad %collapsed_26 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %184 = tensor.empty() : tensor<3x3x512x512xf32>
    %185 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%184 : tensor<3x3x512x512xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = linalg.index 2 : index
      %619 = linalg.index 3 : index
      %620 = arith.subi %c2, %617 : index
      %extracted = tensor.extract %183[%619, %616, %620, %618] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x512x512xf32>
    %186 = tensor.empty() : tensor<1x7x7x512xf32>
    %187 = linalg.fill ins(%cst : f32) outs(%186 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %188 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_27, %185 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%187 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %expanded_28 = tensor.expand_shape %121 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x7x7xf32> into tensor<1x512x1x1x7x7xf32>
    %expanded_29 = tensor.expand_shape %122 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x7x7xf32> into tensor<1x512x1x1x7x7xf32>
    %expanded_30 = tensor.expand_shape %144 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_31 = tensor.expand_shape %188 [[0], [1], [2], [3, 4, 5]] : tensor<1x7x7x512xf32> into tensor<1x7x7x512x1x1xf32>
    %189 = tensor.empty() : tensor<1x7x7x512x1x1xf32>
    %190 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%56, %15, %expanded_28, %expanded_29, %expanded_30, %expanded_31 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>, tensor<1x512x1x1x7x7xf32>, tensor<1x512x1x1x7x7xf32>, tensor<512x1x1xf32>, tensor<1x7x7x512x1x1xf32>) outs(%189 : tensor<1x7x7x512x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x7x7x512x1x1xf32>
    %collapsed_32 = tensor.collapse_shape %190 [[0, 1, 2], [3, 4, 5]] : tensor<1x7x7x512x1x1xf32> into tensor<49x512xf32>
    %191 = tensor.empty() : tensor<49x2048xf32>
    %192 = linalg.fill ins(%cst : f32) outs(%191 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %193 = tensor.empty() : tensor<512x2048x1x1xf32>
    %194 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164 : tensor<2048x1x1x512xf32>) outs(%193 : tensor<512x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048x1x1xf32>
    %collapsed_33 = tensor.collapse_shape %194 [[0], [1, 2, 3]] : tensor<512x2048x1x1xf32> into tensor<512x2048xf32>
    %195 = linalg.matmul ins(%collapsed_32, %collapsed_33 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%192 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %expanded_34 = tensor.expand_shape %119 [[0], [1, 2, 3], [4], [5]] : tensor<1x2048x7x7xf32> into tensor<1x2048x1x1x7x7xf32>
    %expanded_35 = tensor.expand_shape %120 [[0], [1, 2, 3], [4], [5]] : tensor<1x2048x7x7xf32> into tensor<1x2048x1x1x7x7xf32>
    %expanded_36 = tensor.expand_shape %172 [[0], [1, 2, 3], [4], [5]] : tensor<1x2048x7x7xf32> into tensor<1x2048x1x1x7x7xf32>
    %expanded_37 = tensor.expand_shape %165 [[0, 1, 2]] : tensor<2048xf32> into tensor<2048x1x1xf32>
    %expanded_38 = tensor.expand_shape %195 [[0, 1, 2], [3, 4, 5]] : tensor<49x2048xf32> into tensor<1x7x7x2048x1x1xf32>
    %196 = tensor.empty() : tensor<1x7x7x2048x1x1xf32>
    %197 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%118, %3, %expanded_34, %expanded_35, %expanded_36, %expanded_37, %expanded_38 : tensor<1x2048x1x1xf32>, tensor<1x2048x1x1xf32>, tensor<1x2048x1x1x7x7xf32>, tensor<1x2048x1x1x7x7xf32>, tensor<1x2048x1x1x7x7xf32>, tensor<2048x1x1xf32>, tensor<1x7x7x2048x1x1xf32>) outs(%196 : tensor<1x7x7x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %in_334: f32, %out: f32):
      %616 = arith.addf %in_333, %in_334 : f32
      %617 = arith.addf %in_332, %616 : f32
      %618 = arith.cmpf oeq, %in_330, %in_331 : f32
      %619 = arith.select %618, %617, %cst : f32
      %620 = arith.mulf %in_329, %619 : f32
      %621 = arith.mulf %in, %620 : f32
      linalg.yield %621 : f32
    } -> tensor<1x7x7x2048x1x1xf32>
    %198 = tensor.empty() : tensor<1024x1x1x2048xf32>
    %199 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<2048x1x1x1024xf32>) outs(%198 : tensor<1024x1x1x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x1x1x2048xf32>
    %200 = tensor.empty() : tensor<1024xf32>
    %padded_39 = tensor.pad %199 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1024x1x1x2048xf32> to tensor<1024x2x2x2048xf32>
    %expanded_40 = tensor.expand_shape %padded_39 [[0, 1], [2, 3], [4], [5]] : tensor<1024x2x2x2048xf32> into tensor<1024x1x2x1x2x2048xf32>
    %collapsed_41 = tensor.collapse_shape %197 [[0, 1, 2], [3, 4, 5]] : tensor<1x7x7x2048x1x1xf32> into tensor<49x2048xf32>
    %201 = tensor.empty() : tensor<49x4096xf32>
    %202 = linalg.fill ins(%cst : f32) outs(%201 : tensor<49x4096xf32>) -> tensor<49x4096xf32>
    %203 = tensor.empty() : tensor<2048x2x2x1024x1x1xf32>
    %204 = linalg.generic {indexing_maps = [#map16, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_40 : tensor<1024x1x2x1x2x2048xf32>) outs(%203 : tensor<2048x2x2x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x2x2x1024x1x1xf32>
    %collapsed_42 = tensor.collapse_shape %204 [[0], [1, 2, 3, 4, 5]] : tensor<2048x2x2x1024x1x1xf32> into tensor<2048x4096xf32>
    %205 = linalg.matmul ins(%collapsed_41, %collapsed_42 : tensor<49x2048xf32>, tensor<2048x4096xf32>) outs(%202 : tensor<49x4096xf32>) -> tensor<49x4096xf32>
    %expanded_43 = tensor.expand_shape %205 [[0, 1, 2], [3, 4, 5]] : tensor<49x4096xf32> into tensor<1x7x7x2x2x1024xf32>
    %expanded_44 = tensor.expand_shape %200 [[0, 1]] : tensor<1024xf32> into tensor<1x1024xf32>
    %collapsed_45 = tensor.collapse_shape %197 [[0, 1, 2], [3, 4, 5]] : tensor<1x7x7x2048x1x1xf32> into tensor<49x2048xf32>
    %206 = tensor.empty() : tensor<49x512xf32>
    %207 = linalg.fill ins(%cst : f32) outs(%206 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %208 = tensor.empty() : tensor<2048x512x1x1xf32>
    %209 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143 : tensor<512x1x1x2048xf32>) outs(%208 : tensor<2048x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512x1x1xf32>
    %collapsed_46 = tensor.collapse_shape %209 [[0], [1, 2, 3]] : tensor<2048x512x1x1xf32> into tensor<2048x512xf32>
    %210 = linalg.matmul ins(%collapsed_45, %collapsed_46 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%207 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %expanded_47 = tensor.expand_shape %116 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x7x7xf32> into tensor<1x512x1x1x7x7xf32>
    %expanded_48 = tensor.expand_shape %117 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x7x7xf32> into tensor<1x512x1x1x7x7xf32>
    %expanded_49 = tensor.expand_shape %144 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_50 = tensor.expand_shape %210 [[0, 1, 2], [3, 4, 5]] : tensor<49x512xf32> into tensor<1x7x7x512x1x1xf32>
    %211 = tensor.empty() : tensor<1x7x7x512x1x1xf32>
    %212 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%56, %15, %expanded_47, %expanded_48, %expanded_49, %expanded_50 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>, tensor<1x512x1x1x7x7xf32>, tensor<1x512x1x1x7x7xf32>, tensor<512x1x1xf32>, tensor<1x7x7x512x1x1xf32>) outs(%211 : tensor<1x7x7x512x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x7x7x512x1x1xf32>
    %collapsed_51 = tensor.collapse_shape %212 [[0], [1], [2], [3, 4, 5]] : tensor<1x7x7x512x1x1xf32> into tensor<1x7x7x512xf32>
    %padded_52 = tensor.pad %153 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<512x3x3x512xf32> to tensor<512x4x4x512xf32>
    %expanded_53 = tensor.expand_shape %padded_52 [[0], [1, 2], [3, 4], [5]] : tensor<512x4x4x512xf32> into tensor<512x2x2x2x2x512xf32>
    %213 = tensor.empty() : tensor<2x2x512x2x2x512xf32>
    %214 = linalg.generic {indexing_maps = [#map17, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_53 : tensor<512x2x2x2x2x512xf32>) outs(%213 : tensor<2x2x512x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x512x2x2x512xf32>
    %collapsed_54 = tensor.collapse_shape %214 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x512x2x2x512xf32> into tensor<2048x2x2x512xf32>
    %215 = tensor.empty() : tensor<2048x2x2x512xf32>
    %216 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%215 : tensor<2048x2x2x512xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = arith.subi %c1, %617 : index
      %619 = linalg.index 2 : index
      %620 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_54[%616, %618, %619, %620] : tensor<2048x2x2x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<2048x2x2x512xf32>
    %padded_55 = tensor.pad %collapsed_51 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %217 = tensor.empty() : tensor<2x2x512x2048xf32>
    %218 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%217 : tensor<2x2x512x2048xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = linalg.index 2 : index
      %619 = linalg.index 3 : index
      %620 = arith.subi %c1, %617 : index
      %extracted = tensor.extract %216[%619, %616, %620, %618] : tensor<2048x2x2x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<2x2x512x2048xf32>
    %219 = tensor.empty() : tensor<1x8x8x2048xf32>
    %220 = linalg.fill ins(%cst : f32) outs(%219 : tensor<1x8x8x2048xf32>) -> tensor<1x8x8x2048xf32>
    %221 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_55, %218 : tensor<1x9x9x512xf32>, tensor<2x2x512x2048xf32>) outs(%220 : tensor<1x8x8x2048xf32>) -> tensor<1x8x8x2048xf32>
    %expanded_56 = tensor.expand_shape %221 [[0], [1], [2], [3, 4, 5]] : tensor<1x8x8x2048xf32> into tensor<1x8x8x2x2x512xf32>
    %222 = tensor.empty() : tensor<1x8x2x8x2x512xf32>
    %223 = linalg.generic {indexing_maps = [#map18, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_56 : tensor<1x8x8x2x2x512xf32>) outs(%222 : tensor<1x8x2x8x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %616 = arith.addf %in, %cst : f32
      linalg.yield %616 : f32
    } -> tensor<1x8x2x8x2x512xf32>
    %collapsed_57 = tensor.collapse_shape %223 [[0], [1, 2], [3, 4], [5]] : tensor<1x8x2x8x2x512xf32> into tensor<1x16x16x512xf32>
    %extracted_slice = tensor.extract_slice %collapsed_57[0, 1, 1, 0] [1, 14, 14, 512] [1, 1, 1, 1] : tensor<1x16x16x512xf32> to tensor<1x14x14x512xf32>
    %expanded_58 = tensor.expand_shape %114 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x14x14xf32> into tensor<1x512x1x1x14x14xf32>
    %expanded_59 = tensor.expand_shape %115 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x14x14xf32> into tensor<1x512x1x1x14x14xf32>
    %expanded_60 = tensor.expand_shape %extracted_slice [[0], [1], [2], [3, 4, 5]] : tensor<1x14x14x512xf32> into tensor<1x14x14x512x1x1xf32>
    %expanded_61 = tensor.expand_shape %144 [[0, 1, 2, 3]] : tensor<512xf32> into tensor<1x512x1x1xf32>
    %224 = tensor.empty() : tensor<1x14x14x512x1x1xf32>
    %225 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map4, #map9, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%56, %15, %expanded_58, %expanded_59, %expanded_60, %expanded_61 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>, tensor<1x512x1x1x14x14xf32>, tensor<1x512x1x1x14x14xf32>, tensor<1x14x14x512x1x1xf32>, tensor<1x512x1x1xf32>) outs(%224 : tensor<1x14x14x512x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x14x14x512x1x1xf32>
    %collapsed_62 = tensor.collapse_shape %225 [[0, 1, 2], [3, 4, 5]] : tensor<1x14x14x512x1x1xf32> into tensor<196x512xf32>
    %226 = tensor.empty() : tensor<196x1024xf32>
    %227 = linalg.fill ins(%cst : f32) outs(%226 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %228 = tensor.empty() : tensor<512x1024x1x1xf32>
    %229 = linalg.generic {indexing_maps = [#map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<512x1x1x1024xf32>) outs(%228 : tensor<512x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1024x1x1xf32>
    %collapsed_63 = tensor.collapse_shape %229 [[0], [1, 2, 3]] : tensor<512x1024x1x1xf32> into tensor<512x1024xf32>
    %230 = linalg.matmul ins(%collapsed_62, %collapsed_63 : tensor<196x512xf32>, tensor<512x1024xf32>) outs(%227 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_64 = tensor.expand_shape %230 [[0, 1, 2, 3, 4], [5]] : tensor<196x1024xf32> into tensor<1x7x2x7x2x1024xf32>
    %expanded_65 = tensor.expand_shape %112 [[0], [1], [2, 3], [4, 5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x7x2x7x2xf32>
    %expanded_66 = tensor.expand_shape %113 [[0], [1], [2, 3], [4, 5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x7x2x7x2xf32>
    %231 = tensor.empty() : tensor<1x1024x7x2x7x2xf32>
    %232 = linalg.generic {indexing_maps = [#map4, #map4, #map19, #map20, #map21, #map22, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_65, %expanded_66, %expanded_43, %expanded_44, %200, %expanded_64 : tensor<1x1024x7x2x7x2xf32>, tensor<1x1024x7x2x7x2xf32>, tensor<1x7x7x2x2x1024xf32>, tensor<1x1024xf32>, tensor<1024xf32>, tensor<1x7x2x7x2x1024xf32>) outs(%231 : tensor<1x1024x7x2x7x2xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_330, %cst : f32
      %617 = arith.addf %616, %in_331 : f32
      %618 = arith.addf %in_332, %in_333 : f32
      %619 = arith.addf %617, %618 : f32
      %620 = arith.cmpf oeq, %in, %in_329 : f32
      %621 = arith.select %620, %619, %cst : f32
      linalg.yield %621 : f32
    } -> tensor<1x1024x7x2x7x2xf32>
    %collapsed_67 = tensor.collapse_shape %232 [[0], [1], [2, 3], [4, 5]] : tensor<1x1024x7x2x7x2xf32> into tensor<1x1024x14x14xf32>
    %expanded_68 = tensor.expand_shape %collapsed_67 [[0], [1, 2, 3], [4], [5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x1x1x14x14xf32>
    %233 = tensor.empty() : tensor<1x14x14x1024x1x1xf32>
    %234 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%81, %9, %expanded_68 : tensor<1x1024x1x1xf32>, tensor<1x1024x1x1xf32>, tensor<1x1024x1x1x14x14xf32>) outs(%233 : tensor<1x14x14x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %616 = arith.mulf %in_329, %in_330 : f32
      %617 = arith.mulf %in, %616 : f32
      linalg.yield %617 : f32
    } -> tensor<1x14x14x1024x1x1xf32>
    %235 = tensor.empty() : tensor<256x1x1x1024xf32>
    %236 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1024x1x1x256xf32>) outs(%235 : tensor<256x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1x1x1024xf32>
    %237 = tensor.empty() : tensor<256xf32>
    %collapsed_69 = tensor.collapse_shape %234 [[0, 1, 2], [3, 4, 5]] : tensor<1x14x14x1024x1x1xf32> into tensor<196x1024xf32>
    %238 = tensor.empty() : tensor<196x256xf32>
    %239 = linalg.fill ins(%cst : f32) outs(%238 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %240 = tensor.empty() : tensor<1024x256x1x1xf32>
    %241 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<256x1x1x1024xf32>) outs(%240 : tensor<1024x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x256x1x1xf32>
    %collapsed_70 = tensor.collapse_shape %241 [[0], [1, 2, 3]] : tensor<1024x256x1x1xf32> into tensor<1024x256xf32>
    %242 = linalg.matmul ins(%collapsed_69, %collapsed_70 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%239 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_71 = tensor.expand_shape %110 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_72 = tensor.expand_shape %111 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_73 = tensor.expand_shape %237 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_74 = tensor.expand_shape %242 [[0, 1, 2], [3, 4, 5]] : tensor<196x256xf32> into tensor<1x14x14x256x1x1xf32>
    %243 = tensor.empty() : tensor<1x14x14x256x1x1xf32>
    %244 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%36, %21, %expanded_71, %expanded_72, %expanded_73, %expanded_74 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>, tensor<1x256x1x1x14x14xf32>, tensor<1x256x1x1x14x14xf32>, tensor<256x1x1xf32>, tensor<1x14x14x256x1x1xf32>) outs(%243 : tensor<1x14x14x256x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x14x14x256x1x1xf32>
    %collapsed_75 = tensor.collapse_shape %244 [[0], [1], [2], [3, 4, 5]] : tensor<1x14x14x256x1x1xf32> into tensor<1x14x14x256xf32>
    %245 = tensor.empty() : tensor<256x3x3x256xf32>
    %246 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11 : tensor<256x3x3x256xf32>) outs(%245 : tensor<256x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x256xf32>
    %247 = tensor.empty() : tensor<256x3x3x256xf32>
    %248 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%247 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = arith.subi %c2, %617 : index
      %619 = linalg.index 2 : index
      %620 = linalg.index 3 : index
      %extracted = tensor.extract %246[%616, %618, %619, %620] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_76 = tensor.pad %collapsed_75 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %249 = tensor.empty() : tensor<3x3x256x256xf32>
    %250 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%249 : tensor<3x3x256x256xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = linalg.index 2 : index
      %619 = linalg.index 3 : index
      %620 = arith.subi %c2, %617 : index
      %extracted = tensor.extract %248[%619, %616, %620, %618] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x256xf32>
    %251 = tensor.empty() : tensor<1x14x14x256xf32>
    %252 = linalg.fill ins(%cst : f32) outs(%251 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %253 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_76, %250 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%252 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %expanded_77 = tensor.expand_shape %108 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_78 = tensor.expand_shape %109 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_79 = tensor.expand_shape %237 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_80 = tensor.expand_shape %253 [[0], [1], [2], [3, 4, 5]] : tensor<1x14x14x256xf32> into tensor<1x14x14x256x1x1xf32>
    %254 = tensor.empty() : tensor<1x14x14x256x1x1xf32>
    %255 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%36, %21, %expanded_77, %expanded_78, %expanded_79, %expanded_80 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>, tensor<1x256x1x1x14x14xf32>, tensor<1x256x1x1x14x14xf32>, tensor<256x1x1xf32>, tensor<1x14x14x256x1x1xf32>) outs(%254 : tensor<1x14x14x256x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x14x14x256x1x1xf32>
    %256 = tensor.empty() : tensor<1024x1x1x256xf32>
    %257 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<256x1x1x1024xf32>) outs(%256 : tensor<1024x1x1x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x1x1x256xf32>
    %collapsed_81 = tensor.collapse_shape %255 [[0, 1, 2], [3, 4, 5]] : tensor<1x14x14x256x1x1xf32> into tensor<196x256xf32>
    %258 = tensor.empty() : tensor<196x1024xf32>
    %259 = linalg.fill ins(%cst : f32) outs(%258 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %260 = tensor.empty() : tensor<256x1024x1x1xf32>
    %261 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257 : tensor<1024x1x1x256xf32>) outs(%260 : tensor<256x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1024x1x1xf32>
    %collapsed_82 = tensor.collapse_shape %261 [[0], [1, 2, 3]] : tensor<256x1024x1x1xf32> into tensor<256x1024xf32>
    %262 = linalg.matmul ins(%collapsed_81, %collapsed_82 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%259 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_83 = tensor.expand_shape %262 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %263 = tensor.empty() : tensor<1x1024x14x14xf32>
    %264 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map14, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %107, %collapsed_67, %200, %expanded_83 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%263 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %616 = arith.addf %in_331, %in_332 : f32
      %617 = arith.addf %in_330, %616 : f32
      %618 = arith.cmpf oeq, %in, %in_329 : f32
      %619 = arith.select %618, %617, %cst : f32
      linalg.yield %619 : f32
    } -> tensor<1x1024x14x14xf32>
    %expanded_84 = tensor.expand_shape %264 [[0], [1, 2, 3], [4], [5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x1x1x14x14xf32>
    %265 = tensor.empty() : tensor<1x14x14x1024x1x1xf32>
    %266 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%81, %9, %expanded_84 : tensor<1x1024x1x1xf32>, tensor<1x1024x1x1xf32>, tensor<1x1024x1x1x14x14xf32>) outs(%265 : tensor<1x14x14x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %616 = arith.mulf %in_329, %in_330 : f32
      %617 = arith.mulf %in, %616 : f32
      linalg.yield %617 : f32
    } -> tensor<1x14x14x1024x1x1xf32>
    %collapsed_85 = tensor.collapse_shape %266 [[0, 1, 2], [3, 4, 5]] : tensor<1x14x14x1024x1x1xf32> into tensor<196x1024xf32>
    %267 = tensor.empty() : tensor<196x256xf32>
    %268 = linalg.fill ins(%cst : f32) outs(%267 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %269 = tensor.empty() : tensor<1024x256x1x1xf32>
    %270 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<256x1x1x1024xf32>) outs(%269 : tensor<1024x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x256x1x1xf32>
    %collapsed_86 = tensor.collapse_shape %270 [[0], [1, 2, 3]] : tensor<1024x256x1x1xf32> into tensor<1024x256xf32>
    %271 = linalg.matmul ins(%collapsed_85, %collapsed_86 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%268 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_87 = tensor.expand_shape %104 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_88 = tensor.expand_shape %105 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_89 = tensor.expand_shape %237 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_90 = tensor.expand_shape %271 [[0, 1, 2], [3, 4, 5]] : tensor<196x256xf32> into tensor<1x14x14x256x1x1xf32>
    %272 = tensor.empty() : tensor<1x14x14x256x1x1xf32>
    %273 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%36, %21, %expanded_87, %expanded_88, %expanded_89, %expanded_90 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>, tensor<1x256x1x1x14x14xf32>, tensor<1x256x1x1x14x14xf32>, tensor<256x1x1xf32>, tensor<1x14x14x256x1x1xf32>) outs(%272 : tensor<1x14x14x256x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x14x14x256x1x1xf32>
    %collapsed_91 = tensor.collapse_shape %273 [[0], [1], [2], [3, 4, 5]] : tensor<1x14x14x256x1x1xf32> into tensor<1x14x14x256xf32>
    %274 = tensor.empty() : tensor<256x3x3x256xf32>
    %275 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%274 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = arith.subi %c2, %617 : index
      %619 = linalg.index 2 : index
      %620 = linalg.index 3 : index
      %extracted = tensor.extract %246[%616, %618, %619, %620] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_92 = tensor.pad %collapsed_91 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %276 = tensor.empty() : tensor<3x3x256x256xf32>
    %277 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%276 : tensor<3x3x256x256xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = linalg.index 2 : index
      %619 = linalg.index 3 : index
      %620 = arith.subi %c2, %617 : index
      %extracted = tensor.extract %275[%619, %616, %620, %618] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x256xf32>
    %278 = tensor.empty() : tensor<1x14x14x256xf32>
    %279 = linalg.fill ins(%cst : f32) outs(%278 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %280 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_92, %277 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%279 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %expanded_93 = tensor.expand_shape %102 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_94 = tensor.expand_shape %103 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_95 = tensor.expand_shape %237 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_96 = tensor.expand_shape %280 [[0], [1], [2], [3, 4, 5]] : tensor<1x14x14x256xf32> into tensor<1x14x14x256x1x1xf32>
    %281 = tensor.empty() : tensor<1x14x14x256x1x1xf32>
    %282 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%36, %21, %expanded_93, %expanded_94, %expanded_95, %expanded_96 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>, tensor<1x256x1x1x14x14xf32>, tensor<1x256x1x1x14x14xf32>, tensor<256x1x1xf32>, tensor<1x14x14x256x1x1xf32>) outs(%281 : tensor<1x14x14x256x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x14x14x256x1x1xf32>
    %collapsed_97 = tensor.collapse_shape %282 [[0, 1, 2], [3, 4, 5]] : tensor<1x14x14x256x1x1xf32> into tensor<196x256xf32>
    %283 = tensor.empty() : tensor<196x1024xf32>
    %284 = linalg.fill ins(%cst : f32) outs(%283 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %285 = tensor.empty() : tensor<256x1024x1x1xf32>
    %286 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257 : tensor<1024x1x1x256xf32>) outs(%285 : tensor<256x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1024x1x1xf32>
    %collapsed_98 = tensor.collapse_shape %286 [[0], [1, 2, 3]] : tensor<256x1024x1x1xf32> into tensor<256x1024xf32>
    %287 = linalg.matmul ins(%collapsed_97, %collapsed_98 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_99 = tensor.expand_shape %287 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %288 = tensor.empty() : tensor<1x1024x14x14xf32>
    %289 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map14, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %101, %264, %200, %expanded_99 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%288 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %616 = arith.addf %in_331, %in_332 : f32
      %617 = arith.addf %in_330, %616 : f32
      %618 = arith.cmpf oeq, %in, %in_329 : f32
      %619 = arith.select %618, %617, %cst : f32
      linalg.yield %619 : f32
    } -> tensor<1x1024x14x14xf32>
    %expanded_100 = tensor.expand_shape %289 [[0], [1, 2, 3], [4], [5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x1x1x14x14xf32>
    %290 = tensor.empty() : tensor<1x14x14x1024x1x1xf32>
    %291 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%81, %9, %expanded_100 : tensor<1x1024x1x1xf32>, tensor<1x1024x1x1xf32>, tensor<1x1024x1x1x14x14xf32>) outs(%290 : tensor<1x14x14x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %616 = arith.mulf %in_329, %in_330 : f32
      %617 = arith.mulf %in, %616 : f32
      linalg.yield %617 : f32
    } -> tensor<1x14x14x1024x1x1xf32>
    %collapsed_101 = tensor.collapse_shape %291 [[0, 1, 2], [3, 4, 5]] : tensor<1x14x14x1024x1x1xf32> into tensor<196x1024xf32>
    %292 = tensor.empty() : tensor<196x256xf32>
    %293 = linalg.fill ins(%cst : f32) outs(%292 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %294 = tensor.empty() : tensor<1024x256x1x1xf32>
    %295 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<256x1x1x1024xf32>) outs(%294 : tensor<1024x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x256x1x1xf32>
    %collapsed_102 = tensor.collapse_shape %295 [[0], [1, 2, 3]] : tensor<1024x256x1x1xf32> into tensor<1024x256xf32>
    %296 = linalg.matmul ins(%collapsed_101, %collapsed_102 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%293 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_103 = tensor.expand_shape %98 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_104 = tensor.expand_shape %99 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_105 = tensor.expand_shape %237 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_106 = tensor.expand_shape %296 [[0, 1, 2], [3, 4, 5]] : tensor<196x256xf32> into tensor<1x14x14x256x1x1xf32>
    %297 = tensor.empty() : tensor<1x14x14x256x1x1xf32>
    %298 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%36, %21, %expanded_103, %expanded_104, %expanded_105, %expanded_106 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>, tensor<1x256x1x1x14x14xf32>, tensor<1x256x1x1x14x14xf32>, tensor<256x1x1xf32>, tensor<1x14x14x256x1x1xf32>) outs(%297 : tensor<1x14x14x256x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x14x14x256x1x1xf32>
    %collapsed_107 = tensor.collapse_shape %298 [[0], [1], [2], [3, 4, 5]] : tensor<1x14x14x256x1x1xf32> into tensor<1x14x14x256xf32>
    %299 = tensor.empty() : tensor<256x3x3x256xf32>
    %300 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%299 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = arith.subi %c2, %617 : index
      %619 = linalg.index 2 : index
      %620 = linalg.index 3 : index
      %extracted = tensor.extract %246[%616, %618, %619, %620] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_108 = tensor.pad %collapsed_107 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %301 = tensor.empty() : tensor<3x3x256x256xf32>
    %302 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%301 : tensor<3x3x256x256xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = linalg.index 2 : index
      %619 = linalg.index 3 : index
      %620 = arith.subi %c2, %617 : index
      %extracted = tensor.extract %300[%619, %616, %620, %618] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x256xf32>
    %303 = tensor.empty() : tensor<1x14x14x256xf32>
    %304 = linalg.fill ins(%cst : f32) outs(%303 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %305 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_108, %302 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%304 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %expanded_109 = tensor.expand_shape %96 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_110 = tensor.expand_shape %97 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_111 = tensor.expand_shape %237 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_112 = tensor.expand_shape %305 [[0], [1], [2], [3, 4, 5]] : tensor<1x14x14x256xf32> into tensor<1x14x14x256x1x1xf32>
    %306 = tensor.empty() : tensor<1x14x14x256x1x1xf32>
    %307 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%36, %21, %expanded_109, %expanded_110, %expanded_111, %expanded_112 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>, tensor<1x256x1x1x14x14xf32>, tensor<1x256x1x1x14x14xf32>, tensor<256x1x1xf32>, tensor<1x14x14x256x1x1xf32>) outs(%306 : tensor<1x14x14x256x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x14x14x256x1x1xf32>
    %collapsed_113 = tensor.collapse_shape %307 [[0, 1, 2], [3, 4, 5]] : tensor<1x14x14x256x1x1xf32> into tensor<196x256xf32>
    %308 = tensor.empty() : tensor<196x1024xf32>
    %309 = linalg.fill ins(%cst : f32) outs(%308 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %310 = tensor.empty() : tensor<256x1024x1x1xf32>
    %311 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257 : tensor<1024x1x1x256xf32>) outs(%310 : tensor<256x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1024x1x1xf32>
    %collapsed_114 = tensor.collapse_shape %311 [[0], [1, 2, 3]] : tensor<256x1024x1x1xf32> into tensor<256x1024xf32>
    %312 = linalg.matmul ins(%collapsed_113, %collapsed_114 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%309 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_115 = tensor.expand_shape %312 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %313 = tensor.empty() : tensor<1x1024x14x14xf32>
    %314 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map14, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94, %95, %289, %200, %expanded_115 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%313 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %616 = arith.addf %in_331, %in_332 : f32
      %617 = arith.addf %in_330, %616 : f32
      %618 = arith.cmpf oeq, %in, %in_329 : f32
      %619 = arith.select %618, %617, %cst : f32
      linalg.yield %619 : f32
    } -> tensor<1x1024x14x14xf32>
    %expanded_116 = tensor.expand_shape %314 [[0], [1, 2, 3], [4], [5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x1x1x14x14xf32>
    %315 = tensor.empty() : tensor<1x14x14x1024x1x1xf32>
    %316 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%81, %9, %expanded_116 : tensor<1x1024x1x1xf32>, tensor<1x1024x1x1xf32>, tensor<1x1024x1x1x14x14xf32>) outs(%315 : tensor<1x14x14x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %616 = arith.mulf %in_329, %in_330 : f32
      %617 = arith.mulf %in, %616 : f32
      linalg.yield %617 : f32
    } -> tensor<1x14x14x1024x1x1xf32>
    %collapsed_117 = tensor.collapse_shape %316 [[0, 1, 2], [3, 4, 5]] : tensor<1x14x14x1024x1x1xf32> into tensor<196x1024xf32>
    %317 = tensor.empty() : tensor<196x256xf32>
    %318 = linalg.fill ins(%cst : f32) outs(%317 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %319 = tensor.empty() : tensor<1024x256x1x1xf32>
    %320 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<256x1x1x1024xf32>) outs(%319 : tensor<1024x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x256x1x1xf32>
    %collapsed_118 = tensor.collapse_shape %320 [[0], [1, 2, 3]] : tensor<1024x256x1x1xf32> into tensor<1024x256xf32>
    %321 = linalg.matmul ins(%collapsed_117, %collapsed_118 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%318 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_119 = tensor.expand_shape %92 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_120 = tensor.expand_shape %93 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_121 = tensor.expand_shape %237 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_122 = tensor.expand_shape %321 [[0, 1, 2], [3, 4, 5]] : tensor<196x256xf32> into tensor<1x14x14x256x1x1xf32>
    %322 = tensor.empty() : tensor<1x14x14x256x1x1xf32>
    %323 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%36, %21, %expanded_119, %expanded_120, %expanded_121, %expanded_122 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>, tensor<1x256x1x1x14x14xf32>, tensor<1x256x1x1x14x14xf32>, tensor<256x1x1xf32>, tensor<1x14x14x256x1x1xf32>) outs(%322 : tensor<1x14x14x256x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x14x14x256x1x1xf32>
    %collapsed_123 = tensor.collapse_shape %323 [[0], [1], [2], [3, 4, 5]] : tensor<1x14x14x256x1x1xf32> into tensor<1x14x14x256xf32>
    %324 = tensor.empty() : tensor<256x3x3x256xf32>
    %325 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%324 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = arith.subi %c2, %617 : index
      %619 = linalg.index 2 : index
      %620 = linalg.index 3 : index
      %extracted = tensor.extract %246[%616, %618, %619, %620] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_124 = tensor.pad %collapsed_123 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %326 = tensor.empty() : tensor<3x3x256x256xf32>
    %327 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%326 : tensor<3x3x256x256xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = linalg.index 2 : index
      %619 = linalg.index 3 : index
      %620 = arith.subi %c2, %617 : index
      %extracted = tensor.extract %325[%619, %616, %620, %618] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x256xf32>
    %328 = tensor.empty() : tensor<1x14x14x256xf32>
    %329 = linalg.fill ins(%cst : f32) outs(%328 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %330 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_124, %327 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%329 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %expanded_125 = tensor.expand_shape %90 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_126 = tensor.expand_shape %91 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_127 = tensor.expand_shape %237 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_128 = tensor.expand_shape %330 [[0], [1], [2], [3, 4, 5]] : tensor<1x14x14x256xf32> into tensor<1x14x14x256x1x1xf32>
    %331 = tensor.empty() : tensor<1x14x14x256x1x1xf32>
    %332 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%36, %21, %expanded_125, %expanded_126, %expanded_127, %expanded_128 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>, tensor<1x256x1x1x14x14xf32>, tensor<1x256x1x1x14x14xf32>, tensor<256x1x1xf32>, tensor<1x14x14x256x1x1xf32>) outs(%331 : tensor<1x14x14x256x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x14x14x256x1x1xf32>
    %collapsed_129 = tensor.collapse_shape %332 [[0, 1, 2], [3, 4, 5]] : tensor<1x14x14x256x1x1xf32> into tensor<196x256xf32>
    %333 = tensor.empty() : tensor<196x1024xf32>
    %334 = linalg.fill ins(%cst : f32) outs(%333 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %335 = tensor.empty() : tensor<256x1024x1x1xf32>
    %336 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257 : tensor<1024x1x1x256xf32>) outs(%335 : tensor<256x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1024x1x1xf32>
    %collapsed_130 = tensor.collapse_shape %336 [[0], [1, 2, 3]] : tensor<256x1024x1x1xf32> into tensor<256x1024xf32>
    %337 = linalg.matmul ins(%collapsed_129, %collapsed_130 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%334 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_131 = tensor.expand_shape %337 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %338 = tensor.empty() : tensor<1x1024x14x14xf32>
    %339 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map14, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %89, %314, %200, %expanded_131 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%338 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %616 = arith.addf %in_331, %in_332 : f32
      %617 = arith.addf %in_330, %616 : f32
      %618 = arith.cmpf oeq, %in, %in_329 : f32
      %619 = arith.select %618, %617, %cst : f32
      linalg.yield %619 : f32
    } -> tensor<1x1024x14x14xf32>
    %expanded_132 = tensor.expand_shape %339 [[0], [1, 2, 3], [4], [5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x1x1x14x14xf32>
    %340 = tensor.empty() : tensor<1x14x14x1024x1x1xf32>
    %341 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%81, %9, %expanded_132 : tensor<1x1024x1x1xf32>, tensor<1x1024x1x1xf32>, tensor<1x1024x1x1x14x14xf32>) outs(%340 : tensor<1x14x14x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %616 = arith.mulf %in_329, %in_330 : f32
      %617 = arith.mulf %in, %616 : f32
      linalg.yield %617 : f32
    } -> tensor<1x14x14x1024x1x1xf32>
    %collapsed_133 = tensor.collapse_shape %341 [[0, 1, 2], [3, 4, 5]] : tensor<1x14x14x1024x1x1xf32> into tensor<196x1024xf32>
    %342 = tensor.empty() : tensor<196x256xf32>
    %343 = linalg.fill ins(%cst : f32) outs(%342 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %344 = tensor.empty() : tensor<1024x256x1x1xf32>
    %345 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<256x1x1x1024xf32>) outs(%344 : tensor<1024x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x256x1x1xf32>
    %collapsed_134 = tensor.collapse_shape %345 [[0], [1, 2, 3]] : tensor<1024x256x1x1xf32> into tensor<1024x256xf32>
    %346 = linalg.matmul ins(%collapsed_133, %collapsed_134 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%343 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_135 = tensor.expand_shape %86 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_136 = tensor.expand_shape %87 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_137 = tensor.expand_shape %237 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_138 = tensor.expand_shape %346 [[0, 1, 2], [3, 4, 5]] : tensor<196x256xf32> into tensor<1x14x14x256x1x1xf32>
    %347 = tensor.empty() : tensor<1x14x14x256x1x1xf32>
    %348 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%36, %21, %expanded_135, %expanded_136, %expanded_137, %expanded_138 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>, tensor<1x256x1x1x14x14xf32>, tensor<1x256x1x1x14x14xf32>, tensor<256x1x1xf32>, tensor<1x14x14x256x1x1xf32>) outs(%347 : tensor<1x14x14x256x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x14x14x256x1x1xf32>
    %collapsed_139 = tensor.collapse_shape %348 [[0], [1], [2], [3, 4, 5]] : tensor<1x14x14x256x1x1xf32> into tensor<1x14x14x256xf32>
    %349 = tensor.empty() : tensor<256x3x3x256xf32>
    %350 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%349 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = arith.subi %c2, %617 : index
      %619 = linalg.index 2 : index
      %620 = linalg.index 3 : index
      %extracted = tensor.extract %246[%616, %618, %619, %620] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_140 = tensor.pad %collapsed_139 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %351 = tensor.empty() : tensor<3x3x256x256xf32>
    %352 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%351 : tensor<3x3x256x256xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = linalg.index 2 : index
      %619 = linalg.index 3 : index
      %620 = arith.subi %c2, %617 : index
      %extracted = tensor.extract %350[%619, %616, %620, %618] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x256x256xf32>
    %353 = tensor.empty() : tensor<1x14x14x256xf32>
    %354 = linalg.fill ins(%cst : f32) outs(%353 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %355 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_140, %352 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%354 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %expanded_141 = tensor.expand_shape %84 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_142 = tensor.expand_shape %85 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_143 = tensor.expand_shape %237 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_144 = tensor.expand_shape %355 [[0], [1], [2], [3, 4, 5]] : tensor<1x14x14x256xf32> into tensor<1x14x14x256x1x1xf32>
    %356 = tensor.empty() : tensor<1x14x14x256x1x1xf32>
    %357 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%36, %21, %expanded_141, %expanded_142, %expanded_143, %expanded_144 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>, tensor<1x256x1x1x14x14xf32>, tensor<1x256x1x1x14x14xf32>, tensor<256x1x1xf32>, tensor<1x14x14x256x1x1xf32>) outs(%356 : tensor<1x14x14x256x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x14x14x256x1x1xf32>
    %collapsed_145 = tensor.collapse_shape %357 [[0, 1, 2], [3, 4, 5]] : tensor<1x14x14x256x1x1xf32> into tensor<196x256xf32>
    %358 = tensor.empty() : tensor<196x1024xf32>
    %359 = linalg.fill ins(%cst : f32) outs(%358 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %360 = tensor.empty() : tensor<256x1024x1x1xf32>
    %361 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257 : tensor<1024x1x1x256xf32>) outs(%360 : tensor<256x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1024x1x1xf32>
    %collapsed_146 = tensor.collapse_shape %361 [[0], [1, 2, 3]] : tensor<256x1024x1x1xf32> into tensor<256x1024xf32>
    %362 = linalg.matmul ins(%collapsed_145, %collapsed_146 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%359 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %expanded_147 = tensor.expand_shape %82 [[0], [1, 2, 3], [4], [5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x1x1x14x14xf32>
    %expanded_148 = tensor.expand_shape %83 [[0], [1, 2, 3], [4], [5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x1x1x14x14xf32>
    %expanded_149 = tensor.expand_shape %339 [[0], [1, 2, 3], [4], [5]] : tensor<1x1024x14x14xf32> into tensor<1x1024x1x1x14x14xf32>
    %expanded_150 = tensor.expand_shape %200 [[0, 1, 2]] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_151 = tensor.expand_shape %362 [[0, 1, 2], [3, 4, 5]] : tensor<196x1024xf32> into tensor<1x14x14x1024x1x1xf32>
    %363 = tensor.empty() : tensor<1x14x14x1024x1x1xf32>
    %364 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%81, %9, %expanded_147, %expanded_148, %expanded_149, %expanded_150, %expanded_151 : tensor<1x1024x1x1xf32>, tensor<1x1024x1x1xf32>, tensor<1x1024x1x1x14x14xf32>, tensor<1x1024x1x1x14x14xf32>, tensor<1x1024x1x1x14x14xf32>, tensor<1024x1x1xf32>, tensor<1x14x14x1024x1x1xf32>) outs(%363 : tensor<1x14x14x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %in_334: f32, %out: f32):
      %616 = arith.addf %in_333, %in_334 : f32
      %617 = arith.addf %in_332, %616 : f32
      %618 = arith.cmpf oeq, %in_330, %in_331 : f32
      %619 = arith.select %618, %617, %cst : f32
      %620 = arith.mulf %in_329, %619 : f32
      %621 = arith.mulf %in, %620 : f32
      linalg.yield %621 : f32
    } -> tensor<1x14x14x1024x1x1xf32>
    %365 = tensor.empty() : tensor<512x1x1x1024xf32>
    %366 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1024x1x1x512xf32>) outs(%365 : tensor<512x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1x1x1024xf32>
    %padded_152 = tensor.pad %366 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<512x1x1x1024xf32> to tensor<512x2x2x1024xf32>
    %expanded_153 = tensor.expand_shape %padded_152 [[0, 1], [2, 3], [4], [5]] : tensor<512x2x2x1024xf32> into tensor<512x1x2x1x2x1024xf32>
    %collapsed_154 = tensor.collapse_shape %364 [[0, 1, 2], [3, 4, 5]] : tensor<1x14x14x1024x1x1xf32> into tensor<196x1024xf32>
    %367 = tensor.empty() : tensor<196x2048xf32>
    %368 = linalg.fill ins(%cst : f32) outs(%367 : tensor<196x2048xf32>) -> tensor<196x2048xf32>
    %369 = tensor.empty() : tensor<1024x2x2x512x1x1xf32>
    %370 = linalg.generic {indexing_maps = [#map16, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_153 : tensor<512x1x2x1x2x1024xf32>) outs(%369 : tensor<1024x2x2x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x2x2x512x1x1xf32>
    %collapsed_155 = tensor.collapse_shape %370 [[0], [1, 2, 3, 4, 5]] : tensor<1024x2x2x512x1x1xf32> into tensor<1024x2048xf32>
    %371 = linalg.matmul ins(%collapsed_154, %collapsed_155 : tensor<196x1024xf32>, tensor<1024x2048xf32>) outs(%368 : tensor<196x2048xf32>) -> tensor<196x2048xf32>
    %expanded_156 = tensor.expand_shape %371 [[0, 1, 2], [3, 4, 5]] : tensor<196x2048xf32> into tensor<1x14x14x2x2x512xf32>
    %expanded_157 = tensor.expand_shape %144 [[0, 1]] : tensor<512xf32> into tensor<1x512xf32>
    %collapsed_158 = tensor.collapse_shape %364 [[0, 1, 2], [3, 4, 5]] : tensor<1x14x14x1024x1x1xf32> into tensor<196x1024xf32>
    %372 = tensor.empty() : tensor<196x256xf32>
    %373 = linalg.fill ins(%cst : f32) outs(%372 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %374 = tensor.empty() : tensor<1024x256x1x1xf32>
    %375 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<256x1x1x1024xf32>) outs(%374 : tensor<1024x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x256x1x1xf32>
    %collapsed_159 = tensor.collapse_shape %375 [[0], [1, 2, 3]] : tensor<1024x256x1x1xf32> into tensor<1024x256xf32>
    %376 = linalg.matmul ins(%collapsed_158, %collapsed_159 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%373 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %expanded_160 = tensor.expand_shape %79 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_161 = tensor.expand_shape %80 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x14x14xf32> into tensor<1x256x1x1x14x14xf32>
    %expanded_162 = tensor.expand_shape %237 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_163 = tensor.expand_shape %376 [[0, 1, 2], [3, 4, 5]] : tensor<196x256xf32> into tensor<1x14x14x256x1x1xf32>
    %377 = tensor.empty() : tensor<1x14x14x256x1x1xf32>
    %378 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%36, %21, %expanded_160, %expanded_161, %expanded_162, %expanded_163 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>, tensor<1x256x1x1x14x14xf32>, tensor<1x256x1x1x14x14xf32>, tensor<256x1x1xf32>, tensor<1x14x14x256x1x1xf32>) outs(%377 : tensor<1x14x14x256x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x14x14x256x1x1xf32>
    %collapsed_164 = tensor.collapse_shape %378 [[0], [1], [2], [3, 4, 5]] : tensor<1x14x14x256x1x1xf32> into tensor<1x14x14x256xf32>
    %padded_165 = tensor.pad %246 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<256x3x3x256xf32> to tensor<256x4x4x256xf32>
    %expanded_166 = tensor.expand_shape %padded_165 [[0], [1, 2], [3, 4], [5]] : tensor<256x4x4x256xf32> into tensor<256x2x2x2x2x256xf32>
    %379 = tensor.empty() : tensor<2x2x256x2x2x256xf32>
    %380 = linalg.generic {indexing_maps = [#map17, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_166 : tensor<256x2x2x2x2x256xf32>) outs(%379 : tensor<2x2x256x2x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x256x2x2x256xf32>
    %collapsed_167 = tensor.collapse_shape %380 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x256x2x2x256xf32> into tensor<1024x2x2x256xf32>
    %381 = tensor.empty() : tensor<1024x2x2x256xf32>
    %382 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%381 : tensor<1024x2x2x256xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = arith.subi %c1, %617 : index
      %619 = linalg.index 2 : index
      %620 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_167[%616, %618, %619, %620] : tensor<1024x2x2x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<1024x2x2x256xf32>
    %padded_168 = tensor.pad %collapsed_164 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %383 = tensor.empty() : tensor<2x2x256x1024xf32>
    %384 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%383 : tensor<2x2x256x1024xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = linalg.index 2 : index
      %619 = linalg.index 3 : index
      %620 = arith.subi %c1, %617 : index
      %extracted = tensor.extract %382[%619, %616, %620, %618] : tensor<1024x2x2x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<2x2x256x1024xf32>
    %385 = tensor.empty() : tensor<1x15x15x1024xf32>
    %386 = linalg.fill ins(%cst : f32) outs(%385 : tensor<1x15x15x1024xf32>) -> tensor<1x15x15x1024xf32>
    %387 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_168, %384 : tensor<1x16x16x256xf32>, tensor<2x2x256x1024xf32>) outs(%386 : tensor<1x15x15x1024xf32>) -> tensor<1x15x15x1024xf32>
    %expanded_169 = tensor.expand_shape %387 [[0], [1], [2], [3, 4, 5]] : tensor<1x15x15x1024xf32> into tensor<1x15x15x2x2x256xf32>
    %388 = tensor.empty() : tensor<1x15x2x15x2x256xf32>
    %389 = linalg.generic {indexing_maps = [#map18, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_169 : tensor<1x15x15x2x2x256xf32>) outs(%388 : tensor<1x15x2x15x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %616 = arith.addf %in, %cst : f32
      linalg.yield %616 : f32
    } -> tensor<1x15x2x15x2x256xf32>
    %collapsed_170 = tensor.collapse_shape %389 [[0], [1, 2], [3, 4], [5]] : tensor<1x15x2x15x2x256xf32> into tensor<1x30x30x256xf32>
    %extracted_slice_171 = tensor.extract_slice %collapsed_170[0, 1, 1, 0] [1, 28, 28, 256] [1, 1, 1, 1] : tensor<1x30x30x256xf32> to tensor<1x28x28x256xf32>
    %expanded_172 = tensor.expand_shape %77 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x28x28xf32> into tensor<1x256x1x1x28x28xf32>
    %expanded_173 = tensor.expand_shape %78 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x28x28xf32> into tensor<1x256x1x1x28x28xf32>
    %expanded_174 = tensor.expand_shape %extracted_slice_171 [[0], [1], [2], [3, 4, 5]] : tensor<1x28x28x256xf32> into tensor<1x28x28x256x1x1xf32>
    %expanded_175 = tensor.expand_shape %237 [[0, 1, 2, 3]] : tensor<256xf32> into tensor<1x256x1x1xf32>
    %390 = tensor.empty() : tensor<1x28x28x256x1x1xf32>
    %391 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map4, #map9, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%36, %21, %expanded_172, %expanded_173, %expanded_174, %expanded_175 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>, tensor<1x256x1x1x28x28xf32>, tensor<1x256x1x1x28x28xf32>, tensor<1x28x28x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%390 : tensor<1x28x28x256x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x28x28x256x1x1xf32>
    %collapsed_176 = tensor.collapse_shape %391 [[0, 1, 2], [3, 4, 5]] : tensor<1x28x28x256x1x1xf32> into tensor<784x256xf32>
    %392 = tensor.empty() : tensor<784x512xf32>
    %393 = linalg.fill ins(%cst : f32) outs(%392 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %394 = tensor.empty() : tensor<256x512x1x1xf32>
    %395 = linalg.generic {indexing_maps = [#map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<256x1x1x512xf32>) outs(%394 : tensor<256x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x512x1x1xf32>
    %collapsed_177 = tensor.collapse_shape %395 [[0], [1, 2, 3]] : tensor<256x512x1x1xf32> into tensor<256x512xf32>
    %396 = linalg.matmul ins(%collapsed_176, %collapsed_177 : tensor<784x256xf32>, tensor<256x512xf32>) outs(%393 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_178 = tensor.expand_shape %396 [[0, 1, 2, 3, 4], [5]] : tensor<784x512xf32> into tensor<1x14x2x14x2x512xf32>
    %expanded_179 = tensor.expand_shape %75 [[0], [1], [2, 3], [4, 5]] : tensor<1x512x28x28xf32> into tensor<1x512x14x2x14x2xf32>
    %expanded_180 = tensor.expand_shape %76 [[0], [1], [2, 3], [4, 5]] : tensor<1x512x28x28xf32> into tensor<1x512x14x2x14x2xf32>
    %397 = tensor.empty() : tensor<1x512x14x2x14x2xf32>
    %398 = linalg.generic {indexing_maps = [#map4, #map4, #map19, #map20, #map21, #map22, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_179, %expanded_180, %expanded_156, %expanded_157, %144, %expanded_178 : tensor<1x512x14x2x14x2xf32>, tensor<1x512x14x2x14x2xf32>, tensor<1x14x14x2x2x512xf32>, tensor<1x512xf32>, tensor<512xf32>, tensor<1x14x2x14x2x512xf32>) outs(%397 : tensor<1x512x14x2x14x2xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_330, %cst : f32
      %617 = arith.addf %616, %in_331 : f32
      %618 = arith.addf %in_332, %in_333 : f32
      %619 = arith.addf %617, %618 : f32
      %620 = arith.cmpf oeq, %in, %in_329 : f32
      %621 = arith.select %620, %619, %cst : f32
      linalg.yield %621 : f32
    } -> tensor<1x512x14x2x14x2xf32>
    %collapsed_181 = tensor.collapse_shape %398 [[0], [1], [2, 3], [4, 5]] : tensor<1x512x14x2x14x2xf32> into tensor<1x512x28x28xf32>
    %expanded_182 = tensor.expand_shape %collapsed_181 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x28x28xf32> into tensor<1x512x1x1x28x28xf32>
    %399 = tensor.empty() : tensor<1x28x28x512x1x1xf32>
    %400 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%56, %15, %expanded_182 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>, tensor<1x512x1x1x28x28xf32>) outs(%399 : tensor<1x28x28x512x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %616 = arith.mulf %in_329, %in_330 : f32
      %617 = arith.mulf %in, %616 : f32
      linalg.yield %617 : f32
    } -> tensor<1x28x28x512x1x1xf32>
    %401 = tensor.empty() : tensor<128x1x1x512xf32>
    %402 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<512x1x1x128xf32>) outs(%401 : tensor<128x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x1x1x512xf32>
    %403 = tensor.empty() : tensor<128xf32>
    %collapsed_183 = tensor.collapse_shape %400 [[0, 1, 2], [3, 4, 5]] : tensor<1x28x28x512x1x1xf32> into tensor<784x512xf32>
    %404 = tensor.empty() : tensor<784x128xf32>
    %405 = linalg.fill ins(%cst : f32) outs(%404 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %406 = tensor.empty() : tensor<512x128x1x1xf32>
    %407 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%402 : tensor<128x1x1x512xf32>) outs(%406 : tensor<512x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x128x1x1xf32>
    %collapsed_184 = tensor.collapse_shape %407 [[0], [1, 2, 3]] : tensor<512x128x1x1xf32> into tensor<512x128xf32>
    %408 = linalg.matmul ins(%collapsed_183, %collapsed_184 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%405 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_185 = tensor.expand_shape %73 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x28x28xf32> into tensor<1x128x1x1x28x28xf32>
    %expanded_186 = tensor.expand_shape %74 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x28x28xf32> into tensor<1x128x1x1x28x28xf32>
    %expanded_187 = tensor.expand_shape %403 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_188 = tensor.expand_shape %408 [[0, 1, 2], [3, 4, 5]] : tensor<784x128xf32> into tensor<1x28x28x128x1x1xf32>
    %409 = tensor.empty() : tensor<1x28x28x128x1x1xf32>
    %410 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%51, %18, %expanded_185, %expanded_186, %expanded_187, %expanded_188 : tensor<1x128x1x1xf32>, tensor<1x128x1x1xf32>, tensor<1x128x1x1x28x28xf32>, tensor<1x128x1x1x28x28xf32>, tensor<128x1x1xf32>, tensor<1x28x28x128x1x1xf32>) outs(%409 : tensor<1x28x28x128x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x28x28x128x1x1xf32>
    %collapsed_189 = tensor.collapse_shape %410 [[0], [1], [2], [3, 4, 5]] : tensor<1x28x28x128x1x1xf32> into tensor<1x28x28x128xf32>
    %411 = tensor.empty() : tensor<128x3x3x128xf32>
    %412 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17 : tensor<128x3x3x128xf32>) outs(%411 : tensor<128x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x128xf32>
    %413 = tensor.empty() : tensor<128x3x3x128xf32>
    %414 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%413 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = arith.subi %c2, %617 : index
      %619 = linalg.index 2 : index
      %620 = linalg.index 3 : index
      %extracted = tensor.extract %412[%616, %618, %619, %620] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %padded_190 = tensor.pad %collapsed_189 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %415 = tensor.empty() : tensor<3x3x128x128xf32>
    %416 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%415 : tensor<3x3x128x128xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = linalg.index 2 : index
      %619 = linalg.index 3 : index
      %620 = arith.subi %c2, %617 : index
      %extracted = tensor.extract %414[%619, %616, %620, %618] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x128x128xf32>
    %417 = tensor.empty() : tensor<1x28x28x128xf32>
    %418 = linalg.fill ins(%cst : f32) outs(%417 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %419 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_190, %416 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%418 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %expanded_191 = tensor.expand_shape %71 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x28x28xf32> into tensor<1x128x1x1x28x28xf32>
    %expanded_192 = tensor.expand_shape %72 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x28x28xf32> into tensor<1x128x1x1x28x28xf32>
    %expanded_193 = tensor.expand_shape %403 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_194 = tensor.expand_shape %419 [[0], [1], [2], [3, 4, 5]] : tensor<1x28x28x128xf32> into tensor<1x28x28x128x1x1xf32>
    %420 = tensor.empty() : tensor<1x28x28x128x1x1xf32>
    %421 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%51, %18, %expanded_191, %expanded_192, %expanded_193, %expanded_194 : tensor<1x128x1x1xf32>, tensor<1x128x1x1xf32>, tensor<1x128x1x1x28x28xf32>, tensor<1x128x1x1x28x28xf32>, tensor<128x1x1xf32>, tensor<1x28x28x128x1x1xf32>) outs(%420 : tensor<1x28x28x128x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x28x28x128x1x1xf32>
    %422 = tensor.empty() : tensor<512x1x1x128xf32>
    %423 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<128x1x1x512xf32>) outs(%422 : tensor<512x1x1x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1x1x128xf32>
    %collapsed_195 = tensor.collapse_shape %421 [[0, 1, 2], [3, 4, 5]] : tensor<1x28x28x128x1x1xf32> into tensor<784x128xf32>
    %424 = tensor.empty() : tensor<784x512xf32>
    %425 = linalg.fill ins(%cst : f32) outs(%424 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %426 = tensor.empty() : tensor<128x512x1x1xf32>
    %427 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%423 : tensor<512x1x1x128xf32>) outs(%426 : tensor<128x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x512x1x1xf32>
    %collapsed_196 = tensor.collapse_shape %427 [[0], [1, 2, 3]] : tensor<128x512x1x1xf32> into tensor<128x512xf32>
    %428 = linalg.matmul ins(%collapsed_195, %collapsed_196 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%425 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_197 = tensor.expand_shape %428 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %429 = tensor.empty() : tensor<1x512x28x28xf32>
    %430 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map14, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %70, %collapsed_181, %144, %expanded_197 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%429 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %616 = arith.addf %in_331, %in_332 : f32
      %617 = arith.addf %in_330, %616 : f32
      %618 = arith.cmpf oeq, %in, %in_329 : f32
      %619 = arith.select %618, %617, %cst : f32
      linalg.yield %619 : f32
    } -> tensor<1x512x28x28xf32>
    %expanded_198 = tensor.expand_shape %430 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x28x28xf32> into tensor<1x512x1x1x28x28xf32>
    %431 = tensor.empty() : tensor<1x28x28x512x1x1xf32>
    %432 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%56, %15, %expanded_198 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>, tensor<1x512x1x1x28x28xf32>) outs(%431 : tensor<1x28x28x512x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %616 = arith.mulf %in_329, %in_330 : f32
      %617 = arith.mulf %in, %616 : f32
      linalg.yield %617 : f32
    } -> tensor<1x28x28x512x1x1xf32>
    %collapsed_199 = tensor.collapse_shape %432 [[0, 1, 2], [3, 4, 5]] : tensor<1x28x28x512x1x1xf32> into tensor<784x512xf32>
    %433 = tensor.empty() : tensor<784x128xf32>
    %434 = linalg.fill ins(%cst : f32) outs(%433 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %435 = tensor.empty() : tensor<512x128x1x1xf32>
    %436 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%402 : tensor<128x1x1x512xf32>) outs(%435 : tensor<512x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x128x1x1xf32>
    %collapsed_200 = tensor.collapse_shape %436 [[0], [1, 2, 3]] : tensor<512x128x1x1xf32> into tensor<512x128xf32>
    %437 = linalg.matmul ins(%collapsed_199, %collapsed_200 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%434 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_201 = tensor.expand_shape %67 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x28x28xf32> into tensor<1x128x1x1x28x28xf32>
    %expanded_202 = tensor.expand_shape %68 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x28x28xf32> into tensor<1x128x1x1x28x28xf32>
    %expanded_203 = tensor.expand_shape %403 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_204 = tensor.expand_shape %437 [[0, 1, 2], [3, 4, 5]] : tensor<784x128xf32> into tensor<1x28x28x128x1x1xf32>
    %438 = tensor.empty() : tensor<1x28x28x128x1x1xf32>
    %439 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%51, %18, %expanded_201, %expanded_202, %expanded_203, %expanded_204 : tensor<1x128x1x1xf32>, tensor<1x128x1x1xf32>, tensor<1x128x1x1x28x28xf32>, tensor<1x128x1x1x28x28xf32>, tensor<128x1x1xf32>, tensor<1x28x28x128x1x1xf32>) outs(%438 : tensor<1x28x28x128x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x28x28x128x1x1xf32>
    %collapsed_205 = tensor.collapse_shape %439 [[0], [1], [2], [3, 4, 5]] : tensor<1x28x28x128x1x1xf32> into tensor<1x28x28x128xf32>
    %440 = tensor.empty() : tensor<128x3x3x128xf32>
    %441 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%440 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = arith.subi %c2, %617 : index
      %619 = linalg.index 2 : index
      %620 = linalg.index 3 : index
      %extracted = tensor.extract %412[%616, %618, %619, %620] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %padded_206 = tensor.pad %collapsed_205 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %442 = tensor.empty() : tensor<3x3x128x128xf32>
    %443 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%442 : tensor<3x3x128x128xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = linalg.index 2 : index
      %619 = linalg.index 3 : index
      %620 = arith.subi %c2, %617 : index
      %extracted = tensor.extract %441[%619, %616, %620, %618] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x128x128xf32>
    %444 = tensor.empty() : tensor<1x28x28x128xf32>
    %445 = linalg.fill ins(%cst : f32) outs(%444 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %446 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_206, %443 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%445 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %expanded_207 = tensor.expand_shape %65 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x28x28xf32> into tensor<1x128x1x1x28x28xf32>
    %expanded_208 = tensor.expand_shape %66 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x28x28xf32> into tensor<1x128x1x1x28x28xf32>
    %expanded_209 = tensor.expand_shape %403 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_210 = tensor.expand_shape %446 [[0], [1], [2], [3, 4, 5]] : tensor<1x28x28x128xf32> into tensor<1x28x28x128x1x1xf32>
    %447 = tensor.empty() : tensor<1x28x28x128x1x1xf32>
    %448 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%51, %18, %expanded_207, %expanded_208, %expanded_209, %expanded_210 : tensor<1x128x1x1xf32>, tensor<1x128x1x1xf32>, tensor<1x128x1x1x28x28xf32>, tensor<1x128x1x1x28x28xf32>, tensor<128x1x1xf32>, tensor<1x28x28x128x1x1xf32>) outs(%447 : tensor<1x28x28x128x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x28x28x128x1x1xf32>
    %collapsed_211 = tensor.collapse_shape %448 [[0, 1, 2], [3, 4, 5]] : tensor<1x28x28x128x1x1xf32> into tensor<784x128xf32>
    %449 = tensor.empty() : tensor<784x512xf32>
    %450 = linalg.fill ins(%cst : f32) outs(%449 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %451 = tensor.empty() : tensor<128x512x1x1xf32>
    %452 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%423 : tensor<512x1x1x128xf32>) outs(%451 : tensor<128x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x512x1x1xf32>
    %collapsed_212 = tensor.collapse_shape %452 [[0], [1, 2, 3]] : tensor<128x512x1x1xf32> into tensor<128x512xf32>
    %453 = linalg.matmul ins(%collapsed_211, %collapsed_212 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%450 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_213 = tensor.expand_shape %453 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %454 = tensor.empty() : tensor<1x512x28x28xf32>
    %455 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map14, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %64, %430, %144, %expanded_213 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%454 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %616 = arith.addf %in_331, %in_332 : f32
      %617 = arith.addf %in_330, %616 : f32
      %618 = arith.cmpf oeq, %in, %in_329 : f32
      %619 = arith.select %618, %617, %cst : f32
      linalg.yield %619 : f32
    } -> tensor<1x512x28x28xf32>
    %expanded_214 = tensor.expand_shape %455 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x28x28xf32> into tensor<1x512x1x1x28x28xf32>
    %456 = tensor.empty() : tensor<1x28x28x512x1x1xf32>
    %457 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%56, %15, %expanded_214 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>, tensor<1x512x1x1x28x28xf32>) outs(%456 : tensor<1x28x28x512x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %616 = arith.mulf %in_329, %in_330 : f32
      %617 = arith.mulf %in, %616 : f32
      linalg.yield %617 : f32
    } -> tensor<1x28x28x512x1x1xf32>
    %collapsed_215 = tensor.collapse_shape %457 [[0, 1, 2], [3, 4, 5]] : tensor<1x28x28x512x1x1xf32> into tensor<784x512xf32>
    %458 = tensor.empty() : tensor<784x128xf32>
    %459 = linalg.fill ins(%cst : f32) outs(%458 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %460 = tensor.empty() : tensor<512x128x1x1xf32>
    %461 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%402 : tensor<128x1x1x512xf32>) outs(%460 : tensor<512x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x128x1x1xf32>
    %collapsed_216 = tensor.collapse_shape %461 [[0], [1, 2, 3]] : tensor<512x128x1x1xf32> into tensor<512x128xf32>
    %462 = linalg.matmul ins(%collapsed_215, %collapsed_216 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%459 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_217 = tensor.expand_shape %61 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x28x28xf32> into tensor<1x128x1x1x28x28xf32>
    %expanded_218 = tensor.expand_shape %62 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x28x28xf32> into tensor<1x128x1x1x28x28xf32>
    %expanded_219 = tensor.expand_shape %403 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_220 = tensor.expand_shape %462 [[0, 1, 2], [3, 4, 5]] : tensor<784x128xf32> into tensor<1x28x28x128x1x1xf32>
    %463 = tensor.empty() : tensor<1x28x28x128x1x1xf32>
    %464 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%51, %18, %expanded_217, %expanded_218, %expanded_219, %expanded_220 : tensor<1x128x1x1xf32>, tensor<1x128x1x1xf32>, tensor<1x128x1x1x28x28xf32>, tensor<1x128x1x1x28x28xf32>, tensor<128x1x1xf32>, tensor<1x28x28x128x1x1xf32>) outs(%463 : tensor<1x28x28x128x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x28x28x128x1x1xf32>
    %collapsed_221 = tensor.collapse_shape %464 [[0], [1], [2], [3, 4, 5]] : tensor<1x28x28x128x1x1xf32> into tensor<1x28x28x128xf32>
    %465 = tensor.empty() : tensor<128x3x3x128xf32>
    %466 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%465 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = arith.subi %c2, %617 : index
      %619 = linalg.index 2 : index
      %620 = linalg.index 3 : index
      %extracted = tensor.extract %412[%616, %618, %619, %620] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %padded_222 = tensor.pad %collapsed_221 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %467 = tensor.empty() : tensor<3x3x128x128xf32>
    %468 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%467 : tensor<3x3x128x128xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = linalg.index 2 : index
      %619 = linalg.index 3 : index
      %620 = arith.subi %c2, %617 : index
      %extracted = tensor.extract %466[%619, %616, %620, %618] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x128x128xf32>
    %469 = tensor.empty() : tensor<1x28x28x128xf32>
    %470 = linalg.fill ins(%cst : f32) outs(%469 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %471 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_222, %468 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%470 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %expanded_223 = tensor.expand_shape %59 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x28x28xf32> into tensor<1x128x1x1x28x28xf32>
    %expanded_224 = tensor.expand_shape %60 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x28x28xf32> into tensor<1x128x1x1x28x28xf32>
    %expanded_225 = tensor.expand_shape %403 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_226 = tensor.expand_shape %471 [[0], [1], [2], [3, 4, 5]] : tensor<1x28x28x128xf32> into tensor<1x28x28x128x1x1xf32>
    %472 = tensor.empty() : tensor<1x28x28x128x1x1xf32>
    %473 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%51, %18, %expanded_223, %expanded_224, %expanded_225, %expanded_226 : tensor<1x128x1x1xf32>, tensor<1x128x1x1xf32>, tensor<1x128x1x1x28x28xf32>, tensor<1x128x1x1x28x28xf32>, tensor<128x1x1xf32>, tensor<1x28x28x128x1x1xf32>) outs(%472 : tensor<1x28x28x128x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x28x28x128x1x1xf32>
    %collapsed_227 = tensor.collapse_shape %473 [[0, 1, 2], [3, 4, 5]] : tensor<1x28x28x128x1x1xf32> into tensor<784x128xf32>
    %474 = tensor.empty() : tensor<784x512xf32>
    %475 = linalg.fill ins(%cst : f32) outs(%474 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %476 = tensor.empty() : tensor<128x512x1x1xf32>
    %477 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%423 : tensor<512x1x1x128xf32>) outs(%476 : tensor<128x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x512x1x1xf32>
    %collapsed_228 = tensor.collapse_shape %477 [[0], [1, 2, 3]] : tensor<128x512x1x1xf32> into tensor<128x512xf32>
    %478 = linalg.matmul ins(%collapsed_227, %collapsed_228 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%475 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %expanded_229 = tensor.expand_shape %57 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x28x28xf32> into tensor<1x512x1x1x28x28xf32>
    %expanded_230 = tensor.expand_shape %58 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x28x28xf32> into tensor<1x512x1x1x28x28xf32>
    %expanded_231 = tensor.expand_shape %455 [[0], [1, 2, 3], [4], [5]] : tensor<1x512x28x28xf32> into tensor<1x512x1x1x28x28xf32>
    %expanded_232 = tensor.expand_shape %144 [[0, 1, 2]] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_233 = tensor.expand_shape %478 [[0, 1, 2], [3, 4, 5]] : tensor<784x512xf32> into tensor<1x28x28x512x1x1xf32>
    %479 = tensor.empty() : tensor<1x28x28x512x1x1xf32>
    %480 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%56, %15, %expanded_229, %expanded_230, %expanded_231, %expanded_232, %expanded_233 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>, tensor<1x512x1x1x28x28xf32>, tensor<1x512x1x1x28x28xf32>, tensor<1x512x1x1x28x28xf32>, tensor<512x1x1xf32>, tensor<1x28x28x512x1x1xf32>) outs(%479 : tensor<1x28x28x512x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %in_334: f32, %out: f32):
      %616 = arith.addf %in_333, %in_334 : f32
      %617 = arith.addf %in_332, %616 : f32
      %618 = arith.cmpf oeq, %in_330, %in_331 : f32
      %619 = arith.select %618, %617, %cst : f32
      %620 = arith.mulf %in_329, %619 : f32
      %621 = arith.mulf %in, %620 : f32
      linalg.yield %621 : f32
    } -> tensor<1x28x28x512x1x1xf32>
    %481 = tensor.empty() : tensor<256x1x1x512xf32>
    %482 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<512x1x1x256xf32>) outs(%481 : tensor<256x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1x1x512xf32>
    %padded_234 = tensor.pad %482 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<256x1x1x512xf32> to tensor<256x2x2x512xf32>
    %expanded_235 = tensor.expand_shape %padded_234 [[0, 1], [2, 3], [4], [5]] : tensor<256x2x2x512xf32> into tensor<256x1x2x1x2x512xf32>
    %collapsed_236 = tensor.collapse_shape %480 [[0, 1, 2], [3, 4, 5]] : tensor<1x28x28x512x1x1xf32> into tensor<784x512xf32>
    %483 = tensor.empty() : tensor<784x1024xf32>
    %484 = linalg.fill ins(%cst : f32) outs(%483 : tensor<784x1024xf32>) -> tensor<784x1024xf32>
    %485 = tensor.empty() : tensor<512x2x2x256x1x1xf32>
    %486 = linalg.generic {indexing_maps = [#map16, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_235 : tensor<256x1x2x1x2x512xf32>) outs(%485 : tensor<512x2x2x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2x2x256x1x1xf32>
    %collapsed_237 = tensor.collapse_shape %486 [[0], [1, 2, 3, 4, 5]] : tensor<512x2x2x256x1x1xf32> into tensor<512x1024xf32>
    %487 = linalg.matmul ins(%collapsed_236, %collapsed_237 : tensor<784x512xf32>, tensor<512x1024xf32>) outs(%484 : tensor<784x1024xf32>) -> tensor<784x1024xf32>
    %expanded_238 = tensor.expand_shape %487 [[0, 1, 2], [3, 4, 5]] : tensor<784x1024xf32> into tensor<1x28x28x2x2x256xf32>
    %expanded_239 = tensor.expand_shape %237 [[0, 1]] : tensor<256xf32> into tensor<1x256xf32>
    %collapsed_240 = tensor.collapse_shape %480 [[0, 1, 2], [3, 4, 5]] : tensor<1x28x28x512x1x1xf32> into tensor<784x512xf32>
    %488 = tensor.empty() : tensor<784x128xf32>
    %489 = linalg.fill ins(%cst : f32) outs(%488 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %490 = tensor.empty() : tensor<512x128x1x1xf32>
    %491 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%402 : tensor<128x1x1x512xf32>) outs(%490 : tensor<512x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x128x1x1xf32>
    %collapsed_241 = tensor.collapse_shape %491 [[0], [1, 2, 3]] : tensor<512x128x1x1xf32> into tensor<512x128xf32>
    %492 = linalg.matmul ins(%collapsed_240, %collapsed_241 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%489 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %expanded_242 = tensor.expand_shape %54 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x28x28xf32> into tensor<1x128x1x1x28x28xf32>
    %expanded_243 = tensor.expand_shape %55 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x28x28xf32> into tensor<1x128x1x1x28x28xf32>
    %expanded_244 = tensor.expand_shape %403 [[0, 1, 2]] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_245 = tensor.expand_shape %492 [[0, 1, 2], [3, 4, 5]] : tensor<784x128xf32> into tensor<1x28x28x128x1x1xf32>
    %493 = tensor.empty() : tensor<1x28x28x128x1x1xf32>
    %494 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%51, %18, %expanded_242, %expanded_243, %expanded_244, %expanded_245 : tensor<1x128x1x1xf32>, tensor<1x128x1x1xf32>, tensor<1x128x1x1x28x28xf32>, tensor<1x128x1x1x28x28xf32>, tensor<128x1x1xf32>, tensor<1x28x28x128x1x1xf32>) outs(%493 : tensor<1x28x28x128x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x28x28x128x1x1xf32>
    %collapsed_246 = tensor.collapse_shape %494 [[0], [1], [2], [3, 4, 5]] : tensor<1x28x28x128x1x1xf32> into tensor<1x28x28x128xf32>
    %padded_247 = tensor.pad %412 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<128x3x3x128xf32> to tensor<128x4x4x128xf32>
    %expanded_248 = tensor.expand_shape %padded_247 [[0], [1, 2], [3, 4], [5]] : tensor<128x4x4x128xf32> into tensor<128x2x2x2x2x128xf32>
    %495 = tensor.empty() : tensor<2x2x128x2x2x128xf32>
    %496 = linalg.generic {indexing_maps = [#map17, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_248 : tensor<128x2x2x2x2x128xf32>) outs(%495 : tensor<2x2x128x2x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x128x2x2x128xf32>
    %collapsed_249 = tensor.collapse_shape %496 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x128x2x2x128xf32> into tensor<512x2x2x128xf32>
    %497 = tensor.empty() : tensor<512x2x2x128xf32>
    %498 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%497 : tensor<512x2x2x128xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = arith.subi %c1, %617 : index
      %619 = linalg.index 2 : index
      %620 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_249[%616, %618, %619, %620] : tensor<512x2x2x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x2x2x128xf32>
    %padded_250 = tensor.pad %collapsed_246 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %499 = tensor.empty() : tensor<2x2x128x512xf32>
    %500 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%499 : tensor<2x2x128x512xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = linalg.index 2 : index
      %619 = linalg.index 3 : index
      %620 = arith.subi %c1, %617 : index
      %extracted = tensor.extract %498[%619, %616, %620, %618] : tensor<512x2x2x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<2x2x128x512xf32>
    %501 = tensor.empty() : tensor<1x29x29x512xf32>
    %502 = linalg.fill ins(%cst : f32) outs(%501 : tensor<1x29x29x512xf32>) -> tensor<1x29x29x512xf32>
    %503 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_250, %500 : tensor<1x30x30x128xf32>, tensor<2x2x128x512xf32>) outs(%502 : tensor<1x29x29x512xf32>) -> tensor<1x29x29x512xf32>
    %expanded_251 = tensor.expand_shape %503 [[0], [1], [2], [3, 4, 5]] : tensor<1x29x29x512xf32> into tensor<1x29x29x2x2x128xf32>
    %504 = tensor.empty() : tensor<1x29x2x29x2x128xf32>
    %505 = linalg.generic {indexing_maps = [#map18, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_251 : tensor<1x29x29x2x2x128xf32>) outs(%504 : tensor<1x29x2x29x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %616 = arith.addf %in, %cst : f32
      linalg.yield %616 : f32
    } -> tensor<1x29x2x29x2x128xf32>
    %collapsed_252 = tensor.collapse_shape %505 [[0], [1, 2], [3, 4], [5]] : tensor<1x29x2x29x2x128xf32> into tensor<1x58x58x128xf32>
    %extracted_slice_253 = tensor.extract_slice %collapsed_252[0, 1, 1, 0] [1, 56, 56, 128] [1, 1, 1, 1] : tensor<1x58x58x128xf32> to tensor<1x56x56x128xf32>
    %expanded_254 = tensor.expand_shape %52 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x56x56xf32> into tensor<1x128x1x1x56x56xf32>
    %expanded_255 = tensor.expand_shape %53 [[0], [1, 2, 3], [4], [5]] : tensor<1x128x56x56xf32> into tensor<1x128x1x1x56x56xf32>
    %expanded_256 = tensor.expand_shape %extracted_slice_253 [[0], [1], [2], [3, 4, 5]] : tensor<1x56x56x128xf32> into tensor<1x56x56x128x1x1xf32>
    %expanded_257 = tensor.expand_shape %403 [[0, 1, 2, 3]] : tensor<128xf32> into tensor<1x128x1x1xf32>
    %506 = tensor.empty() : tensor<1x56x56x128x1x1xf32>
    %507 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map4, #map9, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%51, %18, %expanded_254, %expanded_255, %expanded_256, %expanded_257 : tensor<1x128x1x1xf32>, tensor<1x128x1x1xf32>, tensor<1x128x1x1x56x56xf32>, tensor<1x128x1x1x56x56xf32>, tensor<1x56x56x128x1x1xf32>, tensor<1x128x1x1xf32>) outs(%506 : tensor<1x56x56x128x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x56x56x128x1x1xf32>
    %collapsed_258 = tensor.collapse_shape %507 [[0, 1, 2], [3, 4, 5]] : tensor<1x56x56x128x1x1xf32> into tensor<3136x128xf32>
    %508 = tensor.empty() : tensor<3136x256xf32>
    %509 = linalg.fill ins(%cst : f32) outs(%508 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %510 = tensor.empty() : tensor<128x256x1x1xf32>
    %511 = linalg.generic {indexing_maps = [#map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<128x1x1x256xf32>) outs(%510 : tensor<128x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x256x1x1xf32>
    %collapsed_259 = tensor.collapse_shape %511 [[0], [1, 2, 3]] : tensor<128x256x1x1xf32> into tensor<128x256xf32>
    %512 = linalg.matmul ins(%collapsed_258, %collapsed_259 : tensor<3136x128xf32>, tensor<128x256xf32>) outs(%509 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_260 = tensor.expand_shape %512 [[0, 1, 2, 3, 4], [5]] : tensor<3136x256xf32> into tensor<1x28x2x28x2x256xf32>
    %expanded_261 = tensor.expand_shape %49 [[0], [1], [2, 3], [4, 5]] : tensor<1x256x56x56xf32> into tensor<1x256x28x2x28x2xf32>
    %expanded_262 = tensor.expand_shape %50 [[0], [1], [2, 3], [4, 5]] : tensor<1x256x56x56xf32> into tensor<1x256x28x2x28x2xf32>
    %513 = tensor.empty() : tensor<1x256x28x2x28x2xf32>
    %514 = linalg.generic {indexing_maps = [#map4, #map4, #map19, #map20, #map21, #map22, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_261, %expanded_262, %expanded_238, %expanded_239, %237, %expanded_260 : tensor<1x256x28x2x28x2xf32>, tensor<1x256x28x2x28x2xf32>, tensor<1x28x28x2x2x256xf32>, tensor<1x256xf32>, tensor<256xf32>, tensor<1x28x2x28x2x256xf32>) outs(%513 : tensor<1x256x28x2x28x2xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_330, %cst : f32
      %617 = arith.addf %616, %in_331 : f32
      %618 = arith.addf %in_332, %in_333 : f32
      %619 = arith.addf %617, %618 : f32
      %620 = arith.cmpf oeq, %in, %in_329 : f32
      %621 = arith.select %620, %619, %cst : f32
      linalg.yield %621 : f32
    } -> tensor<1x256x28x2x28x2xf32>
    %collapsed_263 = tensor.collapse_shape %514 [[0], [1], [2, 3], [4, 5]] : tensor<1x256x28x2x28x2xf32> into tensor<1x256x56x56xf32>
    %expanded_264 = tensor.expand_shape %collapsed_263 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x56x56xf32> into tensor<1x256x1x1x56x56xf32>
    %515 = tensor.empty() : tensor<1x56x56x256x1x1xf32>
    %516 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%36, %21, %expanded_264 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>, tensor<1x256x1x1x56x56xf32>) outs(%515 : tensor<1x56x56x256x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %616 = arith.mulf %in_329, %in_330 : f32
      %617 = arith.mulf %in, %616 : f32
      linalg.yield %617 : f32
    } -> tensor<1x56x56x256x1x1xf32>
    %517 = tensor.empty() : tensor<64x1x1x256xf32>
    %518 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<256x1x1x64xf32>) outs(%517 : tensor<64x1x1x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x1x1x256xf32>
    %519 = tensor.empty() : tensor<64xf32>
    %collapsed_265 = tensor.collapse_shape %516 [[0, 1, 2], [3, 4, 5]] : tensor<1x56x56x256x1x1xf32> into tensor<3136x256xf32>
    %520 = tensor.empty() : tensor<3136x64xf32>
    %521 = linalg.fill ins(%cst : f32) outs(%520 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %522 = tensor.empty() : tensor<256x64x1x1xf32>
    %523 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%518 : tensor<64x1x1x256xf32>) outs(%522 : tensor<256x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x64x1x1xf32>
    %collapsed_266 = tensor.collapse_shape %523 [[0], [1, 2, 3]] : tensor<256x64x1x1xf32> into tensor<256x64xf32>
    %524 = linalg.matmul ins(%collapsed_265, %collapsed_266 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%521 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_267 = tensor.expand_shape %47 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x56x56xf32> into tensor<1x64x1x1x56x56xf32>
    %expanded_268 = tensor.expand_shape %48 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x56x56xf32> into tensor<1x64x1x1x56x56xf32>
    %expanded_269 = tensor.expand_shape %519 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_270 = tensor.expand_shape %524 [[0, 1, 2], [3, 4, 5]] : tensor<3136x64xf32> into tensor<1x56x56x64x1x1xf32>
    %525 = tensor.empty() : tensor<1x56x56x64x1x1xf32>
    %526 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%27, %25, %expanded_267, %expanded_268, %expanded_269, %expanded_270 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>, tensor<1x64x1x1x56x56xf32>, tensor<1x64x1x1x56x56xf32>, tensor<64x1x1xf32>, tensor<1x56x56x64x1x1xf32>) outs(%525 : tensor<1x56x56x64x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x56x56x64x1x1xf32>
    %collapsed_271 = tensor.collapse_shape %526 [[0], [1], [2], [3, 4, 5]] : tensor<1x56x56x64x1x1xf32> into tensor<1x56x56x64xf32>
    %527 = tensor.empty() : tensor<64x3x3x64xf32>
    %528 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<64x3x3x64xf32>) outs(%527 : tensor<64x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x64xf32>
    %529 = tensor.empty() : tensor<64x3x3x64xf32>
    %530 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%529 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = arith.subi %c2, %617 : index
      %619 = linalg.index 2 : index
      %620 = linalg.index 3 : index
      %extracted = tensor.extract %528[%616, %618, %619, %620] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %padded_272 = tensor.pad %collapsed_271 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %531 = tensor.empty() : tensor<3x3x64x64xf32>
    %532 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%531 : tensor<3x3x64x64xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = linalg.index 2 : index
      %619 = linalg.index 3 : index
      %620 = arith.subi %c2, %617 : index
      %extracted = tensor.extract %530[%619, %616, %620, %618] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x64x64xf32>
    %533 = tensor.empty() : tensor<1x56x56x64xf32>
    %534 = linalg.fill ins(%cst : f32) outs(%533 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %535 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_272, %532 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%534 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %expanded_273 = tensor.expand_shape %45 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x56x56xf32> into tensor<1x64x1x1x56x56xf32>
    %expanded_274 = tensor.expand_shape %46 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x56x56xf32> into tensor<1x64x1x1x56x56xf32>
    %expanded_275 = tensor.expand_shape %519 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_276 = tensor.expand_shape %535 [[0], [1], [2], [3, 4, 5]] : tensor<1x56x56x64xf32> into tensor<1x56x56x64x1x1xf32>
    %536 = tensor.empty() : tensor<1x56x56x64x1x1xf32>
    %537 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%27, %25, %expanded_273, %expanded_274, %expanded_275, %expanded_276 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>, tensor<1x64x1x1x56x56xf32>, tensor<1x64x1x1x56x56xf32>, tensor<64x1x1xf32>, tensor<1x56x56x64x1x1xf32>) outs(%536 : tensor<1x56x56x64x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x56x56x64x1x1xf32>
    %538 = tensor.empty() : tensor<256x1x1x64xf32>
    %539 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20 : tensor<64x1x1x256xf32>) outs(%538 : tensor<256x1x1x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1x1x64xf32>
    %collapsed_277 = tensor.collapse_shape %537 [[0, 1, 2], [3, 4, 5]] : tensor<1x56x56x64x1x1xf32> into tensor<3136x64xf32>
    %540 = tensor.empty() : tensor<3136x256xf32>
    %541 = linalg.fill ins(%cst : f32) outs(%540 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %542 = tensor.empty() : tensor<64x256x1x1xf32>
    %543 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%539 : tensor<256x1x1x64xf32>) outs(%542 : tensor<64x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x256x1x1xf32>
    %collapsed_278 = tensor.collapse_shape %543 [[0], [1, 2, 3]] : tensor<64x256x1x1xf32> into tensor<64x256xf32>
    %544 = linalg.matmul ins(%collapsed_277, %collapsed_278 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%541 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_279 = tensor.expand_shape %544 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %545 = tensor.empty() : tensor<1x256x56x56xf32>
    %546 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map14, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %44, %collapsed_263, %237, %expanded_279 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<1x56x56x256xf32>) outs(%545 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %616 = arith.addf %in_331, %in_332 : f32
      %617 = arith.addf %in_330, %616 : f32
      %618 = arith.cmpf oeq, %in, %in_329 : f32
      %619 = arith.select %618, %617, %cst : f32
      linalg.yield %619 : f32
    } -> tensor<1x256x56x56xf32>
    %expanded_280 = tensor.expand_shape %546 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x56x56xf32> into tensor<1x256x1x1x56x56xf32>
    %547 = tensor.empty() : tensor<1x56x56x256x1x1xf32>
    %548 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%36, %21, %expanded_280 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>, tensor<1x256x1x1x56x56xf32>) outs(%547 : tensor<1x56x56x256x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %out: f32):
      %616 = arith.mulf %in_329, %in_330 : f32
      %617 = arith.mulf %in, %616 : f32
      linalg.yield %617 : f32
    } -> tensor<1x56x56x256x1x1xf32>
    %collapsed_281 = tensor.collapse_shape %548 [[0, 1, 2], [3, 4, 5]] : tensor<1x56x56x256x1x1xf32> into tensor<3136x256xf32>
    %549 = tensor.empty() : tensor<3136x64xf32>
    %550 = linalg.fill ins(%cst : f32) outs(%549 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %551 = tensor.empty() : tensor<256x64x1x1xf32>
    %552 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%518 : tensor<64x1x1x256xf32>) outs(%551 : tensor<256x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x64x1x1xf32>
    %collapsed_282 = tensor.collapse_shape %552 [[0], [1, 2, 3]] : tensor<256x64x1x1xf32> into tensor<256x64xf32>
    %553 = linalg.matmul ins(%collapsed_281, %collapsed_282 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%550 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_283 = tensor.expand_shape %41 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x56x56xf32> into tensor<1x64x1x1x56x56xf32>
    %expanded_284 = tensor.expand_shape %42 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x56x56xf32> into tensor<1x64x1x1x56x56xf32>
    %expanded_285 = tensor.expand_shape %519 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_286 = tensor.expand_shape %553 [[0, 1, 2], [3, 4, 5]] : tensor<3136x64xf32> into tensor<1x56x56x64x1x1xf32>
    %554 = tensor.empty() : tensor<1x56x56x64x1x1xf32>
    %555 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%27, %25, %expanded_283, %expanded_284, %expanded_285, %expanded_286 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>, tensor<1x64x1x1x56x56xf32>, tensor<1x64x1x1x56x56xf32>, tensor<64x1x1xf32>, tensor<1x56x56x64x1x1xf32>) outs(%554 : tensor<1x56x56x64x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x56x56x64x1x1xf32>
    %collapsed_287 = tensor.collapse_shape %555 [[0], [1], [2], [3, 4, 5]] : tensor<1x56x56x64x1x1xf32> into tensor<1x56x56x64xf32>
    %556 = tensor.empty() : tensor<64x3x3x64xf32>
    %557 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%556 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = arith.subi %c2, %617 : index
      %619 = linalg.index 2 : index
      %620 = linalg.index 3 : index
      %extracted = tensor.extract %528[%616, %618, %619, %620] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %padded_288 = tensor.pad %collapsed_287 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %558 = tensor.empty() : tensor<3x3x64x64xf32>
    %559 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%558 : tensor<3x3x64x64xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = linalg.index 2 : index
      %619 = linalg.index 3 : index
      %620 = arith.subi %c2, %617 : index
      %extracted = tensor.extract %557[%619, %616, %620, %618] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x64x64xf32>
    %560 = tensor.empty() : tensor<1x56x56x64xf32>
    %561 = linalg.fill ins(%cst : f32) outs(%560 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %562 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_288, %559 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%561 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %expanded_289 = tensor.expand_shape %39 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x56x56xf32> into tensor<1x64x1x1x56x56xf32>
    %expanded_290 = tensor.expand_shape %40 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x56x56xf32> into tensor<1x64x1x1x56x56xf32>
    %expanded_291 = tensor.expand_shape %519 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_292 = tensor.expand_shape %562 [[0], [1], [2], [3, 4, 5]] : tensor<1x56x56x64xf32> into tensor<1x56x56x64x1x1xf32>
    %563 = tensor.empty() : tensor<1x56x56x64x1x1xf32>
    %564 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%27, %25, %expanded_289, %expanded_290, %expanded_291, %expanded_292 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>, tensor<1x64x1x1x56x56xf32>, tensor<1x64x1x1x56x56xf32>, tensor<64x1x1xf32>, tensor<1x56x56x64x1x1xf32>) outs(%563 : tensor<1x56x56x64x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x56x56x64x1x1xf32>
    %collapsed_293 = tensor.collapse_shape %564 [[0, 1, 2], [3, 4, 5]] : tensor<1x56x56x64x1x1xf32> into tensor<3136x64xf32>
    %565 = tensor.empty() : tensor<3136x256xf32>
    %566 = linalg.fill ins(%cst : f32) outs(%565 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %567 = tensor.empty() : tensor<64x256x1x1xf32>
    %568 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%539 : tensor<256x1x1x64xf32>) outs(%567 : tensor<64x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x256x1x1xf32>
    %collapsed_294 = tensor.collapse_shape %568 [[0], [1, 2, 3]] : tensor<64x256x1x1xf32> into tensor<64x256xf32>
    %569 = linalg.matmul ins(%collapsed_293, %collapsed_294 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%566 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %expanded_295 = tensor.expand_shape %37 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x56x56xf32> into tensor<1x256x1x1x56x56xf32>
    %expanded_296 = tensor.expand_shape %38 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x56x56xf32> into tensor<1x256x1x1x56x56xf32>
    %expanded_297 = tensor.expand_shape %546 [[0], [1, 2, 3], [4], [5]] : tensor<1x256x56x56xf32> into tensor<1x256x1x1x56x56xf32>
    %expanded_298 = tensor.expand_shape %237 [[0, 1, 2]] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_299 = tensor.expand_shape %569 [[0, 1, 2], [3, 4, 5]] : tensor<3136x256xf32> into tensor<1x56x56x256x1x1xf32>
    %570 = tensor.empty() : tensor<1x56x56x256x1x1xf32>
    %571 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%36, %21, %expanded_295, %expanded_296, %expanded_297, %expanded_298, %expanded_299 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>, tensor<1x256x1x1x56x56xf32>, tensor<1x256x1x1x56x56xf32>, tensor<1x256x1x1x56x56xf32>, tensor<256x1x1xf32>, tensor<1x56x56x256x1x1xf32>) outs(%570 : tensor<1x56x56x256x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %in_334: f32, %out: f32):
      %616 = arith.addf %in_333, %in_334 : f32
      %617 = arith.addf %in_332, %616 : f32
      %618 = arith.cmpf oeq, %in_330, %in_331 : f32
      %619 = arith.select %618, %617, %cst : f32
      %620 = arith.mulf %in_329, %619 : f32
      %621 = arith.mulf %in, %620 : f32
      linalg.yield %621 : f32
    } -> tensor<1x56x56x256x1x1xf32>
    %collapsed_300 = tensor.collapse_shape %571 [[0, 1, 2], [3, 4, 5]] : tensor<1x56x56x256x1x1xf32> into tensor<3136x256xf32>
    %572 = tensor.empty() : tensor<3136x64xf32>
    %573 = linalg.fill ins(%cst : f32) outs(%572 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %574 = tensor.empty() : tensor<256x64x1x1xf32>
    %575 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%518 : tensor<64x1x1x256xf32>) outs(%574 : tensor<256x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x64x1x1xf32>
    %collapsed_301 = tensor.collapse_shape %575 [[0], [1, 2, 3]] : tensor<256x64x1x1xf32> into tensor<256x64xf32>
    %576 = linalg.matmul ins(%collapsed_300, %collapsed_301 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%573 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_302 = tensor.expand_shape %576 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %577 = tensor.empty() : tensor<1x56x56x64xf32>
    %578 = linalg.generic {indexing_maps = [#map23, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519, %expanded_302 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%577 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_329: f32, %out: f32):
      %616 = arith.addf %in, %in_329 : f32
      linalg.yield %616 : f32
    } -> tensor<1x56x56x64xf32>
    %expanded_303 = tensor.expand_shape %34 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x56x56xf32> into tensor<1x64x1x1x56x56xf32>
    %expanded_304 = tensor.expand_shape %35 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x56x56xf32> into tensor<1x64x1x1x56x56xf32>
    %expanded_305 = tensor.expand_shape %578 [[0], [1], [2], [3, 4, 5]] : tensor<1x56x56x64xf32> into tensor<1x56x56x64x1x1xf32>
    %579 = tensor.empty() : tensor<1x56x56x64x1x1xf32>
    %580 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%27, %25, %expanded_303, %expanded_304, %expanded_305 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>, tensor<1x64x1x1x56x56xf32>, tensor<1x64x1x1x56x56xf32>, tensor<1x56x56x64x1x1xf32>) outs(%579 : tensor<1x56x56x64x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %616 = arith.cmpf oeq, %in_330, %in_331 : f32
      %617 = arith.select %616, %in_332, %cst : f32
      %618 = arith.mulf %in_329, %617 : f32
      %619 = arith.mulf %in, %618 : f32
      linalg.yield %619 : f32
    } -> tensor<1x56x56x64x1x1xf32>
    %collapsed_306 = tensor.collapse_shape %580 [[0], [1], [2], [3, 4, 5]] : tensor<1x56x56x64x1x1xf32> into tensor<1x56x56x64xf32>
    %581 = tensor.empty() : tensor<64x3x3x64xf32>
    %582 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%581 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = arith.subi %c2, %617 : index
      %619 = linalg.index 2 : index
      %620 = linalg.index 3 : index
      %extracted = tensor.extract %528[%616, %618, %619, %620] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %padded_307 = tensor.pad %collapsed_306 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %583 = tensor.empty() : tensor<3x3x64x64xf32>
    %584 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%583 : tensor<3x3x64x64xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = linalg.index 2 : index
      %619 = linalg.index 3 : index
      %620 = arith.subi %c2, %617 : index
      %extracted = tensor.extract %582[%619, %616, %620, %618] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<3x3x64x64xf32>
    %585 = tensor.empty() : tensor<1x56x56x64xf32>
    %586 = linalg.fill ins(%cst : f32) outs(%585 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %587 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_307, %584 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%586 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %expanded_308 = tensor.expand_shape %32 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x56x56xf32> into tensor<1x64x1x1x56x56xf32>
    %expanded_309 = tensor.expand_shape %33 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x56x56xf32> into tensor<1x64x1x1x56x56xf32>
    %expanded_310 = tensor.expand_shape %519 [[0, 1, 2]] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_311 = tensor.expand_shape %587 [[0], [1], [2], [3, 4, 5]] : tensor<1x56x56x64xf32> into tensor<1x56x56x64x1x1xf32>
    %588 = tensor.empty() : tensor<1x56x56x64x1x1xf32>
    %589 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map13, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%27, %25, %expanded_308, %expanded_309, %expanded_310, %expanded_311 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>, tensor<1x64x1x1x56x56xf32>, tensor<1x64x1x1x56x56xf32>, tensor<64x1x1xf32>, tensor<1x56x56x64x1x1xf32>) outs(%588 : tensor<1x56x56x64x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.cmpf oeq, %in_330, %in_331 : f32
      %618 = arith.select %617, %616, %cst : f32
      %619 = arith.mulf %in_329, %618 : f32
      %620 = arith.mulf %in, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x56x56x64x1x1xf32>
    %collapsed_312 = tensor.collapse_shape %589 [[0, 1, 2], [3, 4, 5]] : tensor<1x56x56x64x1x1xf32> into tensor<3136x64xf32>
    %590 = tensor.empty() : tensor<3136x64xf32>
    %591 = linalg.fill ins(%cst : f32) outs(%590 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %592 = tensor.empty() : tensor<64x64x1x1xf32>
    %593 = linalg.generic {indexing_maps = [#map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<64x1x1x64xf32>) outs(%592 : tensor<64x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x64x1x1xf32>
    %collapsed_313 = tensor.collapse_shape %593 [[0], [1, 2, 3]] : tensor<64x64x1x1xf32> into tensor<64x64xf32>
    %594 = linalg.matmul ins(%collapsed_312, %collapsed_313 : tensor<3136x64xf32>, tensor<64x64xf32>) outs(%591 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %expanded_314 = tensor.expand_shape %594 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %padded_315 = tensor.pad %30 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %595 = tensor.empty() : tensor<1x113x113x64xf32>
    %596 = tensor.empty() : tensor<3x3xf32>
    %597 = linalg.generic {indexing_maps = [#map24, #map25, #map3, #map3, #map26, #map3, #map24], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded_315, %596, %31, %578, %519, %expanded_314 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>, tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%595 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %in_333: f32, %out: f32):
      %616 = arith.addf %in_332, %in_333 : f32
      %617 = arith.addf %in_331, %616 : f32
      %618 = arith.cmpf oge, %in, %in_330 : f32
      %619 = arith.select %618, %617, %cst : f32
      %620 = arith.addf %out, %619 : f32
      linalg.yield %620 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice_316 = tensor.extract_slice %597[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %expanded_317 = tensor.expand_shape %28 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x112x112xf32> into tensor<1x64x1x1x112x112xf32>
    %expanded_318 = tensor.expand_shape %29 [[0], [1, 2, 3], [4], [5]] : tensor<1x64x112x112xf32> into tensor<1x64x1x1x112x112xf32>
    %expanded_319 = tensor.expand_shape %extracted_slice_316 [[0], [1], [2], [3, 4, 5]] : tensor<1x112x112x64xf32> into tensor<1x112x112x64x1x1xf32>
    %598 = tensor.empty() : tensor<1x112x112x64x1x1xf32>
    %599 = linalg.generic {indexing_maps = [#map9, #map9, #map10, #map10, #map4, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%27, %25, %expanded_317, %expanded_318, %expanded_319 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>, tensor<1x64x1x1x112x112xf32>, tensor<1x64x1x1x112x112xf32>, tensor<1x112x112x64x1x1xf32>) outs(%598 : tensor<1x112x112x64x1x1xf32>) {
    ^bb0(%in: f32, %in_329: f32, %in_330: f32, %in_331: f32, %in_332: f32, %out: f32):
      %616 = arith.cmpf oeq, %in_330, %in_331 : f32
      %617 = arith.select %616, %in_332, %cst : f32
      %618 = arith.mulf %in_329, %617 : f32
      %619 = arith.mulf %in, %618 : f32
      linalg.yield %619 : f32
    } -> tensor<1x112x112x64x1x1xf32>
    %collapsed_320 = tensor.collapse_shape %599 [[0], [1], [2], [3, 4, 5]] : tensor<1x112x112x64x1x1xf32> into tensor<1x112x112x64xf32>
    %600 = tensor.empty() : tensor<3x7x7x64xf32>
    %601 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26 : tensor<64x7x7x3xf32>) outs(%600 : tensor<3x7x7x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x7x7x64xf32>
    %602 = tensor.empty() : tensor<3xf32>
    %padded_321 = tensor.pad %601 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<3x7x7x64xf32> to tensor<3x8x8x64xf32>
    %expanded_322 = tensor.expand_shape %padded_321 [[0], [1, 2], [3, 4], [5]] : tensor<3x8x8x64xf32> into tensor<3x4x2x4x2x64xf32>
    %603 = tensor.empty() : tensor<2x2x3x4x4x64xf32>
    %604 = linalg.generic {indexing_maps = [#map17, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_322 : tensor<3x4x2x4x2x64xf32>) outs(%603 : tensor<2x2x3x4x4x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x3x4x4x64xf32>
    %collapsed_323 = tensor.collapse_shape %604 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x3x4x4x64xf32> into tensor<12x4x4x64xf32>
    %605 = tensor.empty() : tensor<12x4x4x64xf32>
    %606 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%605 : tensor<12x4x4x64xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = arith.subi %c3, %617 : index
      %619 = linalg.index 2 : index
      %620 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_323[%616, %618, %619, %620] : tensor<12x4x4x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<12x4x4x64xf32>
    %padded_324 = tensor.pad %collapsed_320 low[%c0, %c3, %c3, %c0] high[%c0, %c3, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x64xf32> to tensor<1x118x118x64xf32>
    %607 = tensor.empty() : tensor<4x4x64x12xf32>
    %608 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%607 : tensor<4x4x64x12xf32>) {
    ^bb0(%out: f32):
      %616 = linalg.index 0 : index
      %617 = linalg.index 1 : index
      %618 = linalg.index 2 : index
      %619 = linalg.index 3 : index
      %620 = arith.subi %c3, %617 : index
      %extracted = tensor.extract %606[%619, %616, %620, %618] : tensor<12x4x4x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<4x4x64x12xf32>
    %609 = tensor.empty() : tensor<1x115x115x12xf32>
    %610 = linalg.fill ins(%cst : f32) outs(%609 : tensor<1x115x115x12xf32>) -> tensor<1x115x115x12xf32>
    %611 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_324, %608 : tensor<1x118x118x64xf32>, tensor<4x4x64x12xf32>) outs(%610 : tensor<1x115x115x12xf32>) -> tensor<1x115x115x12xf32>
    %expanded_325 = tensor.expand_shape %611 [[0], [1], [2], [3, 4, 5]] : tensor<1x115x115x12xf32> into tensor<1x115x115x2x2x3xf32>
    %612 = tensor.empty() : tensor<1x115x2x115x2x3xf32>
    %613 = linalg.generic {indexing_maps = [#map18, #map4], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_325 : tensor<1x115x115x2x2x3xf32>) outs(%612 : tensor<1x115x2x115x2x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %616 = arith.addf %in, %cst : f32
      linalg.yield %616 : f32
    } -> tensor<1x115x2x115x2x3xf32>
    %collapsed_326 = tensor.collapse_shape %613 [[0], [1, 2], [3, 4], [5]] : tensor<1x115x2x115x2x3xf32> into tensor<1x230x230x3xf32>
    %extracted_slice_327 = tensor.extract_slice %collapsed_326[0, 3, 3, 0] [1, 224, 224, 3] [1, 1, 1, 1] : tensor<1x230x230x3xf32> to tensor<1x224x224x3xf32>
    %expanded_328 = tensor.expand_shape %602 [[0, 1]] : tensor<3xf32> into tensor<1x3xf32>
    %614 = tensor.empty() : tensor<1x3x224x224xf32>
    %615 = linalg.generic {indexing_maps = [#map15, #map27, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_327, %expanded_328 : tensor<1x224x224x3xf32>, tensor<1x3xf32>) outs(%614 : tensor<1x3x224x224xf32>) {
    ^bb0(%in: f32, %in_329: f32, %out: f32):
      %616 = arith.addf %in, %in_329 : f32
      linalg.yield %616 : f32
    } -> tensor<1x3x224x224xf32>
    return %615 : tensor<1x3x224x224xf32>
  }
}

