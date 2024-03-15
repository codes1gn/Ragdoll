#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "ResNet"} {
  ml_program.global private mutable @global172 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global171 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global163 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global162 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global155 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global154 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global140 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global139 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global136 : tensor<1x512x1x1xf32>
  ml_program.global private mutable @global130 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global129 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global121 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global120 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global113 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global112 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global98 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global97 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global94 : tensor<1x256x1x1xf32>
  ml_program.global private mutable @global88 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global87 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global79 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global78 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global71 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global70 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global56 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global55 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global52 : tensor<1x128x1x1xf32>
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
    %74 = "tosa.conv2d"(%73, %4, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x56x56x64xf32>, tensor<128x3x3x64xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %75 = "tosa.transpose"(%74, %24) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %76 = "tosa.sub"(%75, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %77 = "tosa.rsqrt"(%6) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %78 = "tosa.reshape"(%77) {new_shape = array<i64: 1, 128, 1, 1>} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    ml_program.global_store @global52 = %78 : tensor<1x128x1x1xf32>
    %79 = "tosa.mul"(%76, %78) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %80 = "tosa.mul"(%79, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %81 = "tosa.add"(%80, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global55 = %81 : tensor<1x128x28x28xf32>
    %82 = "tosa.clamp"(%81) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global56 = %82 : tensor<1x128x28x28xf32>
    %83 = "tosa.transpose"(%82, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %84 = "tosa.conv2d"(%83, %7, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %85 = "tosa.transpose"(%84, %24) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %86 = "tosa.sub"(%85, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %87 = "tosa.mul"(%86, %78) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %88 = "tosa.mul"(%87, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %89 = "tosa.add"(%88, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %90 = "tosa.conv2d"(%73, %8, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x64xf32>, tensor<128x1x1x64xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %91 = "tosa.transpose"(%90, %24) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %92 = "tosa.sub"(%91, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %93 = "tosa.mul"(%92, %78) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %94 = "tosa.mul"(%93, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %95 = "tosa.add"(%94, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %96 = "tosa.add"(%89, %95) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global70 = %96 : tensor<1x128x28x28xf32>
    %97 = "tosa.clamp"(%96) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global71 = %97 : tensor<1x128x28x28xf32>
    %98 = "tosa.transpose"(%97, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %99 = "tosa.conv2d"(%98, %7, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %100 = "tosa.transpose"(%99, %24) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %101 = "tosa.sub"(%100, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %102 = "tosa.mul"(%101, %78) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %103 = "tosa.mul"(%102, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %104 = "tosa.add"(%103, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global78 = %104 : tensor<1x128x28x28xf32>
    %105 = "tosa.clamp"(%104) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global79 = %105 : tensor<1x128x28x28xf32>
    %106 = "tosa.transpose"(%105, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %107 = "tosa.conv2d"(%106, %7, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %108 = "tosa.transpose"(%107, %24) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %109 = "tosa.sub"(%108, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %110 = "tosa.mul"(%109, %78) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %111 = "tosa.mul"(%110, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %112 = "tosa.add"(%111, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %113 = "tosa.add"(%112, %97) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global87 = %113 : tensor<1x128x28x28xf32>
    %114 = "tosa.clamp"(%113) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global88 = %114 : tensor<1x128x28x28xf32>
    %115 = "tosa.transpose"(%114, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %116 = "tosa.conv2d"(%115, %9, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<256x3x3x128xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %117 = "tosa.transpose"(%116, %24) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %118 = "tosa.sub"(%117, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %119 = "tosa.rsqrt"(%11) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %120 = "tosa.reshape"(%119) {new_shape = array<i64: 1, 256, 1, 1>} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    ml_program.global_store @global94 = %120 : tensor<1x256x1x1xf32>
    %121 = "tosa.mul"(%118, %120) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %122 = "tosa.mul"(%121, %10) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %123 = "tosa.add"(%122, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global97 = %123 : tensor<1x256x14x14xf32>
    %124 = "tosa.clamp"(%123) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global98 = %124 : tensor<1x256x14x14xf32>
    %125 = "tosa.transpose"(%124, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %126 = "tosa.conv2d"(%125, %12, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %127 = "tosa.transpose"(%126, %24) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %128 = "tosa.sub"(%127, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %129 = "tosa.mul"(%128, %120) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %130 = "tosa.mul"(%129, %10) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %131 = "tosa.add"(%130, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %132 = "tosa.conv2d"(%115, %13, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %133 = "tosa.transpose"(%132, %24) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %134 = "tosa.sub"(%133, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %135 = "tosa.mul"(%134, %120) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %136 = "tosa.mul"(%135, %10) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %137 = "tosa.add"(%136, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %138 = "tosa.add"(%131, %137) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global112 = %138 : tensor<1x256x14x14xf32>
    %139 = "tosa.clamp"(%138) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global113 = %139 : tensor<1x256x14x14xf32>
    %140 = "tosa.transpose"(%139, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %141 = "tosa.conv2d"(%140, %12, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %142 = "tosa.transpose"(%141, %24) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %143 = "tosa.sub"(%142, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %144 = "tosa.mul"(%143, %120) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %145 = "tosa.mul"(%144, %10) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %146 = "tosa.add"(%145, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global120 = %146 : tensor<1x256x14x14xf32>
    %147 = "tosa.clamp"(%146) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global121 = %147 : tensor<1x256x14x14xf32>
    %148 = "tosa.transpose"(%147, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %149 = "tosa.conv2d"(%148, %12, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %150 = "tosa.transpose"(%149, %24) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %151 = "tosa.sub"(%150, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %152 = "tosa.mul"(%151, %120) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %153 = "tosa.mul"(%152, %10) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %154 = "tosa.add"(%153, %10) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %155 = "tosa.add"(%154, %139) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global129 = %155 : tensor<1x256x14x14xf32>
    %156 = "tosa.clamp"(%155) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global130 = %156 : tensor<1x256x14x14xf32>
    %157 = "tosa.transpose"(%156, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %158 = "tosa.conv2d"(%157, %14, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<512x3x3x256xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %159 = "tosa.transpose"(%158, %24) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %160 = "tosa.sub"(%159, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %161 = "tosa.rsqrt"(%16) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %162 = "tosa.reshape"(%161) {new_shape = array<i64: 1, 512, 1, 1>} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    ml_program.global_store @global136 = %162 : tensor<1x512x1x1xf32>
    %163 = "tosa.mul"(%160, %162) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %164 = "tosa.mul"(%163, %15) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %165 = "tosa.add"(%164, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global139 = %165 : tensor<1x512x7x7xf32>
    %166 = "tosa.clamp"(%165) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global140 = %166 : tensor<1x512x7x7xf32>
    %167 = "tosa.transpose"(%166, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %168 = "tosa.conv2d"(%167, %17, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %169 = "tosa.transpose"(%168, %24) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %170 = "tosa.sub"(%169, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %171 = "tosa.mul"(%170, %162) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %172 = "tosa.mul"(%171, %15) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %173 = "tosa.add"(%172, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %174 = "tosa.conv2d"(%157, %18, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %175 = "tosa.transpose"(%174, %24) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %176 = "tosa.sub"(%175, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %177 = "tosa.mul"(%176, %162) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %178 = "tosa.mul"(%177, %15) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %179 = "tosa.add"(%178, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %180 = "tosa.add"(%173, %179) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global154 = %180 : tensor<1x512x7x7xf32>
    %181 = "tosa.clamp"(%180) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global155 = %181 : tensor<1x512x7x7xf32>
    %182 = "tosa.transpose"(%181, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %183 = "tosa.conv2d"(%182, %17, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %184 = "tosa.transpose"(%183, %24) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %185 = "tosa.sub"(%184, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %186 = "tosa.mul"(%185, %162) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %187 = "tosa.mul"(%186, %15) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %188 = "tosa.add"(%187, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global162 = %188 : tensor<1x512x7x7xf32>
    %189 = "tosa.clamp"(%188) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global163 = %189 : tensor<1x512x7x7xf32>
    %190 = "tosa.transpose"(%189, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %191 = "tosa.conv2d"(%190, %17, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %192 = "tosa.transpose"(%191, %24) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %193 = "tosa.sub"(%192, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %194 = "tosa.mul"(%193, %162) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %195 = "tosa.mul"(%194, %15) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %196 = "tosa.add"(%195, %15) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %197 = "tosa.add"(%196, %181) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global171 = %197 : tensor<1x512x7x7xf32>
    %198 = "tosa.clamp"(%197) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global172 = %198 : tensor<1x512x7x7xf32>
    %199 = "tosa.transpose"(%198, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %200 = "tosa.avg_pool2d"(%199) {acc_type = f32, kernel = array<i64: 7, 7>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>) -> tensor<1x1x1x512xf32>
    %201 = "tosa.reshape"(%200) {new_shape = array<i64: 1, 1, 512>} : (tensor<1x1x1x512xf32>) -> tensor<1x1x512xf32>
    %202 = "tosa.matmul"(%201, %19) : (tensor<1x1x512xf32>, tensor<1x512x1000xf32>) -> tensor<1x1x1000xf32>
    %203 = "tosa.reshape"(%202) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %204 = "tosa.add"(%203, %20) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %204 : tensor<1x1000xf32>
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
    %33 = ml_program.global_load @global52 : tensor<1x128x1x1xf32>
    %34 = ml_program.global_load @global55 : tensor<1x128x28x28xf32>
    %35 = ml_program.global_load @global56 : tensor<1x128x28x28xf32>
    %36 = ml_program.global_load @global70 : tensor<1x128x28x28xf32>
    %37 = ml_program.global_load @global71 : tensor<1x128x28x28xf32>
    %38 = ml_program.global_load @global78 : tensor<1x128x28x28xf32>
    %39 = ml_program.global_load @global79 : tensor<1x128x28x28xf32>
    %40 = ml_program.global_load @global87 : tensor<1x128x28x28xf32>
    %41 = ml_program.global_load @global88 : tensor<1x128x28x28xf32>
    %42 = ml_program.global_load @global94 : tensor<1x256x1x1xf32>
    %43 = ml_program.global_load @global97 : tensor<1x256x14x14xf32>
    %44 = ml_program.global_load @global98 : tensor<1x256x14x14xf32>
    %45 = ml_program.global_load @global112 : tensor<1x256x14x14xf32>
    %46 = ml_program.global_load @global113 : tensor<1x256x14x14xf32>
    %47 = ml_program.global_load @global120 : tensor<1x256x14x14xf32>
    %48 = ml_program.global_load @global121 : tensor<1x256x14x14xf32>
    %49 = ml_program.global_load @global129 : tensor<1x256x14x14xf32>
    %50 = ml_program.global_load @global130 : tensor<1x256x14x14xf32>
    %51 = ml_program.global_load @global136 : tensor<1x512x1x1xf32>
    %52 = ml_program.global_load @global139 : tensor<1x512x7x7xf32>
    %53 = ml_program.global_load @global140 : tensor<1x512x7x7xf32>
    %54 = ml_program.global_load @global154 : tensor<1x512x7x7xf32>
    %55 = ml_program.global_load @global155 : tensor<1x512x7x7xf32>
    %56 = ml_program.global_load @global162 : tensor<1x512x7x7xf32>
    %57 = ml_program.global_load @global163 : tensor<1x512x7x7xf32>
    %58 = ml_program.global_load @global171 : tensor<1x512x7x7xf32>
    %59 = ml_program.global_load @global172 : tensor<1x512x7x7xf32>
    %60 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %61 = "tosa.matmul"(%60, %0) : (tensor<1x1x1000xf32>, tensor<1x1000x512xf32>) -> tensor<1x1x512xf32>
    %62 = "tosa.reshape"(%61) {new_shape = array<i64: 1, 1, 1, 512>} : (tensor<1x1x512xf32>) -> tensor<1x1x1x512xf32>
    %63 = "tosa.mul"(%62, %1) {shift = 0 : i32} : (tensor<1x1x1x512xf32>, tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %64 = "tosa.transpose"(%63, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %65 = "tosa.equal"(%58, %59) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %66 = "tosa.select"(%65, %64, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %67 = "tosa.mul"(%66, %16) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %68 = "tosa.mul"(%51, %67) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %69 = "tosa.transpose"(%68, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %70 = tensor.empty() : tensor<512xf32>
    %71 = "tosa.transpose_conv2d"(%69, %5, %70) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %72 = "tosa.transpose"(%71, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %73 = "tosa.equal"(%56, %57) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %74 = "tosa.select"(%73, %72, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %75 = "tosa.mul"(%74, %16) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %76 = "tosa.mul"(%51, %75) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %77 = "tosa.transpose"(%76, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %78 = "tosa.transpose_conv2d"(%77, %5, %70) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %79 = "tosa.transpose"(%78, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %80 = "tosa.add"(%66, %79) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %81 = "tosa.equal"(%54, %55) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %82 = "tosa.select"(%81, %80, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %83 = "tosa.mul"(%82, %16) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %84 = "tosa.mul"(%51, %83) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %85 = "tosa.transpose"(%84, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %86 = tensor.empty() : tensor<256xf32>
    %87 = "tosa.transpose_conv2d"(%85, %6, %86) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 2, 2>} : (tensor<1x7x7x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %88 = "tosa.transpose_conv2d"(%85, %5, %70) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %89 = "tosa.transpose"(%88, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %90 = "tosa.equal"(%52, %53) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %91 = "tosa.select"(%90, %89, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %92 = "tosa.mul"(%91, %16) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %93 = "tosa.mul"(%51, %92) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %94 = "tosa.transpose"(%93, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %95 = "tosa.transpose_conv2d"(%94, %7, %86) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 2, 2>} : (tensor<1x7x7x512xf32>, tensor<256x3x3x512xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %96 = "tosa.add"(%87, %95) : (tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %97 = "tosa.transpose"(%96, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %98 = "tosa.equal"(%49, %50) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %99 = "tosa.select"(%98, %97, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %100 = "tosa.mul"(%99, %17) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %101 = "tosa.mul"(%42, %100) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %102 = "tosa.transpose"(%101, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %103 = "tosa.transpose_conv2d"(%102, %8, %86) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %104 = "tosa.transpose"(%103, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %105 = "tosa.equal"(%47, %48) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %106 = "tosa.select"(%105, %104, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %107 = "tosa.mul"(%106, %17) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %108 = "tosa.mul"(%42, %107) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %109 = "tosa.transpose"(%108, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %110 = "tosa.transpose_conv2d"(%109, %8, %86) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %111 = "tosa.transpose"(%110, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %112 = "tosa.add"(%99, %111) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %113 = "tosa.equal"(%45, %46) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %114 = "tosa.select"(%113, %112, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %115 = "tosa.mul"(%114, %17) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %116 = "tosa.mul"(%42, %115) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %117 = "tosa.transpose"(%116, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %118 = tensor.empty() : tensor<128xf32>
    %119 = "tosa.transpose_conv2d"(%117, %9, %118) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %120 = "tosa.transpose_conv2d"(%117, %8, %86) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %121 = "tosa.transpose"(%120, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %122 = "tosa.equal"(%43, %44) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %123 = "tosa.select"(%122, %121, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %124 = "tosa.mul"(%123, %17) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %125 = "tosa.mul"(%42, %124) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %126 = "tosa.transpose"(%125, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %127 = "tosa.transpose_conv2d"(%126, %10, %118) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<128x3x3x256xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %128 = "tosa.add"(%119, %127) : (tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %129 = "tosa.transpose"(%128, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %130 = "tosa.equal"(%40, %41) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %131 = "tosa.select"(%130, %129, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %132 = "tosa.mul"(%131, %18) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %133 = "tosa.mul"(%33, %132) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %134 = "tosa.transpose"(%133, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %135 = "tosa.transpose_conv2d"(%134, %11, %118) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %136 = "tosa.transpose"(%135, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %137 = "tosa.equal"(%38, %39) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %138 = "tosa.select"(%137, %136, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %139 = "tosa.mul"(%138, %18) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %140 = "tosa.mul"(%33, %139) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %141 = "tosa.transpose"(%140, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %142 = "tosa.transpose_conv2d"(%141, %11, %118) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %143 = "tosa.transpose"(%142, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %144 = "tosa.add"(%131, %143) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %145 = "tosa.equal"(%36, %37) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %146 = "tosa.select"(%145, %144, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %147 = "tosa.mul"(%146, %18) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %148 = "tosa.mul"(%33, %147) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %149 = "tosa.transpose"(%148, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %150 = tensor.empty() : tensor<64xf32>
    %151 = "tosa.transpose_conv2d"(%149, %12, %150) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<64x1x1x128xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %152 = "tosa.transpose_conv2d"(%149, %11, %118) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %153 = "tosa.transpose"(%152, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %154 = "tosa.equal"(%34, %35) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %155 = "tosa.select"(%154, %153, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %156 = "tosa.mul"(%155, %18) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %157 = "tosa.mul"(%33, %156) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %158 = "tosa.transpose"(%157, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %159 = "tosa.transpose_conv2d"(%158, %13, %150) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<64x3x3x128xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %160 = "tosa.add"(%151, %159) : (tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %161 = "tosa.transpose"(%160, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %162 = "tosa.equal"(%31, %32) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %163 = "tosa.select"(%162, %161, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %164 = "tosa.mul"(%163, %19) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %165 = "tosa.mul"(%20, %164) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %166 = "tosa.transpose"(%165, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %167 = "tosa.transpose_conv2d"(%166, %14, %150) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %168 = "tosa.transpose"(%167, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %169 = "tosa.equal"(%29, %30) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %170 = "tosa.select"(%169, %168, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %171 = "tosa.mul"(%170, %19) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %172 = "tosa.mul"(%20, %171) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %173 = "tosa.transpose"(%172, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %174 = "tosa.transpose_conv2d"(%173, %14, %150) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %175 = "tosa.transpose"(%174, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %176 = "tosa.add"(%163, %175) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %177 = "tosa.equal"(%27, %28) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %178 = "tosa.select"(%177, %176, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %179 = "tosa.mul"(%178, %19) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %180 = "tosa.mul"(%20, %179) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %181 = "tosa.transpose"(%180, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %182 = "tosa.transpose_conv2d"(%181, %14, %150) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %183 = "tosa.transpose"(%182, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %184 = "tosa.equal"(%25, %26) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %185 = "tosa.select"(%184, %183, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %186 = "tosa.mul"(%185, %19) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %187 = "tosa.mul"(%20, %186) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %188 = "tosa.transpose"(%187, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %189 = "tosa.transpose_conv2d"(%188, %14, %150) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %190 = "tosa.transpose"(%178, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %191 = "tosa.add"(%189, %190) : (tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %padded = tensor.pad %23 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %192 = tensor.empty() : tensor<1x113x113x64xf32>
    %193 = tensor.empty() : tensor<3x3xf32>
    %194 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded, %193, %24, %191 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%192 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_1: f32, %in_2: f32, %in_3: f32, %out: f32):
      %204 = arith.cmpf oge, %in, %in_2 : f32
      %205 = arith.select %204, %in_3, %cst_0 : f32
      %206 = arith.addf %out, %205 : f32
      linalg.yield %206 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice = tensor.extract_slice %194[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %195 = "tosa.transpose"(%extracted_slice, %2) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %196 = "tosa.equal"(%21, %22) : (tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xi1>
    %197 = "tosa.select"(%196, %195, %3) : (tensor<1x64x112x112xi1>, tensor<1x64x112x112xf32>, tensor<f32>) -> tensor<1x64x112x112xf32>
    %198 = "tosa.mul"(%197, %19) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %199 = "tosa.mul"(%20, %198) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %200 = "tosa.transpose"(%199, %4) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %201 = tensor.empty() : tensor<3xf32>
    %202 = "tosa.transpose_conv2d"(%200, %15, %201) {out_pad = array<i64: -3, -3, -3, -3>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>, tensor<3x7x7x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %203 = "tosa.transpose"(%202, %2) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %203 : tensor<1x3x224x224xf32>
  }
}

