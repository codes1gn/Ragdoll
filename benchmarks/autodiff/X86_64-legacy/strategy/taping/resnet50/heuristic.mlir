#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "ResNet"} {
  ml_program.global private mutable @global445 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global444 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global436 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global435 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global428 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global427 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global420 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global419 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global411 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global410 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global403 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global402 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global395 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global394 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global384 : tensor<1x2048x1x1xf32>
  ml_program.global private mutable @global378 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global377 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global370 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global369 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global362 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global361 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global353 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global352 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global345 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global344 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global337 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global336 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global328 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global327 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global320 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global319 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global312 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global311 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global303 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global302 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global295 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global294 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global287 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global286 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global278 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global277 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global270 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global269 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global262 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global261 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global253 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global252 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global245 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global244 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global237 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global236 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global226 : tensor<1x1024x1x1xf32>
  ml_program.global private mutable @global220 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global219 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global212 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global211 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global204 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global203 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global195 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global194 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global187 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global186 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global179 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global178 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global170 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global169 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global162 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global161 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global154 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global153 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global145 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global144 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global137 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global136 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global129 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global128 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global118 : tensor<1x512x1x1xf32>
  ml_program.global private mutable @global112 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global111 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global104 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global103 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global100 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global94 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global93 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global85 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global84 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global77 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global76 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global69 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global68 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global60 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global59 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global52 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global51 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global44 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global43 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global33 : tensor<1x256x1x1xf32>
  ml_program.global private mutable @global27 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global26 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global19 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global18 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global12 : tensor<1x56x56x64xf32>
  ml_program.global private mutable @global11 : tensor<1x112x112x64xf32>
  ml_program.global private mutable @global10 : tensor<1x64x112x112xf32>
  ml_program.global private mutable @global9 : tensor<1x64x112x112xf32>
  ml_program.global private mutable @global6 : tensor<1x64x1x1xf32>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x7x7x3xf32>} : () -> tensor<64x7x7x3xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %2 = "tosa.const"() {value = dense<7.778000e-02> : tensor<64x1x1xf32>} : () -> tensor<64x1x1xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x64xf32>} : () -> tensor<64x1x1x64xf32>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x64xf32>} : () -> tensor<64x3x3x64xf32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x64xf32>} : () -> tensor<256x1x1x64xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %7 = "tosa.const"() {value = dense<7.778000e-02> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x256xf32>} : () -> tensor<64x1x1x256xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x256xf32>} : () -> tensor<128x1x1x256xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %11 = "tosa.const"() {value = dense<7.778000e-02> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x128xf32>} : () -> tensor<128x3x3x128xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x128xf32>} : () -> tensor<512x1x1x128xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %15 = "tosa.const"() {value = dense<7.778000e-02> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x256xf32>} : () -> tensor<512x1x1x256xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x512xf32>} : () -> tensor<128x1x1x512xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x512xf32>} : () -> tensor<256x1x1x512xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x256xf32>} : () -> tensor<1024x1x1x256xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1024x1x1xf32>} : () -> tensor<1x1024x1x1xf32>
    %22 = "tosa.const"() {value = dense<7.778000e-02> : tensor<1024x1x1xf32>} : () -> tensor<1024x1x1xf32>
    %23 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x512xf32>} : () -> tensor<1024x1x1x512xf32>
    %24 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x1024xf32>} : () -> tensor<256x1x1x1024xf32>
    %25 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x1024xf32>} : () -> tensor<512x1x1x1024xf32>
    %26 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x512xf32>} : () -> tensor<512x3x3x512xf32>
    %27 = "tosa.const"() {value = dense<7.777000e-02> : tensor<2048x1x1x512xf32>} : () -> tensor<2048x1x1x512xf32>
    %28 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x2048x1x1xf32>} : () -> tensor<1x2048x1x1xf32>
    %29 = "tosa.const"() {value = dense<7.778000e-02> : tensor<2048x1x1xf32>} : () -> tensor<2048x1x1xf32>
    %30 = "tosa.const"() {value = dense<7.777000e-02> : tensor<2048x1x1x1024xf32>} : () -> tensor<2048x1x1x1024xf32>
    %31 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x2048xf32>} : () -> tensor<512x1x1x2048xf32>
    %32 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x2048x1000xf32>} : () -> tensor<1x2048x1000xf32>
    %33 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000xf32>} : () -> tensor<1x1000xf32>
    %34 = "tosa.const"() {value = dense<0.000000e+00> : tensor<2048xf32>} : () -> tensor<2048xf32>
    %35 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %36 = "tosa.const"() {value = dense<0.000000e+00> : tensor<512xf32>} : () -> tensor<512xf32>
    %37 = "tosa.const"() {value = dense<0.000000e+00> : tensor<128xf32>} : () -> tensor<128xf32>
    %38 = "tosa.const"() {value = dense<0.000000e+00> : tensor<256xf32>} : () -> tensor<256xf32>
    %39 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %40 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %41 = "tosa.const"() {value = dense<0.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %42 = "tosa.transpose"(%arg0, %40) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %43 = "tosa.conv2d"(%42, %0, %41) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %44 = "tosa.transpose"(%43, %39) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %45 = "tosa.sub"(%44, %1) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %46 = "tosa.rsqrt"(%2) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %47 = "tosa.reshape"(%46) {new_shape = array<i64: 1, 64, 1, 1>} : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    ml_program.global_store @global6 = %47 : tensor<1x64x1x1xf32>
    %48 = "tosa.mul"(%45, %47) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %49 = "tosa.mul"(%48, %1) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %50 = "tosa.add"(%49, %1) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    ml_program.global_store @global9 = %50 : tensor<1x64x112x112xf32>
    %51 = "tosa.clamp"(%50) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    ml_program.global_store @global10 = %51 : tensor<1x64x112x112xf32>
    %52 = "tosa.transpose"(%51, %40) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    ml_program.global_store @global11 = %52 : tensor<1x112x112x64xf32>
    %53 = "tosa.max_pool2d"(%52) {kernel = array<i64: 3, 3>, pad = array<i64: 1, 0, 1, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    ml_program.global_store @global12 = %53 : tensor<1x56x56x64xf32>
    %54 = "tosa.conv2d"(%53, %3, %41) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x1x1x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %55 = "tosa.transpose"(%54, %39) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %56 = "tosa.sub"(%55, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %57 = "tosa.mul"(%56, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %58 = "tosa.mul"(%57, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %59 = "tosa.add"(%58, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global18 = %59 : tensor<1x64x56x56xf32>
    %60 = "tosa.clamp"(%59) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global19 = %60 : tensor<1x64x56x56xf32>
    %61 = "tosa.transpose"(%60, %40) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %62 = "tosa.conv2d"(%61, %4, %41) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %63 = "tosa.transpose"(%62, %39) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %64 = "tosa.sub"(%63, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %65 = "tosa.mul"(%64, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %66 = "tosa.mul"(%65, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %67 = "tosa.add"(%66, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global26 = %67 : tensor<1x64x56x56xf32>
    %68 = "tosa.clamp"(%67) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global27 = %68 : tensor<1x64x56x56xf32>
    %69 = "tosa.transpose"(%68, %40) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %70 = "tosa.conv2d"(%69, %5, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %71 = "tosa.transpose"(%70, %39) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %72 = "tosa.sub"(%71, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %73 = "tosa.rsqrt"(%7) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %74 = "tosa.reshape"(%73) {new_shape = array<i64: 1, 256, 1, 1>} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    ml_program.global_store @global33 = %74 : tensor<1x256x1x1xf32>
    %75 = "tosa.mul"(%72, %74) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %76 = "tosa.mul"(%75, %6) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %77 = "tosa.add"(%76, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %78 = "tosa.conv2d"(%53, %5, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %79 = "tosa.transpose"(%78, %39) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %80 = "tosa.sub"(%79, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %81 = "tosa.mul"(%80, %74) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %82 = "tosa.mul"(%81, %6) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %83 = "tosa.add"(%82, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %84 = "tosa.add"(%77, %83) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global43 = %84 : tensor<1x256x56x56xf32>
    %85 = "tosa.clamp"(%84) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global44 = %85 : tensor<1x256x56x56xf32>
    %86 = "tosa.transpose"(%85, %40) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %87 = "tosa.conv2d"(%86, %8, %41) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %88 = "tosa.transpose"(%87, %39) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %89 = "tosa.sub"(%88, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %90 = "tosa.mul"(%89, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %91 = "tosa.mul"(%90, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %92 = "tosa.add"(%91, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global51 = %92 : tensor<1x64x56x56xf32>
    %93 = "tosa.clamp"(%92) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global52 = %93 : tensor<1x64x56x56xf32>
    %94 = "tosa.transpose"(%93, %40) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %95 = "tosa.conv2d"(%94, %4, %41) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %96 = "tosa.transpose"(%95, %39) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %97 = "tosa.sub"(%96, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %98 = "tosa.mul"(%97, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %99 = "tosa.mul"(%98, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %100 = "tosa.add"(%99, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global59 = %100 : tensor<1x64x56x56xf32>
    %101 = "tosa.clamp"(%100) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global60 = %101 : tensor<1x64x56x56xf32>
    %102 = "tosa.transpose"(%101, %40) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %103 = "tosa.conv2d"(%102, %5, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %104 = "tosa.transpose"(%103, %39) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %105 = "tosa.sub"(%104, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %106 = "tosa.mul"(%105, %74) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %107 = "tosa.mul"(%106, %6) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %108 = "tosa.add"(%107, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %109 = "tosa.add"(%108, %85) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global68 = %109 : tensor<1x256x56x56xf32>
    %110 = "tosa.clamp"(%109) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global69 = %110 : tensor<1x256x56x56xf32>
    %111 = "tosa.transpose"(%110, %40) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %112 = "tosa.conv2d"(%111, %8, %41) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %113 = "tosa.transpose"(%112, %39) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %114 = "tosa.sub"(%113, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %115 = "tosa.mul"(%114, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %116 = "tosa.mul"(%115, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %117 = "tosa.add"(%116, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global76 = %117 : tensor<1x64x56x56xf32>
    %118 = "tosa.clamp"(%117) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global77 = %118 : tensor<1x64x56x56xf32>
    %119 = "tosa.transpose"(%118, %40) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %120 = "tosa.conv2d"(%119, %4, %41) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %121 = "tosa.transpose"(%120, %39) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %122 = "tosa.sub"(%121, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %123 = "tosa.mul"(%122, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %124 = "tosa.mul"(%123, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %125 = "tosa.add"(%124, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global84 = %125 : tensor<1x64x56x56xf32>
    %126 = "tosa.clamp"(%125) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global85 = %126 : tensor<1x64x56x56xf32>
    %127 = "tosa.transpose"(%126, %40) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %128 = "tosa.conv2d"(%127, %5, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %129 = "tosa.transpose"(%128, %39) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %130 = "tosa.sub"(%129, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %131 = "tosa.mul"(%130, %74) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %132 = "tosa.mul"(%131, %6) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %133 = "tosa.add"(%132, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %134 = "tosa.add"(%133, %110) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global93 = %134 : tensor<1x256x56x56xf32>
    %135 = "tosa.clamp"(%134) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global94 = %135 : tensor<1x256x56x56xf32>
    %136 = "tosa.transpose"(%135, %40) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %137 = "tosa.conv2d"(%136, %9, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %138 = "tosa.transpose"(%137, %39) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %139 = "tosa.sub"(%138, %10) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %140 = "tosa.rsqrt"(%11) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %141 = "tosa.reshape"(%140) {new_shape = array<i64: 1, 128, 1, 1>} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    ml_program.global_store @global100 = %141 : tensor<1x128x1x1xf32>
    %142 = "tosa.mul"(%139, %141) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %143 = "tosa.mul"(%142, %10) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %144 = "tosa.add"(%143, %10) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global103 = %144 : tensor<1x128x56x56xf32>
    %145 = "tosa.clamp"(%144) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global104 = %145 : tensor<1x128x56x56xf32>
    %146 = "tosa.transpose"(%145, %40) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %147 = "tosa.conv2d"(%146, %12, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %148 = "tosa.transpose"(%147, %39) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %149 = "tosa.sub"(%148, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %150 = "tosa.mul"(%149, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %151 = "tosa.mul"(%150, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %152 = "tosa.add"(%151, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global111 = %152 : tensor<1x128x28x28xf32>
    %153 = "tosa.clamp"(%152) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global112 = %153 : tensor<1x128x28x28xf32>
    %154 = "tosa.transpose"(%153, %40) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %155 = "tosa.conv2d"(%154, %13, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %156 = "tosa.transpose"(%155, %39) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %157 = "tosa.sub"(%156, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %158 = "tosa.rsqrt"(%15) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %159 = "tosa.reshape"(%158) {new_shape = array<i64: 1, 512, 1, 1>} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    ml_program.global_store @global118 = %159 : tensor<1x512x1x1xf32>
    %160 = "tosa.mul"(%157, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %161 = "tosa.mul"(%160, %14) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %162 = "tosa.add"(%161, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %163 = "tosa.conv2d"(%136, %16, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %164 = "tosa.transpose"(%163, %39) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %165 = "tosa.sub"(%164, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %166 = "tosa.mul"(%165, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %167 = "tosa.mul"(%166, %14) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %168 = "tosa.add"(%167, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %169 = "tosa.add"(%162, %168) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global128 = %169 : tensor<1x512x28x28xf32>
    %170 = "tosa.clamp"(%169) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global129 = %170 : tensor<1x512x28x28xf32>
    %171 = "tosa.transpose"(%170, %40) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %172 = "tosa.conv2d"(%171, %17, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %173 = "tosa.transpose"(%172, %39) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %174 = "tosa.sub"(%173, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %175 = "tosa.mul"(%174, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %176 = "tosa.mul"(%175, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %177 = "tosa.add"(%176, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global136 = %177 : tensor<1x128x28x28xf32>
    %178 = "tosa.clamp"(%177) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global137 = %178 : tensor<1x128x28x28xf32>
    %179 = "tosa.transpose"(%178, %40) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %180 = "tosa.conv2d"(%179, %12, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %181 = "tosa.transpose"(%180, %39) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %182 = "tosa.sub"(%181, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %183 = "tosa.mul"(%182, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %184 = "tosa.mul"(%183, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %185 = "tosa.add"(%184, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global144 = %185 : tensor<1x128x28x28xf32>
    %186 = "tosa.clamp"(%185) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global145 = %186 : tensor<1x128x28x28xf32>
    %187 = "tosa.transpose"(%186, %40) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %188 = "tosa.conv2d"(%187, %13, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %189 = "tosa.transpose"(%188, %39) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %190 = "tosa.sub"(%189, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %191 = "tosa.mul"(%190, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %192 = "tosa.mul"(%191, %14) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %193 = "tosa.add"(%192, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %194 = "tosa.add"(%193, %170) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global153 = %194 : tensor<1x512x28x28xf32>
    %195 = "tosa.clamp"(%194) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global154 = %195 : tensor<1x512x28x28xf32>
    %196 = "tosa.transpose"(%195, %40) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %197 = "tosa.conv2d"(%196, %17, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %198 = "tosa.transpose"(%197, %39) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %199 = "tosa.sub"(%198, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %200 = "tosa.mul"(%199, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %201 = "tosa.mul"(%200, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %202 = "tosa.add"(%201, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global161 = %202 : tensor<1x128x28x28xf32>
    %203 = "tosa.clamp"(%202) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global162 = %203 : tensor<1x128x28x28xf32>
    %204 = "tosa.transpose"(%203, %40) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %205 = "tosa.conv2d"(%204, %12, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %206 = "tosa.transpose"(%205, %39) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %207 = "tosa.sub"(%206, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %208 = "tosa.mul"(%207, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %209 = "tosa.mul"(%208, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %210 = "tosa.add"(%209, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global169 = %210 : tensor<1x128x28x28xf32>
    %211 = "tosa.clamp"(%210) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global170 = %211 : tensor<1x128x28x28xf32>
    %212 = "tosa.transpose"(%211, %40) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %213 = "tosa.conv2d"(%212, %13, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %214 = "tosa.transpose"(%213, %39) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %215 = "tosa.sub"(%214, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %216 = "tosa.mul"(%215, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %217 = "tosa.mul"(%216, %14) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %218 = "tosa.add"(%217, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %219 = "tosa.add"(%218, %195) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global178 = %219 : tensor<1x512x28x28xf32>
    %220 = "tosa.clamp"(%219) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global179 = %220 : tensor<1x512x28x28xf32>
    %221 = "tosa.transpose"(%220, %40) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %222 = "tosa.conv2d"(%221, %17, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %223 = "tosa.transpose"(%222, %39) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %224 = "tosa.sub"(%223, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %225 = "tosa.mul"(%224, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %226 = "tosa.mul"(%225, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %227 = "tosa.add"(%226, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global186 = %227 : tensor<1x128x28x28xf32>
    %228 = "tosa.clamp"(%227) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global187 = %228 : tensor<1x128x28x28xf32>
    %229 = "tosa.transpose"(%228, %40) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %230 = "tosa.conv2d"(%229, %12, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %231 = "tosa.transpose"(%230, %39) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %232 = "tosa.sub"(%231, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %233 = "tosa.mul"(%232, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %234 = "tosa.mul"(%233, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %235 = "tosa.add"(%234, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global194 = %235 : tensor<1x128x28x28xf32>
    %236 = "tosa.clamp"(%235) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global195 = %236 : tensor<1x128x28x28xf32>
    %237 = "tosa.transpose"(%236, %40) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %238 = "tosa.conv2d"(%237, %13, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %239 = "tosa.transpose"(%238, %39) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %240 = "tosa.sub"(%239, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %241 = "tosa.mul"(%240, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %242 = "tosa.mul"(%241, %14) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %243 = "tosa.add"(%242, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %244 = "tosa.add"(%243, %220) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global203 = %244 : tensor<1x512x28x28xf32>
    %245 = "tosa.clamp"(%244) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global204 = %245 : tensor<1x512x28x28xf32>
    %246 = "tosa.transpose"(%245, %40) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %247 = "tosa.conv2d"(%246, %18, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %248 = "tosa.transpose"(%247, %39) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %249 = "tosa.sub"(%248, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %250 = "tosa.mul"(%249, %74) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %251 = "tosa.mul"(%250, %6) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %252 = "tosa.add"(%251, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global211 = %252 : tensor<1x256x28x28xf32>
    %253 = "tosa.clamp"(%252) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global212 = %253 : tensor<1x256x28x28xf32>
    %254 = "tosa.transpose"(%253, %40) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %255 = "tosa.conv2d"(%254, %19, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %256 = "tosa.transpose"(%255, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %257 = "tosa.sub"(%256, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %258 = "tosa.mul"(%257, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %259 = "tosa.mul"(%258, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %260 = "tosa.add"(%259, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global219 = %260 : tensor<1x256x14x14xf32>
    %261 = "tosa.clamp"(%260) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global220 = %261 : tensor<1x256x14x14xf32>
    %262 = "tosa.transpose"(%261, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %263 = "tosa.conv2d"(%262, %20, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %264 = "tosa.transpose"(%263, %39) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %265 = "tosa.sub"(%264, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %266 = "tosa.rsqrt"(%22) : (tensor<1024x1x1xf32>) -> tensor<1024x1x1xf32>
    %267 = "tosa.reshape"(%266) {new_shape = array<i64: 1, 1024, 1, 1>} : (tensor<1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    ml_program.global_store @global226 = %267 : tensor<1x1024x1x1xf32>
    %268 = "tosa.mul"(%265, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %269 = "tosa.mul"(%268, %21) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %270 = "tosa.add"(%269, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %271 = "tosa.conv2d"(%246, %23, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %272 = "tosa.transpose"(%271, %39) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %273 = "tosa.sub"(%272, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %274 = "tosa.mul"(%273, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %275 = "tosa.mul"(%274, %21) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %276 = "tosa.add"(%275, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %277 = "tosa.add"(%270, %276) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global236 = %277 : tensor<1x1024x14x14xf32>
    %278 = "tosa.clamp"(%277) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global237 = %278 : tensor<1x1024x14x14xf32>
    %279 = "tosa.transpose"(%278, %40) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %280 = "tosa.conv2d"(%279, %24, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %281 = "tosa.transpose"(%280, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %282 = "tosa.sub"(%281, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %283 = "tosa.mul"(%282, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %284 = "tosa.mul"(%283, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %285 = "tosa.add"(%284, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global244 = %285 : tensor<1x256x14x14xf32>
    %286 = "tosa.clamp"(%285) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global245 = %286 : tensor<1x256x14x14xf32>
    %287 = "tosa.transpose"(%286, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %288 = "tosa.conv2d"(%287, %19, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %289 = "tosa.transpose"(%288, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %290 = "tosa.sub"(%289, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %291 = "tosa.mul"(%290, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %292 = "tosa.mul"(%291, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %293 = "tosa.add"(%292, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global252 = %293 : tensor<1x256x14x14xf32>
    %294 = "tosa.clamp"(%293) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global253 = %294 : tensor<1x256x14x14xf32>
    %295 = "tosa.transpose"(%294, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %296 = "tosa.conv2d"(%295, %20, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %297 = "tosa.transpose"(%296, %39) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %298 = "tosa.sub"(%297, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %299 = "tosa.mul"(%298, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %300 = "tosa.mul"(%299, %21) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %301 = "tosa.add"(%300, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %302 = "tosa.add"(%301, %278) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global261 = %302 : tensor<1x1024x14x14xf32>
    %303 = "tosa.clamp"(%302) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global262 = %303 : tensor<1x1024x14x14xf32>
    %304 = "tosa.transpose"(%303, %40) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %305 = "tosa.conv2d"(%304, %24, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %306 = "tosa.transpose"(%305, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %307 = "tosa.sub"(%306, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %308 = "tosa.mul"(%307, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %309 = "tosa.mul"(%308, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %310 = "tosa.add"(%309, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global269 = %310 : tensor<1x256x14x14xf32>
    %311 = "tosa.clamp"(%310) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global270 = %311 : tensor<1x256x14x14xf32>
    %312 = "tosa.transpose"(%311, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %313 = "tosa.conv2d"(%312, %19, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %314 = "tosa.transpose"(%313, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %315 = "tosa.sub"(%314, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %316 = "tosa.mul"(%315, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %317 = "tosa.mul"(%316, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %318 = "tosa.add"(%317, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global277 = %318 : tensor<1x256x14x14xf32>
    %319 = "tosa.clamp"(%318) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global278 = %319 : tensor<1x256x14x14xf32>
    %320 = "tosa.transpose"(%319, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %321 = "tosa.conv2d"(%320, %20, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %322 = "tosa.transpose"(%321, %39) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %323 = "tosa.sub"(%322, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %324 = "tosa.mul"(%323, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %325 = "tosa.mul"(%324, %21) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %326 = "tosa.add"(%325, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %327 = "tosa.add"(%326, %303) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global286 = %327 : tensor<1x1024x14x14xf32>
    %328 = "tosa.clamp"(%327) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global287 = %328 : tensor<1x1024x14x14xf32>
    %329 = "tosa.transpose"(%328, %40) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %330 = "tosa.conv2d"(%329, %24, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %331 = "tosa.transpose"(%330, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %332 = "tosa.sub"(%331, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %333 = "tosa.mul"(%332, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %334 = "tosa.mul"(%333, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %335 = "tosa.add"(%334, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global294 = %335 : tensor<1x256x14x14xf32>
    %336 = "tosa.clamp"(%335) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global295 = %336 : tensor<1x256x14x14xf32>
    %337 = "tosa.transpose"(%336, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %338 = "tosa.conv2d"(%337, %19, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %339 = "tosa.transpose"(%338, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %340 = "tosa.sub"(%339, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %341 = "tosa.mul"(%340, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %342 = "tosa.mul"(%341, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %343 = "tosa.add"(%342, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global302 = %343 : tensor<1x256x14x14xf32>
    %344 = "tosa.clamp"(%343) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global303 = %344 : tensor<1x256x14x14xf32>
    %345 = "tosa.transpose"(%344, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %346 = "tosa.conv2d"(%345, %20, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %347 = "tosa.transpose"(%346, %39) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %348 = "tosa.sub"(%347, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %349 = "tosa.mul"(%348, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %350 = "tosa.mul"(%349, %21) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %351 = "tosa.add"(%350, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %352 = "tosa.add"(%351, %328) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global311 = %352 : tensor<1x1024x14x14xf32>
    %353 = "tosa.clamp"(%352) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global312 = %353 : tensor<1x1024x14x14xf32>
    %354 = "tosa.transpose"(%353, %40) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %355 = "tosa.conv2d"(%354, %24, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %356 = "tosa.transpose"(%355, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %357 = "tosa.sub"(%356, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %358 = "tosa.mul"(%357, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %359 = "tosa.mul"(%358, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %360 = "tosa.add"(%359, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global319 = %360 : tensor<1x256x14x14xf32>
    %361 = "tosa.clamp"(%360) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global320 = %361 : tensor<1x256x14x14xf32>
    %362 = "tosa.transpose"(%361, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %363 = "tosa.conv2d"(%362, %19, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %364 = "tosa.transpose"(%363, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %365 = "tosa.sub"(%364, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %366 = "tosa.mul"(%365, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %367 = "tosa.mul"(%366, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %368 = "tosa.add"(%367, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global327 = %368 : tensor<1x256x14x14xf32>
    %369 = "tosa.clamp"(%368) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global328 = %369 : tensor<1x256x14x14xf32>
    %370 = "tosa.transpose"(%369, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %371 = "tosa.conv2d"(%370, %20, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %372 = "tosa.transpose"(%371, %39) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %373 = "tosa.sub"(%372, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %374 = "tosa.mul"(%373, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %375 = "tosa.mul"(%374, %21) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %376 = "tosa.add"(%375, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %377 = "tosa.add"(%376, %353) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global336 = %377 : tensor<1x1024x14x14xf32>
    %378 = "tosa.clamp"(%377) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global337 = %378 : tensor<1x1024x14x14xf32>
    %379 = "tosa.transpose"(%378, %40) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %380 = "tosa.conv2d"(%379, %24, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %381 = "tosa.transpose"(%380, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %382 = "tosa.sub"(%381, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %383 = "tosa.mul"(%382, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %384 = "tosa.mul"(%383, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %385 = "tosa.add"(%384, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global344 = %385 : tensor<1x256x14x14xf32>
    %386 = "tosa.clamp"(%385) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global345 = %386 : tensor<1x256x14x14xf32>
    %387 = "tosa.transpose"(%386, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %388 = "tosa.conv2d"(%387, %19, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %389 = "tosa.transpose"(%388, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %390 = "tosa.sub"(%389, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %391 = "tosa.mul"(%390, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %392 = "tosa.mul"(%391, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %393 = "tosa.add"(%392, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global352 = %393 : tensor<1x256x14x14xf32>
    %394 = "tosa.clamp"(%393) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global353 = %394 : tensor<1x256x14x14xf32>
    %395 = "tosa.transpose"(%394, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %396 = "tosa.conv2d"(%395, %20, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %397 = "tosa.transpose"(%396, %39) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %398 = "tosa.sub"(%397, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %399 = "tosa.mul"(%398, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %400 = "tosa.mul"(%399, %21) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %401 = "tosa.add"(%400, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %402 = "tosa.add"(%401, %378) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global361 = %402 : tensor<1x1024x14x14xf32>
    %403 = "tosa.clamp"(%402) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global362 = %403 : tensor<1x1024x14x14xf32>
    %404 = "tosa.transpose"(%403, %40) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %405 = "tosa.conv2d"(%404, %25, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %406 = "tosa.transpose"(%405, %39) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %407 = "tosa.sub"(%406, %14) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %408 = "tosa.mul"(%407, %159) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %409 = "tosa.mul"(%408, %14) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %410 = "tosa.add"(%409, %14) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global369 = %410 : tensor<1x512x14x14xf32>
    %411 = "tosa.clamp"(%410) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global370 = %411 : tensor<1x512x14x14xf32>
    %412 = "tosa.transpose"(%411, %40) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %413 = "tosa.conv2d"(%412, %26, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %414 = "tosa.transpose"(%413, %39) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %415 = "tosa.sub"(%414, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %416 = "tosa.mul"(%415, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %417 = "tosa.mul"(%416, %14) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %418 = "tosa.add"(%417, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global377 = %418 : tensor<1x512x7x7xf32>
    %419 = "tosa.clamp"(%418) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global378 = %419 : tensor<1x512x7x7xf32>
    %420 = "tosa.transpose"(%419, %40) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %421 = "tosa.conv2d"(%420, %27, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %422 = "tosa.transpose"(%421, %39) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %423 = "tosa.sub"(%422, %28) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %424 = "tosa.rsqrt"(%29) : (tensor<2048x1x1xf32>) -> tensor<2048x1x1xf32>
    %425 = "tosa.reshape"(%424) {new_shape = array<i64: 1, 2048, 1, 1>} : (tensor<2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    ml_program.global_store @global384 = %425 : tensor<1x2048x1x1xf32>
    %426 = "tosa.mul"(%423, %425) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %427 = "tosa.mul"(%426, %28) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %428 = "tosa.add"(%427, %28) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %429 = "tosa.conv2d"(%404, %30, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %430 = "tosa.transpose"(%429, %39) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %431 = "tosa.sub"(%430, %28) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %432 = "tosa.mul"(%431, %425) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %433 = "tosa.mul"(%432, %28) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %434 = "tosa.add"(%433, %28) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %435 = "tosa.add"(%428, %434) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global394 = %435 : tensor<1x2048x7x7xf32>
    %436 = "tosa.clamp"(%435) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global395 = %436 : tensor<1x2048x7x7xf32>
    %437 = "tosa.transpose"(%436, %40) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %438 = "tosa.conv2d"(%437, %31, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %439 = "tosa.transpose"(%438, %39) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %440 = "tosa.sub"(%439, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %441 = "tosa.mul"(%440, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %442 = "tosa.mul"(%441, %14) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %443 = "tosa.add"(%442, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global402 = %443 : tensor<1x512x7x7xf32>
    %444 = "tosa.clamp"(%443) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global403 = %444 : tensor<1x512x7x7xf32>
    %445 = "tosa.transpose"(%444, %40) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %446 = "tosa.conv2d"(%445, %26, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %447 = "tosa.transpose"(%446, %39) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %448 = "tosa.sub"(%447, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %449 = "tosa.mul"(%448, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %450 = "tosa.mul"(%449, %14) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %451 = "tosa.add"(%450, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global410 = %451 : tensor<1x512x7x7xf32>
    %452 = "tosa.clamp"(%451) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global411 = %452 : tensor<1x512x7x7xf32>
    %453 = "tosa.transpose"(%452, %40) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %454 = "tosa.conv2d"(%453, %27, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %455 = "tosa.transpose"(%454, %39) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %456 = "tosa.sub"(%455, %28) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %457 = "tosa.mul"(%456, %425) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %458 = "tosa.mul"(%457, %28) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %459 = "tosa.add"(%458, %28) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %460 = "tosa.add"(%459, %436) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global419 = %460 : tensor<1x2048x7x7xf32>
    %461 = "tosa.clamp"(%460) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global420 = %461 : tensor<1x2048x7x7xf32>
    %462 = "tosa.transpose"(%461, %40) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %463 = "tosa.conv2d"(%462, %31, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %464 = "tosa.transpose"(%463, %39) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %465 = "tosa.sub"(%464, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %466 = "tosa.mul"(%465, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %467 = "tosa.mul"(%466, %14) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %468 = "tosa.add"(%467, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global427 = %468 : tensor<1x512x7x7xf32>
    %469 = "tosa.clamp"(%468) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global428 = %469 : tensor<1x512x7x7xf32>
    %470 = "tosa.transpose"(%469, %40) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %471 = "tosa.conv2d"(%470, %26, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %472 = "tosa.transpose"(%471, %39) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %473 = "tosa.sub"(%472, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %474 = "tosa.mul"(%473, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %475 = "tosa.mul"(%474, %14) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %476 = "tosa.add"(%475, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global435 = %476 : tensor<1x512x7x7xf32>
    %477 = "tosa.clamp"(%476) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global436 = %477 : tensor<1x512x7x7xf32>
    %478 = "tosa.transpose"(%477, %40) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %479 = "tosa.conv2d"(%478, %27, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %480 = "tosa.transpose"(%479, %39) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %481 = "tosa.sub"(%480, %28) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %482 = "tosa.mul"(%481, %425) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %483 = "tosa.mul"(%482, %28) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %484 = "tosa.add"(%483, %28) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %485 = "tosa.add"(%484, %461) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global444 = %485 : tensor<1x2048x7x7xf32>
    %486 = "tosa.clamp"(%485) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global445 = %486 : tensor<1x2048x7x7xf32>
    %487 = "tosa.transpose"(%486, %40) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %488 = "tosa.avg_pool2d"(%487) {acc_type = f32, kernel = array<i64: 7, 7>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>) -> tensor<1x1x1x2048xf32>
    %489 = "tosa.reshape"(%488) {new_shape = array<i64: 1, 1, 2048>} : (tensor<1x1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %490 = "tosa.matmul"(%489, %32) : (tensor<1x1x2048xf32>, tensor<1x2048x1000xf32>) -> tensor<1x1x1000xf32>
    %491 = "tosa.reshape"(%490) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %492 = "tosa.add"(%491, %33) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %492 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000x2048xf32>} : () -> tensor<1x1000x2048xf32>
    %1 = "tosa.const"() {value = dense<0.0204081628> : tensor<1x7x7x2048xf32>} : () -> tensor<1x7x7x2048xf32>
    %2 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %4 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x2048xf32>} : () -> tensor<512x1x1x2048xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x512xf32>} : () -> tensor<512x3x3x512xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<2048x1x1x512xf32>} : () -> tensor<2048x1x1x512xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x2048xf32>} : () -> tensor<1024x1x1x2048xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x512xf32>} : () -> tensor<1024x1x1x512xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x1024xf32>} : () -> tensor<256x1x1x1024xf32>
    %11 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x256xf32>} : () -> tensor<1024x1x1x256xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x1024xf32>} : () -> tensor<512x1x1x1024xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x256xf32>} : () -> tensor<512x1x1x256xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x512xf32>} : () -> tensor<128x1x1x512xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x128xf32>} : () -> tensor<128x3x3x128xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x128xf32>} : () -> tensor<512x1x1x128xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x512xf32>} : () -> tensor<256x1x1x512xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x128xf32>} : () -> tensor<256x1x1x128xf32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x256xf32>} : () -> tensor<64x1x1x256xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x64xf32>} : () -> tensor<64x3x3x64xf32>
    %22 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x64xf32>} : () -> tensor<256x1x1x64xf32>
    %23 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x64xf32>} : () -> tensor<64x1x1x64xf32>
    %cst = arith.constant -3.40282347E+38 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %24 = "tosa.const"() {value = dense<7.777000e-02> : tensor<3x7x7x64xf32>} : () -> tensor<3x7x7x64xf32>
    %25 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x2048x1x1xf32>} : () -> tensor<1x2048x1x1xf32>
    %26 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1024x1x1xf32>} : () -> tensor<1x1024x1x1xf32>
    %27 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %28 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %29 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %30 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %31 = ml_program.global_load @global6 : tensor<1x64x1x1xf32>
    %32 = ml_program.global_load @global9 : tensor<1x64x112x112xf32>
    %33 = ml_program.global_load @global10 : tensor<1x64x112x112xf32>
    %34 = ml_program.global_load @global11 : tensor<1x112x112x64xf32>
    %35 = ml_program.global_load @global12 : tensor<1x56x56x64xf32>
    %36 = ml_program.global_load @global18 : tensor<1x64x56x56xf32>
    %37 = ml_program.global_load @global19 : tensor<1x64x56x56xf32>
    %38 = ml_program.global_load @global26 : tensor<1x64x56x56xf32>
    %39 = ml_program.global_load @global27 : tensor<1x64x56x56xf32>
    %40 = ml_program.global_load @global33 : tensor<1x256x1x1xf32>
    %41 = ml_program.global_load @global43 : tensor<1x256x56x56xf32>
    %42 = ml_program.global_load @global44 : tensor<1x256x56x56xf32>
    %43 = ml_program.global_load @global51 : tensor<1x64x56x56xf32>
    %44 = ml_program.global_load @global52 : tensor<1x64x56x56xf32>
    %45 = ml_program.global_load @global59 : tensor<1x64x56x56xf32>
    %46 = ml_program.global_load @global60 : tensor<1x64x56x56xf32>
    %47 = ml_program.global_load @global68 : tensor<1x256x56x56xf32>
    %48 = ml_program.global_load @global69 : tensor<1x256x56x56xf32>
    %49 = ml_program.global_load @global76 : tensor<1x64x56x56xf32>
    %50 = ml_program.global_load @global77 : tensor<1x64x56x56xf32>
    %51 = ml_program.global_load @global84 : tensor<1x64x56x56xf32>
    %52 = ml_program.global_load @global85 : tensor<1x64x56x56xf32>
    %53 = ml_program.global_load @global93 : tensor<1x256x56x56xf32>
    %54 = ml_program.global_load @global94 : tensor<1x256x56x56xf32>
    %55 = ml_program.global_load @global100 : tensor<1x128x1x1xf32>
    %56 = ml_program.global_load @global103 : tensor<1x128x56x56xf32>
    %57 = ml_program.global_load @global104 : tensor<1x128x56x56xf32>
    %58 = ml_program.global_load @global111 : tensor<1x128x28x28xf32>
    %59 = ml_program.global_load @global112 : tensor<1x128x28x28xf32>
    %60 = ml_program.global_load @global118 : tensor<1x512x1x1xf32>
    %61 = ml_program.global_load @global128 : tensor<1x512x28x28xf32>
    %62 = ml_program.global_load @global129 : tensor<1x512x28x28xf32>
    %63 = ml_program.global_load @global136 : tensor<1x128x28x28xf32>
    %64 = ml_program.global_load @global137 : tensor<1x128x28x28xf32>
    %65 = ml_program.global_load @global144 : tensor<1x128x28x28xf32>
    %66 = ml_program.global_load @global145 : tensor<1x128x28x28xf32>
    %67 = ml_program.global_load @global153 : tensor<1x512x28x28xf32>
    %68 = ml_program.global_load @global154 : tensor<1x512x28x28xf32>
    %69 = ml_program.global_load @global161 : tensor<1x128x28x28xf32>
    %70 = ml_program.global_load @global162 : tensor<1x128x28x28xf32>
    %71 = ml_program.global_load @global169 : tensor<1x128x28x28xf32>
    %72 = ml_program.global_load @global170 : tensor<1x128x28x28xf32>
    %73 = ml_program.global_load @global178 : tensor<1x512x28x28xf32>
    %74 = ml_program.global_load @global179 : tensor<1x512x28x28xf32>
    %75 = ml_program.global_load @global186 : tensor<1x128x28x28xf32>
    %76 = ml_program.global_load @global187 : tensor<1x128x28x28xf32>
    %77 = ml_program.global_load @global194 : tensor<1x128x28x28xf32>
    %78 = ml_program.global_load @global195 : tensor<1x128x28x28xf32>
    %79 = ml_program.global_load @global203 : tensor<1x512x28x28xf32>
    %80 = ml_program.global_load @global204 : tensor<1x512x28x28xf32>
    %81 = ml_program.global_load @global211 : tensor<1x256x28x28xf32>
    %82 = ml_program.global_load @global212 : tensor<1x256x28x28xf32>
    %83 = ml_program.global_load @global219 : tensor<1x256x14x14xf32>
    %84 = ml_program.global_load @global220 : tensor<1x256x14x14xf32>
    %85 = ml_program.global_load @global226 : tensor<1x1024x1x1xf32>
    %86 = ml_program.global_load @global236 : tensor<1x1024x14x14xf32>
    %87 = ml_program.global_load @global237 : tensor<1x1024x14x14xf32>
    %88 = ml_program.global_load @global244 : tensor<1x256x14x14xf32>
    %89 = ml_program.global_load @global245 : tensor<1x256x14x14xf32>
    %90 = ml_program.global_load @global252 : tensor<1x256x14x14xf32>
    %91 = ml_program.global_load @global253 : tensor<1x256x14x14xf32>
    %92 = ml_program.global_load @global261 : tensor<1x1024x14x14xf32>
    %93 = ml_program.global_load @global262 : tensor<1x1024x14x14xf32>
    %94 = ml_program.global_load @global269 : tensor<1x256x14x14xf32>
    %95 = ml_program.global_load @global270 : tensor<1x256x14x14xf32>
    %96 = ml_program.global_load @global277 : tensor<1x256x14x14xf32>
    %97 = ml_program.global_load @global278 : tensor<1x256x14x14xf32>
    %98 = ml_program.global_load @global286 : tensor<1x1024x14x14xf32>
    %99 = ml_program.global_load @global287 : tensor<1x1024x14x14xf32>
    %100 = ml_program.global_load @global294 : tensor<1x256x14x14xf32>
    %101 = ml_program.global_load @global295 : tensor<1x256x14x14xf32>
    %102 = ml_program.global_load @global302 : tensor<1x256x14x14xf32>
    %103 = ml_program.global_load @global303 : tensor<1x256x14x14xf32>
    %104 = ml_program.global_load @global311 : tensor<1x1024x14x14xf32>
    %105 = ml_program.global_load @global312 : tensor<1x1024x14x14xf32>
    %106 = ml_program.global_load @global319 : tensor<1x256x14x14xf32>
    %107 = ml_program.global_load @global320 : tensor<1x256x14x14xf32>
    %108 = ml_program.global_load @global327 : tensor<1x256x14x14xf32>
    %109 = ml_program.global_load @global328 : tensor<1x256x14x14xf32>
    %110 = ml_program.global_load @global336 : tensor<1x1024x14x14xf32>
    %111 = ml_program.global_load @global337 : tensor<1x1024x14x14xf32>
    %112 = ml_program.global_load @global344 : tensor<1x256x14x14xf32>
    %113 = ml_program.global_load @global345 : tensor<1x256x14x14xf32>
    %114 = ml_program.global_load @global352 : tensor<1x256x14x14xf32>
    %115 = ml_program.global_load @global353 : tensor<1x256x14x14xf32>
    %116 = ml_program.global_load @global361 : tensor<1x1024x14x14xf32>
    %117 = ml_program.global_load @global362 : tensor<1x1024x14x14xf32>
    %118 = ml_program.global_load @global369 : tensor<1x512x14x14xf32>
    %119 = ml_program.global_load @global370 : tensor<1x512x14x14xf32>
    %120 = ml_program.global_load @global377 : tensor<1x512x7x7xf32>
    %121 = ml_program.global_load @global378 : tensor<1x512x7x7xf32>
    %122 = ml_program.global_load @global384 : tensor<1x2048x1x1xf32>
    %123 = ml_program.global_load @global394 : tensor<1x2048x7x7xf32>
    %124 = ml_program.global_load @global395 : tensor<1x2048x7x7xf32>
    %125 = ml_program.global_load @global402 : tensor<1x512x7x7xf32>
    %126 = ml_program.global_load @global403 : tensor<1x512x7x7xf32>
    %127 = ml_program.global_load @global410 : tensor<1x512x7x7xf32>
    %128 = ml_program.global_load @global411 : tensor<1x512x7x7xf32>
    %129 = ml_program.global_load @global419 : tensor<1x2048x7x7xf32>
    %130 = ml_program.global_load @global420 : tensor<1x2048x7x7xf32>
    %131 = ml_program.global_load @global427 : tensor<1x512x7x7xf32>
    %132 = ml_program.global_load @global428 : tensor<1x512x7x7xf32>
    %133 = ml_program.global_load @global435 : tensor<1x512x7x7xf32>
    %134 = ml_program.global_load @global436 : tensor<1x512x7x7xf32>
    %135 = ml_program.global_load @global444 : tensor<1x2048x7x7xf32>
    %136 = ml_program.global_load @global445 : tensor<1x2048x7x7xf32>
    %137 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %138 = "tosa.matmul"(%137, %0) : (tensor<1x1x1000xf32>, tensor<1x1000x2048xf32>) -> tensor<1x1x2048xf32>
    %139 = "tosa.reshape"(%138) {new_shape = array<i64: 1, 1, 1, 2048>} : (tensor<1x1x2048xf32>) -> tensor<1x1x1x2048xf32>
    %140 = "tosa.mul"(%139, %1) {shift = 0 : i32} : (tensor<1x1x1x2048xf32>, tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %141 = "tosa.transpose"(%140, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %142 = "tosa.equal"(%135, %136) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %143 = "tosa.select"(%142, %141, %3) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %144 = "tosa.mul"(%143, %25) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %145 = "tosa.mul"(%122, %144) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %146 = "tosa.transpose"(%145, %4) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %147 = tensor.empty() : tensor<512xf32>
    %148 = "tosa.transpose_conv2d"(%146, %5, %147) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %149 = "tosa.transpose"(%148, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %150 = "tosa.equal"(%133, %134) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %151 = "tosa.select"(%150, %149, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %152 = "tosa.mul"(%151, %27) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %153 = "tosa.mul"(%60, %152) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %154 = "tosa.transpose"(%153, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %155 = "tosa.transpose_conv2d"(%154, %6, %147) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %156 = "tosa.transpose"(%155, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %157 = "tosa.equal"(%131, %132) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %158 = "tosa.select"(%157, %156, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %159 = "tosa.mul"(%158, %27) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %160 = "tosa.mul"(%60, %159) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %161 = "tosa.transpose"(%160, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %162 = tensor.empty() : tensor<2048xf32>
    %163 = "tosa.transpose_conv2d"(%161, %7, %162) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 2048>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %164 = "tosa.transpose"(%163, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %165 = "tosa.add"(%143, %164) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %166 = "tosa.equal"(%129, %130) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %167 = "tosa.select"(%166, %165, %3) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %168 = "tosa.mul"(%167, %25) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %169 = "tosa.mul"(%122, %168) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %170 = "tosa.transpose"(%169, %4) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %171 = "tosa.transpose_conv2d"(%170, %5, %147) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %172 = "tosa.transpose"(%171, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %173 = "tosa.equal"(%127, %128) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %174 = "tosa.select"(%173, %172, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %175 = "tosa.mul"(%174, %27) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %176 = "tosa.mul"(%60, %175) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %177 = "tosa.transpose"(%176, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %178 = "tosa.transpose_conv2d"(%177, %6, %147) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %179 = "tosa.transpose"(%178, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %180 = "tosa.equal"(%125, %126) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %181 = "tosa.select"(%180, %179, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %182 = "tosa.mul"(%181, %27) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %183 = "tosa.mul"(%60, %182) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %184 = "tosa.transpose"(%183, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %185 = "tosa.transpose_conv2d"(%184, %7, %162) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 2048>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %186 = "tosa.transpose"(%185, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %187 = "tosa.add"(%167, %186) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %188 = "tosa.equal"(%123, %124) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %189 = "tosa.select"(%188, %187, %3) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %190 = "tosa.mul"(%189, %25) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %191 = "tosa.mul"(%122, %190) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %192 = "tosa.transpose"(%191, %4) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %193 = tensor.empty() : tensor<1024xf32>
    %194 = "tosa.transpose_conv2d"(%192, %8, %193) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 2, 2>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %195 = "tosa.transpose_conv2d"(%192, %5, %147) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %196 = "tosa.transpose"(%195, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %197 = "tosa.equal"(%120, %121) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %198 = "tosa.select"(%197, %196, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %199 = "tosa.mul"(%198, %27) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %200 = "tosa.mul"(%60, %199) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %201 = "tosa.transpose"(%200, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %202 = "tosa.transpose_conv2d"(%201, %6, %147) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 2, 2>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %203 = "tosa.transpose"(%202, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %204 = "tosa.equal"(%118, %119) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %205 = "tosa.select"(%204, %203, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %206 = "tosa.mul"(%205, %27) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %207 = "tosa.mul"(%60, %206) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %208 = "tosa.transpose"(%207, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %209 = "tosa.transpose_conv2d"(%208, %9, %193) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %210 = "tosa.add"(%194, %209) : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %211 = "tosa.transpose"(%210, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %212 = "tosa.equal"(%116, %117) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %213 = "tosa.select"(%212, %211, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %214 = "tosa.mul"(%213, %26) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %215 = "tosa.mul"(%85, %214) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %216 = "tosa.transpose"(%215, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %217 = tensor.empty() : tensor<256xf32>
    %218 = "tosa.transpose_conv2d"(%216, %10, %217) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %219 = "tosa.transpose"(%218, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %220 = "tosa.equal"(%114, %115) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %221 = "tosa.select"(%220, %219, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %222 = "tosa.mul"(%221, %29) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %223 = "tosa.mul"(%40, %222) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %224 = "tosa.transpose"(%223, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %225 = "tosa.transpose_conv2d"(%224, %11, %217) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %226 = "tosa.transpose"(%225, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %227 = "tosa.equal"(%112, %113) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %228 = "tosa.select"(%227, %226, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %229 = "tosa.mul"(%228, %29) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %230 = "tosa.mul"(%40, %229) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %231 = "tosa.transpose"(%230, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %232 = "tosa.transpose_conv2d"(%231, %12, %193) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %233 = "tosa.transpose"(%232, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %234 = "tosa.add"(%213, %233) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %235 = "tosa.equal"(%110, %111) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %236 = "tosa.select"(%235, %234, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %237 = "tosa.mul"(%236, %26) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %238 = "tosa.mul"(%85, %237) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %239 = "tosa.transpose"(%238, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %240 = "tosa.transpose_conv2d"(%239, %10, %217) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %241 = "tosa.transpose"(%240, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %242 = "tosa.equal"(%108, %109) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %243 = "tosa.select"(%242, %241, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %244 = "tosa.mul"(%243, %29) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %245 = "tosa.mul"(%40, %244) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %246 = "tosa.transpose"(%245, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %247 = "tosa.transpose_conv2d"(%246, %11, %217) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %248 = "tosa.transpose"(%247, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %249 = "tosa.equal"(%106, %107) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %250 = "tosa.select"(%249, %248, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %251 = "tosa.mul"(%250, %29) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %252 = "tosa.mul"(%40, %251) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %253 = "tosa.transpose"(%252, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %254 = "tosa.transpose_conv2d"(%253, %12, %193) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %255 = "tosa.transpose"(%254, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %256 = "tosa.add"(%236, %255) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %257 = "tosa.equal"(%104, %105) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %258 = "tosa.select"(%257, %256, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %259 = "tosa.mul"(%258, %26) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %260 = "tosa.mul"(%85, %259) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %261 = "tosa.transpose"(%260, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %262 = "tosa.transpose_conv2d"(%261, %10, %217) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %263 = "tosa.transpose"(%262, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %264 = "tosa.equal"(%102, %103) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %265 = "tosa.select"(%264, %263, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %266 = "tosa.mul"(%265, %29) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %267 = "tosa.mul"(%40, %266) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %268 = "tosa.transpose"(%267, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %269 = "tosa.transpose_conv2d"(%268, %11, %217) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %270 = "tosa.transpose"(%269, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %271 = "tosa.equal"(%100, %101) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %272 = "tosa.select"(%271, %270, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %273 = "tosa.mul"(%272, %29) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %274 = "tosa.mul"(%40, %273) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %275 = "tosa.transpose"(%274, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %276 = "tosa.transpose_conv2d"(%275, %12, %193) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %277 = "tosa.transpose"(%276, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %278 = "tosa.add"(%258, %277) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %279 = "tosa.equal"(%98, %99) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %280 = "tosa.select"(%279, %278, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %281 = "tosa.mul"(%280, %26) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %282 = "tosa.mul"(%85, %281) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %283 = "tosa.transpose"(%282, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %284 = "tosa.transpose_conv2d"(%283, %10, %217) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %285 = "tosa.transpose"(%284, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %286 = "tosa.equal"(%96, %97) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %287 = "tosa.select"(%286, %285, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %288 = "tosa.mul"(%287, %29) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %289 = "tosa.mul"(%40, %288) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %290 = "tosa.transpose"(%289, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %291 = "tosa.transpose_conv2d"(%290, %11, %217) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %292 = "tosa.transpose"(%291, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %293 = "tosa.equal"(%94, %95) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %294 = "tosa.select"(%293, %292, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %295 = "tosa.mul"(%294, %29) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %296 = "tosa.mul"(%40, %295) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %297 = "tosa.transpose"(%296, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %298 = "tosa.transpose_conv2d"(%297, %12, %193) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %299 = "tosa.transpose"(%298, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %300 = "tosa.add"(%280, %299) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %301 = "tosa.equal"(%92, %93) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %302 = "tosa.select"(%301, %300, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %303 = "tosa.mul"(%302, %26) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %304 = "tosa.mul"(%85, %303) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %305 = "tosa.transpose"(%304, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %306 = "tosa.transpose_conv2d"(%305, %10, %217) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %307 = "tosa.transpose"(%306, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %308 = "tosa.equal"(%90, %91) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %309 = "tosa.select"(%308, %307, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %310 = "tosa.mul"(%309, %29) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %311 = "tosa.mul"(%40, %310) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %312 = "tosa.transpose"(%311, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %313 = "tosa.transpose_conv2d"(%312, %11, %217) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %314 = "tosa.transpose"(%313, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %315 = "tosa.equal"(%88, %89) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %316 = "tosa.select"(%315, %314, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %317 = "tosa.mul"(%316, %29) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %318 = "tosa.mul"(%40, %317) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %319 = "tosa.transpose"(%318, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %320 = "tosa.transpose_conv2d"(%319, %12, %193) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %321 = "tosa.transpose"(%320, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %322 = "tosa.add"(%302, %321) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %323 = "tosa.equal"(%86, %87) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %324 = "tosa.select"(%323, %322, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %325 = "tosa.mul"(%324, %26) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %326 = "tosa.mul"(%85, %325) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %327 = "tosa.transpose"(%326, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %328 = "tosa.transpose_conv2d"(%327, %13, %147) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %329 = "tosa.transpose_conv2d"(%327, %10, %217) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %330 = "tosa.transpose"(%329, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %331 = "tosa.equal"(%83, %84) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %332 = "tosa.select"(%331, %330, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %333 = "tosa.mul"(%332, %29) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %334 = "tosa.mul"(%40, %333) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %335 = "tosa.transpose"(%334, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %336 = "tosa.transpose_conv2d"(%335, %11, %217) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %337 = "tosa.transpose"(%336, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %338 = "tosa.equal"(%81, %82) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %339 = "tosa.select"(%338, %337, %3) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %340 = "tosa.mul"(%339, %29) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %341 = "tosa.mul"(%40, %340) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %342 = "tosa.transpose"(%341, %4) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %343 = "tosa.transpose_conv2d"(%342, %14, %147) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %344 = "tosa.add"(%328, %343) : (tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %345 = "tosa.transpose"(%344, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %346 = "tosa.equal"(%79, %80) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %347 = "tosa.select"(%346, %345, %3) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %348 = "tosa.mul"(%347, %27) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %349 = "tosa.mul"(%60, %348) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %350 = "tosa.transpose"(%349, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %351 = tensor.empty() : tensor<128xf32>
    %352 = "tosa.transpose_conv2d"(%350, %15, %351) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %353 = "tosa.transpose"(%352, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %354 = "tosa.equal"(%77, %78) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %355 = "tosa.select"(%354, %353, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %356 = "tosa.mul"(%355, %28) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %357 = "tosa.mul"(%55, %356) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %358 = "tosa.transpose"(%357, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %359 = "tosa.transpose_conv2d"(%358, %16, %351) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %360 = "tosa.transpose"(%359, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %361 = "tosa.equal"(%75, %76) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %362 = "tosa.select"(%361, %360, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %363 = "tosa.mul"(%362, %28) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %364 = "tosa.mul"(%55, %363) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %365 = "tosa.transpose"(%364, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %366 = "tosa.transpose_conv2d"(%365, %17, %147) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %367 = "tosa.transpose"(%366, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %368 = "tosa.add"(%347, %367) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %369 = "tosa.equal"(%73, %74) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %370 = "tosa.select"(%369, %368, %3) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %371 = "tosa.mul"(%370, %27) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %372 = "tosa.mul"(%60, %371) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %373 = "tosa.transpose"(%372, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %374 = "tosa.transpose_conv2d"(%373, %15, %351) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %375 = "tosa.transpose"(%374, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %376 = "tosa.equal"(%71, %72) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %377 = "tosa.select"(%376, %375, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %378 = "tosa.mul"(%377, %28) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %379 = "tosa.mul"(%55, %378) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %380 = "tosa.transpose"(%379, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %381 = "tosa.transpose_conv2d"(%380, %16, %351) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %382 = "tosa.transpose"(%381, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %383 = "tosa.equal"(%69, %70) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %384 = "tosa.select"(%383, %382, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %385 = "tosa.mul"(%384, %28) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %386 = "tosa.mul"(%55, %385) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %387 = "tosa.transpose"(%386, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %388 = "tosa.transpose_conv2d"(%387, %17, %147) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %389 = "tosa.transpose"(%388, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %390 = "tosa.add"(%370, %389) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %391 = "tosa.equal"(%67, %68) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %392 = "tosa.select"(%391, %390, %3) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %393 = "tosa.mul"(%392, %27) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %394 = "tosa.mul"(%60, %393) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %395 = "tosa.transpose"(%394, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %396 = "tosa.transpose_conv2d"(%395, %15, %351) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %397 = "tosa.transpose"(%396, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %398 = "tosa.equal"(%65, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %399 = "tosa.select"(%398, %397, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %400 = "tosa.mul"(%399, %28) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %401 = "tosa.mul"(%55, %400) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %402 = "tosa.transpose"(%401, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %403 = "tosa.transpose_conv2d"(%402, %16, %351) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %404 = "tosa.transpose"(%403, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %405 = "tosa.equal"(%63, %64) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %406 = "tosa.select"(%405, %404, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %407 = "tosa.mul"(%406, %28) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %408 = "tosa.mul"(%55, %407) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %409 = "tosa.transpose"(%408, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %410 = "tosa.transpose_conv2d"(%409, %17, %147) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %411 = "tosa.transpose"(%410, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %412 = "tosa.add"(%392, %411) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %413 = "tosa.equal"(%61, %62) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %414 = "tosa.select"(%413, %412, %3) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %415 = "tosa.mul"(%414, %27) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %416 = "tosa.mul"(%60, %415) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %417 = "tosa.transpose"(%416, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %418 = "tosa.transpose_conv2d"(%417, %18, %217) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %419 = "tosa.transpose_conv2d"(%417, %15, %351) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %420 = "tosa.transpose"(%419, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %421 = "tosa.equal"(%58, %59) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %422 = "tosa.select"(%421, %420, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %423 = "tosa.mul"(%422, %28) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %424 = "tosa.mul"(%55, %423) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %425 = "tosa.transpose"(%424, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %426 = "tosa.transpose_conv2d"(%425, %16, %351) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %427 = "tosa.transpose"(%426, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %428 = "tosa.equal"(%56, %57) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %429 = "tosa.select"(%428, %427, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %430 = "tosa.mul"(%429, %28) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %431 = "tosa.mul"(%55, %430) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %432 = "tosa.transpose"(%431, %4) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %433 = "tosa.transpose_conv2d"(%432, %19, %217) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %434 = "tosa.add"(%418, %433) : (tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %435 = "tosa.transpose"(%434, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %436 = "tosa.equal"(%53, %54) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %437 = "tosa.select"(%436, %435, %3) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %438 = "tosa.mul"(%437, %29) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %439 = "tosa.mul"(%40, %438) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %440 = "tosa.transpose"(%439, %4) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %441 = tensor.empty() : tensor<64xf32>
    %442 = "tosa.transpose_conv2d"(%440, %20, %441) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %443 = "tosa.transpose"(%442, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %444 = "tosa.equal"(%51, %52) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %445 = "tosa.select"(%444, %443, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %446 = "tosa.mul"(%445, %30) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %447 = "tosa.mul"(%31, %446) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %448 = "tosa.transpose"(%447, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %449 = "tosa.transpose_conv2d"(%448, %21, %441) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %450 = "tosa.transpose"(%449, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %451 = "tosa.equal"(%49, %50) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %452 = "tosa.select"(%451, %450, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %453 = "tosa.mul"(%452, %30) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %454 = "tosa.mul"(%31, %453) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %455 = "tosa.transpose"(%454, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %456 = "tosa.transpose_conv2d"(%455, %22, %217) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %457 = "tosa.transpose"(%456, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %458 = "tosa.add"(%437, %457) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %459 = "tosa.equal"(%47, %48) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %460 = "tosa.select"(%459, %458, %3) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %461 = "tosa.mul"(%460, %29) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %462 = "tosa.mul"(%40, %461) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %463 = "tosa.transpose"(%462, %4) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %464 = "tosa.transpose_conv2d"(%463, %20, %441) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %465 = "tosa.transpose"(%464, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %466 = "tosa.equal"(%45, %46) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %467 = "tosa.select"(%466, %465, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %468 = "tosa.mul"(%467, %30) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %469 = "tosa.mul"(%31, %468) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %470 = "tosa.transpose"(%469, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %471 = "tosa.transpose_conv2d"(%470, %21, %441) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %472 = "tosa.transpose"(%471, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %473 = "tosa.equal"(%43, %44) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %474 = "tosa.select"(%473, %472, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %475 = "tosa.mul"(%474, %30) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %476 = "tosa.mul"(%31, %475) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %477 = "tosa.transpose"(%476, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %478 = "tosa.transpose_conv2d"(%477, %22, %217) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %479 = "tosa.transpose"(%478, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %480 = "tosa.add"(%460, %479) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %481 = "tosa.equal"(%41, %42) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %482 = "tosa.select"(%481, %480, %3) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %483 = "tosa.mul"(%482, %29) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %484 = "tosa.mul"(%40, %483) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %485 = "tosa.transpose"(%484, %4) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %486 = "tosa.transpose_conv2d"(%485, %20, %441) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %487 = "tosa.transpose"(%486, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %488 = "tosa.equal"(%38, %39) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %489 = "tosa.select"(%488, %487, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %490 = "tosa.mul"(%489, %30) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %491 = "tosa.mul"(%31, %490) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %492 = "tosa.transpose"(%491, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %493 = "tosa.transpose_conv2d"(%492, %21, %441) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %494 = "tosa.transpose"(%493, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %495 = "tosa.equal"(%36, %37) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %496 = "tosa.select"(%495, %494, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %497 = "tosa.mul"(%496, %30) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %498 = "tosa.mul"(%31, %497) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %499 = "tosa.transpose"(%498, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %500 = "tosa.transpose_conv2d"(%499, %23, %441) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x1x1x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %501 = "tosa.add"(%486, %500) : (tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %padded = tensor.pad %34 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %502 = tensor.empty() : tensor<1x113x113x64xf32>
    %503 = tensor.empty() : tensor<3x3xf32>
    %504 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded, %503, %35, %501 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%502 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_1: f32, %in_2: f32, %in_3: f32, %out: f32):
      %514 = arith.cmpf oge, %in, %in_2 : f32
      %515 = arith.select %514, %in_3, %cst_0 : f32
      %516 = arith.addf %out, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice = tensor.extract_slice %504[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %505 = "tosa.transpose"(%extracted_slice, %2) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %506 = "tosa.equal"(%32, %33) : (tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xi1>
    %507 = "tosa.select"(%506, %505, %3) : (tensor<1x64x112x112xi1>, tensor<1x64x112x112xf32>, tensor<f32>) -> tensor<1x64x112x112xf32>
    %508 = "tosa.mul"(%507, %30) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %509 = "tosa.mul"(%31, %508) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %510 = "tosa.transpose"(%509, %4) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %511 = tensor.empty() : tensor<3xf32>
    %512 = "tosa.transpose_conv2d"(%510, %24, %511) {out_pad = array<i64: -3, -3, -3, -3>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>, tensor<3x7x7x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %513 = "tosa.transpose"(%512, %2) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %513 : tensor<1x3x224x224xf32>
  }
}

