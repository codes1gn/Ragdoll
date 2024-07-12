#map = affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3, d1)>
#map4 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#map5 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map6 = affine_map<(d0, d1) -> (d1)>
#map7 = affine_map<(d0, d1) -> (d0, d1)>
#map8 = affine_map<(d0, d1, d2) -> (d0, d2, d1)>
#map9 = affine_map<(d0, d1, d2, d3) -> (d0, d3)>
#map10 = affine_map<(d0, d1, d2, d3) -> (d0)>
#map11 = affine_map<(d0, d1, d2, d3) -> (d3, d1, d2, d0)>
#map12 = affine_map<(d0, d1) -> (d1, d0)>
#map13 = affine_map<(d0, d1, d2, d3) -> (d3, d0, d1, d2)>
#map14 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d2, d3, d0, d4, d1, d5)>
#map15 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3, d4, d5)>
#map16 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d2, d4, d5)>
#map17 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map18 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map19 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
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
    %cst = arith.constant dense<7.777000e-02> : tensor<1x2048xf32>
    %cst_0 = arith.constant dense<7.777000e-02> : tensor<1x1024xf32>
    %cst_1 = arith.constant dense<7.777000e-02> : tensor<1x512xf32>
    %cst_2 = arith.constant dense<7.777000e-02> : tensor<1x128xf32>
    %cst_3 = arith.constant dense<7.777000e-02> : tensor<1x256xf32>
    %cst_4 = arith.constant 3.40282347E+38 : f32
    %cst_5 = arith.constant dense<7.777000e-02> : tensor<1x64xf32>
    %cst_6 = arith.constant 4.900000e+01 : f32
    %cst_7 = arith.constant dense<7.777000e-02> : tensor<512x2048xf32>
    %cst_8 = arith.constant dense<7.777000e-02> : tensor<3x3x512x512xf32>
    %cst_9 = arith.constant dense<7.777000e-02> : tensor<2048x512xf32>
    %cst_10 = arith.constant dense<7.777000e-02> : tensor<1x1x1024x2048xf32>
    %cst_11 = arith.constant dense<7.777000e-02> : tensor<1024x512xf32>
    %cst_12 = arith.constant dense<7.777000e-02> : tensor<256x1024xf32>
    %cst_13 = arith.constant dense<7.777000e-02> : tensor<3x3x256x256xf32>
    %cst_14 = arith.constant dense<7.777000e-02> : tensor<1024x256xf32>
    %cst_15 = arith.constant dense<7.777000e-02> : tensor<1x1x512x1024xf32>
    %cst_16 = arith.constant dense<7.777000e-02> : tensor<512x256xf32>
    %cst_17 = arith.constant dense<7.777000e-02> : tensor<128x512xf32>
    %cst_18 = arith.constant dense<7.777000e-02> : tensor<3x3x128x128xf32>
    %cst_19 = arith.constant dense<7.777000e-02> : tensor<512x128xf32>
    %cst_20 = arith.constant dense<7.777000e-02> : tensor<1x1x256x512xf32>
    %cst_21 = arith.constant dense<7.777000e-02> : tensor<256x128xf32>
    %cst_22 = arith.constant dense<7.777000e-02> : tensor<64x256xf32>
    %cst_23 = arith.constant dense<7.777000e-02> : tensor<3x3x64x64xf32>
    %cst_24 = arith.constant dense<7.777000e-02> : tensor<256x64xf32>
    %cst_25 = arith.constant dense<7.777000e-02> : tensor<64x64xf32>
    %cst_26 = arith.constant dense<7.777000e-02> : tensor<7x7x3x64xf32>
    %cst_27 = arith.constant -3.40282347E+38 : f32
    %cst_28 = arith.constant 0.000000e+00 : f32
    %cst_29 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_30 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_31 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_32 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_33 = arith.constant dense<0.000000e+00> : tensor<1024xf32>
    %cst_34 = arith.constant dense<0.000000e+00> : tensor<2048xf32>
    %cst_35 = arith.constant dense<7.777000e-02> : tensor<1x1000xf32>
    %cst_36 = arith.constant dense<7.777000e-02> : tensor<1x2048x1000xf32>
    %cst_37 = arith.constant dense<7.777000e-02> : tensor<512x1x1x2048xf32>
    %cst_38 = arith.constant dense<7.777000e-02> : tensor<2048x1x1x1024xf32>
    %cst_39 = arith.constant dense<7.778000e-02> : tensor<2048x1x1xf32>
    %cst_40 = arith.constant dense<7.777000e-02> : tensor<1x2048x1x1xf32>
    %cst_41 = arith.constant dense<7.777000e-02> : tensor<2048x1x1x512xf32>
    %cst_42 = arith.constant dense<7.777000e-02> : tensor<512x3x3x512xf32>
    %cst_43 = arith.constant dense<7.777000e-02> : tensor<512x1x1x1024xf32>
    %cst_44 = arith.constant dense<7.777000e-02> : tensor<256x1x1x1024xf32>
    %cst_45 = arith.constant dense<7.777000e-02> : tensor<1024x1x1x512xf32>
    %cst_46 = arith.constant dense<7.778000e-02> : tensor<1024x1x1xf32>
    %cst_47 = arith.constant dense<7.777000e-02> : tensor<1x1024x1x1xf32>
    %cst_48 = arith.constant dense<7.777000e-02> : tensor<1024x1x1x256xf32>
    %cst_49 = arith.constant dense<7.777000e-02> : tensor<256x3x3x256xf32>
    %cst_50 = arith.constant dense<7.777000e-02> : tensor<256x1x1x512xf32>
    %cst_51 = arith.constant dense<7.777000e-02> : tensor<128x1x1x512xf32>
    %cst_52 = arith.constant dense<7.777000e-02> : tensor<512x1x1x256xf32>
    %cst_53 = arith.constant dense<7.778000e-02> : tensor<512x1x1xf32>
    %cst_54 = arith.constant dense<7.777000e-02> : tensor<1x512x1x1xf32>
    %cst_55 = arith.constant dense<7.777000e-02> : tensor<512x1x1x128xf32>
    %cst_56 = arith.constant dense<7.777000e-02> : tensor<128x3x3x128xf32>
    %cst_57 = arith.constant dense<7.778000e-02> : tensor<128x1x1xf32>
    %cst_58 = arith.constant dense<7.777000e-02> : tensor<1x128x1x1xf32>
    %cst_59 = arith.constant dense<7.777000e-02> : tensor<128x1x1x256xf32>
    %cst_60 = arith.constant dense<7.777000e-02> : tensor<64x1x1x256xf32>
    %cst_61 = arith.constant dense<7.778000e-02> : tensor<256x1x1xf32>
    %cst_62 = arith.constant dense<7.777000e-02> : tensor<1x256x1x1xf32>
    %cst_63 = arith.constant dense<7.777000e-02> : tensor<256x1x1x64xf32>
    %cst_64 = arith.constant dense<7.777000e-02> : tensor<64x3x3x64xf32>
    %cst_65 = arith.constant dense<7.777000e-02> : tensor<64x1x1x64xf32>
    %cst_66 = arith.constant dense<7.778000e-02> : tensor<64x1x1xf32>
    %cst_67 = arith.constant dense<7.777000e-02> : tensor<1x64x1x1xf32>
    %cst_68 = arith.constant dense<7.777000e-02> : tensor<64x7x7x3xf32>
    ml_program.global_store @global10 = %cst_36 : tensor<1x2048x1000xf32>
    ml_program.global_store @global11 = %cst_37 : tensor<512x1x1x2048xf32>
    ml_program.global_store @global12 = %cst_38 : tensor<2048x1x1x1024xf32>
    ml_program.global_store @global14 = %cst_40 : tensor<1x2048x1x1xf32>
    ml_program.global_store @global15 = %cst_41 : tensor<2048x1x1x512xf32>
    ml_program.global_store @global16 = %cst_42 : tensor<512x3x3x512xf32>
    ml_program.global_store @global17 = %cst_43 : tensor<512x1x1x1024xf32>
    ml_program.global_store @global18 = %cst_44 : tensor<256x1x1x1024xf32>
    ml_program.global_store @global19 = %cst_45 : tensor<1024x1x1x512xf32>
    ml_program.global_store @global21 = %cst_47 : tensor<1x1024x1x1xf32>
    ml_program.global_store @global22 = %cst_48 : tensor<1024x1x1x256xf32>
    ml_program.global_store @global23 = %cst_49 : tensor<256x3x3x256xf32>
    ml_program.global_store @global24 = %cst_50 : tensor<256x1x1x512xf32>
    ml_program.global_store @global25 = %cst_51 : tensor<128x1x1x512xf32>
    ml_program.global_store @global26 = %cst_52 : tensor<512x1x1x256xf32>
    ml_program.global_store @global28 = %cst_54 : tensor<1x512x1x1xf32>
    ml_program.global_store @global29 = %cst_55 : tensor<512x1x1x128xf32>
    ml_program.global_store @global30 = %cst_56 : tensor<128x3x3x128xf32>
    ml_program.global_store @global32 = %cst_58 : tensor<1x128x1x1xf32>
    ml_program.global_store @global33 = %cst_59 : tensor<128x1x1x256xf32>
    ml_program.global_store @global34 = %cst_60 : tensor<64x1x1x256xf32>
    ml_program.global_store @global36 = %cst_62 : tensor<1x256x1x1xf32>
    ml_program.global_store @global37 = %cst_63 : tensor<256x1x1x64xf32>
    ml_program.global_store @global38 = %cst_64 : tensor<64x3x3x64xf32>
    ml_program.global_store @global39 = %cst_65 : tensor<64x1x1x64xf32>
    ml_program.global_store @global41 = %cst_67 : tensor<1x64x1x1xf32>
    ml_program.global_store @global42 = %cst_68 : tensor<64x7x7x3xf32>
    %0 = tensor.empty() : tensor<1x224x224x3xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg0 : tensor<1x3x224x224xf32>) outs(%0 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x224x224x3xf32>
    %padded = tensor.pad %1 low[0, 3, 3, 0] high[0, 3, 3, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x224x224x3xf32> to tensor<1x230x230x3xf32>
    %2 = tensor.empty() : tensor<1x112x112x64xf32>
    %3 = linalg.fill ins(%cst_28 : f32) outs(%2 : tensor<1x112x112x64xf32>) -> tensor<1x112x112x64xf32>
    %4 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded, %cst_26 : tensor<1x230x230x3xf32>, tensor<7x7x3x64xf32>) outs(%3 : tensor<1x112x112x64xf32>) -> tensor<1x112x112x64xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_29, %4 : tensor<64xf32>, tensor<1x112x112x64xf32>) outs(%2 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x112x112x64xf32>
    %6 = tensor.empty() : tensor<1x64x112x112xf32>
    %7 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<1x112x112x64xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x112x112xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %cst_5 : tensor<1x64x112x112xf32>, tensor<1x64xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x112x112xf32>
    %9 = tensor.empty() : tensor<64x1x1xf32>
    %10 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_66 : tensor<64x1x1xf32>) outs(%9 : tensor<64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = math.rsqrt %in : f32
      linalg.yield %566 : f32
    } -> tensor<64x1x1xf32>
    %expanded = tensor.expand_shape %10 [[0, 1], [2], [3]] : tensor<64x1x1xf32> into tensor<1x64x1x1xf32>
    ml_program.global_store @global48 = %expanded : tensor<1x64x1x1xf32>
    %collapsed = tensor.collapse_shape %expanded [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %11 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8, %collapsed : tensor<1x64x112x112xf32>, tensor<1x64xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x112x112xf32>
    %12 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %cst_5 : tensor<1x64x112x112xf32>, tensor<1x64xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x112x112xf32>
    %13 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12, %cst_5 : tensor<1x64x112x112xf32>, tensor<1x64xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x112x112xf32>
    ml_program.global_store @global51 = %13 : tensor<1x64x112x112xf32>
    %14 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x64x112x112xf32>) outs(%6 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x64x112x112xf32>
    ml_program.global_store @global52 = %14 : tensor<1x64x112x112xf32>
    %15 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<1x64x112x112xf32>) outs(%2 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x64xf32>
    ml_program.global_store @global53 = %15 : tensor<1x112x112x64xf32>
    %padded_69 = tensor.pad %15 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_27 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %16 = tensor.empty() : tensor<1x56x56x64xf32>
    %17 = linalg.fill ins(%cst_27 : f32) outs(%16 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %18 = tensor.empty() : tensor<3x3xf32>
    %19 = linalg.pooling_nhwc_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_69, %18 : tensor<1x113x113x64xf32>, tensor<3x3xf32>) outs(%17 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    ml_program.global_store @global54 = %19 : tensor<1x56x56x64xf32>
    %collapsed_70 = tensor.collapse_shape %19 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %20 = tensor.empty() : tensor<3136x64xf32>
    %21 = linalg.fill ins(%cst_28 : f32) outs(%20 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %22 = linalg.matmul ins(%collapsed_70, %cst_25 : tensor<3136x64xf32>, tensor<64x64xf32>) outs(%21 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %23 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_29, %22 : tensor<64xf32>, tensor<3136x64xf32>) outs(%20 : tensor<3136x64xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<3136x64xf32>
    %expanded_71 = tensor.expand_shape %23 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %24 = tensor.empty() : tensor<1x64x56x56xf32>
    %25 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_71 : tensor<1x56x56x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %26 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    %27 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    %28 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    %29 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global60 = %29 : tensor<1x64x56x56xf32>
    %30 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29 : tensor<1x64x56x56xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global61 = %30 : tensor<1x64x56x56xf32>
    %31 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_72 = tensor.pad %31 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %32 = linalg.fill ins(%cst_28 : f32) outs(%16 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %33 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_72, %cst_23 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%32 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_29, %33 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x56x56x64xf32>
    %35 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34 : tensor<1x56x56x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %36 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    %37 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    %39 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global68 = %39 : tensor<1x64x56x56xf32>
    %40 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x64x56x56xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global69 = %40 : tensor<1x64x56x56xf32>
    %41 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_73 = tensor.collapse_shape %41 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %42 = tensor.empty() : tensor<3136x256xf32>
    %43 = linalg.fill ins(%cst_28 : f32) outs(%42 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %44 = linalg.matmul ins(%collapsed_73, %cst_22 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%43 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %45 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %44 : tensor<256xf32>, tensor<3136x256xf32>) outs(%42 : tensor<3136x256xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<3136x256xf32>
    %expanded_74 = tensor.expand_shape %45 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %46 = tensor.empty() : tensor<1x256x56x56xf32>
    %47 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_74 : tensor<1x56x56x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %48 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x56x56xf32>
    %49 = tensor.empty() : tensor<256x1x1xf32>
    %50 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_61 : tensor<256x1x1xf32>) outs(%49 : tensor<256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = math.rsqrt %in : f32
      linalg.yield %566 : f32
    } -> tensor<256x1x1xf32>
    %expanded_75 = tensor.expand_shape %50 [[0, 1], [2], [3]] : tensor<256x1x1xf32> into tensor<1x256x1x1xf32>
    ml_program.global_store @global75 = %expanded_75 : tensor<1x256x1x1xf32>
    %collapsed_76 = tensor.collapse_shape %expanded_75 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %51 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %collapsed_76 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x56x56xf32>
    %52 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x56x56xf32>
    %53 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x56x56xf32>
    %54 = linalg.matmul ins(%collapsed_70, %cst_22 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%43 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %55 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %54 : tensor<256xf32>, tensor<3136x256xf32>) outs(%42 : tensor<3136x256xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<3136x256xf32>
    %expanded_77 = tensor.expand_shape %55 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %56 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_77 : tensor<1x56x56x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %57 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x56x56xf32>
    %58 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %collapsed_76 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x56x56xf32>
    %59 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x56x56xf32>
    %60 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x56x56xf32>
    %61 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53, %60 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global85 = %61 : tensor<1x256x56x56xf32>
    %62 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x256x56x56xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global86 = %62 : tensor<1x256x56x56xf32>
    %63 = tensor.empty() : tensor<1x56x56x256xf32>
    %64 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62 : tensor<1x256x56x56xf32>) outs(%63 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_78 = tensor.collapse_shape %64 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %65 = linalg.matmul ins(%collapsed_78, %cst_24 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%21 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %66 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_29, %65 : tensor<64xf32>, tensor<3136x64xf32>) outs(%20 : tensor<3136x64xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<3136x64xf32>
    %expanded_79 = tensor.expand_shape %66 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %67 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_79 : tensor<1x56x56x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %68 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    %69 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    %70 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    %71 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global93 = %71 : tensor<1x64x56x56xf32>
    %72 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71 : tensor<1x64x56x56xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global94 = %72 : tensor<1x64x56x56xf32>
    %73 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_80 = tensor.pad %73 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %74 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_80, %cst_23 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%32 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %75 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_29, %74 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x56x56x64xf32>
    %76 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75 : tensor<1x56x56x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %77 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    %78 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    %79 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    %80 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global101 = %80 : tensor<1x64x56x56xf32>
    %81 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80 : tensor<1x64x56x56xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global102 = %81 : tensor<1x64x56x56xf32>
    %82 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_81 = tensor.collapse_shape %82 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %83 = linalg.matmul ins(%collapsed_81, %cst_22 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%43 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %84 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %83 : tensor<256xf32>, tensor<3136x256xf32>) outs(%42 : tensor<3136x256xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<3136x256xf32>
    %expanded_82 = tensor.expand_shape %84 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %85 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_82 : tensor<1x56x56x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %86 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x56x56xf32>
    %87 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %collapsed_76 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x56x56xf32>
    %88 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x56x56xf32>
    %89 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x56x56xf32>
    %90 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %62 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global110 = %90 : tensor<1x256x56x56xf32>
    %91 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90 : tensor<1x256x56x56xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global111 = %91 : tensor<1x256x56x56xf32>
    %92 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91 : tensor<1x256x56x56xf32>) outs(%63 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_83 = tensor.collapse_shape %92 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %93 = linalg.matmul ins(%collapsed_83, %cst_24 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%21 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %94 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_29, %93 : tensor<64xf32>, tensor<3136x64xf32>) outs(%20 : tensor<3136x64xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<3136x64xf32>
    %expanded_84 = tensor.expand_shape %94 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %95 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_84 : tensor<1x56x56x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %96 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    %97 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    %98 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    %99 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global118 = %99 : tensor<1x64x56x56xf32>
    %100 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99 : tensor<1x64x56x56xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global119 = %100 : tensor<1x64x56x56xf32>
    %101 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_85 = tensor.pad %101 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %102 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_85, %cst_23 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%32 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %103 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_29, %102 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x56x56x64xf32>
    %104 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103 : tensor<1x56x56x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %105 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    %106 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %collapsed : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    %107 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    %108 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107, %cst_5 : tensor<1x64x56x56xf32>, tensor<1x64xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global126 = %108 : tensor<1x64x56x56xf32>
    %109 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108 : tensor<1x64x56x56xf32>) outs(%24 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x64x56x56xf32>
    ml_program.global_store @global127 = %109 : tensor<1x64x56x56xf32>
    %110 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109 : tensor<1x64x56x56xf32>) outs(%16 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_86 = tensor.collapse_shape %110 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %111 = linalg.matmul ins(%collapsed_86, %cst_22 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%43 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %112 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %111 : tensor<256xf32>, tensor<3136x256xf32>) outs(%42 : tensor<3136x256xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<3136x256xf32>
    %expanded_87 = tensor.expand_shape %112 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %113 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_87 : tensor<1x56x56x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %114 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x56x56xf32>
    %115 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %collapsed_76 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x56x56xf32>
    %116 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x56x56xf32>
    %117 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %cst_3 : tensor<1x256x56x56xf32>, tensor<1x256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x56x56xf32>
    %118 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117, %91 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global135 = %118 : tensor<1x256x56x56xf32>
    %119 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118 : tensor<1x256x56x56xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x256x56x56xf32>
    ml_program.global_store @global136 = %119 : tensor<1x256x56x56xf32>
    %120 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x256x56x56xf32>) outs(%63 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_88 = tensor.collapse_shape %120 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %121 = tensor.empty() : tensor<3136x128xf32>
    %122 = linalg.fill ins(%cst_28 : f32) outs(%121 : tensor<3136x128xf32>) -> tensor<3136x128xf32>
    %123 = linalg.matmul ins(%collapsed_88, %cst_21 : tensor<3136x256xf32>, tensor<256x128xf32>) outs(%122 : tensor<3136x128xf32>) -> tensor<3136x128xf32>
    %124 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_31, %123 : tensor<128xf32>, tensor<3136x128xf32>) outs(%121 : tensor<3136x128xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<3136x128xf32>
    %expanded_89 = tensor.expand_shape %124 [[0, 1, 2], [3]] : tensor<3136x128xf32> into tensor<1x56x56x128xf32>
    %125 = tensor.empty() : tensor<1x128x56x56xf32>
    %126 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_89 : tensor<1x56x56x128xf32>) outs(%125 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x56x56xf32>
    %127 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126, %cst_2 : tensor<1x128x56x56xf32>, tensor<1x128xf32>) outs(%125 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x56x56xf32>
    %128 = tensor.empty() : tensor<128x1x1xf32>
    %129 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_57 : tensor<128x1x1xf32>) outs(%128 : tensor<128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = math.rsqrt %in : f32
      linalg.yield %566 : f32
    } -> tensor<128x1x1xf32>
    %expanded_90 = tensor.expand_shape %129 [[0, 1], [2], [3]] : tensor<128x1x1xf32> into tensor<1x128x1x1xf32>
    ml_program.global_store @global142 = %expanded_90 : tensor<1x128x1x1xf32>
    %collapsed_91 = tensor.collapse_shape %expanded_90 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %130 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127, %collapsed_91 : tensor<1x128x56x56xf32>, tensor<1x128xf32>) outs(%125 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x56x56xf32>
    %131 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %cst_2 : tensor<1x128x56x56xf32>, tensor<1x128xf32>) outs(%125 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x56x56xf32>
    %132 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %cst_2 : tensor<1x128x56x56xf32>, tensor<1x128xf32>) outs(%125 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x56x56xf32>
    ml_program.global_store @global145 = %132 : tensor<1x128x56x56xf32>
    %133 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132 : tensor<1x128x56x56xf32>) outs(%125 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x128x56x56xf32>
    ml_program.global_store @global146 = %133 : tensor<1x128x56x56xf32>
    %134 = tensor.empty() : tensor<1x56x56x128xf32>
    %135 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133 : tensor<1x128x56x56xf32>) outs(%134 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x128xf32>
    %padded_92 = tensor.pad %135 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x56x56x128xf32> to tensor<1x58x58x128xf32>
    %136 = tensor.empty() : tensor<1x28x28x128xf32>
    %137 = linalg.fill ins(%cst_28 : f32) outs(%136 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %138 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_92, %cst_18 : tensor<1x58x58x128xf32>, tensor<3x3x128x128xf32>) outs(%137 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %139 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_31, %138 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x28x28x128xf32>
    %140 = tensor.empty() : tensor<1x128x28x28xf32>
    %141 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139 : tensor<1x28x28x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %142 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %143 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142, %collapsed_91 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %144 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %145 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global153 = %145 : tensor<1x128x28x28xf32>
    %146 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145 : tensor<1x128x28x28xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global154 = %146 : tensor<1x128x28x28xf32>
    %147 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146 : tensor<1x128x28x28xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_93 = tensor.collapse_shape %147 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %148 = tensor.empty() : tensor<784x512xf32>
    %149 = linalg.fill ins(%cst_28 : f32) outs(%148 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %150 = linalg.matmul ins(%collapsed_93, %cst_17 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%149 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %151 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_32, %150 : tensor<512xf32>, tensor<784x512xf32>) outs(%148 : tensor<784x512xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<784x512xf32>
    %expanded_94 = tensor.expand_shape %151 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %152 = tensor.empty() : tensor<1x512x28x28xf32>
    %153 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_94 : tensor<1x28x28x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %154 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    %155 = tensor.empty() : tensor<512x1x1xf32>
    %156 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_53 : tensor<512x1x1xf32>) outs(%155 : tensor<512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = math.rsqrt %in : f32
      linalg.yield %566 : f32
    } -> tensor<512x1x1xf32>
    %expanded_95 = tensor.expand_shape %156 [[0, 1], [2], [3]] : tensor<512x1x1xf32> into tensor<1x512x1x1xf32>
    ml_program.global_store @global160 = %expanded_95 : tensor<1x512x1x1xf32>
    %collapsed_96 = tensor.collapse_shape %expanded_95 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %157 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %collapsed_96 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    %158 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    %159 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    %160 = tensor.empty() : tensor<1x28x28x512xf32>
    %161 = linalg.fill ins(%cst_28 : f32) outs(%160 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %162 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%120, %cst_20 : tensor<1x56x56x256xf32>, tensor<1x1x256x512xf32>) outs(%161 : tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %163 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_32, %162 : tensor<512xf32>, tensor<1x28x28x512xf32>) outs(%160 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x28x28x512xf32>
    %164 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163 : tensor<1x28x28x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %165 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    %166 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165, %collapsed_96 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    %167 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    %168 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    %169 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159, %168 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global170 = %169 : tensor<1x512x28x28xf32>
    %170 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1x512x28x28xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global171 = %170 : tensor<1x512x28x28xf32>
    %171 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170 : tensor<1x512x28x28xf32>) outs(%160 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_97 = tensor.collapse_shape %171 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %172 = tensor.empty() : tensor<784x128xf32>
    %173 = linalg.fill ins(%cst_28 : f32) outs(%172 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %174 = linalg.matmul ins(%collapsed_97, %cst_19 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%173 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %175 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_31, %174 : tensor<128xf32>, tensor<784x128xf32>) outs(%172 : tensor<784x128xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<784x128xf32>
    %expanded_98 = tensor.expand_shape %175 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %176 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_98 : tensor<1x28x28x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %177 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %178 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %collapsed_91 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %179 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %180 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global178 = %180 : tensor<1x128x28x28xf32>
    %181 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180 : tensor<1x128x28x28xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global179 = %181 : tensor<1x128x28x28xf32>
    %182 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181 : tensor<1x128x28x28xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_99 = tensor.pad %182 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %183 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_99, %cst_18 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%137 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %184 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_31, %183 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x28x28x128xf32>
    %185 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<1x28x28x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %186 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %187 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %collapsed_91 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %188 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %189 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global186 = %189 : tensor<1x128x28x28xf32>
    %190 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189 : tensor<1x128x28x28xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global187 = %190 : tensor<1x128x28x28xf32>
    %191 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190 : tensor<1x128x28x28xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_100 = tensor.collapse_shape %191 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %192 = linalg.matmul ins(%collapsed_100, %cst_17 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%149 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %193 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_32, %192 : tensor<512xf32>, tensor<784x512xf32>) outs(%148 : tensor<784x512xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<784x512xf32>
    %expanded_101 = tensor.expand_shape %193 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %194 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_101 : tensor<1x28x28x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %195 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    %196 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195, %collapsed_96 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    %197 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    %198 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    %199 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %170 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global195 = %199 : tensor<1x512x28x28xf32>
    %200 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199 : tensor<1x512x28x28xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global196 = %200 : tensor<1x512x28x28xf32>
    %201 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200 : tensor<1x512x28x28xf32>) outs(%160 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_102 = tensor.collapse_shape %201 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %202 = linalg.matmul ins(%collapsed_102, %cst_19 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%173 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %203 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_31, %202 : tensor<128xf32>, tensor<784x128xf32>) outs(%172 : tensor<784x128xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<784x128xf32>
    %expanded_103 = tensor.expand_shape %203 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %204 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_103 : tensor<1x28x28x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %205 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %206 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205, %collapsed_91 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %207 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %208 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global203 = %208 : tensor<1x128x28x28xf32>
    %209 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208 : tensor<1x128x28x28xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global204 = %209 : tensor<1x128x28x28xf32>
    %210 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209 : tensor<1x128x28x28xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_104 = tensor.pad %210 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %211 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_104, %cst_18 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%137 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %212 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_31, %211 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x28x28x128xf32>
    %213 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212 : tensor<1x28x28x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %214 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %215 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214, %collapsed_91 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %216 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %217 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global211 = %217 : tensor<1x128x28x28xf32>
    %218 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217 : tensor<1x128x28x28xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global212 = %218 : tensor<1x128x28x28xf32>
    %219 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218 : tensor<1x128x28x28xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_105 = tensor.collapse_shape %219 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %220 = linalg.matmul ins(%collapsed_105, %cst_17 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%149 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %221 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_32, %220 : tensor<512xf32>, tensor<784x512xf32>) outs(%148 : tensor<784x512xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<784x512xf32>
    %expanded_106 = tensor.expand_shape %221 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %222 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_106 : tensor<1x28x28x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %223 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    %224 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223, %collapsed_96 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    %225 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    %226 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    %227 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226, %200 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global220 = %227 : tensor<1x512x28x28xf32>
    %228 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227 : tensor<1x512x28x28xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global221 = %228 : tensor<1x512x28x28xf32>
    %229 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228 : tensor<1x512x28x28xf32>) outs(%160 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_107 = tensor.collapse_shape %229 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %230 = linalg.matmul ins(%collapsed_107, %cst_19 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%173 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %231 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_31, %230 : tensor<128xf32>, tensor<784x128xf32>) outs(%172 : tensor<784x128xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<784x128xf32>
    %expanded_108 = tensor.expand_shape %231 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %232 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_108 : tensor<1x28x28x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %233 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %234 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233, %collapsed_91 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %235 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %236 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global228 = %236 : tensor<1x128x28x28xf32>
    %237 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<1x128x28x28xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global229 = %237 : tensor<1x128x28x28xf32>
    %238 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237 : tensor<1x128x28x28xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_109 = tensor.pad %238 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %239 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_109, %cst_18 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%137 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %240 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_31, %239 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x28x28x128xf32>
    %241 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240 : tensor<1x28x28x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %242 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %243 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242, %collapsed_91 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %244 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    %245 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %cst_2 : tensor<1x128x28x28xf32>, tensor<1x128xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global236 = %245 : tensor<1x128x28x28xf32>
    %246 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245 : tensor<1x128x28x28xf32>) outs(%140 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x128x28x28xf32>
    ml_program.global_store @global237 = %246 : tensor<1x128x28x28xf32>
    %247 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246 : tensor<1x128x28x28xf32>) outs(%136 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_110 = tensor.collapse_shape %247 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %248 = linalg.matmul ins(%collapsed_110, %cst_17 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%149 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %249 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_32, %248 : tensor<512xf32>, tensor<784x512xf32>) outs(%148 : tensor<784x512xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<784x512xf32>
    %expanded_111 = tensor.expand_shape %249 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %250 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_111 : tensor<1x28x28x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %251 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    %252 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251, %collapsed_96 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    %253 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    %254 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253, %cst_1 : tensor<1x512x28x28xf32>, tensor<1x512xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    %255 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %228 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global245 = %255 : tensor<1x512x28x28xf32>
    %256 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255 : tensor<1x512x28x28xf32>) outs(%152 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x512x28x28xf32>
    ml_program.global_store @global246 = %256 : tensor<1x512x28x28xf32>
    %257 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256 : tensor<1x512x28x28xf32>) outs(%160 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_112 = tensor.collapse_shape %257 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %258 = tensor.empty() : tensor<784x256xf32>
    %259 = linalg.fill ins(%cst_28 : f32) outs(%258 : tensor<784x256xf32>) -> tensor<784x256xf32>
    %260 = linalg.matmul ins(%collapsed_112, %cst_16 : tensor<784x512xf32>, tensor<512x256xf32>) outs(%259 : tensor<784x256xf32>) -> tensor<784x256xf32>
    %261 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %260 : tensor<256xf32>, tensor<784x256xf32>) outs(%258 : tensor<784x256xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<784x256xf32>
    %expanded_113 = tensor.expand_shape %261 [[0, 1, 2], [3]] : tensor<784x256xf32> into tensor<1x28x28x256xf32>
    %262 = tensor.empty() : tensor<1x256x28x28xf32>
    %263 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_113 : tensor<1x28x28x256xf32>) outs(%262 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x28x28xf32>
    %264 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263, %cst_3 : tensor<1x256x28x28xf32>, tensor<1x256xf32>) outs(%262 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x28x28xf32>
    %265 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264, %collapsed_76 : tensor<1x256x28x28xf32>, tensor<1x256xf32>) outs(%262 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x28x28xf32>
    %266 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265, %cst_3 : tensor<1x256x28x28xf32>, tensor<1x256xf32>) outs(%262 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x28x28xf32>
    %267 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266, %cst_3 : tensor<1x256x28x28xf32>, tensor<1x256xf32>) outs(%262 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x28x28xf32>
    ml_program.global_store @global253 = %267 : tensor<1x256x28x28xf32>
    %268 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267 : tensor<1x256x28x28xf32>) outs(%262 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x256x28x28xf32>
    ml_program.global_store @global254 = %268 : tensor<1x256x28x28xf32>
    %269 = tensor.empty() : tensor<1x28x28x256xf32>
    %270 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268 : tensor<1x256x28x28xf32>) outs(%269 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x256xf32>
    %padded_114 = tensor.pad %270 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x28x28x256xf32> to tensor<1x30x30x256xf32>
    %271 = tensor.empty() : tensor<1x14x14x256xf32>
    %272 = linalg.fill ins(%cst_28 : f32) outs(%271 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %273 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_114, %cst_13 : tensor<1x30x30x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %274 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %273 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x14x14x256xf32>
    %275 = tensor.empty() : tensor<1x256x14x14xf32>
    %276 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %277 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %278 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %279 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %280 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global261 = %280 : tensor<1x256x14x14xf32>
    %281 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global262 = %281 : tensor<1x256x14x14xf32>
    %282 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_115 = tensor.collapse_shape %282 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %283 = tensor.empty() : tensor<196x1024xf32>
    %284 = linalg.fill ins(%cst_28 : f32) outs(%283 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %285 = linalg.matmul ins(%collapsed_115, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %286 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %285 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<196x1024xf32>
    %expanded_116 = tensor.expand_shape %286 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %287 = tensor.empty() : tensor<1x1024x14x14xf32>
    %288 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_116 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %289 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %290 = tensor.empty() : tensor<1024x1x1xf32>
    %291 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_46 : tensor<1024x1x1xf32>) outs(%290 : tensor<1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = math.rsqrt %in : f32
      linalg.yield %566 : f32
    } -> tensor<1024x1x1xf32>
    %expanded_117 = tensor.expand_shape %291 [[0, 1], [2], [3]] : tensor<1024x1x1xf32> into tensor<1x1024x1x1xf32>
    ml_program.global_store @global268 = %expanded_117 : tensor<1x1024x1x1xf32>
    %collapsed_118 = tensor.collapse_shape %expanded_117 [[0], [1, 2, 3]] : tensor<1x1024x1x1xf32> into tensor<1x1024xf32>
    %292 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %293 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %294 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%293, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %295 = tensor.empty() : tensor<1x14x14x1024xf32>
    %296 = linalg.fill ins(%cst_28 : f32) outs(%295 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %297 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%257, %cst_15 : tensor<1x28x28x512xf32>, tensor<1x1x512x1024xf32>) outs(%296 : tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %298 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_33, %297 : tensor<1024xf32>, tensor<1x14x14x1024xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x14x14x1024xf32>
    %299 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %300 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %301 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %302 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %303 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %304 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %303 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global278 = %304 : tensor<1x1024x14x14xf32>
    %305 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global279 = %305 : tensor<1x1024x14x14xf32>
    %306 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_119 = tensor.collapse_shape %306 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %307 = tensor.empty() : tensor<196x256xf32>
    %308 = linalg.fill ins(%cst_28 : f32) outs(%307 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %309 = linalg.matmul ins(%collapsed_119, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %310 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %309 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<196x256xf32>
    %expanded_120 = tensor.expand_shape %310 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %311 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_120 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %312 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %313 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %314 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %315 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global286 = %315 : tensor<1x256x14x14xf32>
    %316 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global287 = %316 : tensor<1x256x14x14xf32>
    %317 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_121 = tensor.pad %317 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %318 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_121, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %319 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %318 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x14x14x256xf32>
    %320 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %321 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %322 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %323 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %324 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global294 = %324 : tensor<1x256x14x14xf32>
    %325 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global295 = %325 : tensor<1x256x14x14xf32>
    %326 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_122 = tensor.collapse_shape %326 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %327 = linalg.matmul ins(%collapsed_122, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %328 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %327 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<196x1024xf32>
    %expanded_123 = tensor.expand_shape %328 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %329 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_123 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %330 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %331 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %332 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %333 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %334 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%333, %305 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global303 = %334 : tensor<1x1024x14x14xf32>
    %335 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global304 = %335 : tensor<1x1024x14x14xf32>
    %336 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_124 = tensor.collapse_shape %336 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %337 = linalg.matmul ins(%collapsed_124, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %338 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %337 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<196x256xf32>
    %expanded_125 = tensor.expand_shape %338 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %339 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_125 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %340 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %341 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %342 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %343 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global311 = %343 : tensor<1x256x14x14xf32>
    %344 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global312 = %344 : tensor<1x256x14x14xf32>
    %345 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_126 = tensor.pad %345 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %346 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_126, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %347 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %346 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x14x14x256xf32>
    %348 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %349 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %350 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %351 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %352 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global319 = %352 : tensor<1x256x14x14xf32>
    %353 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global320 = %353 : tensor<1x256x14x14xf32>
    %354 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_127 = tensor.collapse_shape %354 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %355 = linalg.matmul ins(%collapsed_127, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %356 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %355 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<196x1024xf32>
    %expanded_128 = tensor.expand_shape %356 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %357 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_128 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %358 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %359 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %360 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %361 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %362 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361, %335 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global328 = %362 : tensor<1x1024x14x14xf32>
    %363 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%362 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global329 = %363 : tensor<1x1024x14x14xf32>
    %364 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_129 = tensor.collapse_shape %364 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %365 = linalg.matmul ins(%collapsed_129, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %366 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %365 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<196x256xf32>
    %expanded_130 = tensor.expand_shape %366 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %367 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_130 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %368 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %369 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %370 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %371 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%370, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global336 = %371 : tensor<1x256x14x14xf32>
    %372 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global337 = %372 : tensor<1x256x14x14xf32>
    %373 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_131 = tensor.pad %373 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %374 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_131, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %375 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %374 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x14x14x256xf32>
    %376 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%375 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %377 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %378 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%377, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %379 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %380 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global344 = %380 : tensor<1x256x14x14xf32>
    %381 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global345 = %381 : tensor<1x256x14x14xf32>
    %382 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%381 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_132 = tensor.collapse_shape %382 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %383 = linalg.matmul ins(%collapsed_132, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %384 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %383 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<196x1024xf32>
    %expanded_133 = tensor.expand_shape %384 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %385 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_133 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %386 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%385, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %387 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%386, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %388 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%387, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %389 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %390 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %363 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global353 = %390 : tensor<1x1024x14x14xf32>
    %391 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%390 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global354 = %391 : tensor<1x1024x14x14xf32>
    %392 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%391 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_134 = tensor.collapse_shape %392 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %393 = linalg.matmul ins(%collapsed_134, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %394 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %393 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<196x256xf32>
    %expanded_135 = tensor.expand_shape %394 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %395 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_135 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %396 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%395, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %397 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%396, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %398 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%397, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %399 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%398, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global361 = %399 : tensor<1x256x14x14xf32>
    %400 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global362 = %400 : tensor<1x256x14x14xf32>
    %401 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%400 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_136 = tensor.pad %401 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %402 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_136, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %403 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %402 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x14x14x256xf32>
    %404 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%403 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %405 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%404, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %406 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%405, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %407 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%406, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %408 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global369 = %408 : tensor<1x256x14x14xf32>
    %409 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%408 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global370 = %409 : tensor<1x256x14x14xf32>
    %410 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%409 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_137 = tensor.collapse_shape %410 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %411 = linalg.matmul ins(%collapsed_137, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %412 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %411 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<196x1024xf32>
    %expanded_138 = tensor.expand_shape %412 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %413 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_138 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %414 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%413, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %415 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%414, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %416 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%415, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %417 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%416, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %418 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%417, %391 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global378 = %418 : tensor<1x1024x14x14xf32>
    %419 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%418 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global379 = %419 : tensor<1x1024x14x14xf32>
    %420 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%419 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_139 = tensor.collapse_shape %420 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %421 = linalg.matmul ins(%collapsed_139, %cst_14 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%308 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %422 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_30, %421 : tensor<256xf32>, tensor<196x256xf32>) outs(%307 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<196x256xf32>
    %expanded_140 = tensor.expand_shape %422 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %423 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_140 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %424 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%423, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %425 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%424, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %426 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%425, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %427 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global386 = %427 : tensor<1x256x14x14xf32>
    %428 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%427 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global387 = %428 : tensor<1x256x14x14xf32>
    %429 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%428 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_141 = tensor.pad %429 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %430 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_141, %cst_13 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%272 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %431 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30, %430 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x14x14x256xf32>
    %432 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%431 : tensor<1x14x14x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %433 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%432, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %434 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%433, %collapsed_76 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %435 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    %436 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435, %cst_3 : tensor<1x256x14x14xf32>, tensor<1x256xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global394 = %436 : tensor<1x256x14x14xf32>
    %437 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%436 : tensor<1x256x14x14xf32>) outs(%275 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x256x14x14xf32>
    ml_program.global_store @global395 = %437 : tensor<1x256x14x14xf32>
    %438 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%437 : tensor<1x256x14x14xf32>) outs(%271 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_142 = tensor.collapse_shape %438 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %439 = linalg.matmul ins(%collapsed_142, %cst_12 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%284 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %440 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_33, %439 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%283 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<196x1024xf32>
    %expanded_143 = tensor.expand_shape %440 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %441 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_143 : tensor<1x14x14x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %442 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %443 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%442, %collapsed_118 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %444 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%443, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %445 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%444, %cst_0 : tensor<1x1024x14x14xf32>, tensor<1x1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    %446 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%445, %419 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global403 = %446 : tensor<1x1024x14x14xf32>
    %447 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%446 : tensor<1x1024x14x14xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global404 = %447 : tensor<1x1024x14x14xf32>
    %448 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%447 : tensor<1x1024x14x14xf32>) outs(%295 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_144 = tensor.collapse_shape %448 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %449 = tensor.empty() : tensor<196x512xf32>
    %450 = linalg.fill ins(%cst_28 : f32) outs(%449 : tensor<196x512xf32>) -> tensor<196x512xf32>
    %451 = linalg.matmul ins(%collapsed_144, %cst_11 : tensor<196x1024xf32>, tensor<1024x512xf32>) outs(%450 : tensor<196x512xf32>) -> tensor<196x512xf32>
    %452 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_32, %451 : tensor<512xf32>, tensor<196x512xf32>) outs(%449 : tensor<196x512xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<196x512xf32>
    %expanded_145 = tensor.expand_shape %452 [[0, 1, 2], [3]] : tensor<196x512xf32> into tensor<1x14x14x512xf32>
    %453 = tensor.empty() : tensor<1x512x14x14xf32>
    %454 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_145 : tensor<1x14x14x512xf32>) outs(%453 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %455 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%454, %cst_1 : tensor<1x512x14x14xf32>, tensor<1x512xf32>) outs(%453 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x14x14xf32>
    %456 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%455, %collapsed_96 : tensor<1x512x14x14xf32>, tensor<1x512xf32>) outs(%453 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x14x14xf32>
    %457 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%456, %cst_1 : tensor<1x512x14x14xf32>, tensor<1x512xf32>) outs(%453 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x14x14xf32>
    %458 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%457, %cst_1 : tensor<1x512x14x14xf32>, tensor<1x512xf32>) outs(%453 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x14x14xf32>
    ml_program.global_store @global411 = %458 : tensor<1x512x14x14xf32>
    %459 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%458 : tensor<1x512x14x14xf32>) outs(%453 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x512x14x14xf32>
    ml_program.global_store @global412 = %459 : tensor<1x512x14x14xf32>
    %460 = tensor.empty() : tensor<1x14x14x512xf32>
    %461 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%459 : tensor<1x512x14x14xf32>) outs(%460 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %padded_146 = tensor.pad %461 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x14x14x512xf32> to tensor<1x16x16x512xf32>
    %462 = tensor.empty() : tensor<1x7x7x512xf32>
    %463 = linalg.fill ins(%cst_28 : f32) outs(%462 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %464 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%padded_146, %cst_8 : tensor<1x16x16x512xf32>, tensor<3x3x512x512xf32>) outs(%463 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %465 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_32, %464 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%462 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x7x7x512xf32>
    %466 = tensor.empty() : tensor<1x512x7x7xf32>
    %467 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%465 : tensor<1x7x7x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %468 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%467, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x7x7xf32>
    %469 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%468, %collapsed_96 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x7x7xf32>
    %470 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x7x7xf32>
    %471 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%470, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global419 = %471 : tensor<1x512x7x7xf32>
    %472 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%471 : tensor<1x512x7x7xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global420 = %472 : tensor<1x512x7x7xf32>
    %473 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472 : tensor<1x512x7x7xf32>) outs(%462 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_147 = tensor.collapse_shape %473 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %474 = tensor.empty() : tensor<49x2048xf32>
    %475 = linalg.fill ins(%cst_28 : f32) outs(%474 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %476 = linalg.matmul ins(%collapsed_147, %cst_7 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%475 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %477 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_34, %476 : tensor<2048xf32>, tensor<49x2048xf32>) outs(%474 : tensor<49x2048xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<49x2048xf32>
    %expanded_148 = tensor.expand_shape %477 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %478 = tensor.empty() : tensor<1x2048x7x7xf32>
    %479 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_148 : tensor<1x7x7x2048xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2048x7x7xf32>
    %480 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%479, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x2048x7x7xf32>
    %481 = tensor.empty() : tensor<2048x1x1xf32>
    %482 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_39 : tensor<2048x1x1xf32>) outs(%481 : tensor<2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = math.rsqrt %in : f32
      linalg.yield %566 : f32
    } -> tensor<2048x1x1xf32>
    %expanded_149 = tensor.expand_shape %482 [[0, 1], [2], [3]] : tensor<2048x1x1xf32> into tensor<1x2048x1x1xf32>
    ml_program.global_store @global426 = %expanded_149 : tensor<1x2048x1x1xf32>
    %collapsed_150 = tensor.collapse_shape %expanded_149 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %483 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%480, %collapsed_150 : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x2048x7x7xf32>
    %484 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%483, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x2048x7x7xf32>
    %485 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%484, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x2048x7x7xf32>
    %486 = tensor.empty() : tensor<1x7x7x2048xf32>
    %487 = linalg.fill ins(%cst_28 : f32) outs(%486 : tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %488 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%448, %cst_10 : tensor<1x14x14x1024xf32>, tensor<1x1x1024x2048xf32>) outs(%487 : tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %489 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_34, %488 : tensor<2048xf32>, tensor<1x7x7x2048xf32>) outs(%486 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x7x7x2048xf32>
    %490 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%489 : tensor<1x7x7x2048xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2048x7x7xf32>
    %491 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%490, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x2048x7x7xf32>
    %492 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%491, %collapsed_150 : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x2048x7x7xf32>
    %493 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x2048x7x7xf32>
    %494 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%493, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x2048x7x7xf32>
    %495 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%485, %494 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global436 = %495 : tensor<1x2048x7x7xf32>
    %496 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%495 : tensor<1x2048x7x7xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global437 = %496 : tensor<1x2048x7x7xf32>
    %497 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%496 : tensor<1x2048x7x7xf32>) outs(%486 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %collapsed_151 = tensor.collapse_shape %497 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %498 = tensor.empty() : tensor<49x512xf32>
    %499 = linalg.fill ins(%cst_28 : f32) outs(%498 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %500 = linalg.matmul ins(%collapsed_151, %cst_9 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%499 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %501 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_32, %500 : tensor<512xf32>, tensor<49x512xf32>) outs(%498 : tensor<49x512xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<49x512xf32>
    %expanded_152 = tensor.expand_shape %501 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %502 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_152 : tensor<1x7x7x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %503 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%502, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x7x7xf32>
    %504 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503, %collapsed_96 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x7x7xf32>
    %505 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%504, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x7x7xf32>
    %506 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%505, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global444 = %506 : tensor<1x512x7x7xf32>
    %507 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%506 : tensor<1x512x7x7xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global445 = %507 : tensor<1x512x7x7xf32>
    %508 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%507 : tensor<1x512x7x7xf32>) outs(%462 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_153 = tensor.pad %508 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %509 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_153, %cst_8 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%463 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %510 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_32, %509 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%462 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x7x7x512xf32>
    %511 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%510 : tensor<1x7x7x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %512 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x7x7xf32>
    %513 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%512, %collapsed_96 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x7x7xf32>
    %514 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%513, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x7x7xf32>
    %515 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%514, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global452 = %515 : tensor<1x512x7x7xf32>
    %516 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%515 : tensor<1x512x7x7xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global453 = %516 : tensor<1x512x7x7xf32>
    %517 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516 : tensor<1x512x7x7xf32>) outs(%462 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_154 = tensor.collapse_shape %517 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %518 = linalg.matmul ins(%collapsed_154, %cst_7 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%475 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %519 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_34, %518 : tensor<2048xf32>, tensor<49x2048xf32>) outs(%474 : tensor<49x2048xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<49x2048xf32>
    %expanded_155 = tensor.expand_shape %519 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %520 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_155 : tensor<1x7x7x2048xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2048x7x7xf32>
    %521 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%520, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x2048x7x7xf32>
    %522 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%521, %collapsed_150 : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x2048x7x7xf32>
    %523 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%522, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x2048x7x7xf32>
    %524 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%523, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x2048x7x7xf32>
    %525 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%524, %496 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global461 = %525 : tensor<1x2048x7x7xf32>
    %526 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525 : tensor<1x2048x7x7xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global462 = %526 : tensor<1x2048x7x7xf32>
    %527 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%526 : tensor<1x2048x7x7xf32>) outs(%486 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %collapsed_156 = tensor.collapse_shape %527 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %528 = linalg.matmul ins(%collapsed_156, %cst_9 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%499 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %529 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_32, %528 : tensor<512xf32>, tensor<49x512xf32>) outs(%498 : tensor<49x512xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<49x512xf32>
    %expanded_157 = tensor.expand_shape %529 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %530 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_157 : tensor<1x7x7x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %531 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%530, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x7x7xf32>
    %532 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%531, %collapsed_96 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x7x7xf32>
    %533 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%532, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x7x7xf32>
    %534 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%533, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global469 = %534 : tensor<1x512x7x7xf32>
    %535 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%534 : tensor<1x512x7x7xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global470 = %535 : tensor<1x512x7x7xf32>
    %536 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%535 : tensor<1x512x7x7xf32>) outs(%462 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_158 = tensor.pad %536 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %537 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_158, %cst_8 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%463 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %538 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_32, %537 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%462 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x7x7x512xf32>
    %539 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%538 : tensor<1x7x7x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %540 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%539, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x7x7xf32>
    %541 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%540, %collapsed_96 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x7x7xf32>
    %542 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%541, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x7x7xf32>
    %543 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%542, %cst_1 : tensor<1x512x7x7xf32>, tensor<1x512xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global477 = %543 : tensor<1x512x7x7xf32>
    %544 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%543 : tensor<1x512x7x7xf32>) outs(%466 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x512x7x7xf32>
    ml_program.global_store @global478 = %544 : tensor<1x512x7x7xf32>
    %545 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%544 : tensor<1x512x7x7xf32>) outs(%462 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_159 = tensor.collapse_shape %545 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %546 = linalg.matmul ins(%collapsed_159, %cst_7 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%475 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %547 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_34, %546 : tensor<2048xf32>, tensor<49x2048xf32>) outs(%474 : tensor<49x2048xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<49x2048xf32>
    %expanded_160 = tensor.expand_shape %547 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %548 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_160 : tensor<1x7x7x2048xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2048x7x7xf32>
    %549 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%548, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.subf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x2048x7x7xf32>
    %550 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%549, %collapsed_150 : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x2048x7x7xf32>
    %551 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%550, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.mulf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x2048x7x7xf32>
    %552 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%551, %cst : tensor<1x2048x7x7xf32>, tensor<1x2048xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x2048x7x7xf32>
    %553 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%552, %526 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global486 = %553 : tensor<1x2048x7x7xf32>
    %554 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%553 : tensor<1x2048x7x7xf32>) outs(%478 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.minf %in, %cst_4 : f32
      %567 = arith.maxf %566, %cst_28 : f32
      linalg.yield %567 : f32
    } -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global487 = %554 : tensor<1x2048x7x7xf32>
    %555 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%554 : tensor<1x2048x7x7xf32>) outs(%486 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %556 = tensor.empty() : tensor<1x1x1x2048xf32>
    %557 = linalg.fill ins(%cst_28 : f32) outs(%556 : tensor<1x1x1x2048xf32>) -> tensor<1x1x1x2048xf32>
    %558 = tensor.empty() : tensor<7x7xf32>
    %559 = linalg.pooling_nhwc_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%555, %558 : tensor<1x7x7x2048xf32>, tensor<7x7xf32>) outs(%557 : tensor<1x1x1x2048xf32>) -> tensor<1x1x1x2048xf32>
    %560 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%559 : tensor<1x1x1x2048xf32>) outs(%556 : tensor<1x1x1x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %566 = arith.divf %in, %cst_6 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1x1x2048xf32>
    %collapsed_161 = tensor.collapse_shape %560 [[0], [1, 2], [3]] : tensor<1x1x1x2048xf32> into tensor<1x1x2048xf32>
    %561 = tensor.empty() : tensor<1x1x1000xf32>
    %562 = linalg.fill ins(%cst_28 : f32) outs(%561 : tensor<1x1x1000xf32>) -> tensor<1x1x1000xf32>
    %563 = linalg.batch_matmul ins(%collapsed_161, %cst_36 : tensor<1x1x2048xf32>, tensor<1x2048x1000xf32>) outs(%562 : tensor<1x1x1000xf32>) -> tensor<1x1x1000xf32>
    %collapsed_162 = tensor.collapse_shape %563 [[0, 1], [2]] : tensor<1x1x1000xf32> into tensor<1x1000xf32>
    %564 = tensor.empty() : tensor<1x1000xf32>
    %565 = linalg.generic {indexing_maps = [#map7, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_162, %cst_35 : tensor<1x1000xf32>, tensor<1x1000xf32>) outs(%564 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_163: f32, %out: f32):
      %566 = arith.addf %in, %in_163 : f32
      linalg.yield %566 : f32
    } -> tensor<1x1000xf32>
    return %565 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant dense<0.000000e+00> : tensor<1xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<4096xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<2048xf32>
    %cst_2 = arith.constant dense<0.000000e+00> : tensor<1024xf32>
    %cst_3 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_4 = arith.constant dense<0.000000e+00> : tensor<12xf32>
    %cst_5 = arith.constant dense<0.0204081628> : tensor<1x7x7x2048xf32>
    %cst_6 = arith.constant -3.40282347E+38 : f32
    %cst_7 = arith.constant 0.000000e+00 : f32
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
    %134 = linalg.generic {indexing_maps = [#map8, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<1x2048x1000xf32>) outs(%133 : tensor<1x1000x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1000x2048xf32>
    %135 = tensor.empty() : tensor<1x1x2048xf32>
    %136 = linalg.fill ins(%cst_7 : f32) outs(%135 : tensor<1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %137 = linalg.batch_matmul ins(%expanded, %134 : tensor<1x1x1000xf32>, tensor<1x1000x2048xf32>) outs(%136 : tensor<1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %138 = tensor.empty() : tensor<1x7x7x2048xf32>
    %collapsed = tensor.collapse_shape %137 [[0, 1], [2]] : tensor<1x1x2048xf32> into tensor<1x2048xf32>
    %139 = linalg.generic {indexing_maps = [#map9, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed, %cst_5 : tensor<1x2048xf32>, tensor<1x7x7x2048xf32>) outs(%138 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x7x7x2048xf32>
    %140 = tensor.empty() : tensor<1x2048x7x7xf32>
    %141 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139 : tensor<1x7x7x2048xf32>) outs(%140 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2048x7x7xf32>
    %142 = tensor.empty() : tensor<1x2048x7x7xi1>
    %143 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %132 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%142 : tensor<1x2048x7x7xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x2048x7x7xi1>
    %144 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %141, %cst : tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<1xf32>) outs(%140 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x2048x7x7xf32>
    %collapsed_8 = tensor.collapse_shape %3 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %145 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_8, %144 : tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%140 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x2048x7x7xf32>
    %collapsed_9 = tensor.collapse_shape %118 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %146 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_9, %145 : tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%140 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x2048x7x7xf32>
    %147 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146 : tensor<1x2048x7x7xf32>) outs(%138 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %148 = tensor.empty() : tensor<512x1x1x2048xf32>
    %149 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<2048x1x1x512xf32>) outs(%148 : tensor<512x1x1x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1x1x2048xf32>
    %150 = tensor.empty() : tensor<512xf32>
    %collapsed_10 = tensor.collapse_shape %147 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %collapsed_11 = tensor.collapse_shape %149 [[0, 1, 2], [3]] : tensor<512x1x1x2048xf32> into tensor<512x2048xf32>
    %151 = tensor.empty() : tensor<49x512xf32>
    %152 = linalg.fill ins(%cst_7 : f32) outs(%151 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %153 = tensor.empty() : tensor<2048x512xf32>
    %154 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_11 : tensor<512x2048xf32>) outs(%153 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %155 = linalg.matmul ins(%collapsed_10, %154 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%152 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %156 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%150, %155 : tensor<512xf32>, tensor<49x512xf32>) outs(%151 : tensor<49x512xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<49x512xf32>
    %expanded_12 = tensor.expand_shape %156 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %157 = tensor.empty() : tensor<1x512x7x7xf32>
    %158 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_12 : tensor<1x7x7x512xf32>) outs(%157 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %159 = tensor.empty() : tensor<1x512x7x7xi1>
    %160 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %130 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%159 : tensor<1x512x7x7xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x512x7x7xi1>
    %161 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %158, %cst : tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<1xf32>) outs(%157 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x7x7xf32>
    %collapsed_13 = tensor.collapse_shape %15 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %162 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_13, %161 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%157 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x7x7xf32>
    %collapsed_14 = tensor.collapse_shape %56 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %163 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_14, %162 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%157 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x7x7xf32>
    %164 = tensor.empty() : tensor<1x7x7x512xf32>
    %165 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163 : tensor<1x512x7x7xf32>) outs(%164 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %166 = tensor.empty() : tensor<512x3x3x512xf32>
    %167 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<512x3x3x512xf32>) outs(%166 : tensor<512x3x3x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x3x3x512xf32>
    %168 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%166 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %776 = linalg.index 0 : index
      %777 = linalg.index 1 : index
      %778 = arith.subi %c2, %777 : index
      %779 = linalg.index 2 : index
      %780 = linalg.index 3 : index
      %extracted = tensor.extract %167[%776, %778, %779, %780] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %169 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%166 : tensor<512x3x3x512xf32>) {
    ^bb0(%out: f32):
      %776 = linalg.index 0 : index
      %777 = linalg.index 1 : index
      %778 = linalg.index 2 : index
      %779 = arith.subi %c2, %778 : index
      %780 = linalg.index 3 : index
      %extracted = tensor.extract %168[%776, %777, %779, %780] : tensor<512x3x3x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x3x3x512xf32>
    %padded = tensor.pad %165 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %170 = tensor.empty() : tensor<3x3x512x512xf32>
    %171 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<512x3x3x512xf32>) outs(%170 : tensor<3x3x512x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x512x512xf32>
    %172 = linalg.fill ins(%cst_7 : f32) outs(%164 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %173 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded, %171 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%172 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %174 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150, %173 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%164 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x7x7x512xf32>
    %175 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174 : tensor<1x7x7x512xf32>) outs(%157 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %176 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127, %128 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%159 : tensor<1x512x7x7xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x512x7x7xi1>
    %177 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176, %175, %cst : tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<1xf32>) outs(%157 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x7x7xf32>
    %178 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_13, %177 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%157 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x7x7xf32>
    %179 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_14, %178 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%157 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x7x7xf32>
    %180 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179 : tensor<1x512x7x7xf32>) outs(%164 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %181 = tensor.empty() : tensor<2048x1x1x512xf32>
    %182 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1 : tensor<512x1x1x2048xf32>) outs(%181 : tensor<2048x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x1x1x512xf32>
    %183 = tensor.empty() : tensor<2048xf32>
    %collapsed_15 = tensor.collapse_shape %180 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %collapsed_16 = tensor.collapse_shape %182 [[0, 1, 2], [3]] : tensor<2048x1x1x512xf32> into tensor<2048x512xf32>
    %184 = tensor.empty() : tensor<49x2048xf32>
    %185 = linalg.fill ins(%cst_7 : f32) outs(%184 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %186 = tensor.empty() : tensor<512x2048xf32>
    %187 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_16 : tensor<2048x512xf32>) outs(%186 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %188 = linalg.matmul ins(%collapsed_15, %187 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%185 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %189 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%183, %188 : tensor<2048xf32>, tensor<49x2048xf32>) outs(%184 : tensor<49x2048xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<49x2048xf32>
    %expanded_17 = tensor.expand_shape %189 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %190 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_17 : tensor<1x7x7x2048xf32>) outs(%140 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2048x7x7xf32>
    %191 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %190 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%140 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x2048x7x7xf32>
    %192 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125, %126 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%142 : tensor<1x2048x7x7xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x2048x7x7xi1>
    %193 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %191, %cst : tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<1xf32>) outs(%140 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x2048x7x7xf32>
    %194 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_8, %193 : tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%140 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x2048x7x7xf32>
    %195 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_9, %194 : tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%140 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x2048x7x7xf32>
    %196 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<1x2048x7x7xf32>) outs(%138 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %collapsed_18 = tensor.collapse_shape %196 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %197 = linalg.matmul ins(%collapsed_18, %154 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%152 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %198 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%150, %197 : tensor<512xf32>, tensor<49x512xf32>) outs(%151 : tensor<49x512xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<49x512xf32>
    %expanded_19 = tensor.expand_shape %198 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %199 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_19 : tensor<1x7x7x512xf32>) outs(%157 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %200 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123, %124 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%159 : tensor<1x512x7x7xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x512x7x7xi1>
    %201 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200, %199, %cst : tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<1xf32>) outs(%157 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x7x7xf32>
    %202 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_13, %201 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%157 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x7x7xf32>
    %203 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_14, %202 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%157 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x7x7xf32>
    %204 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203 : tensor<1x512x7x7xf32>) outs(%164 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_20 = tensor.pad %204 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %205 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_20, %171 : tensor<1x9x9x512xf32>, tensor<3x3x512x512xf32>) outs(%172 : tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %206 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150, %205 : tensor<512xf32>, tensor<1x7x7x512xf32>) outs(%164 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x7x7x512xf32>
    %207 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206 : tensor<1x7x7x512xf32>) outs(%157 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %208 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %122 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%159 : tensor<1x512x7x7xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x512x7x7xi1>
    %209 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %207, %cst : tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<1xf32>) outs(%157 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x7x7xf32>
    %210 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_13, %209 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%157 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x7x7xf32>
    %211 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_14, %210 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%157 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x7x7xf32>
    %212 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211 : tensor<1x512x7x7xf32>) outs(%164 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %collapsed_21 = tensor.collapse_shape %212 [[0, 1, 2], [3]] : tensor<1x7x7x512xf32> into tensor<49x512xf32>
    %213 = linalg.matmul ins(%collapsed_21, %187 : tensor<49x512xf32>, tensor<512x2048xf32>) outs(%185 : tensor<49x2048xf32>) -> tensor<49x2048xf32>
    %214 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%183, %213 : tensor<2048xf32>, tensor<49x2048xf32>) outs(%184 : tensor<49x2048xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<49x2048xf32>
    %expanded_22 = tensor.expand_shape %214 [[0, 1, 2], [3]] : tensor<49x2048xf32> into tensor<1x7x7x2048xf32>
    %215 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_22 : tensor<1x7x7x2048xf32>) outs(%140 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2048x7x7xf32>
    %216 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%193, %215 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%140 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x2048x7x7xf32>
    %217 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119, %120 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%142 : tensor<1x2048x7x7xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x2048x7x7xi1>
    %218 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217, %216, %cst : tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<1xf32>) outs(%140 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x2048x7x7xf32>
    %219 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_8, %218 : tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%140 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x2048x7x7xf32>
    %220 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_9, %219 : tensor<1x2048xf32>, tensor<1x2048x7x7xf32>) outs(%140 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x2048x7x7xf32>
    %221 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220 : tensor<1x2048x7x7xf32>) outs(%138 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x2048xf32>
    %222 = tensor.empty() : tensor<1024x1x1x2048xf32>
    %223 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<2048x1x1x1024xf32>) outs(%222 : tensor<1024x1x1x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x1x1x2048xf32>
    %224 = tensor.empty() : tensor<1024xf32>
    %padded_23 = tensor.pad %223 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1024x1x1x2048xf32> to tensor<1024x2x2x2048xf32>
    %expanded_24 = tensor.expand_shape %padded_23 [[0, 1], [2, 3], [4], [5]] : tensor<1024x2x2x2048xf32> into tensor<1024x1x2x1x2x2048xf32>
    %225 = tensor.empty() : tensor<2x2x1024x1x1x2048xf32>
    %226 = linalg.generic {indexing_maps = [#map14, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_24 : tensor<1024x1x2x1x2x2048xf32>) outs(%225 : tensor<2x2x1024x1x1x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x1024x1x1x2048xf32>
    %collapsed_25 = tensor.collapse_shape %221 [[0, 1, 2], [3]] : tensor<1x7x7x2048xf32> into tensor<49x2048xf32>
    %collapsed_26 = tensor.collapse_shape %226 [[0, 1, 2, 3, 4], [5]] : tensor<2x2x1024x1x1x2048xf32> into tensor<4096x2048xf32>
    %227 = tensor.empty() : tensor<49x4096xf32>
    %228 = linalg.fill ins(%cst_7 : f32) outs(%227 : tensor<49x4096xf32>) -> tensor<49x4096xf32>
    %229 = tensor.empty() : tensor<2048x4096xf32>
    %230 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_26 : tensor<4096x2048xf32>) outs(%229 : tensor<2048x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x4096xf32>
    %231 = linalg.matmul ins(%collapsed_25, %230 : tensor<49x2048xf32>, tensor<2048x4096xf32>) outs(%228 : tensor<49x4096xf32>) -> tensor<49x4096xf32>
    %232 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_0, %231 : tensor<4096xf32>, tensor<49x4096xf32>) outs(%227 : tensor<49x4096xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<49x4096xf32>
    %expanded_27 = tensor.expand_shape %232 [[0, 1, 2], [3, 4, 5]] : tensor<49x4096xf32> into tensor<1x7x7x2x2x1024xf32>
    %233 = tensor.empty() : tensor<1x7x2x7x2x1024xf32>
    %234 = linalg.generic {indexing_maps = [#map16, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_27 : tensor<1x7x7x2x2x1024xf32>) outs(%233 : tensor<1x7x2x7x2x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x2x7x2x1024xf32>
    %collapsed_28 = tensor.collapse_shape %234 [[0], [1, 2], [3, 4], [5]] : tensor<1x7x2x7x2x1024xf32> into tensor<1x14x14x1024xf32>
    %235 = tensor.empty() : tensor<1x14x14x1024xf32>
    %expanded_29 = tensor.expand_shape %224 [[0, 1]] : tensor<1024xf32> into tensor<1x1024xf32>
    %236 = linalg.generic {indexing_maps = [#map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_28, %expanded_29 : tensor<1x14x14x1024xf32>, tensor<1x1024xf32>) outs(%235 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x14x14x1024xf32>
    %237 = linalg.matmul ins(%collapsed_25, %154 : tensor<49x2048xf32>, tensor<2048x512xf32>) outs(%152 : tensor<49x512xf32>) -> tensor<49x512xf32>
    %238 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%150, %237 : tensor<512xf32>, tensor<49x512xf32>) outs(%151 : tensor<49x512xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<49x512xf32>
    %expanded_30 = tensor.expand_shape %238 [[0, 1, 2], [3]] : tensor<49x512xf32> into tensor<1x7x7x512xf32>
    %239 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_30 : tensor<1x7x7x512xf32>) outs(%157 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x7x7xf32>
    %240 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %117 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%159 : tensor<1x512x7x7xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x512x7x7xi1>
    %241 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240, %239, %cst : tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<1xf32>) outs(%157 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x7x7xf32>
    %242 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_13, %241 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%157 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x7x7xf32>
    %243 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_14, %242 : tensor<1x512xf32>, tensor<1x512x7x7xf32>) outs(%157 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x7x7xf32>
    %244 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243 : tensor<1x512x7x7xf32>) outs(%164 : tensor<1x7x7x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x512xf32>
    %padded_31 = tensor.pad %167 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<512x3x3x512xf32> to tensor<512x4x4x512xf32>
    %expanded_32 = tensor.expand_shape %padded_31 [[0], [1, 2], [3, 4], [5]] : tensor<512x4x4x512xf32> into tensor<512x2x2x2x2x512xf32>
    %245 = tensor.empty() : tensor<2x2x512x2x2x512xf32>
    %246 = linalg.generic {indexing_maps = [#map14, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_32 : tensor<512x2x2x2x2x512xf32>) outs(%245 : tensor<2x2x512x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x512x2x2x512xf32>
    %collapsed_33 = tensor.collapse_shape %246 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x512x2x2x512xf32> into tensor<2048x2x2x512xf32>
    %247 = tensor.empty() : tensor<2048x2x2x512xf32>
    %248 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%247 : tensor<2048x2x2x512xf32>) {
    ^bb0(%out: f32):
      %776 = linalg.index 0 : index
      %777 = linalg.index 1 : index
      %778 = arith.subi %c1, %777 : index
      %779 = linalg.index 2 : index
      %780 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_33[%776, %778, %779, %780] : tensor<2048x2x2x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<2048x2x2x512xf32>
    %249 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%247 : tensor<2048x2x2x512xf32>) {
    ^bb0(%out: f32):
      %776 = linalg.index 0 : index
      %777 = linalg.index 1 : index
      %778 = linalg.index 2 : index
      %779 = arith.subi %c1, %778 : index
      %780 = linalg.index 3 : index
      %extracted = tensor.extract %248[%776, %777, %779, %780] : tensor<2048x2x2x512xf32>
      linalg.yield %extracted : f32
    } -> tensor<2048x2x2x512xf32>
    %padded_34 = tensor.pad %244 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x7x7x512xf32> to tensor<1x9x9x512xf32>
    %250 = tensor.empty() : tensor<2x2x512x2048xf32>
    %251 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249 : tensor<2048x2x2x512xf32>) outs(%250 : tensor<2x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x512x2048xf32>
    %252 = tensor.empty() : tensor<1x8x8x2048xf32>
    %253 = linalg.fill ins(%cst_7 : f32) outs(%252 : tensor<1x8x8x2048xf32>) -> tensor<1x8x8x2048xf32>
    %254 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_34, %251 : tensor<1x9x9x512xf32>, tensor<2x2x512x2048xf32>) outs(%253 : tensor<1x8x8x2048xf32>) -> tensor<1x8x8x2048xf32>
    %255 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1, %254 : tensor<2048xf32>, tensor<1x8x8x2048xf32>) outs(%252 : tensor<1x8x8x2048xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x8x8x2048xf32>
    %expanded_35 = tensor.expand_shape %255 [[0], [1], [2], [3, 4, 5]] : tensor<1x8x8x2048xf32> into tensor<1x8x8x2x2x512xf32>
    %256 = tensor.empty() : tensor<1x8x2x8x2x512xf32>
    %257 = linalg.generic {indexing_maps = [#map16, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_35 : tensor<1x8x8x2x2x512xf32>) outs(%256 : tensor<1x8x2x8x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x2x8x2x512xf32>
    %collapsed_36 = tensor.collapse_shape %257 [[0], [1, 2], [3, 4], [5]] : tensor<1x8x2x8x2x512xf32> into tensor<1x16x16x512xf32>
    %extracted_slice = tensor.extract_slice %collapsed_36[0, 1, 1, 0] [1, 14, 14, 512] [1, 1, 1, 1] : tensor<1x16x16x512xf32> to tensor<1x14x14x512xf32>
    %258 = tensor.empty() : tensor<1x14x14x512xf32>
    %expanded_37 = tensor.expand_shape %150 [[0, 1]] : tensor<512xf32> into tensor<1x512xf32>
    %259 = linalg.generic {indexing_maps = [#map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice, %expanded_37 : tensor<1x14x14x512xf32>, tensor<1x512xf32>) outs(%258 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x14x14x512xf32>
    %260 = tensor.empty() : tensor<1x512x14x14xf32>
    %261 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x14x14x512xf32>) outs(%260 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %262 = tensor.empty() : tensor<1x512x14x14xi1>
    %263 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %115 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%262 : tensor<1x512x14x14xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x512x14x14xi1>
    %264 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263, %261, %cst : tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<1xf32>) outs(%260 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x14x14xf32>
    %265 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_13, %264 : tensor<1x512xf32>, tensor<1x512x14x14xf32>) outs(%260 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x14x14xf32>
    %266 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_14, %265 : tensor<1x512xf32>, tensor<1x512x14x14xf32>) outs(%260 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x14x14xf32>
    %267 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266 : tensor<1x512x14x14xf32>) outs(%258 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x512xf32>
    %268 = tensor.empty() : tensor<1024x1x1x512xf32>
    %269 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<512x1x1x1024xf32>) outs(%268 : tensor<1024x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x1x1x512xf32>
    %collapsed_38 = tensor.collapse_shape %267 [[0, 1, 2], [3]] : tensor<1x14x14x512xf32> into tensor<196x512xf32>
    %collapsed_39 = tensor.collapse_shape %269 [[0, 1, 2], [3]] : tensor<1024x1x1x512xf32> into tensor<1024x512xf32>
    %270 = tensor.empty() : tensor<196x1024xf32>
    %271 = linalg.fill ins(%cst_7 : f32) outs(%270 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %272 = tensor.empty() : tensor<512x1024xf32>
    %273 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_39 : tensor<1024x512xf32>) outs(%272 : tensor<512x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1024xf32>
    %274 = linalg.matmul ins(%collapsed_38, %273 : tensor<196x512xf32>, tensor<512x1024xf32>) outs(%271 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %275 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%224, %274 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%270 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<196x1024xf32>
    %expanded_40 = tensor.expand_shape %275 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %276 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236, %expanded_40 : tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) outs(%235 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x14x14x1024xf32>
    %277 = tensor.empty() : tensor<1x1024x14x14xf32>
    %278 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276 : tensor<1x14x14x1024xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %279 = tensor.empty() : tensor<1x1024x14x14xi1>
    %280 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112, %113 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%279 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x1024x14x14xi1>
    %281 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280, %278, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %collapsed_41 = tensor.collapse_shape %9 [[0], [1, 2, 3]] : tensor<1x1024x1x1xf32> into tensor<1x1024xf32>
    %282 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %281 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %collapsed_42 = tensor.collapse_shape %81 [[0], [1, 2, 3]] : tensor<1x1024x1x1xf32> into tensor<1x1024xf32>
    %283 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %282 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %284 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283 : tensor<1x1024x14x14xf32>) outs(%235 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %285 = tensor.empty() : tensor<256x1x1x1024xf32>
    %286 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1024x1x1x256xf32>) outs(%285 : tensor<256x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1x1x1024xf32>
    %287 = tensor.empty() : tensor<256xf32>
    %collapsed_43 = tensor.collapse_shape %284 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %collapsed_44 = tensor.collapse_shape %286 [[0, 1, 2], [3]] : tensor<256x1x1x1024xf32> into tensor<256x1024xf32>
    %288 = tensor.empty() : tensor<196x256xf32>
    %289 = linalg.fill ins(%cst_7 : f32) outs(%288 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %290 = tensor.empty() : tensor<1024x256xf32>
    %291 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_44 : tensor<256x1024xf32>) outs(%290 : tensor<1024x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x256xf32>
    %292 = linalg.matmul ins(%collapsed_43, %291 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%289 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %293 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%287, %292 : tensor<256xf32>, tensor<196x256xf32>) outs(%288 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<196x256xf32>
    %expanded_45 = tensor.expand_shape %293 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %294 = tensor.empty() : tensor<1x256x14x14xf32>
    %295 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_45 : tensor<1x14x14x256xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %296 = tensor.empty() : tensor<1x256x14x14xi1>
    %297 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110, %111 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%296 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x256x14x14xi1>
    %298 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297, %295, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %collapsed_46 = tensor.collapse_shape %21 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %299 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %298 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %collapsed_47 = tensor.collapse_shape %36 [[0], [1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<1x256xf32>
    %300 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %299 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %301 = tensor.empty() : tensor<1x14x14x256xf32>
    %302 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300 : tensor<1x256x14x14xf32>) outs(%301 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %303 = tensor.empty() : tensor<256x3x3x256xf32>
    %304 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11 : tensor<256x3x3x256xf32>) outs(%303 : tensor<256x3x3x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x3x3x256xf32>
    %305 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%303 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %776 = linalg.index 0 : index
      %777 = linalg.index 1 : index
      %778 = arith.subi %c2, %777 : index
      %779 = linalg.index 2 : index
      %780 = linalg.index 3 : index
      %extracted = tensor.extract %304[%776, %778, %779, %780] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %306 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%303 : tensor<256x3x3x256xf32>) {
    ^bb0(%out: f32):
      %776 = linalg.index 0 : index
      %777 = linalg.index 1 : index
      %778 = linalg.index 2 : index
      %779 = arith.subi %c2, %778 : index
      %780 = linalg.index 3 : index
      %extracted = tensor.extract %305[%776, %777, %779, %780] : tensor<256x3x3x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<256x3x3x256xf32>
    %padded_48 = tensor.pad %302 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %307 = tensor.empty() : tensor<3x3x256x256xf32>
    %308 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306 : tensor<256x3x3x256xf32>) outs(%307 : tensor<3x3x256x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x256x256xf32>
    %309 = linalg.fill ins(%cst_7 : f32) outs(%301 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %310 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_48, %308 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%309 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %311 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %310 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%301 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x14x14x256xf32>
    %312 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311 : tensor<1x14x14x256xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %313 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108, %109 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%296 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x256x14x14xi1>
    %314 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313, %312, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %315 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %314 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %316 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %315 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %317 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316 : tensor<1x256x14x14xf32>) outs(%301 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %318 = tensor.empty() : tensor<1024x1x1x256xf32>
    %319 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<256x1x1x1024xf32>) outs(%318 : tensor<1024x1x1x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x1x1x256xf32>
    %collapsed_49 = tensor.collapse_shape %317 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %collapsed_50 = tensor.collapse_shape %319 [[0, 1, 2], [3]] : tensor<1024x1x1x256xf32> into tensor<1024x256xf32>
    %320 = tensor.empty() : tensor<256x1024xf32>
    %321 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_50 : tensor<1024x256xf32>) outs(%320 : tensor<256x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1024xf32>
    %322 = linalg.matmul ins(%collapsed_49, %321 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%271 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %323 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%224, %322 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%270 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<196x1024xf32>
    %expanded_51 = tensor.expand_shape %323 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %324 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_51 : tensor<1x14x14x1024xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %325 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %324 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %326 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %107 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%279 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x1024x14x14xi1>
    %327 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326, %325, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %328 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %327 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %329 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %328 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %330 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329 : tensor<1x1024x14x14xf32>) outs(%235 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_52 = tensor.collapse_shape %330 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %331 = linalg.matmul ins(%collapsed_52, %291 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%289 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %332 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%287, %331 : tensor<256xf32>, tensor<196x256xf32>) outs(%288 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<196x256xf32>
    %expanded_53 = tensor.expand_shape %332 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %333 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_53 : tensor<1x14x14x256xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %334 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104, %105 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%296 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x256x14x14xi1>
    %335 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334, %333, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %336 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %335 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %337 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %336 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %338 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337 : tensor<1x256x14x14xf32>) outs(%301 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_54 = tensor.pad %338 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %339 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_54, %308 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%309 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %340 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %339 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%301 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x14x14x256xf32>
    %341 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340 : tensor<1x14x14x256xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %342 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102, %103 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%296 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x256x14x14xi1>
    %343 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342, %341, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %344 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %343 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %345 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %344 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %346 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345 : tensor<1x256x14x14xf32>) outs(%301 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_55 = tensor.collapse_shape %346 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %347 = linalg.matmul ins(%collapsed_55, %321 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%271 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %348 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%224, %347 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%270 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<196x1024xf32>
    %expanded_56 = tensor.expand_shape %348 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %349 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_56 : tensor<1x14x14x1024xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %350 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %349 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %351 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %101 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%279 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x1024x14x14xi1>
    %352 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351, %350, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %353 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %352 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %354 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %353 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %355 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354 : tensor<1x1024x14x14xf32>) outs(%235 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_57 = tensor.collapse_shape %355 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %356 = linalg.matmul ins(%collapsed_57, %291 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%289 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %357 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%287, %356 : tensor<256xf32>, tensor<196x256xf32>) outs(%288 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<196x256xf32>
    %expanded_58 = tensor.expand_shape %357 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %358 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_58 : tensor<1x14x14x256xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %359 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %99 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%296 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x256x14x14xi1>
    %360 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %358, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %361 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %360 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %362 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %361 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %363 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%362 : tensor<1x256x14x14xf32>) outs(%301 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_59 = tensor.pad %363 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %364 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_59, %308 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%309 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %365 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %364 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%301 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x14x14x256xf32>
    %366 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365 : tensor<1x14x14x256xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %367 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %97 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%296 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x256x14x14xi1>
    %368 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367, %366, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %369 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %368 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %370 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %369 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %371 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%370 : tensor<1x256x14x14xf32>) outs(%301 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_60 = tensor.collapse_shape %371 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %372 = linalg.matmul ins(%collapsed_60, %321 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%271 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %373 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%224, %372 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%270 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<196x1024xf32>
    %expanded_61 = tensor.expand_shape %373 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %374 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_61 : tensor<1x14x14x1024xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %375 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352, %374 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %376 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94, %95 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%279 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x1024x14x14xi1>
    %377 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376, %375, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %378 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %377 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %379 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %378 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %380 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379 : tensor<1x1024x14x14xf32>) outs(%235 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_62 = tensor.collapse_shape %380 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %381 = linalg.matmul ins(%collapsed_62, %291 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%289 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %382 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%287, %381 : tensor<256xf32>, tensor<196x256xf32>) outs(%288 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<196x256xf32>
    %expanded_63 = tensor.expand_shape %382 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %383 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_63 : tensor<1x14x14x256xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %384 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92, %93 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%296 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x256x14x14xi1>
    %385 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%384, %383, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %386 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %385 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %387 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %386 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %388 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%387 : tensor<1x256x14x14xf32>) outs(%301 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_64 = tensor.pad %388 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %389 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_64, %308 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%309 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %390 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %389 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%301 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x14x14x256xf32>
    %391 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%390 : tensor<1x14x14x256xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %392 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90, %91 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%296 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x256x14x14xi1>
    %393 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392, %391, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %394 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %393 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %395 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %394 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %396 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%395 : tensor<1x256x14x14xf32>) outs(%301 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_65 = tensor.collapse_shape %396 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %397 = linalg.matmul ins(%collapsed_65, %321 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%271 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %398 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%224, %397 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%270 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<196x1024xf32>
    %expanded_66 = tensor.expand_shape %398 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %399 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_66 : tensor<1x14x14x1024xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %400 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%377, %399 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %401 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %89 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%279 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x1024x14x14xi1>
    %402 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401, %400, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %403 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %402 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %404 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %403 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %405 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%404 : tensor<1x1024x14x14xf32>) outs(%235 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %collapsed_67 = tensor.collapse_shape %405 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %406 = linalg.matmul ins(%collapsed_67, %291 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%289 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %407 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%287, %406 : tensor<256xf32>, tensor<196x256xf32>) outs(%288 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<196x256xf32>
    %expanded_68 = tensor.expand_shape %407 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %408 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_68 : tensor<1x14x14x256xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %409 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %87 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%296 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x256x14x14xi1>
    %410 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%409, %408, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %411 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %410 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %412 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %411 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %413 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%412 : tensor<1x256x14x14xf32>) outs(%301 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_69 = tensor.pad %413 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %414 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_69, %308 : tensor<1x16x16x256xf32>, tensor<3x3x256x256xf32>) outs(%309 : tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %415 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %414 : tensor<256xf32>, tensor<1x14x14x256xf32>) outs(%301 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x14x14x256xf32>
    %416 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%415 : tensor<1x14x14x256xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %417 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84, %85 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%296 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x256x14x14xi1>
    %418 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%417, %416, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %419 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %418 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %420 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %419 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %421 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%420 : tensor<1x256x14x14xf32>) outs(%301 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %collapsed_70 = tensor.collapse_shape %421 [[0, 1, 2], [3]] : tensor<1x14x14x256xf32> into tensor<196x256xf32>
    %422 = linalg.matmul ins(%collapsed_70, %321 : tensor<196x256xf32>, tensor<256x1024xf32>) outs(%271 : tensor<196x1024xf32>) -> tensor<196x1024xf32>
    %423 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%224, %422 : tensor<1024xf32>, tensor<196x1024xf32>) outs(%270 : tensor<196x1024xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<196x1024xf32>
    %expanded_71 = tensor.expand_shape %423 [[0, 1, 2], [3]] : tensor<196x1024xf32> into tensor<1x14x14x1024xf32>
    %424 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_71 : tensor<1x14x14x1024xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x14x14xf32>
    %425 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%402, %424 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %426 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %83 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%279 : tensor<1x1024x14x14xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x1024x14x14xi1>
    %427 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426, %425, %cst : tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<1xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %428 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_41, %427 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %429 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_42, %428 : tensor<1x1024xf32>, tensor<1x1024x14x14xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x1024x14x14xf32>
    %430 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%429 : tensor<1x1024x14x14xf32>) outs(%235 : tensor<1x14x14x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1024xf32>
    %431 = tensor.empty() : tensor<512x1x1x1024xf32>
    %432 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1024x1x1x512xf32>) outs(%431 : tensor<512x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1x1x1024xf32>
    %padded_72 = tensor.pad %432 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<512x1x1x1024xf32> to tensor<512x2x2x1024xf32>
    %expanded_73 = tensor.expand_shape %padded_72 [[0, 1], [2, 3], [4], [5]] : tensor<512x2x2x1024xf32> into tensor<512x1x2x1x2x1024xf32>
    %433 = tensor.empty() : tensor<2x2x512x1x1x1024xf32>
    %434 = linalg.generic {indexing_maps = [#map14, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_73 : tensor<512x1x2x1x2x1024xf32>) outs(%433 : tensor<2x2x512x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x512x1x1x1024xf32>
    %collapsed_74 = tensor.collapse_shape %430 [[0, 1, 2], [3]] : tensor<1x14x14x1024xf32> into tensor<196x1024xf32>
    %collapsed_75 = tensor.collapse_shape %434 [[0, 1, 2, 3, 4], [5]] : tensor<2x2x512x1x1x1024xf32> into tensor<2048x1024xf32>
    %435 = tensor.empty() : tensor<196x2048xf32>
    %436 = linalg.fill ins(%cst_7 : f32) outs(%435 : tensor<196x2048xf32>) -> tensor<196x2048xf32>
    %437 = tensor.empty() : tensor<1024x2048xf32>
    %438 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_75 : tensor<2048x1024xf32>) outs(%437 : tensor<1024x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x2048xf32>
    %439 = linalg.matmul ins(%collapsed_74, %438 : tensor<196x1024xf32>, tensor<1024x2048xf32>) outs(%436 : tensor<196x2048xf32>) -> tensor<196x2048xf32>
    %440 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_1, %439 : tensor<2048xf32>, tensor<196x2048xf32>) outs(%435 : tensor<196x2048xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<196x2048xf32>
    %expanded_76 = tensor.expand_shape %440 [[0, 1, 2], [3, 4, 5]] : tensor<196x2048xf32> into tensor<1x14x14x2x2x512xf32>
    %441 = tensor.empty() : tensor<1x14x2x14x2x512xf32>
    %442 = linalg.generic {indexing_maps = [#map16, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_76 : tensor<1x14x14x2x2x512xf32>) outs(%441 : tensor<1x14x2x14x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x2x14x2x512xf32>
    %collapsed_77 = tensor.collapse_shape %442 [[0], [1, 2], [3, 4], [5]] : tensor<1x14x2x14x2x512xf32> into tensor<1x28x28x512xf32>
    %443 = tensor.empty() : tensor<1x28x28x512xf32>
    %444 = linalg.generic {indexing_maps = [#map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_77, %expanded_37 : tensor<1x28x28x512xf32>, tensor<1x512xf32>) outs(%443 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x28x28x512xf32>
    %445 = linalg.matmul ins(%collapsed_74, %291 : tensor<196x1024xf32>, tensor<1024x256xf32>) outs(%289 : tensor<196x256xf32>) -> tensor<196x256xf32>
    %446 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%287, %445 : tensor<256xf32>, tensor<196x256xf32>) outs(%288 : tensor<196x256xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<196x256xf32>
    %expanded_78 = tensor.expand_shape %446 [[0, 1, 2], [3]] : tensor<196x256xf32> into tensor<1x14x14x256xf32>
    %447 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_78 : tensor<1x14x14x256xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x14x14xf32>
    %448 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %80 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%296 : tensor<1x256x14x14xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x256x14x14xi1>
    %449 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448, %447, %cst : tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<1xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %450 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %449 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %451 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %450 : tensor<1x256xf32>, tensor<1x256x14x14xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x14x14xf32>
    %452 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451 : tensor<1x256x14x14xf32>) outs(%301 : tensor<1x14x14x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x256xf32>
    %padded_79 = tensor.pad %304 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<256x3x3x256xf32> to tensor<256x4x4x256xf32>
    %expanded_80 = tensor.expand_shape %padded_79 [[0], [1, 2], [3, 4], [5]] : tensor<256x4x4x256xf32> into tensor<256x2x2x2x2x256xf32>
    %453 = tensor.empty() : tensor<2x2x256x2x2x256xf32>
    %454 = linalg.generic {indexing_maps = [#map14, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_80 : tensor<256x2x2x2x2x256xf32>) outs(%453 : tensor<2x2x256x2x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x256x2x2x256xf32>
    %collapsed_81 = tensor.collapse_shape %454 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x256x2x2x256xf32> into tensor<1024x2x2x256xf32>
    %455 = tensor.empty() : tensor<1024x2x2x256xf32>
    %456 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%455 : tensor<1024x2x2x256xf32>) {
    ^bb0(%out: f32):
      %776 = linalg.index 0 : index
      %777 = linalg.index 1 : index
      %778 = arith.subi %c1, %777 : index
      %779 = linalg.index 2 : index
      %780 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_81[%776, %778, %779, %780] : tensor<1024x2x2x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<1024x2x2x256xf32>
    %457 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%455 : tensor<1024x2x2x256xf32>) {
    ^bb0(%out: f32):
      %776 = linalg.index 0 : index
      %777 = linalg.index 1 : index
      %778 = linalg.index 2 : index
      %779 = arith.subi %c1, %778 : index
      %780 = linalg.index 3 : index
      %extracted = tensor.extract %456[%776, %777, %779, %780] : tensor<1024x2x2x256xf32>
      linalg.yield %extracted : f32
    } -> tensor<1024x2x2x256xf32>
    %padded_82 = tensor.pad %452 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x14x14x256xf32> to tensor<1x16x16x256xf32>
    %458 = tensor.empty() : tensor<2x2x256x1024xf32>
    %459 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%457 : tensor<1024x2x2x256xf32>) outs(%458 : tensor<2x2x256x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x256x1024xf32>
    %460 = tensor.empty() : tensor<1x15x15x1024xf32>
    %461 = linalg.fill ins(%cst_7 : f32) outs(%460 : tensor<1x15x15x1024xf32>) -> tensor<1x15x15x1024xf32>
    %462 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_82, %459 : tensor<1x16x16x256xf32>, tensor<2x2x256x1024xf32>) outs(%461 : tensor<1x15x15x1024xf32>) -> tensor<1x15x15x1024xf32>
    %463 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_2, %462 : tensor<1024xf32>, tensor<1x15x15x1024xf32>) outs(%460 : tensor<1x15x15x1024xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x15x15x1024xf32>
    %expanded_83 = tensor.expand_shape %463 [[0], [1], [2], [3, 4, 5]] : tensor<1x15x15x1024xf32> into tensor<1x15x15x2x2x256xf32>
    %464 = tensor.empty() : tensor<1x15x2x15x2x256xf32>
    %465 = linalg.generic {indexing_maps = [#map16, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_83 : tensor<1x15x15x2x2x256xf32>) outs(%464 : tensor<1x15x2x15x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x15x2x15x2x256xf32>
    %collapsed_84 = tensor.collapse_shape %465 [[0], [1, 2], [3, 4], [5]] : tensor<1x15x2x15x2x256xf32> into tensor<1x30x30x256xf32>
    %extracted_slice_85 = tensor.extract_slice %collapsed_84[0, 1, 1, 0] [1, 28, 28, 256] [1, 1, 1, 1] : tensor<1x30x30x256xf32> to tensor<1x28x28x256xf32>
    %466 = tensor.empty() : tensor<1x28x28x256xf32>
    %expanded_86 = tensor.expand_shape %287 [[0, 1]] : tensor<256xf32> into tensor<1x256xf32>
    %467 = linalg.generic {indexing_maps = [#map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_85, %expanded_86 : tensor<1x28x28x256xf32>, tensor<1x256xf32>) outs(%466 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x28x28x256xf32>
    %468 = tensor.empty() : tensor<1x256x28x28xf32>
    %469 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%467 : tensor<1x28x28x256xf32>) outs(%468 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x28x28xf32>
    %470 = tensor.empty() : tensor<1x256x28x28xi1>
    %471 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77, %78 : tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) outs(%470 : tensor<1x256x28x28xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x256x28x28xi1>
    %472 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%471, %469, %cst : tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<1xf32>) outs(%468 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x28x28xf32>
    %473 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %472 : tensor<1x256xf32>, tensor<1x256x28x28xf32>) outs(%468 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x28x28xf32>
    %474 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %473 : tensor<1x256xf32>, tensor<1x256x28x28xf32>) outs(%468 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x28x28xf32>
    %475 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%474 : tensor<1x256x28x28xf32>) outs(%466 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x256xf32>
    %476 = tensor.empty() : tensor<512x1x1x256xf32>
    %477 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<256x1x1x512xf32>) outs(%476 : tensor<512x1x1x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1x1x256xf32>
    %collapsed_87 = tensor.collapse_shape %475 [[0, 1, 2], [3]] : tensor<1x28x28x256xf32> into tensor<784x256xf32>
    %collapsed_88 = tensor.collapse_shape %477 [[0, 1, 2], [3]] : tensor<512x1x1x256xf32> into tensor<512x256xf32>
    %478 = tensor.empty() : tensor<784x512xf32>
    %479 = linalg.fill ins(%cst_7 : f32) outs(%478 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %480 = tensor.empty() : tensor<256x512xf32>
    %481 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_88 : tensor<512x256xf32>) outs(%480 : tensor<256x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x512xf32>
    %482 = linalg.matmul ins(%collapsed_87, %481 : tensor<784x256xf32>, tensor<256x512xf32>) outs(%479 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %483 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%150, %482 : tensor<512xf32>, tensor<784x512xf32>) outs(%478 : tensor<784x512xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<784x512xf32>
    %expanded_89 = tensor.expand_shape %483 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %484 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%444, %expanded_89 : tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) outs(%443 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x28x28x512xf32>
    %485 = tensor.empty() : tensor<1x512x28x28xf32>
    %486 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%484 : tensor<1x28x28x512xf32>) outs(%485 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %487 = tensor.empty() : tensor<1x512x28x28xi1>
    %488 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %76 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%487 : tensor<1x512x28x28xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x512x28x28xi1>
    %489 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%488, %486, %cst : tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<1xf32>) outs(%485 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x28x28xf32>
    %490 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_13, %489 : tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%485 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x28x28xf32>
    %491 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_14, %490 : tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%485 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x28x28xf32>
    %492 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%491 : tensor<1x512x28x28xf32>) outs(%443 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %493 = tensor.empty() : tensor<128x1x1x512xf32>
    %494 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<512x1x1x128xf32>) outs(%493 : tensor<128x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x1x1x512xf32>
    %495 = tensor.empty() : tensor<128xf32>
    %collapsed_90 = tensor.collapse_shape %492 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %collapsed_91 = tensor.collapse_shape %494 [[0, 1, 2], [3]] : tensor<128x1x1x512xf32> into tensor<128x512xf32>
    %496 = tensor.empty() : tensor<784x128xf32>
    %497 = linalg.fill ins(%cst_7 : f32) outs(%496 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %498 = tensor.empty() : tensor<512x128xf32>
    %499 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_91 : tensor<128x512xf32>) outs(%498 : tensor<512x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x128xf32>
    %500 = linalg.matmul ins(%collapsed_90, %499 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%497 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %501 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%495, %500 : tensor<128xf32>, tensor<784x128xf32>) outs(%496 : tensor<784x128xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<784x128xf32>
    %expanded_92 = tensor.expand_shape %501 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %502 = tensor.empty() : tensor<1x128x28x28xf32>
    %503 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_92 : tensor<1x28x28x128xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %504 = tensor.empty() : tensor<1x128x28x28xi1>
    %505 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %74 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%504 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x128x28x28xi1>
    %506 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%505, %503, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %collapsed_93 = tensor.collapse_shape %18 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %507 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_93, %506 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %collapsed_94 = tensor.collapse_shape %51 [[0], [1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<1x128xf32>
    %508 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_94, %507 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %509 = tensor.empty() : tensor<1x28x28x128xf32>
    %510 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%508 : tensor<1x128x28x28xf32>) outs(%509 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %511 = tensor.empty() : tensor<128x3x3x128xf32>
    %512 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17 : tensor<128x3x3x128xf32>) outs(%511 : tensor<128x3x3x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x3x3x128xf32>
    %513 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%511 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %776 = linalg.index 0 : index
      %777 = linalg.index 1 : index
      %778 = arith.subi %c2, %777 : index
      %779 = linalg.index 2 : index
      %780 = linalg.index 3 : index
      %extracted = tensor.extract %512[%776, %778, %779, %780] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %514 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%511 : tensor<128x3x3x128xf32>) {
    ^bb0(%out: f32):
      %776 = linalg.index 0 : index
      %777 = linalg.index 1 : index
      %778 = linalg.index 2 : index
      %779 = arith.subi %c2, %778 : index
      %780 = linalg.index 3 : index
      %extracted = tensor.extract %513[%776, %777, %779, %780] : tensor<128x3x3x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<128x3x3x128xf32>
    %padded_95 = tensor.pad %510 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %515 = tensor.empty() : tensor<3x3x128x128xf32>
    %516 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%514 : tensor<128x3x3x128xf32>) outs(%515 : tensor<3x3x128x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x128x128xf32>
    %517 = linalg.fill ins(%cst_7 : f32) outs(%509 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %518 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_95, %516 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%517 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %519 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%495, %518 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%509 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x28x28x128xf32>
    %520 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519 : tensor<1x28x28x128xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %521 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %72 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%504 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x128x28x28xi1>
    %522 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%521, %520, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %523 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_93, %522 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %524 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_94, %523 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %525 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%524 : tensor<1x128x28x28xf32>) outs(%509 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %526 = tensor.empty() : tensor<512x1x1x128xf32>
    %527 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<128x1x1x512xf32>) outs(%526 : tensor<512x1x1x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1x1x128xf32>
    %collapsed_96 = tensor.collapse_shape %525 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %collapsed_97 = tensor.collapse_shape %527 [[0, 1, 2], [3]] : tensor<512x1x1x128xf32> into tensor<512x128xf32>
    %528 = tensor.empty() : tensor<128x512xf32>
    %529 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_97 : tensor<512x128xf32>) outs(%528 : tensor<128x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x512xf32>
    %530 = linalg.matmul ins(%collapsed_96, %529 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%479 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %531 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%150, %530 : tensor<512xf32>, tensor<784x512xf32>) outs(%478 : tensor<784x512xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<784x512xf32>
    %expanded_98 = tensor.expand_shape %531 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %532 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_98 : tensor<1x28x28x512xf32>) outs(%485 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %533 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%489, %532 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%485 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x28x28xf32>
    %534 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %70 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%487 : tensor<1x512x28x28xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x512x28x28xi1>
    %535 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%534, %533, %cst : tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<1xf32>) outs(%485 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x28x28xf32>
    %536 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_13, %535 : tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%485 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x28x28xf32>
    %537 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_14, %536 : tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%485 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x28x28xf32>
    %538 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%537 : tensor<1x512x28x28xf32>) outs(%443 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_99 = tensor.collapse_shape %538 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %539 = linalg.matmul ins(%collapsed_99, %499 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%497 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %540 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%495, %539 : tensor<128xf32>, tensor<784x128xf32>) outs(%496 : tensor<784x128xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<784x128xf32>
    %expanded_100 = tensor.expand_shape %540 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %541 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_100 : tensor<1x28x28x128xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %542 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %68 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%504 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x128x28x28xi1>
    %543 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%542, %541, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %544 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_93, %543 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %545 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_94, %544 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %546 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%545 : tensor<1x128x28x28xf32>) outs(%509 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_101 = tensor.pad %546 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %547 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_101, %516 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%517 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %548 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%495, %547 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%509 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x28x28x128xf32>
    %549 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%548 : tensor<1x28x28x128xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %550 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65, %66 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%504 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x128x28x28xi1>
    %551 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%550, %549, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %552 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_93, %551 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %553 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_94, %552 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %554 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%553 : tensor<1x128x28x28xf32>) outs(%509 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_102 = tensor.collapse_shape %554 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %555 = linalg.matmul ins(%collapsed_102, %529 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%479 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %556 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%150, %555 : tensor<512xf32>, tensor<784x512xf32>) outs(%478 : tensor<784x512xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<784x512xf32>
    %expanded_103 = tensor.expand_shape %556 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %557 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_103 : tensor<1x28x28x512xf32>) outs(%485 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %558 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%535, %557 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%485 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x28x28xf32>
    %559 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %64 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%487 : tensor<1x512x28x28xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x512x28x28xi1>
    %560 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%559, %558, %cst : tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<1xf32>) outs(%485 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x28x28xf32>
    %561 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_13, %560 : tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%485 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x28x28xf32>
    %562 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_14, %561 : tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%485 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x28x28xf32>
    %563 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%562 : tensor<1x512x28x28xf32>) outs(%443 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %collapsed_104 = tensor.collapse_shape %563 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %564 = linalg.matmul ins(%collapsed_104, %499 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%497 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %565 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%495, %564 : tensor<128xf32>, tensor<784x128xf32>) outs(%496 : tensor<784x128xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<784x128xf32>
    %expanded_105 = tensor.expand_shape %565 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %566 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_105 : tensor<1x28x28x128xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %567 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61, %62 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%504 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x128x28x28xi1>
    %568 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%567, %566, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %569 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_93, %568 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %570 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_94, %569 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %571 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%570 : tensor<1x128x28x28xf32>) outs(%509 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_106 = tensor.pad %571 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %572 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_106, %516 : tensor<1x30x30x128xf32>, tensor<3x3x128x128xf32>) outs(%517 : tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %573 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%495, %572 : tensor<128xf32>, tensor<1x28x28x128xf32>) outs(%509 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x28x28x128xf32>
    %574 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%573 : tensor<1x28x28x128xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %575 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %60 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%504 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x128x28x28xi1>
    %576 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%575, %574, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %577 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_93, %576 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %578 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_94, %577 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %579 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%578 : tensor<1x128x28x28xf32>) outs(%509 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %collapsed_107 = tensor.collapse_shape %579 [[0, 1, 2], [3]] : tensor<1x28x28x128xf32> into tensor<784x128xf32>
    %580 = linalg.matmul ins(%collapsed_107, %529 : tensor<784x128xf32>, tensor<128x512xf32>) outs(%479 : tensor<784x512xf32>) -> tensor<784x512xf32>
    %581 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%150, %580 : tensor<512xf32>, tensor<784x512xf32>) outs(%478 : tensor<784x512xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<784x512xf32>
    %expanded_108 = tensor.expand_shape %581 [[0, 1, 2], [3]] : tensor<784x512xf32> into tensor<1x28x28x512xf32>
    %582 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_108 : tensor<1x28x28x512xf32>) outs(%485 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %583 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%560, %582 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%485 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x28x28xf32>
    %584 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %58 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%487 : tensor<1x512x28x28xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x512x28x28xi1>
    %585 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%584, %583, %cst : tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<1xf32>) outs(%485 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x28x28xf32>
    %586 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_13, %585 : tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%485 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x28x28xf32>
    %587 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_14, %586 : tensor<1x512xf32>, tensor<1x512x28x28xf32>) outs(%485 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x512x28x28xf32>
    %588 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%587 : tensor<1x512x28x28xf32>) outs(%443 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x512xf32>
    %589 = tensor.empty() : tensor<256x1x1x512xf32>
    %590 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<512x1x1x256xf32>) outs(%589 : tensor<256x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1x1x512xf32>
    %padded_109 = tensor.pad %590 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<256x1x1x512xf32> to tensor<256x2x2x512xf32>
    %expanded_110 = tensor.expand_shape %padded_109 [[0, 1], [2, 3], [4], [5]] : tensor<256x2x2x512xf32> into tensor<256x1x2x1x2x512xf32>
    %591 = tensor.empty() : tensor<2x2x256x1x1x512xf32>
    %592 = linalg.generic {indexing_maps = [#map14, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_110 : tensor<256x1x2x1x2x512xf32>) outs(%591 : tensor<2x2x256x1x1x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x256x1x1x512xf32>
    %collapsed_111 = tensor.collapse_shape %588 [[0, 1, 2], [3]] : tensor<1x28x28x512xf32> into tensor<784x512xf32>
    %collapsed_112 = tensor.collapse_shape %592 [[0, 1, 2, 3, 4], [5]] : tensor<2x2x256x1x1x512xf32> into tensor<1024x512xf32>
    %593 = tensor.empty() : tensor<784x1024xf32>
    %594 = linalg.fill ins(%cst_7 : f32) outs(%593 : tensor<784x1024xf32>) -> tensor<784x1024xf32>
    %595 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_112 : tensor<1024x512xf32>) outs(%272 : tensor<512x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1024xf32>
    %596 = linalg.matmul ins(%collapsed_111, %595 : tensor<784x512xf32>, tensor<512x1024xf32>) outs(%594 : tensor<784x1024xf32>) -> tensor<784x1024xf32>
    %597 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_2, %596 : tensor<1024xf32>, tensor<784x1024xf32>) outs(%593 : tensor<784x1024xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<784x1024xf32>
    %expanded_113 = tensor.expand_shape %597 [[0, 1, 2], [3, 4, 5]] : tensor<784x1024xf32> into tensor<1x28x28x2x2x256xf32>
    %598 = tensor.empty() : tensor<1x28x2x28x2x256xf32>
    %599 = linalg.generic {indexing_maps = [#map16, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_113 : tensor<1x28x28x2x2x256xf32>) outs(%598 : tensor<1x28x2x28x2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x2x28x2x256xf32>
    %collapsed_114 = tensor.collapse_shape %599 [[0], [1, 2], [3, 4], [5]] : tensor<1x28x2x28x2x256xf32> into tensor<1x56x56x256xf32>
    %600 = tensor.empty() : tensor<1x56x56x256xf32>
    %601 = linalg.generic {indexing_maps = [#map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_114, %expanded_86 : tensor<1x56x56x256xf32>, tensor<1x256xf32>) outs(%600 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x56x56x256xf32>
    %602 = linalg.matmul ins(%collapsed_111, %499 : tensor<784x512xf32>, tensor<512x128xf32>) outs(%497 : tensor<784x128xf32>) -> tensor<784x128xf32>
    %603 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%495, %602 : tensor<128xf32>, tensor<784x128xf32>) outs(%496 : tensor<784x128xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<784x128xf32>
    %expanded_115 = tensor.expand_shape %603 [[0, 1, 2], [3]] : tensor<784x128xf32> into tensor<1x28x28x128xf32>
    %604 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_115 : tensor<1x28x28x128xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x28x28xf32>
    %605 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54, %55 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%504 : tensor<1x128x28x28xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x128x28x28xi1>
    %606 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%605, %604, %cst : tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<1xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %607 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_93, %606 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %608 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_94, %607 : tensor<1x128xf32>, tensor<1x128x28x28xf32>) outs(%502 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x28x28xf32>
    %609 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%608 : tensor<1x128x28x28xf32>) outs(%509 : tensor<1x28x28x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x128xf32>
    %padded_116 = tensor.pad %512 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<128x3x3x128xf32> to tensor<128x4x4x128xf32>
    %expanded_117 = tensor.expand_shape %padded_116 [[0], [1, 2], [3, 4], [5]] : tensor<128x4x4x128xf32> into tensor<128x2x2x2x2x128xf32>
    %610 = tensor.empty() : tensor<2x2x128x2x2x128xf32>
    %611 = linalg.generic {indexing_maps = [#map14, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_117 : tensor<128x2x2x2x2x128xf32>) outs(%610 : tensor<2x2x128x2x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x128x2x2x128xf32>
    %collapsed_118 = tensor.collapse_shape %611 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x128x2x2x128xf32> into tensor<512x2x2x128xf32>
    %612 = tensor.empty() : tensor<512x2x2x128xf32>
    %613 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%612 : tensor<512x2x2x128xf32>) {
    ^bb0(%out: f32):
      %776 = linalg.index 0 : index
      %777 = linalg.index 1 : index
      %778 = arith.subi %c1, %777 : index
      %779 = linalg.index 2 : index
      %780 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_118[%776, %778, %779, %780] : tensor<512x2x2x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x2x2x128xf32>
    %614 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%612 : tensor<512x2x2x128xf32>) {
    ^bb0(%out: f32):
      %776 = linalg.index 0 : index
      %777 = linalg.index 1 : index
      %778 = linalg.index 2 : index
      %779 = arith.subi %c1, %778 : index
      %780 = linalg.index 3 : index
      %extracted = tensor.extract %613[%776, %777, %779, %780] : tensor<512x2x2x128xf32>
      linalg.yield %extracted : f32
    } -> tensor<512x2x2x128xf32>
    %padded_119 = tensor.pad %609 low[%c0, %c1, %c1, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x28x28x128xf32> to tensor<1x30x30x128xf32>
    %615 = tensor.empty() : tensor<2x2x128x512xf32>
    %616 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%614 : tensor<512x2x2x128xf32>) outs(%615 : tensor<2x2x128x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x128x512xf32>
    %617 = tensor.empty() : tensor<1x29x29x512xf32>
    %618 = linalg.fill ins(%cst_7 : f32) outs(%617 : tensor<1x29x29x512xf32>) -> tensor<1x29x29x512xf32>
    %619 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_119, %616 : tensor<1x30x30x128xf32>, tensor<2x2x128x512xf32>) outs(%618 : tensor<1x29x29x512xf32>) -> tensor<1x29x29x512xf32>
    %620 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_3, %619 : tensor<512xf32>, tensor<1x29x29x512xf32>) outs(%617 : tensor<1x29x29x512xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x29x29x512xf32>
    %expanded_120 = tensor.expand_shape %620 [[0], [1], [2], [3, 4, 5]] : tensor<1x29x29x512xf32> into tensor<1x29x29x2x2x128xf32>
    %621 = tensor.empty() : tensor<1x29x2x29x2x128xf32>
    %622 = linalg.generic {indexing_maps = [#map16, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_120 : tensor<1x29x29x2x2x128xf32>) outs(%621 : tensor<1x29x2x29x2x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x29x2x29x2x128xf32>
    %collapsed_121 = tensor.collapse_shape %622 [[0], [1, 2], [3, 4], [5]] : tensor<1x29x2x29x2x128xf32> into tensor<1x58x58x128xf32>
    %extracted_slice_122 = tensor.extract_slice %collapsed_121[0, 1, 1, 0] [1, 56, 56, 128] [1, 1, 1, 1] : tensor<1x58x58x128xf32> to tensor<1x56x56x128xf32>
    %623 = tensor.empty() : tensor<1x56x56x128xf32>
    %expanded_123 = tensor.expand_shape %495 [[0, 1]] : tensor<128xf32> into tensor<1x128xf32>
    %624 = linalg.generic {indexing_maps = [#map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_122, %expanded_123 : tensor<1x56x56x128xf32>, tensor<1x128xf32>) outs(%623 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x56x56x128xf32>
    %625 = tensor.empty() : tensor<1x128x56x56xf32>
    %626 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%624 : tensor<1x56x56x128xf32>) outs(%625 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x56x56xf32>
    %627 = tensor.empty() : tensor<1x128x56x56xi1>
    %628 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52, %53 : tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) outs(%627 : tensor<1x128x56x56xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x128x56x56xi1>
    %629 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%628, %626, %cst : tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<1xf32>) outs(%625 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x56x56xf32>
    %630 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_93, %629 : tensor<1x128xf32>, tensor<1x128x56x56xf32>) outs(%625 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x56x56xf32>
    %631 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_94, %630 : tensor<1x128xf32>, tensor<1x128x56x56xf32>) outs(%625 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x128x56x56xf32>
    %632 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%631 : tensor<1x128x56x56xf32>) outs(%623 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x128xf32>
    %633 = tensor.empty() : tensor<256x1x1x128xf32>
    %634 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<128x1x1x256xf32>) outs(%633 : tensor<256x1x1x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1x1x128xf32>
    %collapsed_124 = tensor.collapse_shape %632 [[0, 1, 2], [3]] : tensor<1x56x56x128xf32> into tensor<3136x128xf32>
    %collapsed_125 = tensor.collapse_shape %634 [[0, 1, 2], [3]] : tensor<256x1x1x128xf32> into tensor<256x128xf32>
    %635 = tensor.empty() : tensor<3136x256xf32>
    %636 = linalg.fill ins(%cst_7 : f32) outs(%635 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %637 = tensor.empty() : tensor<128x256xf32>
    %638 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_125 : tensor<256x128xf32>) outs(%637 : tensor<128x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x256xf32>
    %639 = linalg.matmul ins(%collapsed_124, %638 : tensor<3136x128xf32>, tensor<128x256xf32>) outs(%636 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %640 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%287, %639 : tensor<256xf32>, tensor<3136x256xf32>) outs(%635 : tensor<3136x256xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<3136x256xf32>
    %expanded_126 = tensor.expand_shape %640 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %641 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%601, %expanded_126 : tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) outs(%600 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x56x56x256xf32>
    %642 = tensor.empty() : tensor<1x256x56x56xf32>
    %643 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%641 : tensor<1x56x56x256xf32>) outs(%642 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %644 = tensor.empty() : tensor<1x256x56x56xi1>
    %645 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49, %50 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%644 : tensor<1x256x56x56xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x256x56x56xi1>
    %646 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%645, %643, %cst : tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<1xf32>) outs(%642 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x56x56xf32>
    %647 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %646 : tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%642 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x56x56xf32>
    %648 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %647 : tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%642 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x56x56xf32>
    %649 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%648 : tensor<1x256x56x56xf32>) outs(%600 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %650 = tensor.empty() : tensor<64x1x1x256xf32>
    %651 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<256x1x1x64xf32>) outs(%650 : tensor<64x1x1x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x1x1x256xf32>
    %652 = tensor.empty() : tensor<64xf32>
    %collapsed_127 = tensor.collapse_shape %649 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %collapsed_128 = tensor.collapse_shape %651 [[0, 1, 2], [3]] : tensor<64x1x1x256xf32> into tensor<64x256xf32>
    %653 = tensor.empty() : tensor<3136x64xf32>
    %654 = linalg.fill ins(%cst_7 : f32) outs(%653 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %655 = tensor.empty() : tensor<256x64xf32>
    %656 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_128 : tensor<64x256xf32>) outs(%655 : tensor<256x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x64xf32>
    %657 = linalg.matmul ins(%collapsed_127, %656 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%654 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %658 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%652, %657 : tensor<64xf32>, tensor<3136x64xf32>) outs(%653 : tensor<3136x64xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<3136x64xf32>
    %expanded_129 = tensor.expand_shape %658 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %659 = tensor.empty() : tensor<1x64x56x56xf32>
    %660 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_129 : tensor<1x56x56x64xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %661 = tensor.empty() : tensor<1x64x56x56xi1>
    %662 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %48 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%661 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x64x56x56xi1>
    %663 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%662, %660, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x56x56xf32>
    %collapsed_130 = tensor.collapse_shape %25 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %664 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_130, %663 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x56x56xf32>
    %collapsed_131 = tensor.collapse_shape %27 [[0], [1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<1x64xf32>
    %665 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_131, %664 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x56x56xf32>
    %666 = tensor.empty() : tensor<1x56x56x64xf32>
    %667 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%665 : tensor<1x64x56x56xf32>) outs(%666 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %668 = tensor.empty() : tensor<64x3x3x64xf32>
    %669 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<64x3x3x64xf32>) outs(%668 : tensor<64x3x3x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x3x3x64xf32>
    %670 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%668 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %776 = linalg.index 0 : index
      %777 = linalg.index 1 : index
      %778 = arith.subi %c2, %777 : index
      %779 = linalg.index 2 : index
      %780 = linalg.index 3 : index
      %extracted = tensor.extract %669[%776, %778, %779, %780] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %671 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%668 : tensor<64x3x3x64xf32>) {
    ^bb0(%out: f32):
      %776 = linalg.index 0 : index
      %777 = linalg.index 1 : index
      %778 = linalg.index 2 : index
      %779 = arith.subi %c2, %778 : index
      %780 = linalg.index 3 : index
      %extracted = tensor.extract %670[%776, %777, %779, %780] : tensor<64x3x3x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<64x3x3x64xf32>
    %padded_132 = tensor.pad %667 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %672 = tensor.empty() : tensor<3x3x64x64xf32>
    %673 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%671 : tensor<64x3x3x64xf32>) outs(%672 : tensor<3x3x64x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x3x64x64xf32>
    %674 = linalg.fill ins(%cst_7 : f32) outs(%666 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %675 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_132, %673 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%674 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %676 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%652, %675 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%666 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x56x56x64xf32>
    %677 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%676 : tensor<1x56x56x64xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %678 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %46 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%661 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x64x56x56xi1>
    %679 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%678, %677, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x56x56xf32>
    %680 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_130, %679 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x56x56xf32>
    %681 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_131, %680 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x56x56xf32>
    %682 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%681 : tensor<1x64x56x56xf32>) outs(%666 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %683 = tensor.empty() : tensor<256x1x1x64xf32>
    %684 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20 : tensor<64x1x1x256xf32>) outs(%683 : tensor<256x1x1x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1x1x64xf32>
    %collapsed_133 = tensor.collapse_shape %682 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %collapsed_134 = tensor.collapse_shape %684 [[0, 1, 2], [3]] : tensor<256x1x1x64xf32> into tensor<256x64xf32>
    %685 = tensor.empty() : tensor<64x256xf32>
    %686 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_134 : tensor<256x64xf32>) outs(%685 : tensor<64x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x256xf32>
    %687 = linalg.matmul ins(%collapsed_133, %686 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%636 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %688 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%287, %687 : tensor<256xf32>, tensor<3136x256xf32>) outs(%635 : tensor<3136x256xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<3136x256xf32>
    %expanded_135 = tensor.expand_shape %688 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %689 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_135 : tensor<1x56x56x256xf32>) outs(%642 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %690 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%646, %689 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%642 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x56x56xf32>
    %691 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %44 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%644 : tensor<1x256x56x56xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x256x56x56xi1>
    %692 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%691, %690, %cst : tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<1xf32>) outs(%642 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x56x56xf32>
    %693 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %692 : tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%642 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x56x56xf32>
    %694 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %693 : tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%642 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x56x56xf32>
    %695 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%694 : tensor<1x256x56x56xf32>) outs(%600 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_136 = tensor.collapse_shape %695 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %696 = linalg.matmul ins(%collapsed_136, %656 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%654 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %697 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%652, %696 : tensor<64xf32>, tensor<3136x64xf32>) outs(%653 : tensor<3136x64xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<3136x64xf32>
    %expanded_137 = tensor.expand_shape %697 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %698 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_137 : tensor<1x56x56x64xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %699 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %42 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%661 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x64x56x56xi1>
    %700 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%699, %698, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x56x56xf32>
    %701 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_130, %700 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x56x56xf32>
    %702 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_131, %701 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x56x56xf32>
    %703 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%702 : tensor<1x64x56x56xf32>) outs(%666 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_138 = tensor.pad %703 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %704 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_138, %673 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%674 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %705 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%652, %704 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%666 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x56x56x64xf32>
    %706 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%705 : tensor<1x56x56x64xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %707 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %40 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%661 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x64x56x56xi1>
    %708 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%707, %706, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x56x56xf32>
    %709 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_130, %708 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x56x56xf32>
    %710 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_131, %709 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x56x56xf32>
    %711 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%710 : tensor<1x64x56x56xf32>) outs(%666 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %collapsed_139 = tensor.collapse_shape %711 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %712 = linalg.matmul ins(%collapsed_139, %686 : tensor<3136x64xf32>, tensor<64x256xf32>) outs(%636 : tensor<3136x256xf32>) -> tensor<3136x256xf32>
    %713 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%287, %712 : tensor<256xf32>, tensor<3136x256xf32>) outs(%635 : tensor<3136x256xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<3136x256xf32>
    %expanded_140 = tensor.expand_shape %713 [[0, 1, 2], [3]] : tensor<3136x256xf32> into tensor<1x56x56x256xf32>
    %714 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_140 : tensor<1x56x56x256xf32>) outs(%642 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %715 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%692, %714 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%642 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x56x56xf32>
    %716 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %38 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%644 : tensor<1x256x56x56xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x256x56x56xi1>
    %717 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%716, %715, %cst : tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<1xf32>) outs(%642 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x56x56xf32>
    %718 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_46, %717 : tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%642 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x56x56xf32>
    %719 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_47, %718 : tensor<1x256xf32>, tensor<1x256x56x56xf32>) outs(%642 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x256x56x56xf32>
    %720 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%719 : tensor<1x256x56x56xf32>) outs(%600 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x256xf32>
    %collapsed_141 = tensor.collapse_shape %720 [[0, 1, 2], [3]] : tensor<1x56x56x256xf32> into tensor<3136x256xf32>
    %721 = linalg.matmul ins(%collapsed_141, %656 : tensor<3136x256xf32>, tensor<256x64xf32>) outs(%654 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %722 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%652, %721 : tensor<64xf32>, tensor<3136x64xf32>) outs(%653 : tensor<3136x64xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<3136x64xf32>
    %expanded_142 = tensor.expand_shape %722 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %723 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_142 : tensor<1x56x56x64xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %724 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34, %35 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%661 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x64x56x56xi1>
    %725 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%724, %723, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x56x56xf32>
    %726 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_130, %725 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x56x56xf32>
    %727 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_131, %726 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x56x56xf32>
    %728 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%727 : tensor<1x64x56x56xf32>) outs(%666 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %padded_143 = tensor.pad %728 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x56x56x64xf32> to tensor<1x58x58x64xf32>
    %729 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_143, %673 : tensor<1x58x58x64xf32>, tensor<3x3x64x64xf32>) outs(%674 : tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %730 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%652, %729 : tensor<64xf32>, tensor<1x56x56x64xf32>) outs(%666 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x56x56x64xf32>
    %731 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%730 : tensor<1x56x56x64xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x56x56xf32>
    %732 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %33 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%661 : tensor<1x64x56x56xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x64x56x56xi1>
    %733 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%732, %731, %cst : tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<1xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x56x56xf32>
    %734 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_130, %733 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x56x56xf32>
    %735 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_131, %734 : tensor<1x64xf32>, tensor<1x64x56x56xf32>) outs(%659 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x56x56xf32>
    %736 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%735 : tensor<1x64x56x56xf32>) outs(%666 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x64xf32>
    %737 = tensor.empty() : tensor<64x1x1x64xf32>
    %738 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<64x1x1x64xf32>) outs(%737 : tensor<64x1x1x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x1x1x64xf32>
    %collapsed_144 = tensor.collapse_shape %736 [[0, 1, 2], [3]] : tensor<1x56x56x64xf32> into tensor<3136x64xf32>
    %collapsed_145 = tensor.collapse_shape %738 [[0, 1, 2], [3]] : tensor<64x1x1x64xf32> into tensor<64x64xf32>
    %739 = tensor.empty() : tensor<64x64xf32>
    %740 = linalg.generic {indexing_maps = [#map12, #map7], iterator_types = ["parallel", "parallel"]} ins(%collapsed_145 : tensor<64x64xf32>) outs(%739 : tensor<64x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<64x64xf32>
    %741 = linalg.matmul ins(%collapsed_144, %740 : tensor<3136x64xf32>, tensor<64x64xf32>) outs(%654 : tensor<3136x64xf32>) -> tensor<3136x64xf32>
    %742 = linalg.generic {indexing_maps = [#map6, #map7, #map7], iterator_types = ["parallel", "parallel"]} ins(%652, %741 : tensor<64xf32>, tensor<3136x64xf32>) outs(%653 : tensor<3136x64xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<3136x64xf32>
    %expanded_146 = tensor.expand_shape %742 [[0, 1, 2], [3]] : tensor<3136x64xf32> into tensor<1x56x56x64xf32>
    %743 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_142, %expanded_146 : tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%666 : tensor<1x56x56x64xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x56x56x64xf32>
    %padded_147 = tensor.pad %30 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_6 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %744 = tensor.empty() : tensor<1x113x113x64xf32>
    %745 = tensor.empty() : tensor<3x3xf32>
    %746 = linalg.generic {indexing_maps = [#map17, #map18, #map19, #map19, #map17], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded_147, %745, %31, %743 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%744 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_157: f32, %in_158: f32, %in_159: f32, %out: f32):
      %776 = arith.cmpf oge, %in, %in_158 : f32
      %777 = arith.select %776, %in_159, %cst_7 : f32
      %778 = arith.addf %out, %777 : f32
      linalg.yield %778 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice_148 = tensor.extract_slice %746[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %747 = tensor.empty() : tensor<1x64x112x112xf32>
    %748 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_148 : tensor<1x112x112x64xf32>) outs(%747 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x112x112xf32>
    %749 = tensor.empty() : tensor<1x64x112x112xi1>
    %750 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28, %29 : tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>) outs(%749 : tensor<1x64x112x112xi1>) {
    ^bb0(%in: f32, %in_157: f32, %out: i1):
      %776 = arith.cmpf oeq, %in, %in_157 : f32
      linalg.yield %776 : i1
    } -> tensor<1x64x112x112xi1>
    %751 = linalg.generic {indexing_maps = [#map1, #map1, #map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%750, %748, %cst : tensor<1x64x112x112xi1>, tensor<1x64x112x112xf32>, tensor<1xf32>) outs(%747 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: i1, %in_157: f32, %in_158: f32, %out: f32):
      %776 = arith.select %in, %in_157, %in_158 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x112x112xf32>
    %752 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_130, %751 : tensor<1x64xf32>, tensor<1x64x112x112xf32>) outs(%747 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x112x112xf32>
    %753 = linalg.generic {indexing_maps = [#map4, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_131, %752 : tensor<1x64xf32>, tensor<1x64x112x112xf32>) outs(%747 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.mulf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x64x112x112xf32>
    %754 = tensor.empty() : tensor<1x112x112x64xf32>
    %755 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%753 : tensor<1x64x112x112xf32>) outs(%754 : tensor<1x112x112x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x112x64xf32>
    %756 = tensor.empty() : tensor<3x7x7x64xf32>
    %757 = linalg.generic {indexing_maps = [#map11, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26 : tensor<64x7x7x3xf32>) outs(%756 : tensor<3x7x7x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3x7x7x64xf32>
    %758 = tensor.empty() : tensor<3xf32>
    %padded_149 = tensor.pad %757 low[%c0, %c0, %c0, %c0] high[%c0, %c1, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<3x7x7x64xf32> to tensor<3x8x8x64xf32>
    %expanded_150 = tensor.expand_shape %padded_149 [[0], [1, 2], [3, 4], [5]] : tensor<3x8x8x64xf32> into tensor<3x4x2x4x2x64xf32>
    %759 = tensor.empty() : tensor<2x2x3x4x4x64xf32>
    %760 = linalg.generic {indexing_maps = [#map14, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_150 : tensor<3x4x2x4x2x64xf32>) outs(%759 : tensor<2x2x3x4x4x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2x2x3x4x4x64xf32>
    %collapsed_151 = tensor.collapse_shape %760 [[0, 1, 2], [3], [4], [5]] : tensor<2x2x3x4x4x64xf32> into tensor<12x4x4x64xf32>
    %761 = tensor.empty() : tensor<12x4x4x64xf32>
    %762 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%761 : tensor<12x4x4x64xf32>) {
    ^bb0(%out: f32):
      %776 = linalg.index 0 : index
      %777 = linalg.index 1 : index
      %778 = arith.subi %c3, %777 : index
      %779 = linalg.index 2 : index
      %780 = linalg.index 3 : index
      %extracted = tensor.extract %collapsed_151[%776, %778, %779, %780] : tensor<12x4x4x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<12x4x4x64xf32>
    %763 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%761 : tensor<12x4x4x64xf32>) {
    ^bb0(%out: f32):
      %776 = linalg.index 0 : index
      %777 = linalg.index 1 : index
      %778 = linalg.index 2 : index
      %779 = arith.subi %c3, %778 : index
      %780 = linalg.index 3 : index
      %extracted = tensor.extract %762[%776, %777, %779, %780] : tensor<12x4x4x64xf32>
      linalg.yield %extracted : f32
    } -> tensor<12x4x4x64xf32>
    %padded_152 = tensor.pad %755 low[%c0, %c3, %c3, %c0] high[%c0, %c3, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_7 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x118x118x64xf32>
    %764 = tensor.empty() : tensor<4x4x64x12xf32>
    %765 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%763 : tensor<12x4x4x64xf32>) outs(%764 : tensor<4x4x64x12xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4x4x64x12xf32>
    %766 = tensor.empty() : tensor<1x115x115x12xf32>
    %767 = linalg.fill ins(%cst_7 : f32) outs(%766 : tensor<1x115x115x12xf32>) -> tensor<1x115x115x12xf32>
    %768 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<1> : tensor<2xi64>} ins(%padded_152, %765 : tensor<1x118x118x64xf32>, tensor<4x4x64x12xf32>) outs(%767 : tensor<1x115x115x12xf32>) -> tensor<1x115x115x12xf32>
    %769 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_4, %768 : tensor<12xf32>, tensor<1x115x115x12xf32>) outs(%766 : tensor<1x115x115x12xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x115x115x12xf32>
    %expanded_153 = tensor.expand_shape %769 [[0], [1], [2], [3, 4, 5]] : tensor<1x115x115x12xf32> into tensor<1x115x115x2x2x3xf32>
    %770 = tensor.empty() : tensor<1x115x2x115x2x3xf32>
    %771 = linalg.generic {indexing_maps = [#map16, #map15], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%expanded_153 : tensor<1x115x115x2x2x3xf32>) outs(%770 : tensor<1x115x2x115x2x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x115x2x115x2x3xf32>
    %collapsed_154 = tensor.collapse_shape %771 [[0], [1, 2], [3, 4], [5]] : tensor<1x115x2x115x2x3xf32> into tensor<1x230x230x3xf32>
    %extracted_slice_155 = tensor.extract_slice %collapsed_154[0, 3, 3, 0] [1, 224, 224, 3] [1, 1, 1, 1] : tensor<1x230x230x3xf32> to tensor<1x224x224x3xf32>
    %772 = tensor.empty() : tensor<1x224x224x3xf32>
    %expanded_156 = tensor.expand_shape %758 [[0, 1]] : tensor<3xf32> into tensor<1x3xf32>
    %773 = linalg.generic {indexing_maps = [#map1, #map9, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%extracted_slice_155, %expanded_156 : tensor<1x224x224x3xf32>, tensor<1x3xf32>) outs(%772 : tensor<1x224x224x3xf32>) {
    ^bb0(%in: f32, %in_157: f32, %out: f32):
      %776 = arith.addf %in, %in_157 : f32
      linalg.yield %776 : f32
    } -> tensor<1x224x224x3xf32>
    %774 = tensor.empty() : tensor<1x3x224x224xf32>
    %775 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%773 : tensor<1x224x224x3xf32>) outs(%774 : tensor<1x3x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3x224x224xf32>
    return %775 : tensor<1x3x224x224xf32>
  }
}

