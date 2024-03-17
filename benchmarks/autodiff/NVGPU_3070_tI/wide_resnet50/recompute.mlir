#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "ResNet"} {
  ml_program.global private mutable @global0 : tensor<1x3x224x224xf32>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x7x7x3xf32>} : () -> tensor<64x7x7x3xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %2 = "tosa.const"() {value = dense<7.778000e-02> : tensor<64x1x1xf32>} : () -> tensor<64x1x1xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x64xf32>} : () -> tensor<128x1x1x64xf32>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %5 = "tosa.const"() {value = dense<7.778000e-02> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x128xf32>} : () -> tensor<128x3x3x128xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x128xf32>} : () -> tensor<256x1x1x128xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %9 = "tosa.const"() {value = dense<7.778000e-02> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x64xf32>} : () -> tensor<256x1x1x64xf32>
    %11 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x256xf32>} : () -> tensor<128x1x1x256xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x256xf32>} : () -> tensor<256x1x1x256xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x256xf32>} : () -> tensor<512x1x1x256xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %16 = "tosa.const"() {value = dense<7.778000e-02> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x512xf32>} : () -> tensor<256x1x1x512xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x512xf32>} : () -> tensor<512x1x1x512xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x512xf32>} : () -> tensor<512x3x3x512xf32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x512xf32>} : () -> tensor<1024x1x1x512xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1024x1x1xf32>} : () -> tensor<1x1024x1x1xf32>
    %22 = "tosa.const"() {value = dense<7.778000e-02> : tensor<1024x1x1xf32>} : () -> tensor<1024x1x1xf32>
    %23 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x1024xf32>} : () -> tensor<512x1x1x1024xf32>
    %24 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x1024xf32>} : () -> tensor<1024x1x1x1024xf32>
    %25 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x3x3x1024xf32>} : () -> tensor<1024x3x3x1024xf32>
    %26 = "tosa.const"() {value = dense<7.777000e-02> : tensor<2048x1x1x1024xf32>} : () -> tensor<2048x1x1x1024xf32>
    %27 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x2048x1x1xf32>} : () -> tensor<1x2048x1x1xf32>
    %28 = "tosa.const"() {value = dense<7.778000e-02> : tensor<2048x1x1xf32>} : () -> tensor<2048x1x1xf32>
    %29 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x2048xf32>} : () -> tensor<1024x1x1x2048xf32>
    %30 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x2048x1000xf32>} : () -> tensor<1x2048x1000xf32>
    %31 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000xf32>} : () -> tensor<1x1000xf32>
    %32 = "tosa.const"() {value = dense<0.000000e+00> : tensor<2048xf32>} : () -> tensor<2048xf32>
    %33 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %34 = "tosa.const"() {value = dense<0.000000e+00> : tensor<512xf32>} : () -> tensor<512xf32>
    %35 = "tosa.const"() {value = dense<0.000000e+00> : tensor<256xf32>} : () -> tensor<256xf32>
    %36 = "tosa.const"() {value = dense<0.000000e+00> : tensor<128xf32>} : () -> tensor<128xf32>
    %37 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %38 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %39 = "tosa.const"() {value = dense<0.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    ml_program.global_store @global0 = %arg0 : tensor<1x3x224x224xf32>
    %40 = "tosa.transpose"(%arg0, %38) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %41 = "tosa.conv2d"(%40, %0, %39) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %42 = "tosa.transpose"(%41, %37) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %43 = "tosa.sub"(%42, %1) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %44 = "tosa.rsqrt"(%2) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %45 = "tosa.reshape"(%44) {new_shape = array<i64: 1, 64, 1, 1>} : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %46 = "tosa.mul"(%43, %45) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %47 = "tosa.mul"(%46, %1) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %48 = "tosa.add"(%47, %1) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %49 = "tosa.clamp"(%48) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %50 = "tosa.transpose"(%49, %38) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %51 = "tosa.max_pool2d"(%50) {kernel = array<i64: 3, 3>, pad = array<i64: 1, 0, 1, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    %52 = "tosa.conv2d"(%51, %3, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<128x1x1x64xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %53 = "tosa.transpose"(%52, %37) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %54 = "tosa.sub"(%53, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %55 = "tosa.rsqrt"(%5) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %56 = "tosa.reshape"(%55) {new_shape = array<i64: 1, 128, 1, 1>} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %57 = "tosa.mul"(%54, %56) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %58 = "tosa.mul"(%57, %4) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %59 = "tosa.add"(%58, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %60 = "tosa.clamp"(%59) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %61 = "tosa.transpose"(%60, %38) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %62 = "tosa.conv2d"(%61, %6, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %63 = "tosa.transpose"(%62, %37) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %64 = "tosa.sub"(%63, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %65 = "tosa.mul"(%64, %56) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %66 = "tosa.mul"(%65, %4) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %67 = "tosa.add"(%66, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %68 = "tosa.clamp"(%67) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %69 = "tosa.transpose"(%68, %38) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %70 = "tosa.conv2d"(%69, %7, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %71 = "tosa.transpose"(%70, %37) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %72 = "tosa.sub"(%71, %8) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %73 = "tosa.rsqrt"(%9) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %74 = "tosa.reshape"(%73) {new_shape = array<i64: 1, 256, 1, 1>} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %75 = "tosa.mul"(%72, %74) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %76 = "tosa.mul"(%75, %8) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %77 = "tosa.add"(%76, %8) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %78 = "tosa.conv2d"(%51, %10, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %79 = "tosa.transpose"(%78, %37) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %80 = "tosa.sub"(%79, %8) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %81 = "tosa.mul"(%80, %74) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %82 = "tosa.mul"(%81, %8) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %83 = "tosa.add"(%82, %8) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %84 = "tosa.add"(%77, %83) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %85 = "tosa.clamp"(%84) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %86 = "tosa.transpose"(%85, %38) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %87 = "tosa.conv2d"(%86, %11, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %88 = "tosa.transpose"(%87, %37) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %89 = "tosa.sub"(%88, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %90 = "tosa.mul"(%89, %56) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %91 = "tosa.mul"(%90, %4) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %92 = "tosa.add"(%91, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %93 = "tosa.clamp"(%92) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %94 = "tosa.transpose"(%93, %38) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %95 = "tosa.conv2d"(%94, %6, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %96 = "tosa.transpose"(%95, %37) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %97 = "tosa.sub"(%96, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %98 = "tosa.mul"(%97, %56) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %99 = "tosa.mul"(%98, %4) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %100 = "tosa.add"(%99, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %101 = "tosa.clamp"(%100) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %102 = "tosa.transpose"(%101, %38) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %103 = "tosa.conv2d"(%102, %7, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %104 = "tosa.transpose"(%103, %37) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %105 = "tosa.sub"(%104, %8) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %106 = "tosa.mul"(%105, %74) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %107 = "tosa.mul"(%106, %8) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %108 = "tosa.add"(%107, %8) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %109 = "tosa.add"(%108, %85) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %110 = "tosa.clamp"(%109) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %111 = "tosa.transpose"(%110, %38) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %112 = "tosa.conv2d"(%111, %11, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %113 = "tosa.transpose"(%112, %37) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %114 = "tosa.sub"(%113, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %115 = "tosa.mul"(%114, %56) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %116 = "tosa.mul"(%115, %4) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %117 = "tosa.add"(%116, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %118 = "tosa.clamp"(%117) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %119 = "tosa.transpose"(%118, %38) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %120 = "tosa.conv2d"(%119, %6, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %121 = "tosa.transpose"(%120, %37) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %122 = "tosa.sub"(%121, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %123 = "tosa.mul"(%122, %56) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %124 = "tosa.mul"(%123, %4) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %125 = "tosa.add"(%124, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %126 = "tosa.clamp"(%125) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %127 = "tosa.transpose"(%126, %38) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %128 = "tosa.conv2d"(%127, %7, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %129 = "tosa.transpose"(%128, %37) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %130 = "tosa.sub"(%129, %8) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %131 = "tosa.mul"(%130, %74) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %132 = "tosa.mul"(%131, %8) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %133 = "tosa.add"(%132, %8) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %134 = "tosa.add"(%133, %110) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %135 = "tosa.clamp"(%134) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %136 = "tosa.transpose"(%135, %38) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %137 = "tosa.conv2d"(%136, %12, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x1x1x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %138 = "tosa.transpose"(%137, %37) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %139 = "tosa.sub"(%138, %8) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %140 = "tosa.mul"(%139, %74) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %141 = "tosa.mul"(%140, %8) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %142 = "tosa.add"(%141, %8) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %143 = "tosa.clamp"(%142) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %144 = "tosa.transpose"(%143, %38) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %145 = "tosa.conv2d"(%144, %13, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %146 = "tosa.transpose"(%145, %37) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %147 = "tosa.sub"(%146, %8) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %148 = "tosa.mul"(%147, %74) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %149 = "tosa.mul"(%148, %8) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %150 = "tosa.add"(%149, %8) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %151 = "tosa.clamp"(%150) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %152 = "tosa.transpose"(%151, %38) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %153 = "tosa.conv2d"(%152, %14, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %154 = "tosa.transpose"(%153, %37) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %155 = "tosa.sub"(%154, %15) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %156 = "tosa.rsqrt"(%16) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %157 = "tosa.reshape"(%156) {new_shape = array<i64: 1, 512, 1, 1>} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %158 = "tosa.mul"(%155, %157) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %159 = "tosa.mul"(%158, %15) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %160 = "tosa.add"(%159, %15) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %161 = "tosa.conv2d"(%136, %14, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %162 = "tosa.transpose"(%161, %37) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %163 = "tosa.sub"(%162, %15) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %164 = "tosa.mul"(%163, %157) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %165 = "tosa.mul"(%164, %15) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %166 = "tosa.add"(%165, %15) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %167 = "tosa.add"(%160, %166) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %168 = "tosa.clamp"(%167) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %169 = "tosa.transpose"(%168, %38) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %170 = "tosa.conv2d"(%169, %17, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %171 = "tosa.transpose"(%170, %37) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %172 = "tosa.sub"(%171, %8) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %173 = "tosa.mul"(%172, %74) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %174 = "tosa.mul"(%173, %8) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %175 = "tosa.add"(%174, %8) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %176 = "tosa.clamp"(%175) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %177 = "tosa.transpose"(%176, %38) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %178 = "tosa.conv2d"(%177, %13, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %179 = "tosa.transpose"(%178, %37) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %180 = "tosa.sub"(%179, %8) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %181 = "tosa.mul"(%180, %74) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %182 = "tosa.mul"(%181, %8) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %183 = "tosa.add"(%182, %8) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %184 = "tosa.clamp"(%183) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %185 = "tosa.transpose"(%184, %38) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %186 = "tosa.conv2d"(%185, %14, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %187 = "tosa.transpose"(%186, %37) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %188 = "tosa.sub"(%187, %15) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %189 = "tosa.mul"(%188, %157) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %190 = "tosa.mul"(%189, %15) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %191 = "tosa.add"(%190, %15) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %192 = "tosa.add"(%191, %168) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %193 = "tosa.clamp"(%192) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %194 = "tosa.transpose"(%193, %38) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %195 = "tosa.conv2d"(%194, %17, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %196 = "tosa.transpose"(%195, %37) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %197 = "tosa.sub"(%196, %8) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %198 = "tosa.mul"(%197, %74) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %199 = "tosa.mul"(%198, %8) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %200 = "tosa.add"(%199, %8) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %201 = "tosa.clamp"(%200) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %202 = "tosa.transpose"(%201, %38) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %203 = "tosa.conv2d"(%202, %13, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %204 = "tosa.transpose"(%203, %37) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %205 = "tosa.sub"(%204, %8) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %206 = "tosa.mul"(%205, %74) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %207 = "tosa.mul"(%206, %8) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %208 = "tosa.add"(%207, %8) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %209 = "tosa.clamp"(%208) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %210 = "tosa.transpose"(%209, %38) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %211 = "tosa.conv2d"(%210, %14, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %212 = "tosa.transpose"(%211, %37) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %213 = "tosa.sub"(%212, %15) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %214 = "tosa.mul"(%213, %157) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %215 = "tosa.mul"(%214, %15) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %216 = "tosa.add"(%215, %15) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %217 = "tosa.add"(%216, %193) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %218 = "tosa.clamp"(%217) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %219 = "tosa.transpose"(%218, %38) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %220 = "tosa.conv2d"(%219, %17, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %221 = "tosa.transpose"(%220, %37) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %222 = "tosa.sub"(%221, %8) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %223 = "tosa.mul"(%222, %74) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %224 = "tosa.mul"(%223, %8) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %225 = "tosa.add"(%224, %8) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %226 = "tosa.clamp"(%225) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %227 = "tosa.transpose"(%226, %38) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %228 = "tosa.conv2d"(%227, %13, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %229 = "tosa.transpose"(%228, %37) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %230 = "tosa.sub"(%229, %8) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %231 = "tosa.mul"(%230, %74) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %232 = "tosa.mul"(%231, %8) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %233 = "tosa.add"(%232, %8) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %234 = "tosa.clamp"(%233) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %235 = "tosa.transpose"(%234, %38) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %236 = "tosa.conv2d"(%235, %14, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %237 = "tosa.transpose"(%236, %37) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %238 = "tosa.sub"(%237, %15) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %239 = "tosa.mul"(%238, %157) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %240 = "tosa.mul"(%239, %15) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %241 = "tosa.add"(%240, %15) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %242 = "tosa.add"(%241, %218) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %243 = "tosa.clamp"(%242) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %244 = "tosa.transpose"(%243, %38) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %245 = "tosa.conv2d"(%244, %18, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x1x1x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %246 = "tosa.transpose"(%245, %37) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %247 = "tosa.sub"(%246, %15) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %248 = "tosa.mul"(%247, %157) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %249 = "tosa.mul"(%248, %15) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %250 = "tosa.add"(%249, %15) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %251 = "tosa.clamp"(%250) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %252 = "tosa.transpose"(%251, %38) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %253 = "tosa.conv2d"(%252, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %254 = "tosa.transpose"(%253, %37) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %255 = "tosa.sub"(%254, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %256 = "tosa.mul"(%255, %157) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %257 = "tosa.mul"(%256, %15) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %258 = "tosa.add"(%257, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %259 = "tosa.clamp"(%258) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %260 = "tosa.transpose"(%259, %38) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %261 = "tosa.conv2d"(%260, %20, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %262 = "tosa.transpose"(%261, %37) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %263 = "tosa.sub"(%262, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %264 = "tosa.rsqrt"(%22) : (tensor<1024x1x1xf32>) -> tensor<1024x1x1xf32>
    %265 = "tosa.reshape"(%264) {new_shape = array<i64: 1, 1024, 1, 1>} : (tensor<1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %266 = "tosa.mul"(%263, %265) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %267 = "tosa.mul"(%266, %21) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %268 = "tosa.add"(%267, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %269 = "tosa.conv2d"(%244, %20, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %270 = "tosa.transpose"(%269, %37) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %271 = "tosa.sub"(%270, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %272 = "tosa.mul"(%271, %265) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %273 = "tosa.mul"(%272, %21) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %274 = "tosa.add"(%273, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %275 = "tosa.add"(%268, %274) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %276 = "tosa.clamp"(%275) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %277 = "tosa.transpose"(%276, %38) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %278 = "tosa.conv2d"(%277, %23, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %279 = "tosa.transpose"(%278, %37) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %280 = "tosa.sub"(%279, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %281 = "tosa.mul"(%280, %157) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %282 = "tosa.mul"(%281, %15) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %283 = "tosa.add"(%282, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %284 = "tosa.clamp"(%283) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %285 = "tosa.transpose"(%284, %38) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %286 = "tosa.conv2d"(%285, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %287 = "tosa.transpose"(%286, %37) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %288 = "tosa.sub"(%287, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %289 = "tosa.mul"(%288, %157) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %290 = "tosa.mul"(%289, %15) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %291 = "tosa.add"(%290, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %292 = "tosa.clamp"(%291) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %293 = "tosa.transpose"(%292, %38) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %294 = "tosa.conv2d"(%293, %20, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %295 = "tosa.transpose"(%294, %37) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %296 = "tosa.sub"(%295, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %297 = "tosa.mul"(%296, %265) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %298 = "tosa.mul"(%297, %21) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %299 = "tosa.add"(%298, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %300 = "tosa.add"(%299, %276) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %301 = "tosa.clamp"(%300) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %302 = "tosa.transpose"(%301, %38) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %303 = "tosa.conv2d"(%302, %23, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %304 = "tosa.transpose"(%303, %37) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %305 = "tosa.sub"(%304, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %306 = "tosa.mul"(%305, %157) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %307 = "tosa.mul"(%306, %15) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %308 = "tosa.add"(%307, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %309 = "tosa.clamp"(%308) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %310 = "tosa.transpose"(%309, %38) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %311 = "tosa.conv2d"(%310, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %312 = "tosa.transpose"(%311, %37) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %313 = "tosa.sub"(%312, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %314 = "tosa.mul"(%313, %157) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %315 = "tosa.mul"(%314, %15) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %316 = "tosa.add"(%315, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %317 = "tosa.clamp"(%316) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %318 = "tosa.transpose"(%317, %38) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %319 = "tosa.conv2d"(%318, %20, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %320 = "tosa.transpose"(%319, %37) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %321 = "tosa.sub"(%320, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %322 = "tosa.mul"(%321, %265) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %323 = "tosa.mul"(%322, %21) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %324 = "tosa.add"(%323, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %325 = "tosa.add"(%324, %301) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %326 = "tosa.clamp"(%325) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %327 = "tosa.transpose"(%326, %38) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %328 = "tosa.conv2d"(%327, %23, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %329 = "tosa.transpose"(%328, %37) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %330 = "tosa.sub"(%329, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %331 = "tosa.mul"(%330, %157) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %332 = "tosa.mul"(%331, %15) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %333 = "tosa.add"(%332, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %334 = "tosa.clamp"(%333) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %335 = "tosa.transpose"(%334, %38) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %336 = "tosa.conv2d"(%335, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %337 = "tosa.transpose"(%336, %37) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %338 = "tosa.sub"(%337, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %339 = "tosa.mul"(%338, %157) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %340 = "tosa.mul"(%339, %15) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %341 = "tosa.add"(%340, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %342 = "tosa.clamp"(%341) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %343 = "tosa.transpose"(%342, %38) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %344 = "tosa.conv2d"(%343, %20, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %345 = "tosa.transpose"(%344, %37) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %346 = "tosa.sub"(%345, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %347 = "tosa.mul"(%346, %265) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %348 = "tosa.mul"(%347, %21) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %349 = "tosa.add"(%348, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %350 = "tosa.add"(%349, %326) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %351 = "tosa.clamp"(%350) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %352 = "tosa.transpose"(%351, %38) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %353 = "tosa.conv2d"(%352, %23, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %354 = "tosa.transpose"(%353, %37) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %355 = "tosa.sub"(%354, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %356 = "tosa.mul"(%355, %157) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %357 = "tosa.mul"(%356, %15) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %358 = "tosa.add"(%357, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %359 = "tosa.clamp"(%358) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %360 = "tosa.transpose"(%359, %38) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %361 = "tosa.conv2d"(%360, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %362 = "tosa.transpose"(%361, %37) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %363 = "tosa.sub"(%362, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %364 = "tosa.mul"(%363, %157) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %365 = "tosa.mul"(%364, %15) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %366 = "tosa.add"(%365, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %367 = "tosa.clamp"(%366) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %368 = "tosa.transpose"(%367, %38) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %369 = "tosa.conv2d"(%368, %20, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %370 = "tosa.transpose"(%369, %37) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %371 = "tosa.sub"(%370, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %372 = "tosa.mul"(%371, %265) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %373 = "tosa.mul"(%372, %21) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %374 = "tosa.add"(%373, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %375 = "tosa.add"(%374, %351) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %376 = "tosa.clamp"(%375) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %377 = "tosa.transpose"(%376, %38) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %378 = "tosa.conv2d"(%377, %23, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %379 = "tosa.transpose"(%378, %37) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %380 = "tosa.sub"(%379, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %381 = "tosa.mul"(%380, %157) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %382 = "tosa.mul"(%381, %15) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %383 = "tosa.add"(%382, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %384 = "tosa.clamp"(%383) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %385 = "tosa.transpose"(%384, %38) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %386 = "tosa.conv2d"(%385, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %387 = "tosa.transpose"(%386, %37) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %388 = "tosa.sub"(%387, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %389 = "tosa.mul"(%388, %157) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %390 = "tosa.mul"(%389, %15) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %391 = "tosa.add"(%390, %15) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %392 = "tosa.clamp"(%391) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %393 = "tosa.transpose"(%392, %38) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %394 = "tosa.conv2d"(%393, %20, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %395 = "tosa.transpose"(%394, %37) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %396 = "tosa.sub"(%395, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %397 = "tosa.mul"(%396, %265) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %398 = "tosa.mul"(%397, %21) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %399 = "tosa.add"(%398, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %400 = "tosa.add"(%399, %376) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %401 = "tosa.clamp"(%400) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %402 = "tosa.transpose"(%401, %38) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %403 = "tosa.conv2d"(%402, %24, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<1024x1x1x1024xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %404 = "tosa.transpose"(%403, %37) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %405 = "tosa.sub"(%404, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %406 = "tosa.mul"(%405, %265) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %407 = "tosa.mul"(%406, %21) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %408 = "tosa.add"(%407, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %409 = "tosa.clamp"(%408) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %410 = "tosa.transpose"(%409, %38) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %411 = "tosa.conv2d"(%410, %25, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %412 = "tosa.transpose"(%411, %37) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %413 = "tosa.sub"(%412, %21) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %414 = "tosa.mul"(%413, %265) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %415 = "tosa.mul"(%414, %21) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %416 = "tosa.add"(%415, %21) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %417 = "tosa.clamp"(%416) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %418 = "tosa.transpose"(%417, %38) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %419 = "tosa.conv2d"(%418, %26, %32) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %420 = "tosa.transpose"(%419, %37) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %421 = "tosa.sub"(%420, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %422 = "tosa.rsqrt"(%28) : (tensor<2048x1x1xf32>) -> tensor<2048x1x1xf32>
    %423 = "tosa.reshape"(%422) {new_shape = array<i64: 1, 2048, 1, 1>} : (tensor<2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %424 = "tosa.mul"(%421, %423) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %425 = "tosa.mul"(%424, %27) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %426 = "tosa.add"(%425, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %427 = "tosa.conv2d"(%402, %26, %32) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %428 = "tosa.transpose"(%427, %37) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %429 = "tosa.sub"(%428, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %430 = "tosa.mul"(%429, %423) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %431 = "tosa.mul"(%430, %27) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %432 = "tosa.add"(%431, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %433 = "tosa.add"(%426, %432) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %434 = "tosa.clamp"(%433) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %435 = "tosa.transpose"(%434, %38) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %436 = "tosa.conv2d"(%435, %29, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %437 = "tosa.transpose"(%436, %37) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %438 = "tosa.sub"(%437, %21) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %439 = "tosa.mul"(%438, %265) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %440 = "tosa.mul"(%439, %21) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %441 = "tosa.add"(%440, %21) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %442 = "tosa.clamp"(%441) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %443 = "tosa.transpose"(%442, %38) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %444 = "tosa.conv2d"(%443, %25, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %445 = "tosa.transpose"(%444, %37) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %446 = "tosa.sub"(%445, %21) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %447 = "tosa.mul"(%446, %265) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %448 = "tosa.mul"(%447, %21) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %449 = "tosa.add"(%448, %21) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %450 = "tosa.clamp"(%449) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %451 = "tosa.transpose"(%450, %38) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %452 = "tosa.conv2d"(%451, %26, %32) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %453 = "tosa.transpose"(%452, %37) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %454 = "tosa.sub"(%453, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %455 = "tosa.mul"(%454, %423) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %456 = "tosa.mul"(%455, %27) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %457 = "tosa.add"(%456, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %458 = "tosa.add"(%457, %434) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %459 = "tosa.clamp"(%458) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %460 = "tosa.transpose"(%459, %38) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %461 = "tosa.conv2d"(%460, %29, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %462 = "tosa.transpose"(%461, %37) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %463 = "tosa.sub"(%462, %21) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %464 = "tosa.mul"(%463, %265) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %465 = "tosa.mul"(%464, %21) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %466 = "tosa.add"(%465, %21) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %467 = "tosa.clamp"(%466) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %468 = "tosa.transpose"(%467, %38) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %469 = "tosa.conv2d"(%468, %25, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %470 = "tosa.transpose"(%469, %37) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %471 = "tosa.sub"(%470, %21) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %472 = "tosa.mul"(%471, %265) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %473 = "tosa.mul"(%472, %21) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %474 = "tosa.add"(%473, %21) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %475 = "tosa.clamp"(%474) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %476 = "tosa.transpose"(%475, %38) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %477 = "tosa.conv2d"(%476, %26, %32) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %478 = "tosa.transpose"(%477, %37) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %479 = "tosa.sub"(%478, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %480 = "tosa.mul"(%479, %423) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %481 = "tosa.mul"(%480, %27) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %482 = "tosa.add"(%481, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %483 = "tosa.add"(%482, %459) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %484 = "tosa.clamp"(%483) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %485 = "tosa.transpose"(%484, %38) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %486 = "tosa.avg_pool2d"(%485) {acc_type = f32, kernel = array<i64: 7, 7>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>) -> tensor<1x1x1x2048xf32>
    %487 = "tosa.reshape"(%486) {new_shape = array<i64: 1, 1, 2048>} : (tensor<1x1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %488 = "tosa.matmul"(%487, %30) : (tensor<1x1x2048xf32>, tensor<1x2048x1000xf32>) -> tensor<1x1x1000xf32>
    %489 = "tosa.reshape"(%488) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %490 = "tosa.add"(%489, %31) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %490 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x7x7x3xf32>} : () -> tensor<64x7x7x3xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %2 = "tosa.const"() {value = dense<7.778000e-02> : tensor<64x1x1xf32>} : () -> tensor<64x1x1xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x64xf32>} : () -> tensor<128x1x1x64xf32>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %5 = "tosa.const"() {value = dense<7.778000e-02> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %7 = "tosa.const"() {value = dense<7.778000e-02> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x64xf32>} : () -> tensor<256x1x1x64xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %10 = "tosa.const"() {value = dense<7.778000e-02> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %11 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1024x1x1xf32>} : () -> tensor<1x1024x1x1xf32>
    %12 = "tosa.const"() {value = dense<7.778000e-02> : tensor<1024x1x1xf32>} : () -> tensor<1024x1x1xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x2048x1x1xf32>} : () -> tensor<1x2048x1x1xf32>
    %14 = "tosa.const"() {value = dense<7.778000e-02> : tensor<2048x1x1xf32>} : () -> tensor<2048x1x1xf32>
    %15 = "tosa.const"() {value = dense<0.000000e+00> : tensor<2048xf32>} : () -> tensor<2048xf32>
    %16 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %17 = "tosa.const"() {value = dense<0.000000e+00> : tensor<512xf32>} : () -> tensor<512xf32>
    %18 = "tosa.const"() {value = dense<0.000000e+00> : tensor<256xf32>} : () -> tensor<256xf32>
    %19 = "tosa.const"() {value = dense<0.000000e+00> : tensor<128xf32>} : () -> tensor<128xf32>
    %20 = "tosa.const"() {value = dense<0.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000x2048xf32>} : () -> tensor<1x1000x2048xf32>
    %22 = "tosa.const"() {value = dense<0.0204081628> : tensor<1x7x7x2048xf32>} : () -> tensor<1x7x7x2048xf32>
    %23 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %24 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %25 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %26 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x2048xf32>} : () -> tensor<1024x1x1x2048xf32>
    %27 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x3x3x1024xf32>} : () -> tensor<1024x3x3x1024xf32>
    %28 = "tosa.const"() {value = dense<7.777000e-02> : tensor<2048x1x1x1024xf32>} : () -> tensor<2048x1x1x1024xf32>
    %29 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x1024xf32>} : () -> tensor<1024x1x1x1024xf32>
    %30 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x1024xf32>} : () -> tensor<512x1x1x1024xf32>
    %31 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x512xf32>} : () -> tensor<512x3x3x512xf32>
    %32 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x512xf32>} : () -> tensor<1024x1x1x512xf32>
    %33 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x512xf32>} : () -> tensor<512x1x1x512xf32>
    %34 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x512xf32>} : () -> tensor<256x1x1x512xf32>
    %35 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %36 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x256xf32>} : () -> tensor<512x1x1x256xf32>
    %37 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x256xf32>} : () -> tensor<256x1x1x256xf32>
    %38 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x256xf32>} : () -> tensor<128x1x1x256xf32>
    %39 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x128xf32>} : () -> tensor<128x3x3x128xf32>
    %40 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x128xf32>} : () -> tensor<256x1x1x128xf32>
    %41 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x256xf32>} : () -> tensor<64x1x1x256xf32>
    %42 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x128xf32>} : () -> tensor<64x1x1x128xf32>
    %cst = arith.constant -3.40282347E+38 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %43 = "tosa.const"() {value = dense<7.777000e-02> : tensor<3x7x7x64xf32>} : () -> tensor<3x7x7x64xf32>
    %44 = ml_program.global_load @global0 : tensor<1x3x224x224xf32>
    %45 = "tosa.transpose"(%44, %25) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %46 = "tosa.conv2d"(%45, %0, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %47 = "tosa.transpose"(%46, %23) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %48 = "tosa.sub"(%47, %1) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %49 = "tosa.rsqrt"(%2) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %50 = "tosa.reshape"(%49) {new_shape = array<i64: 1, 64, 1, 1>} : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %51 = "tosa.mul"(%48, %50) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %52 = "tosa.mul"(%51, %1) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %53 = "tosa.add"(%52, %1) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %54 = "tosa.clamp"(%53) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %55 = "tosa.transpose"(%54, %25) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %56 = "tosa.max_pool2d"(%55) {kernel = array<i64: 3, 3>, pad = array<i64: 1, 0, 1, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    %57 = "tosa.conv2d"(%56, %3, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<128x1x1x64xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %58 = "tosa.transpose"(%57, %23) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %59 = "tosa.sub"(%58, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %60 = "tosa.rsqrt"(%5) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %61 = "tosa.reshape"(%60) {new_shape = array<i64: 1, 128, 1, 1>} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %62 = "tosa.mul"(%59, %61) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %63 = "tosa.mul"(%62, %4) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %64 = "tosa.add"(%63, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %65 = "tosa.clamp"(%64) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %66 = "tosa.transpose"(%65, %25) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %67 = "tosa.conv2d"(%66, %39, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %68 = "tosa.transpose"(%67, %23) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %69 = "tosa.sub"(%68, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %70 = "tosa.mul"(%69, %61) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %71 = "tosa.mul"(%70, %4) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %72 = "tosa.add"(%71, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %73 = "tosa.clamp"(%72) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %74 = "tosa.transpose"(%73, %25) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %75 = "tosa.conv2d"(%74, %40, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %76 = "tosa.transpose"(%75, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %77 = "tosa.sub"(%76, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %78 = "tosa.rsqrt"(%7) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %79 = "tosa.reshape"(%78) {new_shape = array<i64: 1, 256, 1, 1>} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %80 = "tosa.mul"(%77, %79) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %81 = "tosa.mul"(%80, %6) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %82 = "tosa.add"(%81, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %83 = "tosa.conv2d"(%56, %8, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %84 = "tosa.transpose"(%83, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %85 = "tosa.sub"(%84, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %86 = "tosa.mul"(%85, %79) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %87 = "tosa.mul"(%86, %6) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %88 = "tosa.add"(%87, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %89 = "tosa.add"(%82, %88) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %90 = "tosa.clamp"(%89) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %91 = "tosa.transpose"(%90, %25) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %92 = "tosa.conv2d"(%91, %38, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %93 = "tosa.transpose"(%92, %23) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %94 = "tosa.sub"(%93, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %95 = "tosa.mul"(%94, %61) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %96 = "tosa.mul"(%95, %4) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %97 = "tosa.add"(%96, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %98 = "tosa.clamp"(%97) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %99 = "tosa.transpose"(%98, %25) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %100 = "tosa.conv2d"(%99, %39, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %101 = "tosa.transpose"(%100, %23) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %102 = "tosa.sub"(%101, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %103 = "tosa.mul"(%102, %61) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %104 = "tosa.mul"(%103, %4) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %105 = "tosa.add"(%104, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %106 = "tosa.clamp"(%105) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %107 = "tosa.transpose"(%106, %25) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %108 = "tosa.conv2d"(%107, %40, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %109 = "tosa.transpose"(%108, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %110 = "tosa.sub"(%109, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %111 = "tosa.mul"(%110, %79) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %112 = "tosa.mul"(%111, %6) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %113 = "tosa.add"(%112, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %114 = "tosa.add"(%113, %90) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %115 = "tosa.clamp"(%114) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %116 = "tosa.transpose"(%115, %25) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %117 = "tosa.conv2d"(%116, %38, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %118 = "tosa.transpose"(%117, %23) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %119 = "tosa.sub"(%118, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %120 = "tosa.mul"(%119, %61) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %121 = "tosa.mul"(%120, %4) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %122 = "tosa.add"(%121, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %123 = "tosa.clamp"(%122) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %124 = "tosa.transpose"(%123, %25) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %125 = "tosa.conv2d"(%124, %39, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %126 = "tosa.transpose"(%125, %23) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %127 = "tosa.sub"(%126, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %128 = "tosa.mul"(%127, %61) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %129 = "tosa.mul"(%128, %4) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %130 = "tosa.add"(%129, %4) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %131 = "tosa.clamp"(%130) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %132 = "tosa.transpose"(%131, %25) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %133 = "tosa.conv2d"(%132, %40, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %134 = "tosa.transpose"(%133, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %135 = "tosa.sub"(%134, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %136 = "tosa.mul"(%135, %79) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %137 = "tosa.mul"(%136, %6) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %138 = "tosa.add"(%137, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %139 = "tosa.add"(%138, %115) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %140 = "tosa.clamp"(%139) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %141 = "tosa.transpose"(%140, %25) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %142 = "tosa.conv2d"(%141, %37, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x1x1x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %143 = "tosa.transpose"(%142, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %144 = "tosa.sub"(%143, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %145 = "tosa.mul"(%144, %79) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %146 = "tosa.mul"(%145, %6) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %147 = "tosa.add"(%146, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %148 = "tosa.clamp"(%147) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %149 = "tosa.transpose"(%148, %25) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %150 = "tosa.conv2d"(%149, %35, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %151 = "tosa.transpose"(%150, %23) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %152 = "tosa.sub"(%151, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %153 = "tosa.mul"(%152, %79) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %154 = "tosa.mul"(%153, %6) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %155 = "tosa.add"(%154, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %156 = "tosa.clamp"(%155) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %157 = "tosa.transpose"(%156, %25) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %158 = "tosa.conv2d"(%157, %36, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %159 = "tosa.transpose"(%158, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %160 = "tosa.sub"(%159, %9) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %161 = "tosa.rsqrt"(%10) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %162 = "tosa.reshape"(%161) {new_shape = array<i64: 1, 512, 1, 1>} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %163 = "tosa.mul"(%160, %162) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %164 = "tosa.mul"(%163, %9) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %165 = "tosa.add"(%164, %9) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %166 = "tosa.conv2d"(%141, %36, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %167 = "tosa.transpose"(%166, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %168 = "tosa.sub"(%167, %9) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %169 = "tosa.mul"(%168, %162) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %170 = "tosa.mul"(%169, %9) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %171 = "tosa.add"(%170, %9) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %172 = "tosa.add"(%165, %171) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %173 = "tosa.clamp"(%172) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %174 = "tosa.transpose"(%173, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %175 = "tosa.conv2d"(%174, %34, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %176 = "tosa.transpose"(%175, %23) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %177 = "tosa.sub"(%176, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %178 = "tosa.mul"(%177, %79) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %179 = "tosa.mul"(%178, %6) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %180 = "tosa.add"(%179, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %181 = "tosa.clamp"(%180) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %182 = "tosa.transpose"(%181, %25) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %183 = "tosa.conv2d"(%182, %35, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %184 = "tosa.transpose"(%183, %23) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %185 = "tosa.sub"(%184, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %186 = "tosa.mul"(%185, %79) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %187 = "tosa.mul"(%186, %6) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %188 = "tosa.add"(%187, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %189 = "tosa.clamp"(%188) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %190 = "tosa.transpose"(%189, %25) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %191 = "tosa.conv2d"(%190, %36, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %192 = "tosa.transpose"(%191, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %193 = "tosa.sub"(%192, %9) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %194 = "tosa.mul"(%193, %162) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %195 = "tosa.mul"(%194, %9) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %196 = "tosa.add"(%195, %9) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %197 = "tosa.add"(%196, %173) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %198 = "tosa.clamp"(%197) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %199 = "tosa.transpose"(%198, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %200 = "tosa.conv2d"(%199, %34, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %201 = "tosa.transpose"(%200, %23) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %202 = "tosa.sub"(%201, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %203 = "tosa.mul"(%202, %79) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %204 = "tosa.mul"(%203, %6) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %205 = "tosa.add"(%204, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %206 = "tosa.clamp"(%205) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %207 = "tosa.transpose"(%206, %25) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %208 = "tosa.conv2d"(%207, %35, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %209 = "tosa.transpose"(%208, %23) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %210 = "tosa.sub"(%209, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %211 = "tosa.mul"(%210, %79) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %212 = "tosa.mul"(%211, %6) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %213 = "tosa.add"(%212, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %214 = "tosa.clamp"(%213) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %215 = "tosa.transpose"(%214, %25) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %216 = "tosa.conv2d"(%215, %36, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %217 = "tosa.transpose"(%216, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %218 = "tosa.sub"(%217, %9) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %219 = "tosa.mul"(%218, %162) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %220 = "tosa.mul"(%219, %9) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %221 = "tosa.add"(%220, %9) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %222 = "tosa.add"(%221, %198) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %223 = "tosa.clamp"(%222) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %224 = "tosa.transpose"(%223, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %225 = "tosa.conv2d"(%224, %34, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %226 = "tosa.transpose"(%225, %23) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %227 = "tosa.sub"(%226, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %228 = "tosa.mul"(%227, %79) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %229 = "tosa.mul"(%228, %6) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %230 = "tosa.add"(%229, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %231 = "tosa.clamp"(%230) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %232 = "tosa.transpose"(%231, %25) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %233 = "tosa.conv2d"(%232, %35, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %234 = "tosa.transpose"(%233, %23) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %235 = "tosa.sub"(%234, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %236 = "tosa.mul"(%235, %79) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %237 = "tosa.mul"(%236, %6) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %238 = "tosa.add"(%237, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %239 = "tosa.clamp"(%238) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %240 = "tosa.transpose"(%239, %25) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %241 = "tosa.conv2d"(%240, %36, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %242 = "tosa.transpose"(%241, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %243 = "tosa.sub"(%242, %9) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %244 = "tosa.mul"(%243, %162) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %245 = "tosa.mul"(%244, %9) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %246 = "tosa.add"(%245, %9) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %247 = "tosa.add"(%246, %223) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %248 = "tosa.clamp"(%247) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %249 = "tosa.transpose"(%248, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %250 = "tosa.conv2d"(%249, %33, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x1x1x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %251 = "tosa.transpose"(%250, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %252 = "tosa.sub"(%251, %9) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %253 = "tosa.mul"(%252, %162) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %254 = "tosa.mul"(%253, %9) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %255 = "tosa.add"(%254, %9) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %256 = "tosa.clamp"(%255) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %257 = "tosa.transpose"(%256, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %258 = "tosa.conv2d"(%257, %31, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %259 = "tosa.transpose"(%258, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %260 = "tosa.sub"(%259, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %261 = "tosa.mul"(%260, %162) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %262 = "tosa.mul"(%261, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %263 = "tosa.add"(%262, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %264 = "tosa.clamp"(%263) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %265 = "tosa.transpose"(%264, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %266 = "tosa.conv2d"(%265, %32, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %267 = "tosa.transpose"(%266, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %268 = "tosa.sub"(%267, %11) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %269 = "tosa.rsqrt"(%12) : (tensor<1024x1x1xf32>) -> tensor<1024x1x1xf32>
    %270 = "tosa.reshape"(%269) {new_shape = array<i64: 1, 1024, 1, 1>} : (tensor<1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %271 = "tosa.mul"(%268, %270) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %272 = "tosa.mul"(%271, %11) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %273 = "tosa.add"(%272, %11) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %274 = "tosa.conv2d"(%249, %32, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %275 = "tosa.transpose"(%274, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %276 = "tosa.sub"(%275, %11) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %277 = "tosa.mul"(%276, %270) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %278 = "tosa.mul"(%277, %11) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %279 = "tosa.add"(%278, %11) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %280 = "tosa.add"(%273, %279) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %281 = "tosa.clamp"(%280) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %282 = "tosa.transpose"(%281, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %283 = "tosa.conv2d"(%282, %30, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %284 = "tosa.transpose"(%283, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %285 = "tosa.sub"(%284, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %286 = "tosa.mul"(%285, %162) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %287 = "tosa.mul"(%286, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %288 = "tosa.add"(%287, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %289 = "tosa.clamp"(%288) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %290 = "tosa.transpose"(%289, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %291 = "tosa.conv2d"(%290, %31, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %292 = "tosa.transpose"(%291, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %293 = "tosa.sub"(%292, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %294 = "tosa.mul"(%293, %162) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %295 = "tosa.mul"(%294, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %296 = "tosa.add"(%295, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %297 = "tosa.clamp"(%296) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %298 = "tosa.transpose"(%297, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %299 = "tosa.conv2d"(%298, %32, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %300 = "tosa.transpose"(%299, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %301 = "tosa.sub"(%300, %11) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %302 = "tosa.mul"(%301, %270) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %303 = "tosa.mul"(%302, %11) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %304 = "tosa.add"(%303, %11) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %305 = "tosa.add"(%304, %281) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %306 = "tosa.clamp"(%305) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %307 = "tosa.transpose"(%306, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %308 = "tosa.conv2d"(%307, %30, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %309 = "tosa.transpose"(%308, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %310 = "tosa.sub"(%309, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %311 = "tosa.mul"(%310, %162) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %312 = "tosa.mul"(%311, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %313 = "tosa.add"(%312, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %314 = "tosa.clamp"(%313) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %315 = "tosa.transpose"(%314, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %316 = "tosa.conv2d"(%315, %31, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %317 = "tosa.transpose"(%316, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %318 = "tosa.sub"(%317, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %319 = "tosa.mul"(%318, %162) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %320 = "tosa.mul"(%319, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %321 = "tosa.add"(%320, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %322 = "tosa.clamp"(%321) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %323 = "tosa.transpose"(%322, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %324 = "tosa.conv2d"(%323, %32, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %325 = "tosa.transpose"(%324, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %326 = "tosa.sub"(%325, %11) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %327 = "tosa.mul"(%326, %270) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %328 = "tosa.mul"(%327, %11) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %329 = "tosa.add"(%328, %11) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %330 = "tosa.add"(%329, %306) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %331 = "tosa.clamp"(%330) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %332 = "tosa.transpose"(%331, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %333 = "tosa.conv2d"(%332, %30, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %334 = "tosa.transpose"(%333, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %335 = "tosa.sub"(%334, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %336 = "tosa.mul"(%335, %162) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %337 = "tosa.mul"(%336, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %338 = "tosa.add"(%337, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %339 = "tosa.clamp"(%338) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %340 = "tosa.transpose"(%339, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %341 = "tosa.conv2d"(%340, %31, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %342 = "tosa.transpose"(%341, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %343 = "tosa.sub"(%342, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %344 = "tosa.mul"(%343, %162) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %345 = "tosa.mul"(%344, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %346 = "tosa.add"(%345, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %347 = "tosa.clamp"(%346) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %348 = "tosa.transpose"(%347, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %349 = "tosa.conv2d"(%348, %32, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %350 = "tosa.transpose"(%349, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %351 = "tosa.sub"(%350, %11) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %352 = "tosa.mul"(%351, %270) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %353 = "tosa.mul"(%352, %11) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %354 = "tosa.add"(%353, %11) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %355 = "tosa.add"(%354, %331) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %356 = "tosa.clamp"(%355) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %357 = "tosa.transpose"(%356, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %358 = "tosa.conv2d"(%357, %30, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %359 = "tosa.transpose"(%358, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %360 = "tosa.sub"(%359, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %361 = "tosa.mul"(%360, %162) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %362 = "tosa.mul"(%361, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %363 = "tosa.add"(%362, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %364 = "tosa.clamp"(%363) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %365 = "tosa.transpose"(%364, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %366 = "tosa.conv2d"(%365, %31, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %367 = "tosa.transpose"(%366, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %368 = "tosa.sub"(%367, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %369 = "tosa.mul"(%368, %162) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %370 = "tosa.mul"(%369, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %371 = "tosa.add"(%370, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %372 = "tosa.clamp"(%371) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %373 = "tosa.transpose"(%372, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %374 = "tosa.conv2d"(%373, %32, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %375 = "tosa.transpose"(%374, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %376 = "tosa.sub"(%375, %11) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %377 = "tosa.mul"(%376, %270) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %378 = "tosa.mul"(%377, %11) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %379 = "tosa.add"(%378, %11) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %380 = "tosa.add"(%379, %356) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %381 = "tosa.clamp"(%380) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %382 = "tosa.transpose"(%381, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %383 = "tosa.conv2d"(%382, %30, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %384 = "tosa.transpose"(%383, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %385 = "tosa.sub"(%384, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %386 = "tosa.mul"(%385, %162) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %387 = "tosa.mul"(%386, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %388 = "tosa.add"(%387, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %389 = "tosa.clamp"(%388) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %390 = "tosa.transpose"(%389, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %391 = "tosa.conv2d"(%390, %31, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %392 = "tosa.transpose"(%391, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %393 = "tosa.sub"(%392, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %394 = "tosa.mul"(%393, %162) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %395 = "tosa.mul"(%394, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %396 = "tosa.add"(%395, %9) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %397 = "tosa.clamp"(%396) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %398 = "tosa.transpose"(%397, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %399 = "tosa.conv2d"(%398, %32, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %400 = "tosa.transpose"(%399, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %401 = "tosa.sub"(%400, %11) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %402 = "tosa.mul"(%401, %270) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %403 = "tosa.mul"(%402, %11) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %404 = "tosa.add"(%403, %11) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %405 = "tosa.add"(%404, %381) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %406 = "tosa.clamp"(%405) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %407 = "tosa.transpose"(%406, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %408 = "tosa.conv2d"(%407, %29, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<1024x1x1x1024xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %409 = "tosa.transpose"(%408, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %410 = "tosa.sub"(%409, %11) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %411 = "tosa.mul"(%410, %270) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %412 = "tosa.mul"(%411, %11) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %413 = "tosa.add"(%412, %11) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %414 = "tosa.clamp"(%413) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %415 = "tosa.transpose"(%414, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %416 = "tosa.conv2d"(%415, %27, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %417 = "tosa.transpose"(%416, %23) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %418 = "tosa.sub"(%417, %11) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %419 = "tosa.mul"(%418, %270) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %420 = "tosa.mul"(%419, %11) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %421 = "tosa.add"(%420, %11) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %422 = "tosa.clamp"(%421) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %423 = "tosa.transpose"(%422, %25) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %424 = "tosa.conv2d"(%423, %28, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %425 = "tosa.transpose"(%424, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %426 = "tosa.sub"(%425, %13) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %427 = "tosa.rsqrt"(%14) : (tensor<2048x1x1xf32>) -> tensor<2048x1x1xf32>
    %428 = "tosa.reshape"(%427) {new_shape = array<i64: 1, 2048, 1, 1>} : (tensor<2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %429 = "tosa.mul"(%426, %428) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %430 = "tosa.mul"(%429, %13) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %431 = "tosa.add"(%430, %13) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %432 = "tosa.conv2d"(%407, %28, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %433 = "tosa.transpose"(%432, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %434 = "tosa.sub"(%433, %13) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %435 = "tosa.mul"(%434, %428) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %436 = "tosa.mul"(%435, %13) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %437 = "tosa.add"(%436, %13) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %438 = "tosa.add"(%431, %437) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %439 = "tosa.clamp"(%438) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %440 = "tosa.transpose"(%439, %25) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %441 = "tosa.conv2d"(%440, %26, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %442 = "tosa.transpose"(%441, %23) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %443 = "tosa.sub"(%442, %11) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %444 = "tosa.mul"(%443, %270) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %445 = "tosa.mul"(%444, %11) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %446 = "tosa.add"(%445, %11) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %447 = "tosa.clamp"(%446) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %448 = "tosa.transpose"(%447, %25) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %449 = "tosa.conv2d"(%448, %27, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %450 = "tosa.transpose"(%449, %23) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %451 = "tosa.sub"(%450, %11) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %452 = "tosa.mul"(%451, %270) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %453 = "tosa.mul"(%452, %11) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %454 = "tosa.add"(%453, %11) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %455 = "tosa.clamp"(%454) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %456 = "tosa.transpose"(%455, %25) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %457 = "tosa.conv2d"(%456, %28, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %458 = "tosa.transpose"(%457, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %459 = "tosa.sub"(%458, %13) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %460 = "tosa.mul"(%459, %428) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %461 = "tosa.mul"(%460, %13) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %462 = "tosa.add"(%461, %13) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %463 = "tosa.add"(%462, %439) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %464 = "tosa.clamp"(%463) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %465 = "tosa.transpose"(%464, %25) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %466 = "tosa.conv2d"(%465, %26, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %467 = "tosa.transpose"(%466, %23) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %468 = "tosa.sub"(%467, %11) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %469 = "tosa.mul"(%468, %270) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %470 = "tosa.mul"(%469, %11) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %471 = "tosa.add"(%470, %11) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %472 = "tosa.clamp"(%471) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %473 = "tosa.transpose"(%472, %25) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %474 = "tosa.conv2d"(%473, %27, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %475 = "tosa.transpose"(%474, %23) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %476 = "tosa.sub"(%475, %11) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %477 = "tosa.mul"(%476, %270) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %478 = "tosa.mul"(%477, %11) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %479 = "tosa.add"(%478, %11) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %480 = "tosa.clamp"(%479) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %481 = "tosa.transpose"(%480, %25) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %482 = "tosa.conv2d"(%481, %28, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %483 = "tosa.transpose"(%482, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %484 = "tosa.sub"(%483, %13) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %485 = "tosa.mul"(%484, %428) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %486 = "tosa.mul"(%485, %13) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %487 = "tosa.add"(%486, %13) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %488 = "tosa.add"(%487, %464) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %489 = "tosa.clamp"(%488) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %490 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %491 = "tosa.matmul"(%490, %21) : (tensor<1x1x1000xf32>, tensor<1x1000x2048xf32>) -> tensor<1x1x2048xf32>
    %492 = "tosa.reshape"(%491) {new_shape = array<i64: 1, 1, 1, 2048>} : (tensor<1x1x2048xf32>) -> tensor<1x1x1x2048xf32>
    %493 = "tosa.mul"(%492, %22) {shift = 0 : i32} : (tensor<1x1x1x2048xf32>, tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %494 = "tosa.transpose"(%493, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %495 = "tosa.equal"(%488, %489) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %496 = "tosa.select"(%495, %494, %24) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %497 = "tosa.mul"(%496, %13) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %498 = "tosa.mul"(%428, %497) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %499 = "tosa.transpose"(%498, %25) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %500 = tensor.empty() : tensor<1024xf32>
    %501 = "tosa.transpose_conv2d"(%499, %26, %500) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 1024>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %502 = "tosa.transpose"(%501, %23) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %503 = "tosa.equal"(%479, %480) : (tensor<1x1024x7x7xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xi1>
    %504 = "tosa.select"(%503, %502, %24) : (tensor<1x1024x7x7xi1>, tensor<1x1024x7x7xf32>, tensor<f32>) -> tensor<1x1024x7x7xf32>
    %505 = "tosa.mul"(%504, %11) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %506 = "tosa.mul"(%270, %505) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %507 = "tosa.transpose"(%506, %25) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %508 = "tosa.transpose_conv2d"(%507, %27, %500) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 1024>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %509 = "tosa.transpose"(%508, %23) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %510 = "tosa.equal"(%471, %472) : (tensor<1x1024x7x7xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xi1>
    %511 = "tosa.select"(%510, %509, %24) : (tensor<1x1024x7x7xi1>, tensor<1x1024x7x7xf32>, tensor<f32>) -> tensor<1x1024x7x7xf32>
    %512 = "tosa.mul"(%511, %11) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %513 = "tosa.mul"(%270, %512) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %514 = "tosa.transpose"(%513, %25) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %515 = tensor.empty() : tensor<2048xf32>
    %516 = "tosa.transpose_conv2d"(%514, %28, %515) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 2048>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %517 = "tosa.transpose"(%516, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %518 = "tosa.add"(%496, %517) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %519 = "tosa.equal"(%463, %464) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %520 = "tosa.select"(%519, %518, %24) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %521 = "tosa.mul"(%520, %13) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %522 = "tosa.mul"(%428, %521) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %523 = "tosa.transpose"(%522, %25) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %524 = "tosa.transpose_conv2d"(%523, %26, %500) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 1024>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %525 = "tosa.transpose"(%524, %23) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %526 = "tosa.equal"(%454, %455) : (tensor<1x1024x7x7xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xi1>
    %527 = "tosa.select"(%526, %525, %24) : (tensor<1x1024x7x7xi1>, tensor<1x1024x7x7xf32>, tensor<f32>) -> tensor<1x1024x7x7xf32>
    %528 = "tosa.mul"(%527, %11) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %529 = "tosa.mul"(%270, %528) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %530 = "tosa.transpose"(%529, %25) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %531 = "tosa.transpose_conv2d"(%530, %27, %500) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 1024>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %532 = "tosa.transpose"(%531, %23) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %533 = "tosa.equal"(%446, %447) : (tensor<1x1024x7x7xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xi1>
    %534 = "tosa.select"(%533, %532, %24) : (tensor<1x1024x7x7xi1>, tensor<1x1024x7x7xf32>, tensor<f32>) -> tensor<1x1024x7x7xf32>
    %535 = "tosa.mul"(%534, %11) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %536 = "tosa.mul"(%270, %535) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %537 = "tosa.transpose"(%536, %25) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %538 = "tosa.transpose_conv2d"(%537, %28, %515) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 2048>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %539 = "tosa.transpose"(%538, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %540 = "tosa.add"(%520, %539) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %541 = "tosa.equal"(%438, %439) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %542 = "tosa.select"(%541, %540, %24) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %543 = "tosa.mul"(%542, %13) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %544 = "tosa.mul"(%428, %543) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %545 = "tosa.transpose"(%544, %25) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %546 = "tosa.transpose_conv2d"(%545, %26, %500) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 2, 2>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %547 = "tosa.transpose_conv2d"(%545, %26, %500) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 1024>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %548 = "tosa.transpose"(%547, %23) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %549 = "tosa.equal"(%421, %422) : (tensor<1x1024x7x7xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xi1>
    %550 = "tosa.select"(%549, %548, %24) : (tensor<1x1024x7x7xi1>, tensor<1x1024x7x7xf32>, tensor<f32>) -> tensor<1x1024x7x7xf32>
    %551 = "tosa.mul"(%550, %11) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %552 = "tosa.mul"(%270, %551) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %553 = "tosa.transpose"(%552, %25) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %554 = "tosa.transpose_conv2d"(%553, %27, %500) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 2, 2>} : (tensor<1x7x7x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %555 = "tosa.transpose"(%554, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %556 = "tosa.equal"(%413, %414) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %557 = "tosa.select"(%556, %555, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %558 = "tosa.mul"(%557, %11) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %559 = "tosa.mul"(%270, %558) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %560 = "tosa.transpose"(%559, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %561 = "tosa.transpose_conv2d"(%560, %29, %500) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<1024x1x1x1024xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %562 = "tosa.add"(%546, %561) : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %563 = "tosa.transpose"(%562, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %564 = "tosa.equal"(%405, %406) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %565 = "tosa.select"(%564, %563, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %566 = "tosa.mul"(%565, %11) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %567 = "tosa.mul"(%270, %566) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %568 = "tosa.transpose"(%567, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %569 = tensor.empty() : tensor<512xf32>
    %570 = "tosa.transpose_conv2d"(%568, %30, %569) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %571 = "tosa.transpose"(%570, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %572 = "tosa.equal"(%396, %397) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %573 = "tosa.select"(%572, %571, %24) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %574 = "tosa.mul"(%573, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %575 = "tosa.mul"(%162, %574) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %576 = "tosa.transpose"(%575, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %577 = "tosa.transpose_conv2d"(%576, %31, %569) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %578 = "tosa.transpose"(%577, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %579 = "tosa.equal"(%388, %389) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %580 = "tosa.select"(%579, %578, %24) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %581 = "tosa.mul"(%580, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %582 = "tosa.mul"(%162, %581) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %583 = "tosa.transpose"(%582, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %584 = "tosa.transpose_conv2d"(%583, %32, %500) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %585 = "tosa.transpose"(%584, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %586 = "tosa.add"(%565, %585) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %587 = "tosa.equal"(%380, %381) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %588 = "tosa.select"(%587, %586, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %589 = "tosa.mul"(%588, %11) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %590 = "tosa.mul"(%270, %589) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %591 = "tosa.transpose"(%590, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %592 = "tosa.transpose_conv2d"(%591, %30, %569) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %593 = "tosa.transpose"(%592, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %594 = "tosa.equal"(%371, %372) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %595 = "tosa.select"(%594, %593, %24) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %596 = "tosa.mul"(%595, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %597 = "tosa.mul"(%162, %596) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %598 = "tosa.transpose"(%597, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %599 = "tosa.transpose_conv2d"(%598, %31, %569) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %600 = "tosa.transpose"(%599, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %601 = "tosa.equal"(%363, %364) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %602 = "tosa.select"(%601, %600, %24) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %603 = "tosa.mul"(%602, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %604 = "tosa.mul"(%162, %603) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %605 = "tosa.transpose"(%604, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %606 = "tosa.transpose_conv2d"(%605, %32, %500) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %607 = "tosa.transpose"(%606, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %608 = "tosa.add"(%588, %607) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %609 = "tosa.equal"(%355, %356) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %610 = "tosa.select"(%609, %608, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %611 = "tosa.mul"(%610, %11) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %612 = "tosa.mul"(%270, %611) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %613 = "tosa.transpose"(%612, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %614 = "tosa.transpose_conv2d"(%613, %30, %569) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %615 = "tosa.transpose"(%614, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %616 = "tosa.equal"(%346, %347) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %617 = "tosa.select"(%616, %615, %24) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %618 = "tosa.mul"(%617, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %619 = "tosa.mul"(%162, %618) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %620 = "tosa.transpose"(%619, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %621 = "tosa.transpose_conv2d"(%620, %31, %569) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %622 = "tosa.transpose"(%621, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %623 = "tosa.equal"(%338, %339) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %624 = "tosa.select"(%623, %622, %24) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %625 = "tosa.mul"(%624, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %626 = "tosa.mul"(%162, %625) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %627 = "tosa.transpose"(%626, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %628 = "tosa.transpose_conv2d"(%627, %32, %500) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %629 = "tosa.transpose"(%628, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %630 = "tosa.add"(%610, %629) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %631 = "tosa.equal"(%330, %331) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %632 = "tosa.select"(%631, %630, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %633 = "tosa.mul"(%632, %11) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %634 = "tosa.mul"(%270, %633) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %635 = "tosa.transpose"(%634, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %636 = "tosa.transpose_conv2d"(%635, %30, %569) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %637 = "tosa.transpose"(%636, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %638 = "tosa.equal"(%321, %322) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %639 = "tosa.select"(%638, %637, %24) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %640 = "tosa.mul"(%639, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %641 = "tosa.mul"(%162, %640) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %642 = "tosa.transpose"(%641, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %643 = "tosa.transpose_conv2d"(%642, %31, %569) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %644 = "tosa.transpose"(%643, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %645 = "tosa.equal"(%313, %314) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %646 = "tosa.select"(%645, %644, %24) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %647 = "tosa.mul"(%646, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %648 = "tosa.mul"(%162, %647) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %649 = "tosa.transpose"(%648, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %650 = "tosa.transpose_conv2d"(%649, %32, %500) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %651 = "tosa.transpose"(%650, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %652 = "tosa.add"(%632, %651) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %653 = "tosa.equal"(%305, %306) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %654 = "tosa.select"(%653, %652, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %655 = "tosa.mul"(%654, %11) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %656 = "tosa.mul"(%270, %655) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %657 = "tosa.transpose"(%656, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %658 = "tosa.transpose_conv2d"(%657, %30, %569) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %659 = "tosa.transpose"(%658, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %660 = "tosa.equal"(%296, %297) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %661 = "tosa.select"(%660, %659, %24) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %662 = "tosa.mul"(%661, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %663 = "tosa.mul"(%162, %662) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %664 = "tosa.transpose"(%663, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %665 = "tosa.transpose_conv2d"(%664, %31, %569) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %666 = "tosa.transpose"(%665, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %667 = "tosa.equal"(%288, %289) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %668 = "tosa.select"(%667, %666, %24) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %669 = "tosa.mul"(%668, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %670 = "tosa.mul"(%162, %669) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %671 = "tosa.transpose"(%670, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %672 = "tosa.transpose_conv2d"(%671, %32, %500) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %673 = "tosa.transpose"(%672, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %674 = "tosa.add"(%654, %673) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %675 = "tosa.equal"(%280, %281) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %676 = "tosa.select"(%675, %674, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %677 = "tosa.mul"(%676, %11) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %678 = "tosa.mul"(%270, %677) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %679 = "tosa.transpose"(%678, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %680 = "tosa.transpose_conv2d"(%679, %30, %569) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %681 = "tosa.transpose_conv2d"(%679, %30, %569) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %682 = "tosa.transpose"(%681, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %683 = "tosa.equal"(%263, %264) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %684 = "tosa.select"(%683, %682, %24) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %685 = "tosa.mul"(%684, %9) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %686 = "tosa.mul"(%162, %685) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %687 = "tosa.transpose"(%686, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %688 = "tosa.transpose_conv2d"(%687, %31, %569) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %689 = "tosa.transpose"(%688, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %690 = "tosa.equal"(%255, %256) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %691 = "tosa.select"(%690, %689, %24) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %692 = "tosa.mul"(%691, %9) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %693 = "tosa.mul"(%162, %692) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %694 = "tosa.transpose"(%693, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %695 = "tosa.transpose_conv2d"(%694, %33, %569) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x1x1x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %696 = "tosa.add"(%680, %695) : (tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %697 = "tosa.transpose"(%696, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %698 = "tosa.equal"(%247, %248) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %699 = "tosa.select"(%698, %697, %24) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %700 = "tosa.mul"(%699, %9) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %701 = "tosa.mul"(%162, %700) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %702 = "tosa.transpose"(%701, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %703 = tensor.empty() : tensor<256xf32>
    %704 = "tosa.transpose_conv2d"(%702, %34, %703) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %705 = "tosa.transpose"(%704, %23) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %706 = "tosa.equal"(%238, %239) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %707 = "tosa.select"(%706, %705, %24) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %708 = "tosa.mul"(%707, %6) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %709 = "tosa.mul"(%79, %708) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %710 = "tosa.transpose"(%709, %25) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %711 = "tosa.transpose_conv2d"(%710, %35, %703) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %712 = "tosa.transpose"(%711, %23) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %713 = "tosa.equal"(%230, %231) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %714 = "tosa.select"(%713, %712, %24) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %715 = "tosa.mul"(%714, %6) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %716 = "tosa.mul"(%79, %715) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %717 = "tosa.transpose"(%716, %25) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %718 = "tosa.transpose_conv2d"(%717, %36, %569) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %719 = "tosa.transpose"(%718, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %720 = "tosa.add"(%699, %719) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %721 = "tosa.equal"(%222, %223) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %722 = "tosa.select"(%721, %720, %24) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %723 = "tosa.mul"(%722, %9) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %724 = "tosa.mul"(%162, %723) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %725 = "tosa.transpose"(%724, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %726 = "tosa.transpose_conv2d"(%725, %34, %703) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %727 = "tosa.transpose"(%726, %23) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %728 = "tosa.equal"(%213, %214) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %729 = "tosa.select"(%728, %727, %24) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %730 = "tosa.mul"(%729, %6) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %731 = "tosa.mul"(%79, %730) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %732 = "tosa.transpose"(%731, %25) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %733 = "tosa.transpose_conv2d"(%732, %35, %703) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %734 = "tosa.transpose"(%733, %23) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %735 = "tosa.equal"(%205, %206) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %736 = "tosa.select"(%735, %734, %24) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %737 = "tosa.mul"(%736, %6) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %738 = "tosa.mul"(%79, %737) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %739 = "tosa.transpose"(%738, %25) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %740 = "tosa.transpose_conv2d"(%739, %36, %569) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %741 = "tosa.transpose"(%740, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %742 = "tosa.add"(%722, %741) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %743 = "tosa.equal"(%197, %198) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %744 = "tosa.select"(%743, %742, %24) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %745 = "tosa.mul"(%744, %9) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %746 = "tosa.mul"(%162, %745) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %747 = "tosa.transpose"(%746, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %748 = "tosa.transpose_conv2d"(%747, %34, %703) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %749 = "tosa.transpose"(%748, %23) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %750 = "tosa.equal"(%188, %189) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %751 = "tosa.select"(%750, %749, %24) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %752 = "tosa.mul"(%751, %6) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %753 = "tosa.mul"(%79, %752) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %754 = "tosa.transpose"(%753, %25) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %755 = "tosa.transpose_conv2d"(%754, %35, %703) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %756 = "tosa.transpose"(%755, %23) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %757 = "tosa.equal"(%180, %181) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %758 = "tosa.select"(%757, %756, %24) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %759 = "tosa.mul"(%758, %6) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %760 = "tosa.mul"(%79, %759) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %761 = "tosa.transpose"(%760, %25) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %762 = "tosa.transpose_conv2d"(%761, %36, %569) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %763 = "tosa.transpose"(%762, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %764 = "tosa.add"(%744, %763) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %765 = "tosa.equal"(%172, %173) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %766 = "tosa.select"(%765, %764, %24) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %767 = "tosa.mul"(%766, %9) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %768 = "tosa.mul"(%162, %767) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %769 = "tosa.transpose"(%768, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %770 = "tosa.transpose_conv2d"(%769, %34, %703) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %771 = "tosa.transpose_conv2d"(%769, %34, %703) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %772 = "tosa.transpose"(%771, %23) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %773 = "tosa.equal"(%155, %156) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %774 = "tosa.select"(%773, %772, %24) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %775 = "tosa.mul"(%774, %6) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %776 = "tosa.mul"(%79, %775) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %777 = "tosa.transpose"(%776, %25) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %778 = "tosa.transpose_conv2d"(%777, %35, %703) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 2, 2>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %779 = "tosa.transpose"(%778, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %780 = "tosa.equal"(%147, %148) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %781 = "tosa.select"(%780, %779, %24) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %782 = "tosa.mul"(%781, %6) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %783 = "tosa.mul"(%79, %782) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %784 = "tosa.transpose"(%783, %25) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %785 = "tosa.transpose_conv2d"(%784, %37, %703) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x1x1x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %786 = "tosa.add"(%770, %785) : (tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %787 = "tosa.transpose"(%786, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %788 = "tosa.equal"(%139, %140) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %789 = "tosa.select"(%788, %787, %24) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %790 = "tosa.mul"(%789, %6) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %791 = "tosa.mul"(%79, %790) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %792 = "tosa.transpose"(%791, %25) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %793 = tensor.empty() : tensor<128xf32>
    %794 = "tosa.transpose_conv2d"(%792, %38, %793) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %795 = "tosa.transpose"(%794, %23) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %796 = "tosa.equal"(%130, %131) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %797 = "tosa.select"(%796, %795, %24) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %798 = "tosa.mul"(%797, %4) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %799 = "tosa.mul"(%61, %798) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %800 = "tosa.transpose"(%799, %25) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %801 = "tosa.transpose_conv2d"(%800, %39, %793) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %802 = "tosa.transpose"(%801, %23) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %803 = "tosa.equal"(%122, %123) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %804 = "tosa.select"(%803, %802, %24) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %805 = "tosa.mul"(%804, %4) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %806 = "tosa.mul"(%61, %805) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %807 = "tosa.transpose"(%806, %25) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %808 = "tosa.transpose_conv2d"(%807, %40, %703) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %809 = "tosa.transpose"(%808, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %810 = "tosa.add"(%789, %809) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %811 = "tosa.equal"(%114, %115) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %812 = "tosa.select"(%811, %810, %24) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %813 = "tosa.mul"(%812, %6) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %814 = "tosa.mul"(%79, %813) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %815 = "tosa.transpose"(%814, %25) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %816 = "tosa.transpose_conv2d"(%815, %38, %793) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %817 = "tosa.transpose"(%816, %23) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %818 = "tosa.equal"(%105, %106) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %819 = "tosa.select"(%818, %817, %24) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %820 = "tosa.mul"(%819, %4) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %821 = "tosa.mul"(%61, %820) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %822 = "tosa.transpose"(%821, %25) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %823 = "tosa.transpose_conv2d"(%822, %39, %793) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %824 = "tosa.transpose"(%823, %23) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %825 = "tosa.equal"(%97, %98) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %826 = "tosa.select"(%825, %824, %24) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %827 = "tosa.mul"(%826, %4) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %828 = "tosa.mul"(%61, %827) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %829 = "tosa.transpose"(%828, %25) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %830 = "tosa.transpose_conv2d"(%829, %40, %703) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %831 = "tosa.transpose"(%830, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %832 = "tosa.add"(%812, %831) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %833 = "tosa.equal"(%89, %90) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %834 = "tosa.select"(%833, %832, %24) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %835 = "tosa.mul"(%834, %6) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %836 = "tosa.mul"(%79, %835) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %837 = "tosa.transpose"(%836, %25) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %838 = tensor.empty() : tensor<64xf32>
    %839 = "tosa.transpose_conv2d"(%837, %41, %838) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %840 = "tosa.transpose_conv2d"(%837, %38, %793) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %841 = "tosa.transpose"(%840, %23) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %842 = "tosa.equal"(%72, %73) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %843 = "tosa.select"(%842, %841, %24) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %844 = "tosa.mul"(%843, %4) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %845 = "tosa.mul"(%61, %844) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %846 = "tosa.transpose"(%845, %25) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %847 = "tosa.transpose_conv2d"(%846, %39, %793) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %848 = "tosa.transpose"(%847, %23) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %849 = "tosa.equal"(%64, %65) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %850 = "tosa.select"(%849, %848, %24) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %851 = "tosa.mul"(%850, %4) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %852 = "tosa.mul"(%61, %851) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %853 = "tosa.transpose"(%852, %25) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %854 = "tosa.transpose_conv2d"(%853, %42, %838) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<64x1x1x128xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %855 = "tosa.add"(%839, %854) : (tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %padded = tensor.pad %55 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %856 = tensor.empty() : tensor<1x113x113x64xf32>
    %857 = tensor.empty() : tensor<3x3xf32>
    %858 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded, %857, %56, %855 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%856 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_1: f32, %in_2: f32, %in_3: f32, %out: f32):
      %868 = arith.cmpf oge, %in, %in_2 : f32
      %869 = arith.select %868, %in_3, %cst_0 : f32
      %870 = arith.addf %out, %869 : f32
      linalg.yield %870 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice = tensor.extract_slice %858[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %859 = "tosa.transpose"(%extracted_slice, %23) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %860 = "tosa.equal"(%53, %54) : (tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xi1>
    %861 = "tosa.select"(%860, %859, %24) : (tensor<1x64x112x112xi1>, tensor<1x64x112x112xf32>, tensor<f32>) -> tensor<1x64x112x112xf32>
    %862 = "tosa.mul"(%861, %1) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %863 = "tosa.mul"(%50, %862) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %864 = "tosa.transpose"(%863, %25) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %865 = tensor.empty() : tensor<3xf32>
    %866 = "tosa.transpose_conv2d"(%864, %43, %865) {out_pad = array<i64: -3, -3, -3, -3>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>, tensor<3x7x7x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %867 = "tosa.transpose"(%866, %23) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %867 : tensor<1x3x224x224xf32>
  }
}

