#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "ResNet"} {
  ml_program.global private mutable @global15 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global14 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global13 : tensor<1x7x7x512xf32>
  ml_program.global private mutable @global12 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global11 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global10 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global9 : tensor<1x14x14x256xf32>
  ml_program.global private mutable @global8 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global7 : tensor<1x28x28x128xf32>
  ml_program.global private mutable @global6 : tensor<128x1x1xf32>
  ml_program.global private mutable @global5 : tensor<1x56x56x64xf32>
  ml_program.global private mutable @global4 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global3 : tensor<1x56x56x64xf32>
  ml_program.global private mutable @global2 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global1 : tensor<512x3x3x256xf32>
  ml_program.global private mutable @global0 : tensor<1x3x224x224xf32>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %1 = "tosa.const"() {value = dense<7.778000e-02> : tensor<64x1x1xf32>} : () -> tensor<64x1x1xf32>
    %2 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x64xf32>} : () -> tensor<64x3x3x64xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x64xf32>} : () -> tensor<128x3x3x64xf32>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %5 = "tosa.const"() {value = dense<7.778000e-02> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x128xf32>} : () -> tensor<128x3x3x128xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x64xf32>} : () -> tensor<128x1x1x64xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x128xf32>} : () -> tensor<256x3x3x128xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %10 = "tosa.const"() {value = dense<7.778000e-02> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %11 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x256xf32>} : () -> tensor<512x3x3x256xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %14 = "tosa.const"() {value = dense<7.778000e-02> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x512xf32>} : () -> tensor<512x3x3x512xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x256xf32>} : () -> tensor<512x1x1x256xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1000xf32>} : () -> tensor<1x512x1000xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000xf32>} : () -> tensor<1x1000xf32>
    %19 = "tosa.const"() {value = dense<0.000000e+00> : tensor<512xf32>} : () -> tensor<512xf32>
    %20 = "tosa.const"() {value = dense<0.000000e+00> : tensor<256xf32>} : () -> tensor<256xf32>
    %21 = "tosa.const"() {value = dense<0.000000e+00> : tensor<128xf32>} : () -> tensor<128xf32>
    %22 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %23 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %24 = "tosa.const"() {value = dense<0.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %25 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x128xf32>} : () -> tensor<256x1x1x128xf32>
    %26 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x7x7x3xf32>} : () -> tensor<64x7x7x3xf32>
    ml_program.global_store @global0 = %arg0 : tensor<1x3x224x224xf32>
    ml_program.global_store @global1 = %12 : tensor<512x3x3x256xf32>
    ml_program.global_store @global2 = %0 : tensor<1x64x1x1xf32>
    %27 = "tosa.transpose"(%arg0, %23) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %28 = "tosa.conv2d"(%27, %26, %24) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %29 = "tosa.transpose"(%28, %22) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %30 = "tosa.sub"(%29, %0) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %31 = "tosa.rsqrt"(%1) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %32 = "tosa.reshape"(%31) {new_shape = array<i64: 1, 64, 1, 1>} : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %33 = "tosa.mul"(%30, %32) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %34 = "tosa.mul"(%33, %0) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %35 = "tosa.add"(%34, %0) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %36 = "tosa.clamp"(%35) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %37 = "tosa.transpose"(%36, %23) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %38 = "tosa.max_pool2d"(%37) {kernel = array<i64: 3, 3>, pad = array<i64: 1, 0, 1, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    ml_program.global_store @global3 = %38 : tensor<1x56x56x64xf32>
    %39 = "tosa.transpose"(%38, %22) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %40 = "tosa.conv2d"(%38, %2, %24) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %41 = "tosa.transpose"(%40, %22) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %42 = "tosa.sub"(%41, %0) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %43 = "tosa.mul"(%42, %32) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %44 = "tosa.mul"(%43, %0) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %45 = "tosa.add"(%44, %0) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %46 = "tosa.clamp"(%45) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %47 = "tosa.transpose"(%46, %23) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %48 = "tosa.conv2d"(%47, %2, %24) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %49 = "tosa.transpose"(%48, %22) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %50 = "tosa.sub"(%49, %0) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %51 = "tosa.mul"(%50, %32) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global4 = %51 : tensor<1x64x56x56xf32>
    %52 = "tosa.mul"(%51, %0) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %53 = "tosa.add"(%52, %0) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %54 = "tosa.add"(%53, %39) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %55 = "tosa.clamp"(%54) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %56 = "tosa.transpose"(%55, %23) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %57 = "tosa.conv2d"(%56, %2, %24) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %58 = "tosa.transpose"(%57, %22) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %59 = "tosa.sub"(%58, %0) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %60 = "tosa.mul"(%59, %32) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %61 = "tosa.mul"(%60, %0) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %62 = "tosa.add"(%61, %0) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %63 = "tosa.clamp"(%62) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %64 = "tosa.transpose"(%63, %23) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    ml_program.global_store @global5 = %64 : tensor<1x56x56x64xf32>
    %65 = "tosa.conv2d"(%64, %2, %24) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %66 = "tosa.transpose"(%65, %22) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %67 = "tosa.sub"(%66, %0) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %68 = "tosa.mul"(%67, %32) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %69 = "tosa.mul"(%68, %0) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %70 = "tosa.add"(%69, %0) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %71 = "tosa.add"(%70, %55) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %72 = "tosa.clamp"(%71) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %73 = "tosa.transpose"(%72, %23) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %74 = "tosa.conv2d"(%73, %3, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x56x56x64xf32>, tensor<128x3x3x64xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %75 = "tosa.transpose"(%74, %22) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %76 = "tosa.sub"(%75, %4) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %77 = "tosa.rsqrt"(%5) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    ml_program.global_store @global6 = %77 : tensor<128x1x1xf32>
    %78 = "tosa.reshape"(%77) {new_shape = array<i64: 1, 128, 1, 1>} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %79 = "tosa.mul"(%76, %78) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %80 = "tosa.mul"(%79, %4) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %81 = "tosa.add"(%80, %4) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %82 = "tosa.clamp"(%81) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %83 = "tosa.transpose"(%82, %23) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %84 = "tosa.conv2d"(%83, %6, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %85 = "tosa.transpose"(%84, %22) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %86 = "tosa.sub"(%85, %4) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %87 = "tosa.mul"(%86, %78) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %88 = "tosa.mul"(%87, %4) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %89 = "tosa.add"(%88, %4) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %90 = "tosa.conv2d"(%73, %7, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x64xf32>, tensor<128x1x1x64xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    ml_program.global_store @global7 = %90 : tensor<1x28x28x128xf32>
    %91 = "tosa.transpose"(%90, %22) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %92 = "tosa.sub"(%91, %4) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %93 = "tosa.mul"(%92, %78) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %94 = "tosa.mul"(%93, %4) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %95 = "tosa.add"(%94, %4) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %96 = "tosa.add"(%89, %95) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %97 = "tosa.clamp"(%96) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %98 = "tosa.transpose"(%97, %23) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %99 = "tosa.conv2d"(%98, %6, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %100 = "tosa.transpose"(%99, %22) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %101 = "tosa.sub"(%100, %4) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %102 = "tosa.mul"(%101, %78) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %103 = "tosa.mul"(%102, %4) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global8 = %103 : tensor<1x128x28x28xf32>
    %104 = "tosa.add"(%103, %4) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %105 = "tosa.clamp"(%104) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %106 = "tosa.transpose"(%105, %23) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %107 = "tosa.conv2d"(%106, %6, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %108 = "tosa.transpose"(%107, %22) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %109 = "tosa.sub"(%108, %4) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %110 = "tosa.mul"(%109, %78) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %111 = "tosa.mul"(%110, %4) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %112 = "tosa.add"(%111, %4) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %113 = "tosa.add"(%112, %97) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %114 = "tosa.clamp"(%113) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %115 = "tosa.transpose"(%114, %23) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %116 = "tosa.conv2d"(%115, %8, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<256x3x3x128xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    ml_program.global_store @global9 = %116 : tensor<1x14x14x256xf32>
    %117 = "tosa.transpose"(%116, %22) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %118 = "tosa.sub"(%117, %9) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %119 = "tosa.rsqrt"(%10) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %120 = "tosa.reshape"(%119) {new_shape = array<i64: 1, 256, 1, 1>} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %121 = "tosa.mul"(%118, %120) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %122 = "tosa.mul"(%121, %9) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %123 = "tosa.add"(%122, %9) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %124 = "tosa.clamp"(%123) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %125 = "tosa.transpose"(%124, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %126 = "tosa.conv2d"(%125, %11, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %127 = "tosa.transpose"(%126, %22) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %128 = "tosa.sub"(%127, %9) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %129 = "tosa.mul"(%128, %120) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global10 = %129 : tensor<1x256x14x14xf32>
    %130 = "tosa.mul"(%129, %9) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %131 = "tosa.add"(%130, %9) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %132 = "tosa.conv2d"(%115, %25, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %133 = "tosa.transpose"(%132, %22) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %134 = "tosa.sub"(%133, %9) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %135 = "tosa.mul"(%134, %120) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %136 = "tosa.mul"(%135, %9) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %137 = "tosa.add"(%136, %9) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %138 = "tosa.add"(%131, %137) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %139 = "tosa.clamp"(%138) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %140 = "tosa.transpose"(%139, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %141 = "tosa.conv2d"(%140, %11, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %142 = "tosa.transpose"(%141, %22) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global11 = %142 : tensor<1x256x14x14xf32>
    %143 = "tosa.sub"(%142, %9) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %144 = "tosa.mul"(%143, %120) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %145 = "tosa.mul"(%144, %9) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %146 = "tosa.add"(%145, %9) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %147 = "tosa.clamp"(%146) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %148 = "tosa.transpose"(%147, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %149 = "tosa.conv2d"(%148, %11, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %150 = "tosa.transpose"(%149, %22) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %151 = "tosa.sub"(%150, %9) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %152 = "tosa.mul"(%151, %120) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %153 = "tosa.mul"(%152, %9) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %154 = "tosa.add"(%153, %9) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %155 = "tosa.add"(%154, %139) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global12 = %155 : tensor<1x256x14x14xf32>
    %156 = "tosa.clamp"(%155) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %157 = "tosa.transpose"(%156, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %158 = "tosa.conv2d"(%157, %12, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<512x3x3x256xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %159 = "tosa.transpose"(%158, %22) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %160 = "tosa.sub"(%159, %13) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %161 = "tosa.rsqrt"(%14) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %162 = "tosa.reshape"(%161) {new_shape = array<i64: 1, 512, 1, 1>} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %163 = "tosa.mul"(%160, %162) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %164 = "tosa.mul"(%163, %13) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %165 = "tosa.add"(%164, %13) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %166 = "tosa.clamp"(%165) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %167 = "tosa.transpose"(%166, %23) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %168 = "tosa.conv2d"(%167, %15, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    ml_program.global_store @global13 = %168 : tensor<1x7x7x512xf32>
    %169 = "tosa.transpose"(%168, %22) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %170 = "tosa.sub"(%169, %13) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %171 = "tosa.mul"(%170, %162) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %172 = "tosa.mul"(%171, %13) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %173 = "tosa.add"(%172, %13) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %174 = "tosa.conv2d"(%157, %16, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %175 = "tosa.transpose"(%174, %22) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %176 = "tosa.sub"(%175, %13) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %177 = "tosa.mul"(%176, %162) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %178 = "tosa.mul"(%177, %13) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %179 = "tosa.add"(%178, %13) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %180 = "tosa.add"(%173, %179) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %181 = "tosa.clamp"(%180) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global14 = %181 : tensor<1x512x7x7xf32>
    %182 = "tosa.transpose"(%181, %23) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %183 = "tosa.conv2d"(%182, %15, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %184 = "tosa.transpose"(%183, %22) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %185 = "tosa.sub"(%184, %13) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %186 = "tosa.mul"(%185, %162) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %187 = "tosa.mul"(%186, %13) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %188 = "tosa.add"(%187, %13) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %189 = "tosa.clamp"(%188) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %190 = "tosa.transpose"(%189, %23) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %191 = "tosa.conv2d"(%190, %15, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %192 = "tosa.transpose"(%191, %22) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %193 = "tosa.sub"(%192, %13) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %194 = "tosa.mul"(%193, %162) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global15 = %194 : tensor<1x512x7x7xf32>
    %195 = "tosa.mul"(%194, %13) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %196 = "tosa.add"(%195, %13) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %197 = "tosa.add"(%196, %181) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %198 = "tosa.clamp"(%197) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %199 = "tosa.transpose"(%198, %23) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %200 = "tosa.avg_pool2d"(%199) {acc_type = f32, kernel = array<i64: 7, 7>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>) -> tensor<1x1x1x512xf32>
    %201 = "tosa.reshape"(%200) {new_shape = array<i64: 1, 1, 512>} : (tensor<1x1x1x512xf32>) -> tensor<1x1x512xf32>
    %202 = "tosa.matmul"(%201, %17) : (tensor<1x1x512xf32>, tensor<1x512x1000xf32>) -> tensor<1x1x1000xf32>
    %203 = "tosa.reshape"(%202) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %204 = "tosa.add"(%203, %18) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %204 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x7x7x3xf32>} : () -> tensor<64x7x7x3xf32>
    %1 = "tosa.const"() {value = dense<7.778000e-02> : tensor<64x1x1xf32>} : () -> tensor<64x1x1xf32>
    %2 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x64xf32>} : () -> tensor<128x3x3x64xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %5 = "tosa.const"() {value = dense<7.778000e-02> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x128xf32>} : () -> tensor<256x1x1x128xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %8 = "tosa.const"() {value = dense<7.778000e-02> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x256xf32>} : () -> tensor<512x1x1x256xf32>
    %10 = "tosa.const"() {value = dense<0.000000e+00> : tensor<512xf32>} : () -> tensor<512xf32>
    %11 = "tosa.const"() {value = dense<0.000000e+00> : tensor<256xf32>} : () -> tensor<256xf32>
    %12 = "tosa.const"() {value = dense<0.000000e+00> : tensor<128xf32>} : () -> tensor<128xf32>
    %13 = "tosa.const"() {value = dense<0.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000x512xf32>} : () -> tensor<1x1000x512xf32>
    %15 = "tosa.const"() {value = dense<0.0204081628> : tensor<1x7x7x512xf32>} : () -> tensor<1x7x7x512xf32>
    %16 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %17 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %18 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x512xf32>} : () -> tensor<512x3x3x512xf32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x512xf32>} : () -> tensor<256x1x1x512xf32>
    %21 = "tosa.const"() {value = dense<[3, 1, 2, 0]> : tensor<4xi64>} : () -> tensor<4xi64>
    %22 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %23 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x256xf32>} : () -> tensor<128x1x1x256xf32>
    %24 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x256xf32>} : () -> tensor<128x3x3x256xf32>
    %25 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x128xf32>} : () -> tensor<128x3x3x128xf32>
    %26 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x128xf32>} : () -> tensor<64x1x1x128xf32>
    %27 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x128xf32>} : () -> tensor<64x3x3x128xf32>
    %28 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x64xf32>} : () -> tensor<64x3x3x64xf32>
    %cst = arith.constant -3.40282347E+38 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %29 = "tosa.const"() {value = dense<7.777000e-02> : tensor<3x7x7x64xf32>} : () -> tensor<3x7x7x64xf32>
    %30 = ml_program.global_load @global0 : tensor<1x3x224x224xf32>
    %31 = ml_program.global_load @global1 : tensor<512x3x3x256xf32>
    %32 = ml_program.global_load @global2 : tensor<1x64x1x1xf32>
    %33 = "tosa.transpose"(%30, %18) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %34 = "tosa.conv2d"(%33, %0, %13) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %35 = "tosa.transpose"(%34, %16) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %36 = "tosa.sub"(%35, %32) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %37 = "tosa.rsqrt"(%1) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %38 = "tosa.reshape"(%37) {new_shape = array<i64: 1, 64, 1, 1>} : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %39 = "tosa.mul"(%36, %38) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %40 = "tosa.mul"(%39, %32) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %41 = "tosa.add"(%40, %32) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %42 = "tosa.clamp"(%41) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %43 = "tosa.transpose"(%42, %18) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %44 = ml_program.global_load @global3 : tensor<1x56x56x64xf32>
    %45 = "tosa.transpose"(%44, %16) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %46 = "tosa.conv2d"(%44, %28, %13) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %47 = "tosa.transpose"(%46, %16) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %48 = "tosa.sub"(%47, %32) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %49 = "tosa.mul"(%48, %38) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %50 = "tosa.mul"(%49, %32) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %51 = "tosa.add"(%50, %32) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %52 = "tosa.clamp"(%51) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %53 = ml_program.global_load @global4 : tensor<1x64x56x56xf32>
    %54 = "tosa.mul"(%53, %32) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %55 = "tosa.add"(%54, %32) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %56 = "tosa.add"(%55, %45) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %57 = "tosa.clamp"(%56) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %58 = "tosa.transpose"(%57, %18) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %59 = "tosa.conv2d"(%58, %28, %13) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %60 = "tosa.transpose"(%59, %16) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %61 = "tosa.sub"(%60, %32) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %62 = "tosa.mul"(%61, %38) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %63 = "tosa.mul"(%62, %32) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %64 = "tosa.add"(%63, %32) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %65 = "tosa.clamp"(%64) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %66 = ml_program.global_load @global5 : tensor<1x56x56x64xf32>
    %67 = "tosa.conv2d"(%66, %28, %13) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %68 = "tosa.transpose"(%67, %16) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %69 = "tosa.sub"(%68, %32) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %70 = "tosa.mul"(%69, %38) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %71 = "tosa.mul"(%70, %32) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %72 = "tosa.add"(%71, %32) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %73 = "tosa.add"(%72, %57) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %74 = "tosa.clamp"(%73) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %75 = "tosa.transpose"(%74, %18) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %76 = "tosa.conv2d"(%75, %2, %12) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x56x56x64xf32>, tensor<128x3x3x64xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %77 = "tosa.transpose"(%76, %16) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %78 = "tosa.sub"(%77, %3) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %79 = ml_program.global_load @global6 : tensor<128x1x1xf32>
    %80 = "tosa.reshape"(%79) {new_shape = array<i64: 1, 128, 1, 1>} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %81 = "tosa.mul"(%78, %80) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %82 = "tosa.mul"(%81, %3) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %83 = "tosa.add"(%82, %3) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %84 = "tosa.clamp"(%83) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %85 = "tosa.transpose"(%84, %18) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %86 = "tosa.conv2d"(%85, %25, %12) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %87 = "tosa.transpose"(%86, %16) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %88 = "tosa.sub"(%87, %3) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %89 = "tosa.mul"(%88, %80) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %90 = "tosa.mul"(%89, %3) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %91 = "tosa.add"(%90, %3) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %92 = ml_program.global_load @global7 : tensor<1x28x28x128xf32>
    %93 = "tosa.transpose"(%92, %16) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %94 = "tosa.sub"(%93, %3) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %95 = "tosa.mul"(%94, %80) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %96 = "tosa.mul"(%95, %3) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %97 = "tosa.add"(%96, %3) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %98 = "tosa.add"(%91, %97) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %99 = "tosa.clamp"(%98) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %100 = ml_program.global_load @global8 : tensor<1x128x28x28xf32>
    %101 = "tosa.add"(%100, %3) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %102 = "tosa.clamp"(%101) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %103 = "tosa.transpose"(%102, %18) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %104 = "tosa.conv2d"(%103, %25, %12) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %105 = "tosa.transpose"(%104, %16) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %106 = "tosa.sub"(%105, %3) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %107 = "tosa.mul"(%106, %80) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %108 = "tosa.mul"(%107, %3) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %109 = "tosa.add"(%108, %3) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %110 = "tosa.add"(%109, %99) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %111 = "tosa.clamp"(%110) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %112 = "tosa.transpose"(%111, %18) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %113 = ml_program.global_load @global9 : tensor<1x14x14x256xf32>
    %114 = "tosa.transpose"(%113, %16) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %115 = "tosa.sub"(%114, %4) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %116 = "tosa.rsqrt"(%5) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %117 = "tosa.reshape"(%116) {new_shape = array<i64: 1, 256, 1, 1>} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %118 = "tosa.mul"(%115, %117) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %119 = "tosa.mul"(%118, %4) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %120 = "tosa.add"(%119, %4) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %121 = "tosa.clamp"(%120) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %122 = ml_program.global_load @global10 : tensor<1x256x14x14xf32>
    %123 = "tosa.mul"(%122, %4) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %124 = "tosa.add"(%123, %4) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %125 = "tosa.conv2d"(%112, %6, %11) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %126 = "tosa.transpose"(%125, %16) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %127 = "tosa.sub"(%126, %4) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %128 = "tosa.mul"(%127, %117) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %129 = "tosa.mul"(%128, %4) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %130 = "tosa.add"(%129, %4) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %131 = "tosa.add"(%124, %130) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %132 = "tosa.clamp"(%131) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %133 = ml_program.global_load @global11 : tensor<1x256x14x14xf32>
    %134 = "tosa.sub"(%133, %4) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %135 = "tosa.mul"(%134, %117) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %136 = "tosa.mul"(%135, %4) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %137 = "tosa.add"(%136, %4) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %138 = "tosa.clamp"(%137) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %139 = ml_program.global_load @global12 : tensor<1x256x14x14xf32>
    %140 = "tosa.clamp"(%139) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %141 = "tosa.transpose"(%140, %18) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %142 = "tosa.conv2d"(%141, %31, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<512x3x3x256xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %143 = "tosa.transpose"(%142, %16) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %144 = "tosa.sub"(%143, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %145 = "tosa.rsqrt"(%8) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %146 = "tosa.reshape"(%145) {new_shape = array<i64: 1, 512, 1, 1>} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %147 = "tosa.mul"(%144, %146) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %148 = "tosa.mul"(%147, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %149 = "tosa.add"(%148, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %150 = "tosa.clamp"(%149) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %151 = ml_program.global_load @global13 : tensor<1x7x7x512xf32>
    %152 = "tosa.transpose"(%151, %16) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %153 = "tosa.sub"(%152, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %154 = "tosa.mul"(%153, %146) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %155 = "tosa.mul"(%154, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %156 = "tosa.add"(%155, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %157 = "tosa.conv2d"(%141, %9, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %158 = "tosa.transpose"(%157, %16) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %159 = "tosa.sub"(%158, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %160 = "tosa.mul"(%159, %146) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %161 = "tosa.mul"(%160, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %162 = "tosa.add"(%161, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %163 = "tosa.add"(%156, %162) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %164 = ml_program.global_load @global14 : tensor<1x512x7x7xf32>
    %165 = "tosa.transpose"(%164, %18) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %166 = "tosa.conv2d"(%165, %19, %10) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %167 = "tosa.transpose"(%166, %16) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %168 = "tosa.sub"(%167, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %169 = "tosa.mul"(%168, %146) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %170 = "tosa.mul"(%169, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %171 = "tosa.add"(%170, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %172 = "tosa.clamp"(%171) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %173 = ml_program.global_load @global15 : tensor<1x512x7x7xf32>
    %174 = "tosa.mul"(%173, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %175 = "tosa.add"(%174, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %176 = "tosa.add"(%175, %164) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %177 = "tosa.clamp"(%176) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %178 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %179 = "tosa.matmul"(%178, %14) : (tensor<1x1x1000xf32>, tensor<1x1000x512xf32>) -> tensor<1x1x512xf32>
    %180 = "tosa.reshape"(%179) {new_shape = array<i64: 1, 1, 1, 512>} : (tensor<1x1x512xf32>) -> tensor<1x1x1x512xf32>
    %181 = "tosa.mul"(%180, %15) {shift = 0 : i32} : (tensor<1x1x1x512xf32>, tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %182 = "tosa.transpose"(%181, %16) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %183 = "tosa.equal"(%176, %177) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %184 = "tosa.select"(%183, %182, %17) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %185 = "tosa.mul"(%184, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %186 = "tosa.mul"(%146, %185) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %187 = "tosa.transpose"(%186, %18) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %188 = tensor.empty() : tensor<512xf32>
    %189 = "tosa.transpose_conv2d"(%187, %19, %188) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %190 = "tosa.transpose"(%189, %16) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %191 = "tosa.equal"(%171, %172) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %192 = "tosa.select"(%191, %190, %17) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %193 = "tosa.mul"(%192, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %194 = "tosa.mul"(%146, %193) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %195 = "tosa.transpose"(%194, %18) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %196 = "tosa.transpose_conv2d"(%195, %19, %188) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %197 = "tosa.transpose"(%196, %16) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %198 = "tosa.add"(%184, %197) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %199 = "tosa.equal"(%163, %164) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %200 = "tosa.select"(%199, %198, %17) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %201 = "tosa.mul"(%200, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %202 = "tosa.mul"(%146, %201) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %203 = "tosa.transpose"(%202, %18) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %204 = tensor.empty() : tensor<256xf32>
    %205 = "tosa.transpose_conv2d"(%203, %20, %204) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 2, 2>} : (tensor<1x7x7x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %206 = "tosa.transpose_conv2d"(%203, %19, %188) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %207 = "tosa.transpose"(%206, %16) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %208 = "tosa.equal"(%149, %150) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %209 = "tosa.select"(%208, %207, %17) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %210 = "tosa.mul"(%209, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %211 = "tosa.mul"(%146, %210) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %212 = "tosa.transpose"(%211, %18) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %213 = "tosa.transpose"(%31, %21) : (tensor<512x3x3x256xf32>, tensor<4xi64>) -> tensor<256x3x3x512xf32>
    %214 = "tosa.transpose_conv2d"(%212, %213, %204) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 2, 2>} : (tensor<1x7x7x512xf32>, tensor<256x3x3x512xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %215 = "tosa.add"(%205, %214) : (tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %216 = "tosa.transpose"(%215, %16) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %217 = "tosa.equal"(%139, %140) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %218 = "tosa.select"(%217, %216, %17) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %219 = "tosa.mul"(%218, %4) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %220 = "tosa.mul"(%117, %219) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %221 = "tosa.transpose"(%220, %18) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %222 = "tosa.transpose_conv2d"(%221, %22, %204) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %223 = "tosa.transpose"(%222, %16) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %224 = "tosa.equal"(%137, %138) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %225 = "tosa.select"(%224, %223, %17) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %226 = "tosa.mul"(%225, %4) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %227 = "tosa.mul"(%117, %226) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %228 = "tosa.transpose"(%227, %18) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %229 = "tosa.transpose_conv2d"(%228, %22, %204) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %230 = "tosa.transpose"(%229, %16) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %231 = "tosa.add"(%218, %230) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %232 = "tosa.equal"(%131, %132) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %233 = "tosa.select"(%232, %231, %17) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %234 = "tosa.mul"(%233, %4) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %235 = "tosa.mul"(%117, %234) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %236 = "tosa.transpose"(%235, %18) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %237 = tensor.empty() : tensor<128xf32>
    %238 = "tosa.transpose_conv2d"(%236, %23, %237) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %239 = "tosa.transpose_conv2d"(%236, %22, %204) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %240 = "tosa.transpose"(%239, %16) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %241 = "tosa.equal"(%120, %121) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %242 = "tosa.select"(%241, %240, %17) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %243 = "tosa.mul"(%242, %4) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %244 = "tosa.mul"(%117, %243) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %245 = "tosa.transpose"(%244, %18) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %246 = "tosa.transpose_conv2d"(%245, %24, %237) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<128x3x3x256xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %247 = "tosa.add"(%238, %246) : (tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %248 = "tosa.transpose"(%247, %16) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %249 = "tosa.equal"(%110, %111) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %250 = "tosa.select"(%249, %248, %17) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %251 = "tosa.mul"(%250, %3) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %252 = "tosa.mul"(%80, %251) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %253 = "tosa.transpose"(%252, %18) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %254 = "tosa.transpose_conv2d"(%253, %25, %237) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %255 = "tosa.transpose"(%254, %16) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %256 = "tosa.equal"(%101, %102) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %257 = "tosa.select"(%256, %255, %17) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %258 = "tosa.mul"(%257, %3) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %259 = "tosa.mul"(%80, %258) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %260 = "tosa.transpose"(%259, %18) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %261 = "tosa.transpose_conv2d"(%260, %25, %237) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %262 = "tosa.transpose"(%261, %16) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %263 = "tosa.add"(%250, %262) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %264 = "tosa.equal"(%98, %99) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %265 = "tosa.select"(%264, %263, %17) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %266 = "tosa.mul"(%265, %3) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %267 = "tosa.mul"(%80, %266) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %268 = "tosa.transpose"(%267, %18) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %269 = tensor.empty() : tensor<64xf32>
    %270 = "tosa.transpose_conv2d"(%268, %26, %269) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<64x1x1x128xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %271 = "tosa.transpose_conv2d"(%268, %25, %237) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %272 = "tosa.transpose"(%271, %16) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %273 = "tosa.equal"(%83, %84) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %274 = "tosa.select"(%273, %272, %17) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %275 = "tosa.mul"(%274, %3) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %276 = "tosa.mul"(%80, %275) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %277 = "tosa.transpose"(%276, %18) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %278 = "tosa.transpose_conv2d"(%277, %27, %269) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<64x3x3x128xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %279 = "tosa.add"(%270, %278) : (tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %280 = "tosa.transpose"(%279, %16) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %281 = "tosa.equal"(%73, %74) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %282 = "tosa.select"(%281, %280, %17) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %283 = "tosa.mul"(%32, %282) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %284 = "tosa.mul"(%38, %283) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %285 = "tosa.transpose"(%284, %18) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %286 = "tosa.transpose_conv2d"(%285, %28, %269) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %287 = "tosa.transpose"(%286, %16) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %288 = "tosa.equal"(%64, %65) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %289 = "tosa.select"(%288, %287, %17) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %290 = "tosa.mul"(%32, %289) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %291 = "tosa.mul"(%38, %290) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %292 = "tosa.transpose"(%291, %18) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %293 = "tosa.transpose_conv2d"(%292, %28, %269) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %294 = "tosa.transpose"(%293, %16) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %295 = "tosa.add"(%282, %294) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %296 = "tosa.equal"(%56, %57) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %297 = "tosa.select"(%296, %295, %17) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %298 = "tosa.mul"(%32, %297) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %299 = "tosa.mul"(%38, %298) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %300 = "tosa.transpose"(%299, %18) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %301 = "tosa.transpose_conv2d"(%300, %28, %269) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %302 = "tosa.transpose"(%301, %16) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %303 = "tosa.equal"(%51, %52) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %304 = "tosa.select"(%303, %302, %17) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %305 = "tosa.mul"(%32, %304) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %306 = "tosa.mul"(%38, %305) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %307 = "tosa.transpose"(%306, %18) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %308 = "tosa.transpose_conv2d"(%307, %28, %269) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %309 = "tosa.transpose"(%297, %18) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %310 = "tosa.add"(%308, %309) : (tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %padded = tensor.pad %43 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %311 = tensor.empty() : tensor<1x113x113x64xf32>
    %312 = tensor.empty() : tensor<3x3xf32>
    %313 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded, %312, %44, %310 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%311 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_1: f32, %in_2: f32, %in_3: f32, %out: f32):
      %323 = arith.cmpf oge, %in, %in_2 : f32
      %324 = arith.select %323, %in_3, %cst_0 : f32
      %325 = arith.addf %out, %324 : f32
      linalg.yield %325 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice = tensor.extract_slice %313[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %314 = "tosa.transpose"(%extracted_slice, %16) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %315 = "tosa.equal"(%41, %42) : (tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xi1>
    %316 = "tosa.select"(%315, %314, %17) : (tensor<1x64x112x112xi1>, tensor<1x64x112x112xf32>, tensor<f32>) -> tensor<1x64x112x112xf32>
    %317 = "tosa.mul"(%32, %316) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %318 = "tosa.mul"(%38, %317) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %319 = "tosa.transpose"(%318, %18) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %320 = tensor.empty() : tensor<3xf32>
    %321 = "tosa.transpose_conv2d"(%319, %29, %320) {out_pad = array<i64: -3, -3, -3, -3>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>, tensor<3x7x7x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %322 = "tosa.transpose"(%321, %16) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %322 : tensor<1x3x224x224xf32>
  }
}

