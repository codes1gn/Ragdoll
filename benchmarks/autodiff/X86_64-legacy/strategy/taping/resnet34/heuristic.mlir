#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "ResNet"} {
  ml_program.global private mutable @global308 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global307 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global299 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global298 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global291 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global290 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global282 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global281 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global274 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global273 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global259 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global258 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global255 : tensor<1x512x1x1xf32>
  ml_program.global private mutable @global249 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global248 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global240 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global239 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global232 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global231 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global223 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global222 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global215 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global214 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global206 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global205 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global198 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global197 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global189 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global188 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global181 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global180 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global172 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global171 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global164 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global163 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global149 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global148 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global145 : tensor<1x256x1x1xf32>
  ml_program.global private mutable @global139 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global138 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global130 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global129 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global122 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global121 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global113 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global112 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global105 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global104 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global96 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global95 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global88 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global87 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global73 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global72 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global69 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global63 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global62 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global54 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global53 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global46 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global45 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global37 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global36 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global29 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global28 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global20 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global19 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global12 : tensor<1x56x56x64xf32>
  ml_program.global private mutable @global11 : tensor<1x112x112x64xf32>
  ml_program.global private mutable @global10 : tensor<1x64x112x112xf32>
  ml_program.global private mutable @global9 : tensor<1x64x112x112xf32>
  ml_program.global private mutable @global6 : tensor<1x64x1x1xf32>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x7x7x3xf32>} : () -> tensor<64x7x7x3xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %2 = "tosa.const"() {value = dense<7.778000e-02> : tensor<64x1x1xf32>} : () -> tensor<64x1x1xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x64xf32>} : () -> tensor<64x3x3x64xf32>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x64xf32>} : () -> tensor<128x3x3x64xf32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %6 = "tosa.const"() {value = dense<7.778000e-02> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x128xf32>} : () -> tensor<128x3x3x128xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x64xf32>} : () -> tensor<128x1x1x64xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x128xf32>} : () -> tensor<256x3x3x128xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %11 = "tosa.const"() {value = dense<7.778000e-02> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x128xf32>} : () -> tensor<256x1x1x128xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x256xf32>} : () -> tensor<512x3x3x256xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %16 = "tosa.const"() {value = dense<7.778000e-02> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x512xf32>} : () -> tensor<512x3x3x512xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x256xf32>} : () -> tensor<512x1x1x256xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1000xf32>} : () -> tensor<1x512x1000xf32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000xf32>} : () -> tensor<1x1000xf32>
    %21 = "tosa.const"() {value = dense<0.000000e+00> : tensor<512xf32>} : () -> tensor<512xf32>
    %22 = "tosa.const"() {value = dense<0.000000e+00> : tensor<256xf32>} : () -> tensor<256xf32>
    %23 = "tosa.const"() {value = dense<0.000000e+00> : tensor<128xf32>} : () -> tensor<128xf32>
    %24 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %25 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %26 = "tosa.const"() {value = dense<0.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %27 = "tosa.transpose"(%arg0, %25) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %28 = "tosa.conv2d"(%27, %0, %26) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %29 = "tosa.transpose"(%28, %24) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %30 = "tosa.sub"(%29, %1) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %31 = "tosa.rsqrt"(%2) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %32 = "tosa.reshape"(%31) {new_shape = array<i64: 1, 64, 1, 1>} : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    ml_program.global_store @global6 = %32 : tensor<1x64x1x1xf32>
    %33 = "tosa.mul"(%30, %32) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %34 = "tosa.mul"(%33, %1) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %35 = "tosa.add"(%34, %1) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    ml_program.global_store @global9 = %35 : tensor<1x64x112x112xf32>
    %36 = "tosa.clamp"(%35) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    ml_program.global_store @global10 = %36 : tensor<1x64x112x112xf32>
    %37 = "tosa.transpose"(%36, %25) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    ml_program.global_store @global11 = %37 : tensor<1x112x112x64xf32>
    %38 = "tosa.max_pool2d"(%37) {kernel = array<i64: 3, 3>, pad = array<i64: 1, 0, 1, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    ml_program.global_store @global12 = %38 : tensor<1x56x56x64xf32>
    %39 = "tosa.transpose"(%38, %24) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %40 = "tosa.conv2d"(%38, %3, %26) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %41 = "tosa.transpose"(%40, %24) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %42 = "tosa.sub"(%41, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %43 = "tosa.mul"(%42, %32) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %44 = "tosa.mul"(%43, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %45 = "tosa.add"(%44, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global19 = %45 : tensor<1x64x56x56xf32>
    %46 = "tosa.clamp"(%45) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global20 = %46 : tensor<1x64x56x56xf32>
    %47 = "tosa.transpose"(%46, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %48 = "tosa.conv2d"(%47, %3, %26) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %49 = "tosa.transpose"(%48, %24) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %50 = "tosa.sub"(%49, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %51 = "tosa.mul"(%50, %32) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %52 = "tosa.mul"(%51, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %53 = "tosa.add"(%52, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %54 = "tosa.add"(%53, %39) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global28 = %54 : tensor<1x64x56x56xf32>
    %55 = "tosa.clamp"(%54) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global29 = %55 : tensor<1x64x56x56xf32>
    %56 = "tosa.transpose"(%55, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %57 = "tosa.conv2d"(%56, %3, %26) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %58 = "tosa.transpose"(%57, %24) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %59 = "tosa.sub"(%58, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %60 = "tosa.mul"(%59, %32) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %61 = "tosa.mul"(%60, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %62 = "tosa.add"(%61, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global36 = %62 : tensor<1x64x56x56xf32>
    %63 = "tosa.clamp"(%62) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global37 = %63 : tensor<1x64x56x56xf32>
    %64 = "tosa.transpose"(%63, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %65 = "tosa.conv2d"(%64, %3, %26) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %66 = "tosa.transpose"(%65, %24) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %67 = "tosa.sub"(%66, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %68 = "tosa.mul"(%67, %32) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %69 = "tosa.mul"(%68, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %70 = "tosa.add"(%69, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %71 = "tosa.add"(%70, %55) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global45 = %71 : tensor<1x64x56x56xf32>
    %72 = "tosa.clamp"(%71) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global46 = %72 : tensor<1x64x56x56xf32>
    %73 = "tosa.transpose"(%72, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %74 = "tosa.conv2d"(%73, %3, %26) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %75 = "tosa.transpose"(%74, %24) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %76 = "tosa.sub"(%75, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %77 = "tosa.mul"(%76, %32) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %78 = "tosa.mul"(%77, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %79 = "tosa.add"(%78, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global53 = %79 : tensor<1x64x56x56xf32>
    %80 = "tosa.clamp"(%79) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global54 = %80 : tensor<1x64x56x56xf32>
    %81 = "tosa.transpose"(%80, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %82 = "tosa.conv2d"(%81, %3, %26) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %83 = "tosa.transpose"(%82, %24) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %84 = "tosa.sub"(%83, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %85 = "tosa.mul"(%84, %32) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %86 = "tosa.mul"(%85, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %87 = "tosa.add"(%86, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %88 = "tosa.add"(%87, %72) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global62 = %88 : tensor<1x64x56x56xf32>
    %89 = "tosa.clamp"(%88) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global63 = %89 : tensor<1x64x56x56xf32>
    %90 = "tosa.transpose"(%89, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %91 = "tosa.conv2d"(%90, %4, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x56x56x64xf32>, tensor<128x3x3x64xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %92 = "tosa.transpose"(%91, %24) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %93 = "tosa.sub"(%92, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %94 = "tosa.rsqrt"(%6) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %95 = "tosa.reshape"(%94) {new_shape = array<i64: 1, 128, 1, 1>} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    ml_program.global_store @global69 = %95 : tensor<1x128x1x1xf32>
    %96 = "tosa.mul"(%93, %95) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %97 = "tosa.mul"(%96, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %98 = "tosa.add"(%97, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global72 = %98 : tensor<1x128x28x28xf32>
    %99 = "tosa.clamp"(%98) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global73 = %99 : tensor<1x128x28x28xf32>
    %100 = "tosa.transpose"(%99, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %101 = "tosa.conv2d"(%100, %7, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %102 = "tosa.transpose"(%101, %24) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %103 = "tosa.sub"(%102, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %104 = "tosa.mul"(%103, %95) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %105 = "tosa.mul"(%104, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %106 = "tosa.add"(%105, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %107 = "tosa.conv2d"(%90, %8, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x64xf32>, tensor<128x1x1x64xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %108 = "tosa.transpose"(%107, %24) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %109 = "tosa.sub"(%108, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %110 = "tosa.mul"(%109, %95) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %111 = "tosa.mul"(%110, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %112 = "tosa.add"(%111, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %113 = "tosa.add"(%106, %112) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global87 = %113 : tensor<1x128x28x28xf32>
    %114 = "tosa.clamp"(%113) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global88 = %114 : tensor<1x128x28x28xf32>
    %115 = "tosa.transpose"(%114, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %116 = "tosa.conv2d"(%115, %7, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %117 = "tosa.transpose"(%116, %24) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %118 = "tosa.sub"(%117, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %119 = "tosa.mul"(%118, %95) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %120 = "tosa.mul"(%119, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %121 = "tosa.add"(%120, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global95 = %121 : tensor<1x128x28x28xf32>
    %122 = "tosa.clamp"(%121) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global96 = %122 : tensor<1x128x28x28xf32>
    %123 = "tosa.transpose"(%122, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %124 = "tosa.conv2d"(%123, %7, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %125 = "tosa.transpose"(%124, %24) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %126 = "tosa.sub"(%125, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %127 = "tosa.mul"(%126, %95) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %128 = "tosa.mul"(%127, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %129 = "tosa.add"(%128, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %130 = "tosa.add"(%129, %114) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global104 = %130 : tensor<1x128x28x28xf32>
    %131 = "tosa.clamp"(%130) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global105 = %131 : tensor<1x128x28x28xf32>
    %132 = "tosa.transpose"(%131, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %133 = "tosa.conv2d"(%132, %7, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %134 = "tosa.transpose"(%133, %24) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %135 = "tosa.sub"(%134, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %136 = "tosa.mul"(%135, %95) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %137 = "tosa.mul"(%136, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %138 = "tosa.add"(%137, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global112 = %138 : tensor<1x128x28x28xf32>
    %139 = "tosa.clamp"(%138) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global113 = %139 : tensor<1x128x28x28xf32>
    %140 = "tosa.transpose"(%139, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %141 = "tosa.conv2d"(%140, %7, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %142 = "tosa.transpose"(%141, %24) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %143 = "tosa.sub"(%142, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %144 = "tosa.mul"(%143, %95) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %145 = "tosa.mul"(%144, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %146 = "tosa.add"(%145, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %147 = "tosa.add"(%146, %131) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global121 = %147 : tensor<1x128x28x28xf32>
    %148 = "tosa.clamp"(%147) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global122 = %148 : tensor<1x128x28x28xf32>
    %149 = "tosa.transpose"(%148, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %150 = "tosa.conv2d"(%149, %7, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %151 = "tosa.transpose"(%150, %24) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %152 = "tosa.sub"(%151, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %153 = "tosa.mul"(%152, %95) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %154 = "tosa.mul"(%153, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %155 = "tosa.add"(%154, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global129 = %155 : tensor<1x128x28x28xf32>
    %156 = "tosa.clamp"(%155) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global130 = %156 : tensor<1x128x28x28xf32>
    %157 = "tosa.transpose"(%156, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %158 = "tosa.conv2d"(%157, %7, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %159 = "tosa.transpose"(%158, %24) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %160 = "tosa.sub"(%159, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %161 = "tosa.mul"(%160, %95) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %162 = "tosa.mul"(%161, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %163 = "tosa.add"(%162, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %164 = "tosa.add"(%163, %148) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global138 = %164 : tensor<1x128x28x28xf32>
    %165 = "tosa.clamp"(%164) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global139 = %165 : tensor<1x128x28x28xf32>
    %166 = "tosa.transpose"(%165, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %167 = "tosa.conv2d"(%166, %9, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<256x3x3x128xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %168 = "tosa.transpose"(%167, %24) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %169 = "tosa.sub"(%168, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %170 = "tosa.rsqrt"(%11) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %171 = "tosa.reshape"(%170) {new_shape = array<i64: 1, 256, 1, 1>} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    ml_program.global_store @global145 = %171 : tensor<1x256x1x1xf32>
    %172 = "tosa.mul"(%169, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %173 = "tosa.mul"(%172, %10) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %174 = "tosa.add"(%173, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global148 = %174 : tensor<1x256x14x14xf32>
    %175 = "tosa.clamp"(%174) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global149 = %175 : tensor<1x256x14x14xf32>
    %176 = "tosa.transpose"(%175, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %177 = "tosa.conv2d"(%176, %12, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %178 = "tosa.transpose"(%177, %24) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %179 = "tosa.sub"(%178, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %180 = "tosa.mul"(%179, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %181 = "tosa.mul"(%180, %10) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %182 = "tosa.add"(%181, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %183 = "tosa.conv2d"(%166, %13, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %184 = "tosa.transpose"(%183, %24) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %185 = "tosa.sub"(%184, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %186 = "tosa.mul"(%185, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %187 = "tosa.mul"(%186, %10) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %188 = "tosa.add"(%187, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %189 = "tosa.add"(%182, %188) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global163 = %189 : tensor<1x256x14x14xf32>
    %190 = "tosa.clamp"(%189) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global164 = %190 : tensor<1x256x14x14xf32>
    %191 = "tosa.transpose"(%190, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %192 = "tosa.conv2d"(%191, %12, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %193 = "tosa.transpose"(%192, %24) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %194 = "tosa.sub"(%193, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %195 = "tosa.mul"(%194, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %196 = "tosa.mul"(%195, %10) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %197 = "tosa.add"(%196, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global171 = %197 : tensor<1x256x14x14xf32>
    %198 = "tosa.clamp"(%197) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global172 = %198 : tensor<1x256x14x14xf32>
    %199 = "tosa.transpose"(%198, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %200 = "tosa.conv2d"(%199, %12, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %201 = "tosa.transpose"(%200, %24) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %202 = "tosa.sub"(%201, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %203 = "tosa.mul"(%202, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %204 = "tosa.mul"(%203, %10) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %205 = "tosa.add"(%204, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %206 = "tosa.add"(%205, %190) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global180 = %206 : tensor<1x256x14x14xf32>
    %207 = "tosa.clamp"(%206) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global181 = %207 : tensor<1x256x14x14xf32>
    %208 = "tosa.transpose"(%207, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %209 = "tosa.conv2d"(%208, %12, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %210 = "tosa.transpose"(%209, %24) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %211 = "tosa.sub"(%210, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %212 = "tosa.mul"(%211, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %213 = "tosa.mul"(%212, %10) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %214 = "tosa.add"(%213, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global188 = %214 : tensor<1x256x14x14xf32>
    %215 = "tosa.clamp"(%214) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global189 = %215 : tensor<1x256x14x14xf32>
    %216 = "tosa.transpose"(%215, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %217 = "tosa.conv2d"(%216, %12, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %218 = "tosa.transpose"(%217, %24) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %219 = "tosa.sub"(%218, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %220 = "tosa.mul"(%219, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %221 = "tosa.mul"(%220, %10) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %222 = "tosa.add"(%221, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %223 = "tosa.add"(%222, %207) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global197 = %223 : tensor<1x256x14x14xf32>
    %224 = "tosa.clamp"(%223) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global198 = %224 : tensor<1x256x14x14xf32>
    %225 = "tosa.transpose"(%224, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %226 = "tosa.conv2d"(%225, %12, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %227 = "tosa.transpose"(%226, %24) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %228 = "tosa.sub"(%227, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %229 = "tosa.mul"(%228, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %230 = "tosa.mul"(%229, %10) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %231 = "tosa.add"(%230, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global205 = %231 : tensor<1x256x14x14xf32>
    %232 = "tosa.clamp"(%231) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global206 = %232 : tensor<1x256x14x14xf32>
    %233 = "tosa.transpose"(%232, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %234 = "tosa.conv2d"(%233, %12, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %235 = "tosa.transpose"(%234, %24) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %236 = "tosa.sub"(%235, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %237 = "tosa.mul"(%236, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %238 = "tosa.mul"(%237, %10) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %239 = "tosa.add"(%238, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %240 = "tosa.add"(%239, %224) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global214 = %240 : tensor<1x256x14x14xf32>
    %241 = "tosa.clamp"(%240) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global215 = %241 : tensor<1x256x14x14xf32>
    %242 = "tosa.transpose"(%241, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %243 = "tosa.conv2d"(%242, %12, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %244 = "tosa.transpose"(%243, %24) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %245 = "tosa.sub"(%244, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %246 = "tosa.mul"(%245, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %247 = "tosa.mul"(%246, %10) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %248 = "tosa.add"(%247, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global222 = %248 : tensor<1x256x14x14xf32>
    %249 = "tosa.clamp"(%248) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global223 = %249 : tensor<1x256x14x14xf32>
    %250 = "tosa.transpose"(%249, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %251 = "tosa.conv2d"(%250, %12, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %252 = "tosa.transpose"(%251, %24) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %253 = "tosa.sub"(%252, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %254 = "tosa.mul"(%253, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %255 = "tosa.mul"(%254, %10) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %256 = "tosa.add"(%255, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %257 = "tosa.add"(%256, %241) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global231 = %257 : tensor<1x256x14x14xf32>
    %258 = "tosa.clamp"(%257) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global232 = %258 : tensor<1x256x14x14xf32>
    %259 = "tosa.transpose"(%258, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %260 = "tosa.conv2d"(%259, %12, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %261 = "tosa.transpose"(%260, %24) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %262 = "tosa.sub"(%261, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %263 = "tosa.mul"(%262, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %264 = "tosa.mul"(%263, %10) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %265 = "tosa.add"(%264, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global239 = %265 : tensor<1x256x14x14xf32>
    %266 = "tosa.clamp"(%265) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global240 = %266 : tensor<1x256x14x14xf32>
    %267 = "tosa.transpose"(%266, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %268 = "tosa.conv2d"(%267, %12, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %269 = "tosa.transpose"(%268, %24) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %270 = "tosa.sub"(%269, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %271 = "tosa.mul"(%270, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %272 = "tosa.mul"(%271, %10) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %273 = "tosa.add"(%272, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %274 = "tosa.add"(%273, %258) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global248 = %274 : tensor<1x256x14x14xf32>
    %275 = "tosa.clamp"(%274) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global249 = %275 : tensor<1x256x14x14xf32>
    %276 = "tosa.transpose"(%275, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %277 = "tosa.conv2d"(%276, %14, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<512x3x3x256xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %278 = "tosa.transpose"(%277, %24) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %279 = "tosa.sub"(%278, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %280 = "tosa.rsqrt"(%16) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %281 = "tosa.reshape"(%280) {new_shape = array<i64: 1, 512, 1, 1>} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    ml_program.global_store @global255 = %281 : tensor<1x512x1x1xf32>
    %282 = "tosa.mul"(%279, %281) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %283 = "tosa.mul"(%282, %15) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %284 = "tosa.add"(%283, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global258 = %284 : tensor<1x512x7x7xf32>
    %285 = "tosa.clamp"(%284) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global259 = %285 : tensor<1x512x7x7xf32>
    %286 = "tosa.transpose"(%285, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %287 = "tosa.conv2d"(%286, %17, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %288 = "tosa.transpose"(%287, %24) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %289 = "tosa.sub"(%288, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %290 = "tosa.mul"(%289, %281) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %291 = "tosa.mul"(%290, %15) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %292 = "tosa.add"(%291, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %293 = "tosa.conv2d"(%276, %18, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %294 = "tosa.transpose"(%293, %24) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %295 = "tosa.sub"(%294, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %296 = "tosa.mul"(%295, %281) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %297 = "tosa.mul"(%296, %15) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %298 = "tosa.add"(%297, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %299 = "tosa.add"(%292, %298) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global273 = %299 : tensor<1x512x7x7xf32>
    %300 = "tosa.clamp"(%299) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global274 = %300 : tensor<1x512x7x7xf32>
    %301 = "tosa.transpose"(%300, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %302 = "tosa.conv2d"(%301, %17, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %303 = "tosa.transpose"(%302, %24) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %304 = "tosa.sub"(%303, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %305 = "tosa.mul"(%304, %281) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %306 = "tosa.mul"(%305, %15) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %307 = "tosa.add"(%306, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global281 = %307 : tensor<1x512x7x7xf32>
    %308 = "tosa.clamp"(%307) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global282 = %308 : tensor<1x512x7x7xf32>
    %309 = "tosa.transpose"(%308, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %310 = "tosa.conv2d"(%309, %17, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %311 = "tosa.transpose"(%310, %24) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %312 = "tosa.sub"(%311, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %313 = "tosa.mul"(%312, %281) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %314 = "tosa.mul"(%313, %15) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %315 = "tosa.add"(%314, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %316 = "tosa.add"(%315, %300) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global290 = %316 : tensor<1x512x7x7xf32>
    %317 = "tosa.clamp"(%316) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global291 = %317 : tensor<1x512x7x7xf32>
    %318 = "tosa.transpose"(%317, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %319 = "tosa.conv2d"(%318, %17, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %320 = "tosa.transpose"(%319, %24) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %321 = "tosa.sub"(%320, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %322 = "tosa.mul"(%321, %281) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %323 = "tosa.mul"(%322, %15) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %324 = "tosa.add"(%323, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global298 = %324 : tensor<1x512x7x7xf32>
    %325 = "tosa.clamp"(%324) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global299 = %325 : tensor<1x512x7x7xf32>
    %326 = "tosa.transpose"(%325, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %327 = "tosa.conv2d"(%326, %17, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %328 = "tosa.transpose"(%327, %24) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %329 = "tosa.sub"(%328, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %330 = "tosa.mul"(%329, %281) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %331 = "tosa.mul"(%330, %15) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %332 = "tosa.add"(%331, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %333 = "tosa.add"(%332, %317) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global307 = %333 : tensor<1x512x7x7xf32>
    %334 = "tosa.clamp"(%333) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global308 = %334 : tensor<1x512x7x7xf32>
    %335 = "tosa.transpose"(%334, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %336 = "tosa.avg_pool2d"(%335) {acc_type = f32, kernel = array<i64: 7, 7>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>) -> tensor<1x1x1x512xf32>
    %337 = "tosa.reshape"(%336) {new_shape = array<i64: 1, 1, 512>} : (tensor<1x1x1x512xf32>) -> tensor<1x1x512xf32>
    %338 = "tosa.matmul"(%337, %19) : (tensor<1x1x512xf32>, tensor<1x512x1000xf32>) -> tensor<1x1x1000xf32>
    %339 = "tosa.reshape"(%338) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %340 = "tosa.add"(%339, %20) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %340 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000x512xf32>} : () -> tensor<1x1000x512xf32>
    %1 = "tosa.const"() {value = dense<0.0204081628> : tensor<1x7x7x512xf32>} : () -> tensor<1x7x7x512xf32>
    %2 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %4 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x512xf32>} : () -> tensor<512x3x3x512xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x512xf32>} : () -> tensor<256x1x1x512xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x512xf32>} : () -> tensor<256x3x3x512xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x256xf32>} : () -> tensor<128x1x1x256xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x256xf32>} : () -> tensor<128x3x3x256xf32>
    %11 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x128xf32>} : () -> tensor<128x3x3x128xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x128xf32>} : () -> tensor<64x1x1x128xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x128xf32>} : () -> tensor<64x3x3x128xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x64xf32>} : () -> tensor<64x3x3x64xf32>
    %cst = arith.constant -3.40282347E+38 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<3x7x7x64xf32>} : () -> tensor<3x7x7x64xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %20 = ml_program.global_load @global6 : tensor<1x64x1x1xf32>
    %21 = ml_program.global_load @global9 : tensor<1x64x112x112xf32>
    %22 = ml_program.global_load @global10 : tensor<1x64x112x112xf32>
    %23 = ml_program.global_load @global11 : tensor<1x112x112x64xf32>
    %24 = ml_program.global_load @global12 : tensor<1x56x56x64xf32>
    %25 = ml_program.global_load @global19 : tensor<1x64x56x56xf32>
    %26 = ml_program.global_load @global20 : tensor<1x64x56x56xf32>
    %27 = ml_program.global_load @global28 : tensor<1x64x56x56xf32>
    %28 = ml_program.global_load @global29 : tensor<1x64x56x56xf32>
    %29 = ml_program.global_load @global36 : tensor<1x64x56x56xf32>
    %30 = ml_program.global_load @global37 : tensor<1x64x56x56xf32>
    %31 = ml_program.global_load @global45 : tensor<1x64x56x56xf32>
    %32 = ml_program.global_load @global46 : tensor<1x64x56x56xf32>
    %33 = ml_program.global_load @global53 : tensor<1x64x56x56xf32>
    %34 = ml_program.global_load @global54 : tensor<1x64x56x56xf32>
    %35 = ml_program.global_load @global62 : tensor<1x64x56x56xf32>
    %36 = ml_program.global_load @global63 : tensor<1x64x56x56xf32>
    %37 = ml_program.global_load @global69 : tensor<1x128x1x1xf32>
    %38 = ml_program.global_load @global72 : tensor<1x128x28x28xf32>
    %39 = ml_program.global_load @global73 : tensor<1x128x28x28xf32>
    %40 = ml_program.global_load @global87 : tensor<1x128x28x28xf32>
    %41 = ml_program.global_load @global88 : tensor<1x128x28x28xf32>
    %42 = ml_program.global_load @global95 : tensor<1x128x28x28xf32>
    %43 = ml_program.global_load @global96 : tensor<1x128x28x28xf32>
    %44 = ml_program.global_load @global104 : tensor<1x128x28x28xf32>
    %45 = ml_program.global_load @global105 : tensor<1x128x28x28xf32>
    %46 = ml_program.global_load @global112 : tensor<1x128x28x28xf32>
    %47 = ml_program.global_load @global113 : tensor<1x128x28x28xf32>
    %48 = ml_program.global_load @global121 : tensor<1x128x28x28xf32>
    %49 = ml_program.global_load @global122 : tensor<1x128x28x28xf32>
    %50 = ml_program.global_load @global129 : tensor<1x128x28x28xf32>
    %51 = ml_program.global_load @global130 : tensor<1x128x28x28xf32>
    %52 = ml_program.global_load @global138 : tensor<1x128x28x28xf32>
    %53 = ml_program.global_load @global139 : tensor<1x128x28x28xf32>
    %54 = ml_program.global_load @global145 : tensor<1x256x1x1xf32>
    %55 = ml_program.global_load @global148 : tensor<1x256x14x14xf32>
    %56 = ml_program.global_load @global149 : tensor<1x256x14x14xf32>
    %57 = ml_program.global_load @global163 : tensor<1x256x14x14xf32>
    %58 = ml_program.global_load @global164 : tensor<1x256x14x14xf32>
    %59 = ml_program.global_load @global171 : tensor<1x256x14x14xf32>
    %60 = ml_program.global_load @global172 : tensor<1x256x14x14xf32>
    %61 = ml_program.global_load @global180 : tensor<1x256x14x14xf32>
    %62 = ml_program.global_load @global181 : tensor<1x256x14x14xf32>
    %63 = ml_program.global_load @global188 : tensor<1x256x14x14xf32>
    %64 = ml_program.global_load @global189 : tensor<1x256x14x14xf32>
    %65 = ml_program.global_load @global197 : tensor<1x256x14x14xf32>
    %66 = ml_program.global_load @global198 : tensor<1x256x14x14xf32>
    %67 = ml_program.global_load @global205 : tensor<1x256x14x14xf32>
    %68 = ml_program.global_load @global206 : tensor<1x256x14x14xf32>
    %69 = ml_program.global_load @global214 : tensor<1x256x14x14xf32>
    %70 = ml_program.global_load @global215 : tensor<1x256x14x14xf32>
    %71 = ml_program.global_load @global222 : tensor<1x256x14x14xf32>
    %72 = ml_program.global_load @global223 : tensor<1x256x14x14xf32>
    %73 = ml_program.global_load @global231 : tensor<1x256x14x14xf32>
    %74 = ml_program.global_load @global232 : tensor<1x256x14x14xf32>
    %75 = ml_program.global_load @global239 : tensor<1x256x14x14xf32>
    %76 = ml_program.global_load @global240 : tensor<1x256x14x14xf32>
    %77 = ml_program.global_load @global248 : tensor<1x256x14x14xf32>
    %78 = ml_program.global_load @global249 : tensor<1x256x14x14xf32>
    %79 = ml_program.global_load @global255 : tensor<1x512x1x1xf32>
    %80 = ml_program.global_load @global258 : tensor<1x512x7x7xf32>
    %81 = ml_program.global_load @global259 : tensor<1x512x7x7xf32>
    %82 = ml_program.global_load @global273 : tensor<1x512x7x7xf32>
    %83 = ml_program.global_load @global274 : tensor<1x512x7x7xf32>
    %84 = ml_program.global_load @global281 : tensor<1x512x7x7xf32>
    %85 = ml_program.global_load @global282 : tensor<1x512x7x7xf32>
    %86 = ml_program.global_load @global290 : tensor<1x512x7x7xf32>
    %87 = ml_program.global_load @global291 : tensor<1x512x7x7xf32>
    %88 = ml_program.global_load @global298 : tensor<1x512x7x7xf32>
    %89 = ml_program.global_load @global299 : tensor<1x512x7x7xf32>
    %90 = ml_program.global_load @global307 : tensor<1x512x7x7xf32>
    %91 = ml_program.global_load @global308 : tensor<1x512x7x7xf32>
    %92 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %93 = "tosa.matmul"(%92, %0) : (tensor<1x1x1000xf32>, tensor<1x1000x512xf32>) -> tensor<1x1x512xf32>
    %94 = "tosa.reshape"(%93) {new_shape = array<i64: 1, 1, 1, 512>} : (tensor<1x1x512xf32>) -> tensor<1x1x1x512xf32>
    %95 = "tosa.mul"(%94, %1) {shift = 0 : i32} : (tensor<1x1x1x512xf32>, tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %96 = "tosa.transpose"(%95, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %97 = "tosa.equal"(%90, %91) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %98 = "tosa.select"(%97, %96, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %99 = "tosa.mul"(%98, %16) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %100 = "tosa.mul"(%79, %99) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %101 = "tosa.transpose"(%100, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %102 = tensor.empty() : tensor<512xf32>
    %103 = "tosa.transpose_conv2d"(%101, %5, %102) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %104 = "tosa.transpose"(%103, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %105 = "tosa.equal"(%88, %89) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %106 = "tosa.select"(%105, %104, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %107 = "tosa.mul"(%106, %16) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %108 = "tosa.mul"(%79, %107) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %109 = "tosa.transpose"(%108, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %110 = "tosa.transpose_conv2d"(%109, %5, %102) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %111 = "tosa.transpose"(%110, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %112 = "tosa.add"(%98, %111) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %113 = "tosa.equal"(%86, %87) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %114 = "tosa.select"(%113, %112, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %115 = "tosa.mul"(%114, %16) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %116 = "tosa.mul"(%79, %115) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %117 = "tosa.transpose"(%116, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %118 = "tosa.transpose_conv2d"(%117, %5, %102) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %119 = "tosa.transpose"(%118, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %120 = "tosa.equal"(%84, %85) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %121 = "tosa.select"(%120, %119, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %122 = "tosa.mul"(%121, %16) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %123 = "tosa.mul"(%79, %122) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %124 = "tosa.transpose"(%123, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %125 = "tosa.transpose_conv2d"(%124, %5, %102) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %126 = "tosa.transpose"(%125, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %127 = "tosa.add"(%114, %126) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %128 = "tosa.equal"(%82, %83) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %129 = "tosa.select"(%128, %127, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %130 = "tosa.mul"(%129, %16) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %131 = "tosa.mul"(%79, %130) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %132 = "tosa.transpose"(%131, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %133 = tensor.empty() : tensor<256xf32>
    %134 = "tosa.transpose_conv2d"(%132, %6, %133) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 2, 2>} : (tensor<1x7x7x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %135 = "tosa.transpose_conv2d"(%132, %5, %102) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %136 = "tosa.transpose"(%135, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %137 = "tosa.equal"(%80, %81) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %138 = "tosa.select"(%137, %136, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %139 = "tosa.mul"(%138, %16) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %140 = "tosa.mul"(%79, %139) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %141 = "tosa.transpose"(%140, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %142 = "tosa.transpose_conv2d"(%141, %7, %133) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 2, 2>} : (tensor<1x7x7x512xf32>, tensor<256x3x3x512xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %143 = "tosa.add"(%134, %142) : (tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %144 = "tosa.transpose"(%143, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %145 = "tosa.equal"(%77, %78) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %146 = "tosa.select"(%145, %144, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %147 = "tosa.mul"(%146, %17) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %148 = "tosa.mul"(%54, %147) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %149 = "tosa.transpose"(%148, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %150 = "tosa.transpose_conv2d"(%149, %8, %133) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %151 = "tosa.transpose"(%150, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %152 = "tosa.equal"(%75, %76) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %153 = "tosa.select"(%152, %151, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %154 = "tosa.mul"(%153, %17) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %155 = "tosa.mul"(%54, %154) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %156 = "tosa.transpose"(%155, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %157 = "tosa.transpose_conv2d"(%156, %8, %133) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %158 = "tosa.transpose"(%157, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %159 = "tosa.add"(%146, %158) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %160 = "tosa.equal"(%73, %74) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %161 = "tosa.select"(%160, %159, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %162 = "tosa.mul"(%161, %17) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %163 = "tosa.mul"(%54, %162) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %164 = "tosa.transpose"(%163, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %165 = "tosa.transpose_conv2d"(%164, %8, %133) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %166 = "tosa.transpose"(%165, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %167 = "tosa.equal"(%71, %72) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %168 = "tosa.select"(%167, %166, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %169 = "tosa.mul"(%168, %17) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %170 = "tosa.mul"(%54, %169) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %171 = "tosa.transpose"(%170, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %172 = "tosa.transpose_conv2d"(%171, %8, %133) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %173 = "tosa.transpose"(%172, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %174 = "tosa.add"(%161, %173) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %175 = "tosa.equal"(%69, %70) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %176 = "tosa.select"(%175, %174, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %177 = "tosa.mul"(%176, %17) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %178 = "tosa.mul"(%54, %177) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %179 = "tosa.transpose"(%178, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %180 = "tosa.transpose_conv2d"(%179, %8, %133) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %181 = "tosa.transpose"(%180, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %182 = "tosa.equal"(%67, %68) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %183 = "tosa.select"(%182, %181, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %184 = "tosa.mul"(%183, %17) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %185 = "tosa.mul"(%54, %184) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %186 = "tosa.transpose"(%185, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %187 = "tosa.transpose_conv2d"(%186, %8, %133) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %188 = "tosa.transpose"(%187, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %189 = "tosa.add"(%176, %188) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %190 = "tosa.equal"(%65, %66) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %191 = "tosa.select"(%190, %189, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %192 = "tosa.mul"(%191, %17) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %193 = "tosa.mul"(%54, %192) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %194 = "tosa.transpose"(%193, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %195 = "tosa.transpose_conv2d"(%194, %8, %133) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %196 = "tosa.transpose"(%195, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %197 = "tosa.equal"(%63, %64) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %198 = "tosa.select"(%197, %196, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %199 = "tosa.mul"(%198, %17) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %200 = "tosa.mul"(%54, %199) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %201 = "tosa.transpose"(%200, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %202 = "tosa.transpose_conv2d"(%201, %8, %133) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %203 = "tosa.transpose"(%202, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %204 = "tosa.add"(%191, %203) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %205 = "tosa.equal"(%61, %62) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %206 = "tosa.select"(%205, %204, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %207 = "tosa.mul"(%206, %17) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %208 = "tosa.mul"(%54, %207) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %209 = "tosa.transpose"(%208, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %210 = "tosa.transpose_conv2d"(%209, %8, %133) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %211 = "tosa.transpose"(%210, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %212 = "tosa.equal"(%59, %60) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %213 = "tosa.select"(%212, %211, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %214 = "tosa.mul"(%213, %17) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %215 = "tosa.mul"(%54, %214) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %216 = "tosa.transpose"(%215, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %217 = "tosa.transpose_conv2d"(%216, %8, %133) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %218 = "tosa.transpose"(%217, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %219 = "tosa.add"(%206, %218) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %220 = "tosa.equal"(%57, %58) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %221 = "tosa.select"(%220, %219, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %222 = "tosa.mul"(%221, %17) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %223 = "tosa.mul"(%54, %222) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %224 = "tosa.transpose"(%223, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %225 = tensor.empty() : tensor<128xf32>
    %226 = "tosa.transpose_conv2d"(%224, %9, %225) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %227 = "tosa.transpose_conv2d"(%224, %8, %133) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %228 = "tosa.transpose"(%227, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %229 = "tosa.equal"(%55, %56) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %230 = "tosa.select"(%229, %228, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %231 = "tosa.mul"(%230, %17) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %232 = "tosa.mul"(%54, %231) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %233 = "tosa.transpose"(%232, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %234 = "tosa.transpose_conv2d"(%233, %10, %225) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<128x3x3x256xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %235 = "tosa.add"(%226, %234) : (tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %236 = "tosa.transpose"(%235, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %237 = "tosa.equal"(%52, %53) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %238 = "tosa.select"(%237, %236, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %239 = "tosa.mul"(%238, %18) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %240 = "tosa.mul"(%37, %239) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %241 = "tosa.transpose"(%240, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %242 = "tosa.transpose_conv2d"(%241, %11, %225) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %243 = "tosa.transpose"(%242, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %244 = "tosa.equal"(%50, %51) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %245 = "tosa.select"(%244, %243, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %246 = "tosa.mul"(%245, %18) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %247 = "tosa.mul"(%37, %246) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %248 = "tosa.transpose"(%247, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %249 = "tosa.transpose_conv2d"(%248, %11, %225) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %250 = "tosa.transpose"(%249, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %251 = "tosa.add"(%238, %250) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %252 = "tosa.equal"(%48, %49) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %253 = "tosa.select"(%252, %251, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %254 = "tosa.mul"(%253, %18) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %255 = "tosa.mul"(%37, %254) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %256 = "tosa.transpose"(%255, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %257 = "tosa.transpose_conv2d"(%256, %11, %225) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %258 = "tosa.transpose"(%257, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %259 = "tosa.equal"(%46, %47) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %260 = "tosa.select"(%259, %258, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %261 = "tosa.mul"(%260, %18) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %262 = "tosa.mul"(%37, %261) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %263 = "tosa.transpose"(%262, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %264 = "tosa.transpose_conv2d"(%263, %11, %225) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %265 = "tosa.transpose"(%264, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %266 = "tosa.add"(%253, %265) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %267 = "tosa.equal"(%44, %45) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %268 = "tosa.select"(%267, %266, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %269 = "tosa.mul"(%268, %18) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %270 = "tosa.mul"(%37, %269) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %271 = "tosa.transpose"(%270, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %272 = "tosa.transpose_conv2d"(%271, %11, %225) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %273 = "tosa.transpose"(%272, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %274 = "tosa.equal"(%42, %43) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %275 = "tosa.select"(%274, %273, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %276 = "tosa.mul"(%275, %18) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %277 = "tosa.mul"(%37, %276) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %278 = "tosa.transpose"(%277, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %279 = "tosa.transpose_conv2d"(%278, %11, %225) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %280 = "tosa.transpose"(%279, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %281 = "tosa.add"(%268, %280) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %282 = "tosa.equal"(%40, %41) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %283 = "tosa.select"(%282, %281, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %284 = "tosa.mul"(%283, %18) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %285 = "tosa.mul"(%37, %284) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %286 = "tosa.transpose"(%285, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %287 = tensor.empty() : tensor<64xf32>
    %288 = "tosa.transpose_conv2d"(%286, %12, %287) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<64x1x1x128xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %289 = "tosa.transpose_conv2d"(%286, %11, %225) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %290 = "tosa.transpose"(%289, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %291 = "tosa.equal"(%38, %39) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %292 = "tosa.select"(%291, %290, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %293 = "tosa.mul"(%292, %18) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %294 = "tosa.mul"(%37, %293) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %295 = "tosa.transpose"(%294, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %296 = "tosa.transpose_conv2d"(%295, %13, %287) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<64x3x3x128xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %297 = "tosa.add"(%288, %296) : (tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %298 = "tosa.transpose"(%297, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %299 = "tosa.equal"(%35, %36) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %300 = "tosa.select"(%299, %298, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %301 = "tosa.mul"(%300, %19) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %302 = "tosa.mul"(%20, %301) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %303 = "tosa.transpose"(%302, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %304 = "tosa.transpose_conv2d"(%303, %14, %287) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %305 = "tosa.transpose"(%304, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %306 = "tosa.equal"(%33, %34) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %307 = "tosa.select"(%306, %305, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %308 = "tosa.mul"(%307, %19) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %309 = "tosa.mul"(%20, %308) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %310 = "tosa.transpose"(%309, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %311 = "tosa.transpose_conv2d"(%310, %14, %287) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %312 = "tosa.transpose"(%311, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %313 = "tosa.add"(%300, %312) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %314 = "tosa.equal"(%31, %32) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %315 = "tosa.select"(%314, %313, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %316 = "tosa.mul"(%315, %19) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %317 = "tosa.mul"(%20, %316) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %318 = "tosa.transpose"(%317, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %319 = "tosa.transpose_conv2d"(%318, %14, %287) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %320 = "tosa.transpose"(%319, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %321 = "tosa.equal"(%29, %30) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %322 = "tosa.select"(%321, %320, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %323 = "tosa.mul"(%322, %19) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %324 = "tosa.mul"(%20, %323) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %325 = "tosa.transpose"(%324, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %326 = "tosa.transpose_conv2d"(%325, %14, %287) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %327 = "tosa.transpose"(%326, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %328 = "tosa.add"(%315, %327) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %329 = "tosa.equal"(%27, %28) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %330 = "tosa.select"(%329, %328, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %331 = "tosa.mul"(%330, %19) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %332 = "tosa.mul"(%20, %331) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %333 = "tosa.transpose"(%332, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %334 = "tosa.transpose_conv2d"(%333, %14, %287) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %335 = "tosa.transpose"(%334, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %336 = "tosa.equal"(%25, %26) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %337 = "tosa.select"(%336, %335, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %338 = "tosa.mul"(%337, %19) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %339 = "tosa.mul"(%20, %338) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %340 = "tosa.transpose"(%339, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %341 = "tosa.transpose_conv2d"(%340, %14, %287) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %342 = "tosa.transpose"(%330, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %343 = "tosa.add"(%341, %342) : (tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %padded = tensor.pad %23 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %344 = tensor.empty() : tensor<1x113x113x64xf32>
    %345 = tensor.empty() : tensor<3x3xf32>
    %346 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded, %345, %24, %343 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%344 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_1: f32, %in_2: f32, %in_3: f32, %out: f32):
      %356 = arith.cmpf oge, %in, %in_2 : f32
      %357 = arith.select %356, %in_3, %cst_0 : f32
      %358 = arith.addf %out, %357 : f32
      linalg.yield %358 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice = tensor.extract_slice %346[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %347 = "tosa.transpose"(%extracted_slice, %2) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %348 = "tosa.equal"(%21, %22) : (tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xi1>
    %349 = "tosa.select"(%348, %347, %3) : (tensor<1x64x112x112xi1>, tensor<1x64x112x112xf32>, tensor<f32>) -> tensor<1x64x112x112xf32>
    %350 = "tosa.mul"(%349, %19) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %351 = "tosa.mul"(%20, %350) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %352 = "tosa.transpose"(%351, %4) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %353 = tensor.empty() : tensor<3xf32>
    %354 = "tosa.transpose_conv2d"(%352, %15, %353) {out_pad = array<i64: -3, -3, -3, -3>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>, tensor<3x7x7x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %355 = "tosa.transpose"(%354, %2) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %355 : tensor<1x3x224x224xf32>
  }
}

