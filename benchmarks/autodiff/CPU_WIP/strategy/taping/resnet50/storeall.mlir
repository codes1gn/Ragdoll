#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
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
    %0 = "tosa.const"() {value = dense<0.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %1 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3 = "tosa.const"() {value = dense<0.000000e+00> : tensor<256xf32>} : () -> tensor<256xf32>
    %4 = "tosa.const"() {value = dense<0.000000e+00> : tensor<128xf32>} : () -> tensor<128xf32>
    %5 = "tosa.const"() {value = dense<0.000000e+00> : tensor<512xf32>} : () -> tensor<512xf32>
    %6 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %7 = "tosa.const"() {value = dense<0.000000e+00> : tensor<2048xf32>} : () -> tensor<2048xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000xf32>} : () -> tensor<1x1000xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x2048x1000xf32>} : () -> tensor<1x2048x1000xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x2048xf32>} : () -> tensor<512x1x1x2048xf32>
    %11 = "tosa.const"() {value = dense<7.777000e-02> : tensor<2048x1x1x1024xf32>} : () -> tensor<2048x1x1x1024xf32>
    %12 = "tosa.const"() {value = dense<7.778000e-02> : tensor<2048x1x1xf32>} : () -> tensor<2048x1x1xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x2048x1x1xf32>} : () -> tensor<1x2048x1x1xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<2048x1x1x512xf32>} : () -> tensor<2048x1x1x512xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x512xf32>} : () -> tensor<512x3x3x512xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x1024xf32>} : () -> tensor<512x1x1x1024xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x1024xf32>} : () -> tensor<256x1x1x1024xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x512xf32>} : () -> tensor<1024x1x1x512xf32>
    %19 = "tosa.const"() {value = dense<7.778000e-02> : tensor<1024x1x1xf32>} : () -> tensor<1024x1x1xf32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1024x1x1xf32>} : () -> tensor<1x1024x1x1xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x256xf32>} : () -> tensor<1024x1x1x256xf32>
    %22 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %23 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x512xf32>} : () -> tensor<256x1x1x512xf32>
    %24 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x512xf32>} : () -> tensor<128x1x1x512xf32>
    %25 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x256xf32>} : () -> tensor<512x1x1x256xf32>
    %26 = "tosa.const"() {value = dense<7.778000e-02> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %27 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %28 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x128xf32>} : () -> tensor<512x1x1x128xf32>
    %29 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x128xf32>} : () -> tensor<128x3x3x128xf32>
    %30 = "tosa.const"() {value = dense<7.778000e-02> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %31 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %32 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x256xf32>} : () -> tensor<128x1x1x256xf32>
    %33 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x256xf32>} : () -> tensor<64x1x1x256xf32>
    %34 = "tosa.const"() {value = dense<7.778000e-02> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %35 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %36 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x64xf32>} : () -> tensor<256x1x1x64xf32>
    %37 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x64xf32>} : () -> tensor<64x3x3x64xf32>
    %38 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x64xf32>} : () -> tensor<64x1x1x64xf32>
    %39 = "tosa.const"() {value = dense<7.778000e-02> : tensor<64x1x1xf32>} : () -> tensor<64x1x1xf32>
    %40 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %41 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x7x7x3xf32>} : () -> tensor<64x7x7x3xf32>
    ml_program.global_store @global10 = %9 : tensor<1x2048x1000xf32>
    ml_program.global_store @global11 = %10 : tensor<512x1x1x2048xf32>
    ml_program.global_store @global12 = %11 : tensor<2048x1x1x1024xf32>
    ml_program.global_store @global14 = %13 : tensor<1x2048x1x1xf32>
    ml_program.global_store @global15 = %14 : tensor<2048x1x1x512xf32>
    ml_program.global_store @global16 = %15 : tensor<512x3x3x512xf32>
    ml_program.global_store @global17 = %16 : tensor<512x1x1x1024xf32>
    ml_program.global_store @global18 = %17 : tensor<256x1x1x1024xf32>
    ml_program.global_store @global19 = %18 : tensor<1024x1x1x512xf32>
    ml_program.global_store @global21 = %20 : tensor<1x1024x1x1xf32>
    ml_program.global_store @global22 = %21 : tensor<1024x1x1x256xf32>
    ml_program.global_store @global23 = %22 : tensor<256x3x3x256xf32>
    ml_program.global_store @global24 = %23 : tensor<256x1x1x512xf32>
    ml_program.global_store @global25 = %24 : tensor<128x1x1x512xf32>
    ml_program.global_store @global26 = %25 : tensor<512x1x1x256xf32>
    ml_program.global_store @global28 = %27 : tensor<1x512x1x1xf32>
    ml_program.global_store @global29 = %28 : tensor<512x1x1x128xf32>
    ml_program.global_store @global30 = %29 : tensor<128x3x3x128xf32>
    ml_program.global_store @global32 = %31 : tensor<1x128x1x1xf32>
    ml_program.global_store @global33 = %32 : tensor<128x1x1x256xf32>
    ml_program.global_store @global34 = %33 : tensor<64x1x1x256xf32>
    ml_program.global_store @global36 = %35 : tensor<1x256x1x1xf32>
    ml_program.global_store @global37 = %36 : tensor<256x1x1x64xf32>
    ml_program.global_store @global38 = %37 : tensor<64x3x3x64xf32>
    ml_program.global_store @global39 = %38 : tensor<64x1x1x64xf32>
    ml_program.global_store @global41 = %40 : tensor<1x64x1x1xf32>
    ml_program.global_store @global42 = %41 : tensor<64x7x7x3xf32>
    %42 = "tosa.transpose"(%arg0, %1) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %43 = "tosa.conv2d"(%42, %41, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %44 = "tosa.transpose"(%43, %2) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %45 = "tosa.sub"(%44, %40) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %46 = "tosa.rsqrt"(%39) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %47 = "tosa.reshape"(%46) {new_shape = array<i64: 1, 64, 1, 1>} : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    ml_program.global_store @global48 = %47 : tensor<1x64x1x1xf32>
    %48 = "tosa.mul"(%45, %47) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %49 = "tosa.mul"(%48, %40) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %50 = "tosa.add"(%49, %40) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    ml_program.global_store @global51 = %50 : tensor<1x64x112x112xf32>
    %51 = "tosa.clamp"(%50) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    ml_program.global_store @global52 = %51 : tensor<1x64x112x112xf32>
    %52 = "tosa.transpose"(%51, %1) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    ml_program.global_store @global53 = %52 : tensor<1x112x112x64xf32>
    %53 = "tosa.max_pool2d"(%52) {kernel = array<i64: 3, 3>, pad = array<i64: 1, 0, 1, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    ml_program.global_store @global54 = %53 : tensor<1x56x56x64xf32>
    %54 = "tosa.conv2d"(%53, %38, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x1x1x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %55 = "tosa.transpose"(%54, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %56 = "tosa.sub"(%55, %40) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %57 = "tosa.mul"(%56, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %58 = "tosa.mul"(%57, %40) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %59 = "tosa.add"(%58, %40) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global60 = %59 : tensor<1x64x56x56xf32>
    %60 = "tosa.clamp"(%59) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global61 = %60 : tensor<1x64x56x56xf32>
    %61 = "tosa.transpose"(%60, %1) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %62 = "tosa.conv2d"(%61, %37, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %63 = "tosa.transpose"(%62, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %64 = "tosa.sub"(%63, %40) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %65 = "tosa.mul"(%64, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %66 = "tosa.mul"(%65, %40) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %67 = "tosa.add"(%66, %40) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global68 = %67 : tensor<1x64x56x56xf32>
    %68 = "tosa.clamp"(%67) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global69 = %68 : tensor<1x64x56x56xf32>
    %69 = "tosa.transpose"(%68, %1) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %70 = "tosa.conv2d"(%69, %36, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %71 = "tosa.transpose"(%70, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %72 = "tosa.sub"(%71, %35) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %73 = "tosa.rsqrt"(%34) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %74 = "tosa.reshape"(%73) {new_shape = array<i64: 1, 256, 1, 1>} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    ml_program.global_store @global75 = %74 : tensor<1x256x1x1xf32>
    %75 = "tosa.mul"(%72, %74) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %76 = "tosa.mul"(%75, %35) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %77 = "tosa.add"(%76, %35) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %78 = "tosa.conv2d"(%53, %36, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %79 = "tosa.transpose"(%78, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %80 = "tosa.sub"(%79, %35) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %81 = "tosa.mul"(%80, %74) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %82 = "tosa.mul"(%81, %35) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %83 = "tosa.add"(%82, %35) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %84 = "tosa.add"(%77, %83) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global85 = %84 : tensor<1x256x56x56xf32>
    %85 = "tosa.clamp"(%84) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global86 = %85 : tensor<1x256x56x56xf32>
    %86 = "tosa.transpose"(%85, %1) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %87 = "tosa.conv2d"(%86, %33, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %88 = "tosa.transpose"(%87, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %89 = "tosa.sub"(%88, %40) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %90 = "tosa.mul"(%89, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %91 = "tosa.mul"(%90, %40) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %92 = "tosa.add"(%91, %40) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global93 = %92 : tensor<1x64x56x56xf32>
    %93 = "tosa.clamp"(%92) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global94 = %93 : tensor<1x64x56x56xf32>
    %94 = "tosa.transpose"(%93, %1) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %95 = "tosa.conv2d"(%94, %37, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %96 = "tosa.transpose"(%95, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %97 = "tosa.sub"(%96, %40) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %98 = "tosa.mul"(%97, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %99 = "tosa.mul"(%98, %40) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %100 = "tosa.add"(%99, %40) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global101 = %100 : tensor<1x64x56x56xf32>
    %101 = "tosa.clamp"(%100) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global102 = %101 : tensor<1x64x56x56xf32>
    %102 = "tosa.transpose"(%101, %1) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %103 = "tosa.conv2d"(%102, %36, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %104 = "tosa.transpose"(%103, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %105 = "tosa.sub"(%104, %35) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %106 = "tosa.mul"(%105, %74) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %107 = "tosa.mul"(%106, %35) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %108 = "tosa.add"(%107, %35) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %109 = "tosa.add"(%108, %85) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global110 = %109 : tensor<1x256x56x56xf32>
    %110 = "tosa.clamp"(%109) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global111 = %110 : tensor<1x256x56x56xf32>
    %111 = "tosa.transpose"(%110, %1) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %112 = "tosa.conv2d"(%111, %33, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %113 = "tosa.transpose"(%112, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %114 = "tosa.sub"(%113, %40) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %115 = "tosa.mul"(%114, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %116 = "tosa.mul"(%115, %40) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %117 = "tosa.add"(%116, %40) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global118 = %117 : tensor<1x64x56x56xf32>
    %118 = "tosa.clamp"(%117) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global119 = %118 : tensor<1x64x56x56xf32>
    %119 = "tosa.transpose"(%118, %1) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %120 = "tosa.conv2d"(%119, %37, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %121 = "tosa.transpose"(%120, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %122 = "tosa.sub"(%121, %40) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %123 = "tosa.mul"(%122, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %124 = "tosa.mul"(%123, %40) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %125 = "tosa.add"(%124, %40) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global126 = %125 : tensor<1x64x56x56xf32>
    %126 = "tosa.clamp"(%125) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global127 = %126 : tensor<1x64x56x56xf32>
    %127 = "tosa.transpose"(%126, %1) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %128 = "tosa.conv2d"(%127, %36, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %129 = "tosa.transpose"(%128, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %130 = "tosa.sub"(%129, %35) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %131 = "tosa.mul"(%130, %74) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %132 = "tosa.mul"(%131, %35) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %133 = "tosa.add"(%132, %35) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %134 = "tosa.add"(%133, %110) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global135 = %134 : tensor<1x256x56x56xf32>
    %135 = "tosa.clamp"(%134) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global136 = %135 : tensor<1x256x56x56xf32>
    %136 = "tosa.transpose"(%135, %1) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %137 = "tosa.conv2d"(%136, %32, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %138 = "tosa.transpose"(%137, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %139 = "tosa.sub"(%138, %31) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %140 = "tosa.rsqrt"(%30) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %141 = "tosa.reshape"(%140) {new_shape = array<i64: 1, 128, 1, 1>} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    ml_program.global_store @global142 = %141 : tensor<1x128x1x1xf32>
    %142 = "tosa.mul"(%139, %141) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %143 = "tosa.mul"(%142, %31) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %144 = "tosa.add"(%143, %31) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global145 = %144 : tensor<1x128x56x56xf32>
    %145 = "tosa.clamp"(%144) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global146 = %145 : tensor<1x128x56x56xf32>
    %146 = "tosa.transpose"(%145, %1) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %147 = "tosa.conv2d"(%146, %29, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %148 = "tosa.transpose"(%147, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %149 = "tosa.sub"(%148, %31) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %150 = "tosa.mul"(%149, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %151 = "tosa.mul"(%150, %31) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %152 = "tosa.add"(%151, %31) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global153 = %152 : tensor<1x128x28x28xf32>
    %153 = "tosa.clamp"(%152) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global154 = %153 : tensor<1x128x28x28xf32>
    %154 = "tosa.transpose"(%153, %1) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %155 = "tosa.conv2d"(%154, %28, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %156 = "tosa.transpose"(%155, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %157 = "tosa.sub"(%156, %27) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %158 = "tosa.rsqrt"(%26) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %159 = "tosa.reshape"(%158) {new_shape = array<i64: 1, 512, 1, 1>} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    ml_program.global_store @global160 = %159 : tensor<1x512x1x1xf32>
    %160 = "tosa.mul"(%157, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %161 = "tosa.mul"(%160, %27) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %162 = "tosa.add"(%161, %27) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %163 = "tosa.conv2d"(%136, %25, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %164 = "tosa.transpose"(%163, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %165 = "tosa.sub"(%164, %27) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %166 = "tosa.mul"(%165, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %167 = "tosa.mul"(%166, %27) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %168 = "tosa.add"(%167, %27) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %169 = "tosa.add"(%162, %168) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global170 = %169 : tensor<1x512x28x28xf32>
    %170 = "tosa.clamp"(%169) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global171 = %170 : tensor<1x512x28x28xf32>
    %171 = "tosa.transpose"(%170, %1) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %172 = "tosa.conv2d"(%171, %24, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %173 = "tosa.transpose"(%172, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %174 = "tosa.sub"(%173, %31) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %175 = "tosa.mul"(%174, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %176 = "tosa.mul"(%175, %31) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %177 = "tosa.add"(%176, %31) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global178 = %177 : tensor<1x128x28x28xf32>
    %178 = "tosa.clamp"(%177) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global179 = %178 : tensor<1x128x28x28xf32>
    %179 = "tosa.transpose"(%178, %1) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %180 = "tosa.conv2d"(%179, %29, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %181 = "tosa.transpose"(%180, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %182 = "tosa.sub"(%181, %31) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %183 = "tosa.mul"(%182, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %184 = "tosa.mul"(%183, %31) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %185 = "tosa.add"(%184, %31) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global186 = %185 : tensor<1x128x28x28xf32>
    %186 = "tosa.clamp"(%185) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global187 = %186 : tensor<1x128x28x28xf32>
    %187 = "tosa.transpose"(%186, %1) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %188 = "tosa.conv2d"(%187, %28, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %189 = "tosa.transpose"(%188, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %190 = "tosa.sub"(%189, %27) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %191 = "tosa.mul"(%190, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %192 = "tosa.mul"(%191, %27) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %193 = "tosa.add"(%192, %27) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %194 = "tosa.add"(%193, %170) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global195 = %194 : tensor<1x512x28x28xf32>
    %195 = "tosa.clamp"(%194) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global196 = %195 : tensor<1x512x28x28xf32>
    %196 = "tosa.transpose"(%195, %1) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %197 = "tosa.conv2d"(%196, %24, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %198 = "tosa.transpose"(%197, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %199 = "tosa.sub"(%198, %31) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %200 = "tosa.mul"(%199, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %201 = "tosa.mul"(%200, %31) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %202 = "tosa.add"(%201, %31) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global203 = %202 : tensor<1x128x28x28xf32>
    %203 = "tosa.clamp"(%202) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global204 = %203 : tensor<1x128x28x28xf32>
    %204 = "tosa.transpose"(%203, %1) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %205 = "tosa.conv2d"(%204, %29, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %206 = "tosa.transpose"(%205, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %207 = "tosa.sub"(%206, %31) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %208 = "tosa.mul"(%207, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %209 = "tosa.mul"(%208, %31) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %210 = "tosa.add"(%209, %31) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global211 = %210 : tensor<1x128x28x28xf32>
    %211 = "tosa.clamp"(%210) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global212 = %211 : tensor<1x128x28x28xf32>
    %212 = "tosa.transpose"(%211, %1) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %213 = "tosa.conv2d"(%212, %28, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %214 = "tosa.transpose"(%213, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %215 = "tosa.sub"(%214, %27) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %216 = "tosa.mul"(%215, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %217 = "tosa.mul"(%216, %27) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %218 = "tosa.add"(%217, %27) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %219 = "tosa.add"(%218, %195) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global220 = %219 : tensor<1x512x28x28xf32>
    %220 = "tosa.clamp"(%219) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global221 = %220 : tensor<1x512x28x28xf32>
    %221 = "tosa.transpose"(%220, %1) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %222 = "tosa.conv2d"(%221, %24, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %223 = "tosa.transpose"(%222, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %224 = "tosa.sub"(%223, %31) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %225 = "tosa.mul"(%224, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %226 = "tosa.mul"(%225, %31) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %227 = "tosa.add"(%226, %31) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global228 = %227 : tensor<1x128x28x28xf32>
    %228 = "tosa.clamp"(%227) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global229 = %228 : tensor<1x128x28x28xf32>
    %229 = "tosa.transpose"(%228, %1) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %230 = "tosa.conv2d"(%229, %29, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %231 = "tosa.transpose"(%230, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %232 = "tosa.sub"(%231, %31) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %233 = "tosa.mul"(%232, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %234 = "tosa.mul"(%233, %31) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %235 = "tosa.add"(%234, %31) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global236 = %235 : tensor<1x128x28x28xf32>
    %236 = "tosa.clamp"(%235) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global237 = %236 : tensor<1x128x28x28xf32>
    %237 = "tosa.transpose"(%236, %1) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %238 = "tosa.conv2d"(%237, %28, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %239 = "tosa.transpose"(%238, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %240 = "tosa.sub"(%239, %27) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %241 = "tosa.mul"(%240, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %242 = "tosa.mul"(%241, %27) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %243 = "tosa.add"(%242, %27) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %244 = "tosa.add"(%243, %220) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global245 = %244 : tensor<1x512x28x28xf32>
    %245 = "tosa.clamp"(%244) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global246 = %245 : tensor<1x512x28x28xf32>
    %246 = "tosa.transpose"(%245, %1) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %247 = "tosa.conv2d"(%246, %23, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %248 = "tosa.transpose"(%247, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %249 = "tosa.sub"(%248, %35) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %250 = "tosa.mul"(%249, %74) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %251 = "tosa.mul"(%250, %35) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %252 = "tosa.add"(%251, %35) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global253 = %252 : tensor<1x256x28x28xf32>
    %253 = "tosa.clamp"(%252) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global254 = %253 : tensor<1x256x28x28xf32>
    %254 = "tosa.transpose"(%253, %1) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %255 = "tosa.conv2d"(%254, %22, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %256 = "tosa.transpose"(%255, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %257 = "tosa.sub"(%256, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %258 = "tosa.mul"(%257, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %259 = "tosa.mul"(%258, %35) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %260 = "tosa.add"(%259, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global261 = %260 : tensor<1x256x14x14xf32>
    %261 = "tosa.clamp"(%260) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global262 = %261 : tensor<1x256x14x14xf32>
    %262 = "tosa.transpose"(%261, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %263 = "tosa.conv2d"(%262, %21, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %264 = "tosa.transpose"(%263, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %265 = "tosa.sub"(%264, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %266 = "tosa.rsqrt"(%19) : (tensor<1024x1x1xf32>) -> tensor<1024x1x1xf32>
    %267 = "tosa.reshape"(%266) {new_shape = array<i64: 1, 1024, 1, 1>} : (tensor<1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    ml_program.global_store @global268 = %267 : tensor<1x1024x1x1xf32>
    %268 = "tosa.mul"(%265, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %269 = "tosa.mul"(%268, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %270 = "tosa.add"(%269, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %271 = "tosa.conv2d"(%246, %18, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %272 = "tosa.transpose"(%271, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %273 = "tosa.sub"(%272, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %274 = "tosa.mul"(%273, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %275 = "tosa.mul"(%274, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %276 = "tosa.add"(%275, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %277 = "tosa.add"(%270, %276) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global278 = %277 : tensor<1x1024x14x14xf32>
    %278 = "tosa.clamp"(%277) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global279 = %278 : tensor<1x1024x14x14xf32>
    %279 = "tosa.transpose"(%278, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %280 = "tosa.conv2d"(%279, %17, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %281 = "tosa.transpose"(%280, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %282 = "tosa.sub"(%281, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %283 = "tosa.mul"(%282, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %284 = "tosa.mul"(%283, %35) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %285 = "tosa.add"(%284, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global286 = %285 : tensor<1x256x14x14xf32>
    %286 = "tosa.clamp"(%285) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global287 = %286 : tensor<1x256x14x14xf32>
    %287 = "tosa.transpose"(%286, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %288 = "tosa.conv2d"(%287, %22, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %289 = "tosa.transpose"(%288, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %290 = "tosa.sub"(%289, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %291 = "tosa.mul"(%290, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %292 = "tosa.mul"(%291, %35) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %293 = "tosa.add"(%292, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global294 = %293 : tensor<1x256x14x14xf32>
    %294 = "tosa.clamp"(%293) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global295 = %294 : tensor<1x256x14x14xf32>
    %295 = "tosa.transpose"(%294, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %296 = "tosa.conv2d"(%295, %21, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %297 = "tosa.transpose"(%296, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %298 = "tosa.sub"(%297, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %299 = "tosa.mul"(%298, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %300 = "tosa.mul"(%299, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %301 = "tosa.add"(%300, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %302 = "tosa.add"(%301, %278) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global303 = %302 : tensor<1x1024x14x14xf32>
    %303 = "tosa.clamp"(%302) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global304 = %303 : tensor<1x1024x14x14xf32>
    %304 = "tosa.transpose"(%303, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %305 = "tosa.conv2d"(%304, %17, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %306 = "tosa.transpose"(%305, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %307 = "tosa.sub"(%306, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %308 = "tosa.mul"(%307, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %309 = "tosa.mul"(%308, %35) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %310 = "tosa.add"(%309, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global311 = %310 : tensor<1x256x14x14xf32>
    %311 = "tosa.clamp"(%310) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global312 = %311 : tensor<1x256x14x14xf32>
    %312 = "tosa.transpose"(%311, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %313 = "tosa.conv2d"(%312, %22, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %314 = "tosa.transpose"(%313, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %315 = "tosa.sub"(%314, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %316 = "tosa.mul"(%315, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %317 = "tosa.mul"(%316, %35) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %318 = "tosa.add"(%317, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global319 = %318 : tensor<1x256x14x14xf32>
    %319 = "tosa.clamp"(%318) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global320 = %319 : tensor<1x256x14x14xf32>
    %320 = "tosa.transpose"(%319, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %321 = "tosa.conv2d"(%320, %21, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %322 = "tosa.transpose"(%321, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %323 = "tosa.sub"(%322, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %324 = "tosa.mul"(%323, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %325 = "tosa.mul"(%324, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %326 = "tosa.add"(%325, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %327 = "tosa.add"(%326, %303) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global328 = %327 : tensor<1x1024x14x14xf32>
    %328 = "tosa.clamp"(%327) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global329 = %328 : tensor<1x1024x14x14xf32>
    %329 = "tosa.transpose"(%328, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %330 = "tosa.conv2d"(%329, %17, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %331 = "tosa.transpose"(%330, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %332 = "tosa.sub"(%331, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %333 = "tosa.mul"(%332, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %334 = "tosa.mul"(%333, %35) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %335 = "tosa.add"(%334, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global336 = %335 : tensor<1x256x14x14xf32>
    %336 = "tosa.clamp"(%335) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global337 = %336 : tensor<1x256x14x14xf32>
    %337 = "tosa.transpose"(%336, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %338 = "tosa.conv2d"(%337, %22, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %339 = "tosa.transpose"(%338, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %340 = "tosa.sub"(%339, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %341 = "tosa.mul"(%340, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %342 = "tosa.mul"(%341, %35) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %343 = "tosa.add"(%342, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global344 = %343 : tensor<1x256x14x14xf32>
    %344 = "tosa.clamp"(%343) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global345 = %344 : tensor<1x256x14x14xf32>
    %345 = "tosa.transpose"(%344, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %346 = "tosa.conv2d"(%345, %21, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %347 = "tosa.transpose"(%346, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %348 = "tosa.sub"(%347, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %349 = "tosa.mul"(%348, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %350 = "tosa.mul"(%349, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %351 = "tosa.add"(%350, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %352 = "tosa.add"(%351, %328) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global353 = %352 : tensor<1x1024x14x14xf32>
    %353 = "tosa.clamp"(%352) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global354 = %353 : tensor<1x1024x14x14xf32>
    %354 = "tosa.transpose"(%353, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %355 = "tosa.conv2d"(%354, %17, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %356 = "tosa.transpose"(%355, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %357 = "tosa.sub"(%356, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %358 = "tosa.mul"(%357, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %359 = "tosa.mul"(%358, %35) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %360 = "tosa.add"(%359, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global361 = %360 : tensor<1x256x14x14xf32>
    %361 = "tosa.clamp"(%360) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global362 = %361 : tensor<1x256x14x14xf32>
    %362 = "tosa.transpose"(%361, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %363 = "tosa.conv2d"(%362, %22, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %364 = "tosa.transpose"(%363, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %365 = "tosa.sub"(%364, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %366 = "tosa.mul"(%365, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %367 = "tosa.mul"(%366, %35) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %368 = "tosa.add"(%367, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global369 = %368 : tensor<1x256x14x14xf32>
    %369 = "tosa.clamp"(%368) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global370 = %369 : tensor<1x256x14x14xf32>
    %370 = "tosa.transpose"(%369, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %371 = "tosa.conv2d"(%370, %21, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %372 = "tosa.transpose"(%371, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %373 = "tosa.sub"(%372, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %374 = "tosa.mul"(%373, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %375 = "tosa.mul"(%374, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %376 = "tosa.add"(%375, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %377 = "tosa.add"(%376, %353) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global378 = %377 : tensor<1x1024x14x14xf32>
    %378 = "tosa.clamp"(%377) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global379 = %378 : tensor<1x1024x14x14xf32>
    %379 = "tosa.transpose"(%378, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %380 = "tosa.conv2d"(%379, %17, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %381 = "tosa.transpose"(%380, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %382 = "tosa.sub"(%381, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %383 = "tosa.mul"(%382, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %384 = "tosa.mul"(%383, %35) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %385 = "tosa.add"(%384, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global386 = %385 : tensor<1x256x14x14xf32>
    %386 = "tosa.clamp"(%385) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global387 = %386 : tensor<1x256x14x14xf32>
    %387 = "tosa.transpose"(%386, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %388 = "tosa.conv2d"(%387, %22, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %389 = "tosa.transpose"(%388, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %390 = "tosa.sub"(%389, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %391 = "tosa.mul"(%390, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %392 = "tosa.mul"(%391, %35) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %393 = "tosa.add"(%392, %35) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global394 = %393 : tensor<1x256x14x14xf32>
    %394 = "tosa.clamp"(%393) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global395 = %394 : tensor<1x256x14x14xf32>
    %395 = "tosa.transpose"(%394, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %396 = "tosa.conv2d"(%395, %21, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %397 = "tosa.transpose"(%396, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %398 = "tosa.sub"(%397, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %399 = "tosa.mul"(%398, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %400 = "tosa.mul"(%399, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %401 = "tosa.add"(%400, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %402 = "tosa.add"(%401, %378) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global403 = %402 : tensor<1x1024x14x14xf32>
    %403 = "tosa.clamp"(%402) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global404 = %403 : tensor<1x1024x14x14xf32>
    %404 = "tosa.transpose"(%403, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %405 = "tosa.conv2d"(%404, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %406 = "tosa.transpose"(%405, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %407 = "tosa.sub"(%406, %27) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %408 = "tosa.mul"(%407, %159) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %409 = "tosa.mul"(%408, %27) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %410 = "tosa.add"(%409, %27) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global411 = %410 : tensor<1x512x14x14xf32>
    %411 = "tosa.clamp"(%410) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global412 = %411 : tensor<1x512x14x14xf32>
    %412 = "tosa.transpose"(%411, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %413 = "tosa.conv2d"(%412, %15, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %414 = "tosa.transpose"(%413, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %415 = "tosa.sub"(%414, %27) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %416 = "tosa.mul"(%415, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %417 = "tosa.mul"(%416, %27) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %418 = "tosa.add"(%417, %27) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global419 = %418 : tensor<1x512x7x7xf32>
    %419 = "tosa.clamp"(%418) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global420 = %419 : tensor<1x512x7x7xf32>
    %420 = "tosa.transpose"(%419, %1) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %421 = "tosa.conv2d"(%420, %14, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %422 = "tosa.transpose"(%421, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %423 = "tosa.sub"(%422, %13) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %424 = "tosa.rsqrt"(%12) : (tensor<2048x1x1xf32>) -> tensor<2048x1x1xf32>
    %425 = "tosa.reshape"(%424) {new_shape = array<i64: 1, 2048, 1, 1>} : (tensor<2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    ml_program.global_store @global426 = %425 : tensor<1x2048x1x1xf32>
    %426 = "tosa.mul"(%423, %425) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %427 = "tosa.mul"(%426, %13) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %428 = "tosa.add"(%427, %13) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %429 = "tosa.conv2d"(%404, %11, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %430 = "tosa.transpose"(%429, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %431 = "tosa.sub"(%430, %13) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %432 = "tosa.mul"(%431, %425) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %433 = "tosa.mul"(%432, %13) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %434 = "tosa.add"(%433, %13) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %435 = "tosa.add"(%428, %434) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global436 = %435 : tensor<1x2048x7x7xf32>
    %436 = "tosa.clamp"(%435) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global437 = %436 : tensor<1x2048x7x7xf32>
    %437 = "tosa.transpose"(%436, %1) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %438 = "tosa.conv2d"(%437, %10, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %439 = "tosa.transpose"(%438, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %440 = "tosa.sub"(%439, %27) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %441 = "tosa.mul"(%440, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %442 = "tosa.mul"(%441, %27) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %443 = "tosa.add"(%442, %27) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global444 = %443 : tensor<1x512x7x7xf32>
    %444 = "tosa.clamp"(%443) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global445 = %444 : tensor<1x512x7x7xf32>
    %445 = "tosa.transpose"(%444, %1) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %446 = "tosa.conv2d"(%445, %15, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %447 = "tosa.transpose"(%446, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %448 = "tosa.sub"(%447, %27) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %449 = "tosa.mul"(%448, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %450 = "tosa.mul"(%449, %27) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %451 = "tosa.add"(%450, %27) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global452 = %451 : tensor<1x512x7x7xf32>
    %452 = "tosa.clamp"(%451) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global453 = %452 : tensor<1x512x7x7xf32>
    %453 = "tosa.transpose"(%452, %1) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %454 = "tosa.conv2d"(%453, %14, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %455 = "tosa.transpose"(%454, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %456 = "tosa.sub"(%455, %13) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %457 = "tosa.mul"(%456, %425) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %458 = "tosa.mul"(%457, %13) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %459 = "tosa.add"(%458, %13) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %460 = "tosa.add"(%459, %436) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global461 = %460 : tensor<1x2048x7x7xf32>
    %461 = "tosa.clamp"(%460) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global462 = %461 : tensor<1x2048x7x7xf32>
    %462 = "tosa.transpose"(%461, %1) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %463 = "tosa.conv2d"(%462, %10, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %464 = "tosa.transpose"(%463, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %465 = "tosa.sub"(%464, %27) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %466 = "tosa.mul"(%465, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %467 = "tosa.mul"(%466, %27) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %468 = "tosa.add"(%467, %27) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global469 = %468 : tensor<1x512x7x7xf32>
    %469 = "tosa.clamp"(%468) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global470 = %469 : tensor<1x512x7x7xf32>
    %470 = "tosa.transpose"(%469, %1) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %471 = "tosa.conv2d"(%470, %15, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %472 = "tosa.transpose"(%471, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %473 = "tosa.sub"(%472, %27) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %474 = "tosa.mul"(%473, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %475 = "tosa.mul"(%474, %27) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %476 = "tosa.add"(%475, %27) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global477 = %476 : tensor<1x512x7x7xf32>
    %477 = "tosa.clamp"(%476) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global478 = %477 : tensor<1x512x7x7xf32>
    %478 = "tosa.transpose"(%477, %1) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %479 = "tosa.conv2d"(%478, %14, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %480 = "tosa.transpose"(%479, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %481 = "tosa.sub"(%480, %13) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %482 = "tosa.mul"(%481, %425) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %483 = "tosa.mul"(%482, %13) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %484 = "tosa.add"(%483, %13) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %485 = "tosa.add"(%484, %461) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global486 = %485 : tensor<1x2048x7x7xf32>
    %486 = "tosa.clamp"(%485) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global487 = %486 : tensor<1x2048x7x7xf32>
    %487 = "tosa.transpose"(%486, %1) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %488 = "tosa.avg_pool2d"(%487) {acc_type = f32, kernel = array<i64: 7, 7>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>) -> tensor<1x1x1x2048xf32>
    %489 = "tosa.reshape"(%488) {new_shape = array<i64: 1, 1, 2048>} : (tensor<1x1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %490 = "tosa.matmul"(%489, %9) : (tensor<1x1x2048xf32>, tensor<1x2048x1000xf32>) -> tensor<1x1x1000xf32>
    %491 = "tosa.reshape"(%490) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %492 = "tosa.add"(%491, %8) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %492 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %0 = "tosa.const"() {value = dense<[0, 2, 1]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1 = "tosa.const"() {value = dense<0.0204081628> : tensor<1x7x7x2048xf32>} : () -> tensor<1x7x7x2048xf32>
    %2 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %4 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5 = "tosa.const"() {value = dense<[3, 1, 2, 0]> : tensor<4xi64>} : () -> tensor<4xi64>
    %cst = arith.constant -3.40282347E+38 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %6 = ml_program.global_load @global10 : tensor<1x2048x1000xf32>
    %7 = ml_program.global_load @global11 : tensor<512x1x1x2048xf32>
    %8 = ml_program.global_load @global12 : tensor<2048x1x1x1024xf32>
    %9 = ml_program.global_load @global14 : tensor<1x2048x1x1xf32>
    %10 = ml_program.global_load @global15 : tensor<2048x1x1x512xf32>
    %11 = ml_program.global_load @global16 : tensor<512x3x3x512xf32>
    %12 = ml_program.global_load @global17 : tensor<512x1x1x1024xf32>
    %13 = ml_program.global_load @global18 : tensor<256x1x1x1024xf32>
    %14 = ml_program.global_load @global19 : tensor<1024x1x1x512xf32>
    %15 = ml_program.global_load @global21 : tensor<1x1024x1x1xf32>
    %16 = ml_program.global_load @global22 : tensor<1024x1x1x256xf32>
    %17 = ml_program.global_load @global23 : tensor<256x3x3x256xf32>
    %18 = ml_program.global_load @global24 : tensor<256x1x1x512xf32>
    %19 = ml_program.global_load @global25 : tensor<128x1x1x512xf32>
    %20 = ml_program.global_load @global26 : tensor<512x1x1x256xf32>
    %21 = ml_program.global_load @global28 : tensor<1x512x1x1xf32>
    %22 = ml_program.global_load @global29 : tensor<512x1x1x128xf32>
    %23 = ml_program.global_load @global30 : tensor<128x3x3x128xf32>
    %24 = ml_program.global_load @global32 : tensor<1x128x1x1xf32>
    %25 = ml_program.global_load @global33 : tensor<128x1x1x256xf32>
    %26 = ml_program.global_load @global34 : tensor<64x1x1x256xf32>
    %27 = ml_program.global_load @global36 : tensor<1x256x1x1xf32>
    %28 = ml_program.global_load @global37 : tensor<256x1x1x64xf32>
    %29 = ml_program.global_load @global38 : tensor<64x3x3x64xf32>
    %30 = ml_program.global_load @global39 : tensor<64x1x1x64xf32>
    %31 = ml_program.global_load @global41 : tensor<1x64x1x1xf32>
    %32 = ml_program.global_load @global42 : tensor<64x7x7x3xf32>
    %33 = ml_program.global_load @global48 : tensor<1x64x1x1xf32>
    %34 = ml_program.global_load @global51 : tensor<1x64x112x112xf32>
    %35 = ml_program.global_load @global52 : tensor<1x64x112x112xf32>
    %36 = ml_program.global_load @global53 : tensor<1x112x112x64xf32>
    %37 = ml_program.global_load @global54 : tensor<1x56x56x64xf32>
    %38 = ml_program.global_load @global60 : tensor<1x64x56x56xf32>
    %39 = ml_program.global_load @global61 : tensor<1x64x56x56xf32>
    %40 = ml_program.global_load @global68 : tensor<1x64x56x56xf32>
    %41 = ml_program.global_load @global69 : tensor<1x64x56x56xf32>
    %42 = ml_program.global_load @global75 : tensor<1x256x1x1xf32>
    %43 = ml_program.global_load @global85 : tensor<1x256x56x56xf32>
    %44 = ml_program.global_load @global86 : tensor<1x256x56x56xf32>
    %45 = ml_program.global_load @global93 : tensor<1x64x56x56xf32>
    %46 = ml_program.global_load @global94 : tensor<1x64x56x56xf32>
    %47 = ml_program.global_load @global101 : tensor<1x64x56x56xf32>
    %48 = ml_program.global_load @global102 : tensor<1x64x56x56xf32>
    %49 = ml_program.global_load @global110 : tensor<1x256x56x56xf32>
    %50 = ml_program.global_load @global111 : tensor<1x256x56x56xf32>
    %51 = ml_program.global_load @global118 : tensor<1x64x56x56xf32>
    %52 = ml_program.global_load @global119 : tensor<1x64x56x56xf32>
    %53 = ml_program.global_load @global126 : tensor<1x64x56x56xf32>
    %54 = ml_program.global_load @global127 : tensor<1x64x56x56xf32>
    %55 = ml_program.global_load @global135 : tensor<1x256x56x56xf32>
    %56 = ml_program.global_load @global136 : tensor<1x256x56x56xf32>
    %57 = ml_program.global_load @global142 : tensor<1x128x1x1xf32>
    %58 = ml_program.global_load @global145 : tensor<1x128x56x56xf32>
    %59 = ml_program.global_load @global146 : tensor<1x128x56x56xf32>
    %60 = ml_program.global_load @global153 : tensor<1x128x28x28xf32>
    %61 = ml_program.global_load @global154 : tensor<1x128x28x28xf32>
    %62 = ml_program.global_load @global160 : tensor<1x512x1x1xf32>
    %63 = ml_program.global_load @global170 : tensor<1x512x28x28xf32>
    %64 = ml_program.global_load @global171 : tensor<1x512x28x28xf32>
    %65 = ml_program.global_load @global178 : tensor<1x128x28x28xf32>
    %66 = ml_program.global_load @global179 : tensor<1x128x28x28xf32>
    %67 = ml_program.global_load @global186 : tensor<1x128x28x28xf32>
    %68 = ml_program.global_load @global187 : tensor<1x128x28x28xf32>
    %69 = ml_program.global_load @global195 : tensor<1x512x28x28xf32>
    %70 = ml_program.global_load @global196 : tensor<1x512x28x28xf32>
    %71 = ml_program.global_load @global203 : tensor<1x128x28x28xf32>
    %72 = ml_program.global_load @global204 : tensor<1x128x28x28xf32>
    %73 = ml_program.global_load @global211 : tensor<1x128x28x28xf32>
    %74 = ml_program.global_load @global212 : tensor<1x128x28x28xf32>
    %75 = ml_program.global_load @global220 : tensor<1x512x28x28xf32>
    %76 = ml_program.global_load @global221 : tensor<1x512x28x28xf32>
    %77 = ml_program.global_load @global228 : tensor<1x128x28x28xf32>
    %78 = ml_program.global_load @global229 : tensor<1x128x28x28xf32>
    %79 = ml_program.global_load @global236 : tensor<1x128x28x28xf32>
    %80 = ml_program.global_load @global237 : tensor<1x128x28x28xf32>
    %81 = ml_program.global_load @global245 : tensor<1x512x28x28xf32>
    %82 = ml_program.global_load @global246 : tensor<1x512x28x28xf32>
    %83 = ml_program.global_load @global253 : tensor<1x256x28x28xf32>
    %84 = ml_program.global_load @global254 : tensor<1x256x28x28xf32>
    %85 = ml_program.global_load @global261 : tensor<1x256x14x14xf32>
    %86 = ml_program.global_load @global262 : tensor<1x256x14x14xf32>
    %87 = ml_program.global_load @global268 : tensor<1x1024x1x1xf32>
    %88 = ml_program.global_load @global278 : tensor<1x1024x14x14xf32>
    %89 = ml_program.global_load @global279 : tensor<1x1024x14x14xf32>
    %90 = ml_program.global_load @global286 : tensor<1x256x14x14xf32>
    %91 = ml_program.global_load @global287 : tensor<1x256x14x14xf32>
    %92 = ml_program.global_load @global294 : tensor<1x256x14x14xf32>
    %93 = ml_program.global_load @global295 : tensor<1x256x14x14xf32>
    %94 = ml_program.global_load @global303 : tensor<1x1024x14x14xf32>
    %95 = ml_program.global_load @global304 : tensor<1x1024x14x14xf32>
    %96 = ml_program.global_load @global311 : tensor<1x256x14x14xf32>
    %97 = ml_program.global_load @global312 : tensor<1x256x14x14xf32>
    %98 = ml_program.global_load @global319 : tensor<1x256x14x14xf32>
    %99 = ml_program.global_load @global320 : tensor<1x256x14x14xf32>
    %100 = ml_program.global_load @global328 : tensor<1x1024x14x14xf32>
    %101 = ml_program.global_load @global329 : tensor<1x1024x14x14xf32>
    %102 = ml_program.global_load @global336 : tensor<1x256x14x14xf32>
    %103 = ml_program.global_load @global337 : tensor<1x256x14x14xf32>
    %104 = ml_program.global_load @global344 : tensor<1x256x14x14xf32>
    %105 = ml_program.global_load @global345 : tensor<1x256x14x14xf32>
    %106 = ml_program.global_load @global353 : tensor<1x1024x14x14xf32>
    %107 = ml_program.global_load @global354 : tensor<1x1024x14x14xf32>
    %108 = ml_program.global_load @global361 : tensor<1x256x14x14xf32>
    %109 = ml_program.global_load @global362 : tensor<1x256x14x14xf32>
    %110 = ml_program.global_load @global369 : tensor<1x256x14x14xf32>
    %111 = ml_program.global_load @global370 : tensor<1x256x14x14xf32>
    %112 = ml_program.global_load @global378 : tensor<1x1024x14x14xf32>
    %113 = ml_program.global_load @global379 : tensor<1x1024x14x14xf32>
    %114 = ml_program.global_load @global386 : tensor<1x256x14x14xf32>
    %115 = ml_program.global_load @global387 : tensor<1x256x14x14xf32>
    %116 = ml_program.global_load @global394 : tensor<1x256x14x14xf32>
    %117 = ml_program.global_load @global395 : tensor<1x256x14x14xf32>
    %118 = ml_program.global_load @global403 : tensor<1x1024x14x14xf32>
    %119 = ml_program.global_load @global404 : tensor<1x1024x14x14xf32>
    %120 = ml_program.global_load @global411 : tensor<1x512x14x14xf32>
    %121 = ml_program.global_load @global412 : tensor<1x512x14x14xf32>
    %122 = ml_program.global_load @global419 : tensor<1x512x7x7xf32>
    %123 = ml_program.global_load @global420 : tensor<1x512x7x7xf32>
    %124 = ml_program.global_load @global426 : tensor<1x2048x1x1xf32>
    %125 = ml_program.global_load @global436 : tensor<1x2048x7x7xf32>
    %126 = ml_program.global_load @global437 : tensor<1x2048x7x7xf32>
    %127 = ml_program.global_load @global444 : tensor<1x512x7x7xf32>
    %128 = ml_program.global_load @global445 : tensor<1x512x7x7xf32>
    %129 = ml_program.global_load @global452 : tensor<1x512x7x7xf32>
    %130 = ml_program.global_load @global453 : tensor<1x512x7x7xf32>
    %131 = ml_program.global_load @global461 : tensor<1x2048x7x7xf32>
    %132 = ml_program.global_load @global462 : tensor<1x2048x7x7xf32>
    %133 = ml_program.global_load @global469 : tensor<1x512x7x7xf32>
    %134 = ml_program.global_load @global470 : tensor<1x512x7x7xf32>
    %135 = ml_program.global_load @global477 : tensor<1x512x7x7xf32>
    %136 = ml_program.global_load @global478 : tensor<1x512x7x7xf32>
    %137 = ml_program.global_load @global486 : tensor<1x2048x7x7xf32>
    %138 = ml_program.global_load @global487 : tensor<1x2048x7x7xf32>
    %139 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %140 = "tosa.transpose"(%6, %0) : (tensor<1x2048x1000xf32>, tensor<3xi32>) -> tensor<1x1000x2048xf32>
    %141 = "tosa.matmul"(%139, %140) : (tensor<1x1x1000xf32>, tensor<1x1000x2048xf32>) -> tensor<1x1x2048xf32>
    %142 = "tosa.reshape"(%141) {new_shape = array<i64: 1, 1, 1, 2048>} : (tensor<1x1x2048xf32>) -> tensor<1x1x1x2048xf32>
    %143 = "tosa.mul"(%142, %1) {shift = 0 : i32} : (tensor<1x1x1x2048xf32>, tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %144 = "tosa.transpose"(%143, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %145 = "tosa.equal"(%137, %138) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %146 = "tosa.select"(%145, %144, %3) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %147 = "tosa.mul"(%9, %146) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %148 = "tosa.mul"(%124, %147) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %149 = "tosa.transpose"(%148, %4) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %150 = "tosa.transpose"(%10, %5) : (tensor<2048x1x1x512xf32>, tensor<4xi64>) -> tensor<512x1x1x2048xf32>
    %151 = tensor.empty() : tensor<512xf32>
    %152 = "tosa.transpose_conv2d"(%149, %150, %151) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %153 = "tosa.transpose"(%152, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %154 = "tosa.equal"(%135, %136) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %155 = "tosa.select"(%154, %153, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %156 = "tosa.mul"(%21, %155) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %157 = "tosa.mul"(%62, %156) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %158 = "tosa.transpose"(%157, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %159 = "tosa.transpose"(%11, %5) : (tensor<512x3x3x512xf32>, tensor<4xi64>) -> tensor<512x3x3x512xf32>
    %160 = "tosa.transpose_conv2d"(%158, %159, %151) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %161 = "tosa.transpose"(%160, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %162 = "tosa.equal"(%133, %134) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %163 = "tosa.select"(%162, %161, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %164 = "tosa.mul"(%21, %163) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %165 = "tosa.mul"(%62, %164) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %166 = "tosa.transpose"(%165, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %167 = "tosa.transpose"(%7, %5) : (tensor<512x1x1x2048xf32>, tensor<4xi64>) -> tensor<2048x1x1x512xf32>
    %168 = tensor.empty() : tensor<2048xf32>
    %169 = "tosa.transpose_conv2d"(%166, %167, %168) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 2048>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %170 = "tosa.transpose"(%169, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %171 = "tosa.add"(%146, %170) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %172 = "tosa.equal"(%131, %132) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %173 = "tosa.select"(%172, %171, %3) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %174 = "tosa.mul"(%9, %173) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %175 = "tosa.mul"(%124, %174) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %176 = "tosa.transpose"(%175, %4) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %177 = "tosa.transpose_conv2d"(%176, %150, %151) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %178 = "tosa.transpose"(%177, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %179 = "tosa.equal"(%129, %130) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %180 = "tosa.select"(%179, %178, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %181 = "tosa.mul"(%21, %180) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %182 = "tosa.mul"(%62, %181) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %183 = "tosa.transpose"(%182, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %184 = "tosa.transpose_conv2d"(%183, %159, %151) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %185 = "tosa.transpose"(%184, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %186 = "tosa.equal"(%127, %128) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %187 = "tosa.select"(%186, %185, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %188 = "tosa.mul"(%21, %187) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %189 = "tosa.mul"(%62, %188) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %190 = "tosa.transpose"(%189, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %191 = "tosa.transpose_conv2d"(%190, %167, %168) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 2048>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %192 = "tosa.transpose"(%191, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %193 = "tosa.add"(%173, %192) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %194 = "tosa.equal"(%125, %126) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %195 = "tosa.select"(%194, %193, %3) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %196 = "tosa.mul"(%9, %195) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %197 = "tosa.mul"(%124, %196) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %198 = "tosa.transpose"(%197, %4) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %199 = "tosa.transpose"(%8, %5) : (tensor<2048x1x1x1024xf32>, tensor<4xi64>) -> tensor<1024x1x1x2048xf32>
    %200 = tensor.empty() : tensor<1024xf32>
    %201 = "tosa.transpose_conv2d"(%198, %199, %200) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 2, 2>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %202 = "tosa.transpose_conv2d"(%198, %150, %151) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %203 = "tosa.transpose"(%202, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %204 = "tosa.equal"(%122, %123) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %205 = "tosa.select"(%204, %203, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %206 = "tosa.mul"(%21, %205) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %207 = "tosa.mul"(%62, %206) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %208 = "tosa.transpose"(%207, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %209 = "tosa.transpose_conv2d"(%208, %159, %151) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 2, 2>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %210 = "tosa.transpose"(%209, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %211 = "tosa.equal"(%120, %121) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %212 = "tosa.select"(%211, %210, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %213 = "tosa.mul"(%21, %212) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %214 = "tosa.mul"(%62, %213) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %215 = "tosa.transpose"(%214, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %216 = "tosa.transpose"(%12, %5) : (tensor<512x1x1x1024xf32>, tensor<4xi64>) -> tensor<1024x1x1x512xf32>
    %217 = "tosa.transpose_conv2d"(%215, %216, %200) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %218 = "tosa.add"(%201, %217) : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %219 = "tosa.transpose"(%218, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %220 = "tosa.equal"(%118, %119) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %221 = "tosa.select"(%220, %219, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %222 = "tosa.mul"(%15, %221) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %223 = "tosa.mul"(%87, %222) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %224 = "tosa.transpose"(%223, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %225 = "tosa.transpose"(%16, %5) : (tensor<1024x1x1x256xf32>, tensor<4xi64>) -> tensor<256x1x1x1024xf32>
    %226 = tensor.empty() : tensor<256xf32>
    %227 = "tosa.transpose_conv2d"(%224, %225, %226) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %228 = "tosa.transpose"(%227, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %229 = "tosa.equal"(%116, %117) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %230 = "tosa.select"(%229, %228, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %231 = "tosa.mul"(%27, %230) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %232 = "tosa.mul"(%42, %231) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %233 = "tosa.transpose"(%232, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %234 = "tosa.transpose"(%17, %5) : (tensor<256x3x3x256xf32>, tensor<4xi64>) -> tensor<256x3x3x256xf32>
    %235 = "tosa.transpose_conv2d"(%233, %234, %226) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %236 = "tosa.transpose"(%235, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %237 = "tosa.equal"(%114, %115) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %238 = "tosa.select"(%237, %236, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %239 = "tosa.mul"(%27, %238) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %240 = "tosa.mul"(%42, %239) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %241 = "tosa.transpose"(%240, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %242 = "tosa.transpose"(%13, %5) : (tensor<256x1x1x1024xf32>, tensor<4xi64>) -> tensor<1024x1x1x256xf32>
    %243 = "tosa.transpose_conv2d"(%241, %242, %200) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %244 = "tosa.transpose"(%243, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %245 = "tosa.add"(%221, %244) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %246 = "tosa.equal"(%112, %113) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %247 = "tosa.select"(%246, %245, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %248 = "tosa.mul"(%15, %247) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %249 = "tosa.mul"(%87, %248) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %250 = "tosa.transpose"(%249, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %251 = "tosa.transpose_conv2d"(%250, %225, %226) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %252 = "tosa.transpose"(%251, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %253 = "tosa.equal"(%110, %111) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %254 = "tosa.select"(%253, %252, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %255 = "tosa.mul"(%27, %254) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %256 = "tosa.mul"(%42, %255) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %257 = "tosa.transpose"(%256, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %258 = "tosa.transpose_conv2d"(%257, %234, %226) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %259 = "tosa.transpose"(%258, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %260 = "tosa.equal"(%108, %109) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %261 = "tosa.select"(%260, %259, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %262 = "tosa.mul"(%27, %261) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %263 = "tosa.mul"(%42, %262) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %264 = "tosa.transpose"(%263, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %265 = "tosa.transpose_conv2d"(%264, %242, %200) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %266 = "tosa.transpose"(%265, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %267 = "tosa.add"(%247, %266) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %268 = "tosa.equal"(%106, %107) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %269 = "tosa.select"(%268, %267, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %270 = "tosa.mul"(%15, %269) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %271 = "tosa.mul"(%87, %270) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %272 = "tosa.transpose"(%271, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %273 = "tosa.transpose_conv2d"(%272, %225, %226) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %274 = "tosa.transpose"(%273, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %275 = "tosa.equal"(%104, %105) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %276 = "tosa.select"(%275, %274, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %277 = "tosa.mul"(%27, %276) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %278 = "tosa.mul"(%42, %277) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %279 = "tosa.transpose"(%278, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %280 = "tosa.transpose_conv2d"(%279, %234, %226) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %281 = "tosa.transpose"(%280, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %282 = "tosa.equal"(%102, %103) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %283 = "tosa.select"(%282, %281, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %284 = "tosa.mul"(%27, %283) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %285 = "tosa.mul"(%42, %284) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %286 = "tosa.transpose"(%285, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %287 = "tosa.transpose_conv2d"(%286, %242, %200) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %288 = "tosa.transpose"(%287, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %289 = "tosa.add"(%269, %288) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %290 = "tosa.equal"(%100, %101) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %291 = "tosa.select"(%290, %289, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %292 = "tosa.mul"(%15, %291) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %293 = "tosa.mul"(%87, %292) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %294 = "tosa.transpose"(%293, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %295 = "tosa.transpose_conv2d"(%294, %225, %226) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %296 = "tosa.transpose"(%295, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %297 = "tosa.equal"(%98, %99) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %298 = "tosa.select"(%297, %296, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %299 = "tosa.mul"(%27, %298) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %300 = "tosa.mul"(%42, %299) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %301 = "tosa.transpose"(%300, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %302 = "tosa.transpose_conv2d"(%301, %234, %226) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %303 = "tosa.transpose"(%302, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %304 = "tosa.equal"(%96, %97) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %305 = "tosa.select"(%304, %303, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %306 = "tosa.mul"(%27, %305) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %307 = "tosa.mul"(%42, %306) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %308 = "tosa.transpose"(%307, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %309 = "tosa.transpose_conv2d"(%308, %242, %200) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %310 = "tosa.transpose"(%309, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %311 = "tosa.add"(%291, %310) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %312 = "tosa.equal"(%94, %95) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %313 = "tosa.select"(%312, %311, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %314 = "tosa.mul"(%15, %313) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %315 = "tosa.mul"(%87, %314) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %316 = "tosa.transpose"(%315, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %317 = "tosa.transpose_conv2d"(%316, %225, %226) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %318 = "tosa.transpose"(%317, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %319 = "tosa.equal"(%92, %93) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %320 = "tosa.select"(%319, %318, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %321 = "tosa.mul"(%27, %320) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %322 = "tosa.mul"(%42, %321) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %323 = "tosa.transpose"(%322, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %324 = "tosa.transpose_conv2d"(%323, %234, %226) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %325 = "tosa.transpose"(%324, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %326 = "tosa.equal"(%90, %91) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %327 = "tosa.select"(%326, %325, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %328 = "tosa.mul"(%27, %327) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %329 = "tosa.mul"(%42, %328) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %330 = "tosa.transpose"(%329, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %331 = "tosa.transpose_conv2d"(%330, %242, %200) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %332 = "tosa.transpose"(%331, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %333 = "tosa.add"(%313, %332) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %334 = "tosa.equal"(%88, %89) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %335 = "tosa.select"(%334, %333, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %336 = "tosa.mul"(%15, %335) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %337 = "tosa.mul"(%87, %336) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %338 = "tosa.transpose"(%337, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %339 = "tosa.transpose"(%14, %5) : (tensor<1024x1x1x512xf32>, tensor<4xi64>) -> tensor<512x1x1x1024xf32>
    %340 = "tosa.transpose_conv2d"(%338, %339, %151) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %341 = "tosa.transpose_conv2d"(%338, %225, %226) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %342 = "tosa.transpose"(%341, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %343 = "tosa.equal"(%85, %86) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %344 = "tosa.select"(%343, %342, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %345 = "tosa.mul"(%27, %344) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %346 = "tosa.mul"(%42, %345) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %347 = "tosa.transpose"(%346, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %348 = "tosa.transpose_conv2d"(%347, %234, %226) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %349 = "tosa.transpose"(%348, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %350 = "tosa.equal"(%83, %84) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %351 = "tosa.select"(%350, %349, %3) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %352 = "tosa.mul"(%27, %351) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %353 = "tosa.mul"(%42, %352) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %354 = "tosa.transpose"(%353, %4) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %355 = "tosa.transpose"(%18, %5) : (tensor<256x1x1x512xf32>, tensor<4xi64>) -> tensor<512x1x1x256xf32>
    %356 = "tosa.transpose_conv2d"(%354, %355, %151) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %357 = "tosa.add"(%340, %356) : (tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %358 = "tosa.transpose"(%357, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %359 = "tosa.equal"(%81, %82) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %360 = "tosa.select"(%359, %358, %3) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %361 = "tosa.mul"(%21, %360) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %362 = "tosa.mul"(%62, %361) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %363 = "tosa.transpose"(%362, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %364 = "tosa.transpose"(%22, %5) : (tensor<512x1x1x128xf32>, tensor<4xi64>) -> tensor<128x1x1x512xf32>
    %365 = tensor.empty() : tensor<128xf32>
    %366 = "tosa.transpose_conv2d"(%363, %364, %365) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %367 = "tosa.transpose"(%366, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %368 = "tosa.equal"(%79, %80) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %369 = "tosa.select"(%368, %367, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %370 = "tosa.mul"(%24, %369) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %371 = "tosa.mul"(%57, %370) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %372 = "tosa.transpose"(%371, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %373 = "tosa.transpose"(%23, %5) : (tensor<128x3x3x128xf32>, tensor<4xi64>) -> tensor<128x3x3x128xf32>
    %374 = "tosa.transpose_conv2d"(%372, %373, %365) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %375 = "tosa.transpose"(%374, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %376 = "tosa.equal"(%77, %78) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %377 = "tosa.select"(%376, %375, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %378 = "tosa.mul"(%24, %377) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %379 = "tosa.mul"(%57, %378) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %380 = "tosa.transpose"(%379, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %381 = "tosa.transpose"(%19, %5) : (tensor<128x1x1x512xf32>, tensor<4xi64>) -> tensor<512x1x1x128xf32>
    %382 = "tosa.transpose_conv2d"(%380, %381, %151) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %383 = "tosa.transpose"(%382, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %384 = "tosa.add"(%360, %383) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %385 = "tosa.equal"(%75, %76) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %386 = "tosa.select"(%385, %384, %3) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %387 = "tosa.mul"(%21, %386) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %388 = "tosa.mul"(%62, %387) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %389 = "tosa.transpose"(%388, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %390 = "tosa.transpose_conv2d"(%389, %364, %365) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %391 = "tosa.transpose"(%390, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %392 = "tosa.equal"(%73, %74) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %393 = "tosa.select"(%392, %391, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %394 = "tosa.mul"(%24, %393) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %395 = "tosa.mul"(%57, %394) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %396 = "tosa.transpose"(%395, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %397 = "tosa.transpose_conv2d"(%396, %373, %365) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %398 = "tosa.transpose"(%397, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %399 = "tosa.equal"(%71, %72) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %400 = "tosa.select"(%399, %398, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %401 = "tosa.mul"(%24, %400) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %402 = "tosa.mul"(%57, %401) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %403 = "tosa.transpose"(%402, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %404 = "tosa.transpose_conv2d"(%403, %381, %151) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %405 = "tosa.transpose"(%404, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %406 = "tosa.add"(%386, %405) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %407 = "tosa.equal"(%69, %70) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %408 = "tosa.select"(%407, %406, %3) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %409 = "tosa.mul"(%21, %408) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %410 = "tosa.mul"(%62, %409) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %411 = "tosa.transpose"(%410, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %412 = "tosa.transpose_conv2d"(%411, %364, %365) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %413 = "tosa.transpose"(%412, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %414 = "tosa.equal"(%67, %68) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %415 = "tosa.select"(%414, %413, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %416 = "tosa.mul"(%24, %415) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %417 = "tosa.mul"(%57, %416) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %418 = "tosa.transpose"(%417, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %419 = "tosa.transpose_conv2d"(%418, %373, %365) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %420 = "tosa.transpose"(%419, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %421 = "tosa.equal"(%65, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %422 = "tosa.select"(%421, %420, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %423 = "tosa.mul"(%24, %422) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %424 = "tosa.mul"(%57, %423) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %425 = "tosa.transpose"(%424, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %426 = "tosa.transpose_conv2d"(%425, %381, %151) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %427 = "tosa.transpose"(%426, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %428 = "tosa.add"(%408, %427) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %429 = "tosa.equal"(%63, %64) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %430 = "tosa.select"(%429, %428, %3) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %431 = "tosa.mul"(%21, %430) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %432 = "tosa.mul"(%62, %431) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %433 = "tosa.transpose"(%432, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %434 = "tosa.transpose"(%20, %5) : (tensor<512x1x1x256xf32>, tensor<4xi64>) -> tensor<256x1x1x512xf32>
    %435 = "tosa.transpose_conv2d"(%433, %434, %226) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %436 = "tosa.transpose_conv2d"(%433, %364, %365) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %437 = "tosa.transpose"(%436, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %438 = "tosa.equal"(%60, %61) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %439 = "tosa.select"(%438, %437, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %440 = "tosa.mul"(%24, %439) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %441 = "tosa.mul"(%57, %440) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %442 = "tosa.transpose"(%441, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %443 = "tosa.transpose_conv2d"(%442, %373, %365) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %444 = "tosa.transpose"(%443, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %445 = "tosa.equal"(%58, %59) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %446 = "tosa.select"(%445, %444, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %447 = "tosa.mul"(%24, %446) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %448 = "tosa.mul"(%57, %447) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %449 = "tosa.transpose"(%448, %4) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %450 = "tosa.transpose"(%25, %5) : (tensor<128x1x1x256xf32>, tensor<4xi64>) -> tensor<256x1x1x128xf32>
    %451 = "tosa.transpose_conv2d"(%449, %450, %226) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %452 = "tosa.add"(%435, %451) : (tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %453 = "tosa.transpose"(%452, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %454 = "tosa.equal"(%55, %56) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %455 = "tosa.select"(%454, %453, %3) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %456 = "tosa.mul"(%27, %455) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %457 = "tosa.mul"(%42, %456) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %458 = "tosa.transpose"(%457, %4) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %459 = "tosa.transpose"(%28, %5) : (tensor<256x1x1x64xf32>, tensor<4xi64>) -> tensor<64x1x1x256xf32>
    %460 = tensor.empty() : tensor<64xf32>
    %461 = "tosa.transpose_conv2d"(%458, %459, %460) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %462 = "tosa.transpose"(%461, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %463 = "tosa.equal"(%53, %54) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %464 = "tosa.select"(%463, %462, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %465 = "tosa.mul"(%31, %464) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %466 = "tosa.mul"(%33, %465) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %467 = "tosa.transpose"(%466, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %468 = "tosa.transpose"(%29, %5) : (tensor<64x3x3x64xf32>, tensor<4xi64>) -> tensor<64x3x3x64xf32>
    %469 = "tosa.transpose_conv2d"(%467, %468, %460) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %470 = "tosa.transpose"(%469, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %471 = "tosa.equal"(%51, %52) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %472 = "tosa.select"(%471, %470, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %473 = "tosa.mul"(%31, %472) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %474 = "tosa.mul"(%33, %473) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %475 = "tosa.transpose"(%474, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %476 = "tosa.transpose"(%26, %5) : (tensor<64x1x1x256xf32>, tensor<4xi64>) -> tensor<256x1x1x64xf32>
    %477 = "tosa.transpose_conv2d"(%475, %476, %226) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %478 = "tosa.transpose"(%477, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %479 = "tosa.add"(%455, %478) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %480 = "tosa.equal"(%49, %50) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %481 = "tosa.select"(%480, %479, %3) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %482 = "tosa.mul"(%27, %481) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %483 = "tosa.mul"(%42, %482) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %484 = "tosa.transpose"(%483, %4) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %485 = "tosa.transpose_conv2d"(%484, %459, %460) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %486 = "tosa.transpose"(%485, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %487 = "tosa.equal"(%47, %48) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %488 = "tosa.select"(%487, %486, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %489 = "tosa.mul"(%31, %488) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %490 = "tosa.mul"(%33, %489) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %491 = "tosa.transpose"(%490, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %492 = "tosa.transpose_conv2d"(%491, %468, %460) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %493 = "tosa.transpose"(%492, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %494 = "tosa.equal"(%45, %46) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %495 = "tosa.select"(%494, %493, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %496 = "tosa.mul"(%31, %495) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %497 = "tosa.mul"(%33, %496) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %498 = "tosa.transpose"(%497, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %499 = "tosa.transpose_conv2d"(%498, %476, %226) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %500 = "tosa.transpose"(%499, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %501 = "tosa.add"(%481, %500) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %502 = "tosa.equal"(%43, %44) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %503 = "tosa.select"(%502, %501, %3) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %504 = "tosa.mul"(%27, %503) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %505 = "tosa.mul"(%42, %504) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %506 = "tosa.transpose"(%505, %4) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %507 = "tosa.transpose_conv2d"(%506, %459, %460) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %508 = "tosa.transpose"(%507, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %509 = "tosa.equal"(%40, %41) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %510 = "tosa.select"(%509, %508, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %511 = "tosa.mul"(%31, %510) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %512 = "tosa.mul"(%33, %511) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %513 = "tosa.transpose"(%512, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %514 = "tosa.transpose_conv2d"(%513, %468, %460) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %515 = "tosa.transpose"(%514, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %516 = "tosa.equal"(%38, %39) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %517 = "tosa.select"(%516, %515, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %518 = "tosa.mul"(%31, %517) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %519 = "tosa.mul"(%33, %518) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %520 = "tosa.transpose"(%519, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %521 = "tosa.transpose"(%30, %5) : (tensor<64x1x1x64xf32>, tensor<4xi64>) -> tensor<64x1x1x64xf32>
    %522 = "tosa.transpose_conv2d"(%520, %521, %460) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x1x1x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %523 = "tosa.add"(%507, %522) : (tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %padded = tensor.pad %36 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %524 = tensor.empty() : tensor<1x113x113x64xf32>
    %525 = tensor.empty() : tensor<3x3xf32>
    %526 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded, %525, %37, %523 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%524 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_1: f32, %in_2: f32, %in_3: f32, %out: f32):
      %537 = arith.cmpf oge, %in, %in_2 : f32
      %538 = arith.select %537, %in_3, %cst_0 : f32
      %539 = arith.addf %out, %538 : f32
      linalg.yield %539 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice = tensor.extract_slice %526[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %527 = "tosa.transpose"(%extracted_slice, %2) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %528 = "tosa.equal"(%34, %35) : (tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xi1>
    %529 = "tosa.select"(%528, %527, %3) : (tensor<1x64x112x112xi1>, tensor<1x64x112x112xf32>, tensor<f32>) -> tensor<1x64x112x112xf32>
    %530 = "tosa.mul"(%31, %529) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %531 = "tosa.mul"(%33, %530) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %532 = "tosa.transpose"(%531, %4) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %533 = "tosa.transpose"(%32, %5) : (tensor<64x7x7x3xf32>, tensor<4xi64>) -> tensor<3x7x7x64xf32>
    %534 = tensor.empty() : tensor<3xf32>
    %535 = "tosa.transpose_conv2d"(%532, %533, %534) {out_pad = array<i64: -3, -3, -3, -3>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>, tensor<3x7x7x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %536 = "tosa.transpose"(%535, %2) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %536 : tensor<1x3x224x224xf32>
  }
}

