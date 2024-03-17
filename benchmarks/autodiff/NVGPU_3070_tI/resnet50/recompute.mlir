#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "ResNet"} {
  ml_program.global private mutable @global0 : tensor<1x3x224x224xf32>
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
    ml_program.global_store @global0 = %arg0 : tensor<1x3x224x224xf32>
    %42 = "tosa.transpose"(%arg0, %40) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %43 = "tosa.conv2d"(%42, %0, %41) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %44 = "tosa.transpose"(%43, %39) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %45 = "tosa.sub"(%44, %1) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %46 = "tosa.rsqrt"(%2) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %47 = "tosa.reshape"(%46) {new_shape = array<i64: 1, 64, 1, 1>} : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %48 = "tosa.mul"(%45, %47) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %49 = "tosa.mul"(%48, %1) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %50 = "tosa.add"(%49, %1) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %51 = "tosa.clamp"(%50) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %52 = "tosa.transpose"(%51, %40) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %53 = "tosa.max_pool2d"(%52) {kernel = array<i64: 3, 3>, pad = array<i64: 1, 0, 1, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    %54 = "tosa.conv2d"(%53, %3, %41) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x1x1x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %55 = "tosa.transpose"(%54, %39) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %56 = "tosa.sub"(%55, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %57 = "tosa.mul"(%56, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %58 = "tosa.mul"(%57, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %59 = "tosa.add"(%58, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %60 = "tosa.clamp"(%59) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %61 = "tosa.transpose"(%60, %40) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %62 = "tosa.conv2d"(%61, %4, %41) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %63 = "tosa.transpose"(%62, %39) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %64 = "tosa.sub"(%63, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %65 = "tosa.mul"(%64, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %66 = "tosa.mul"(%65, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %67 = "tosa.add"(%66, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %68 = "tosa.clamp"(%67) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %69 = "tosa.transpose"(%68, %40) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %70 = "tosa.conv2d"(%69, %5, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %71 = "tosa.transpose"(%70, %39) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %72 = "tosa.sub"(%71, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %73 = "tosa.rsqrt"(%7) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %74 = "tosa.reshape"(%73) {new_shape = array<i64: 1, 256, 1, 1>} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
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
    %85 = "tosa.clamp"(%84) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %86 = "tosa.transpose"(%85, %40) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %87 = "tosa.conv2d"(%86, %8, %41) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %88 = "tosa.transpose"(%87, %39) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %89 = "tosa.sub"(%88, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %90 = "tosa.mul"(%89, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %91 = "tosa.mul"(%90, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %92 = "tosa.add"(%91, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %93 = "tosa.clamp"(%92) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %94 = "tosa.transpose"(%93, %40) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %95 = "tosa.conv2d"(%94, %4, %41) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %96 = "tosa.transpose"(%95, %39) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %97 = "tosa.sub"(%96, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %98 = "tosa.mul"(%97, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %99 = "tosa.mul"(%98, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %100 = "tosa.add"(%99, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %101 = "tosa.clamp"(%100) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %102 = "tosa.transpose"(%101, %40) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %103 = "tosa.conv2d"(%102, %5, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %104 = "tosa.transpose"(%103, %39) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %105 = "tosa.sub"(%104, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %106 = "tosa.mul"(%105, %74) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %107 = "tosa.mul"(%106, %6) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %108 = "tosa.add"(%107, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %109 = "tosa.add"(%108, %85) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %110 = "tosa.clamp"(%109) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %111 = "tosa.transpose"(%110, %40) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %112 = "tosa.conv2d"(%111, %8, %41) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %113 = "tosa.transpose"(%112, %39) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %114 = "tosa.sub"(%113, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %115 = "tosa.mul"(%114, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %116 = "tosa.mul"(%115, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %117 = "tosa.add"(%116, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %118 = "tosa.clamp"(%117) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %119 = "tosa.transpose"(%118, %40) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %120 = "tosa.conv2d"(%119, %4, %41) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %121 = "tosa.transpose"(%120, %39) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %122 = "tosa.sub"(%121, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %123 = "tosa.mul"(%122, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %124 = "tosa.mul"(%123, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %125 = "tosa.add"(%124, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %126 = "tosa.clamp"(%125) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %127 = "tosa.transpose"(%126, %40) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %128 = "tosa.conv2d"(%127, %5, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %129 = "tosa.transpose"(%128, %39) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %130 = "tosa.sub"(%129, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %131 = "tosa.mul"(%130, %74) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %132 = "tosa.mul"(%131, %6) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %133 = "tosa.add"(%132, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %134 = "tosa.add"(%133, %110) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %135 = "tosa.clamp"(%134) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %136 = "tosa.transpose"(%135, %40) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %137 = "tosa.conv2d"(%136, %9, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %138 = "tosa.transpose"(%137, %39) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %139 = "tosa.sub"(%138, %10) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %140 = "tosa.rsqrt"(%11) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %141 = "tosa.reshape"(%140) {new_shape = array<i64: 1, 128, 1, 1>} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %142 = "tosa.mul"(%139, %141) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %143 = "tosa.mul"(%142, %10) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %144 = "tosa.add"(%143, %10) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %145 = "tosa.clamp"(%144) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %146 = "tosa.transpose"(%145, %40) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %147 = "tosa.conv2d"(%146, %12, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %148 = "tosa.transpose"(%147, %39) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %149 = "tosa.sub"(%148, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %150 = "tosa.mul"(%149, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %151 = "tosa.mul"(%150, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %152 = "tosa.add"(%151, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %153 = "tosa.clamp"(%152) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %154 = "tosa.transpose"(%153, %40) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %155 = "tosa.conv2d"(%154, %13, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %156 = "tosa.transpose"(%155, %39) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %157 = "tosa.sub"(%156, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %158 = "tosa.rsqrt"(%15) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %159 = "tosa.reshape"(%158) {new_shape = array<i64: 1, 512, 1, 1>} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
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
    %170 = "tosa.clamp"(%169) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %171 = "tosa.transpose"(%170, %40) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %172 = "tosa.conv2d"(%171, %17, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %173 = "tosa.transpose"(%172, %39) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %174 = "tosa.sub"(%173, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %175 = "tosa.mul"(%174, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %176 = "tosa.mul"(%175, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %177 = "tosa.add"(%176, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %178 = "tosa.clamp"(%177) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %179 = "tosa.transpose"(%178, %40) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %180 = "tosa.conv2d"(%179, %12, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %181 = "tosa.transpose"(%180, %39) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %182 = "tosa.sub"(%181, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %183 = "tosa.mul"(%182, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %184 = "tosa.mul"(%183, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %185 = "tosa.add"(%184, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %186 = "tosa.clamp"(%185) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %187 = "tosa.transpose"(%186, %40) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %188 = "tosa.conv2d"(%187, %13, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %189 = "tosa.transpose"(%188, %39) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %190 = "tosa.sub"(%189, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %191 = "tosa.mul"(%190, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %192 = "tosa.mul"(%191, %14) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %193 = "tosa.add"(%192, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %194 = "tosa.add"(%193, %170) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %195 = "tosa.clamp"(%194) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %196 = "tosa.transpose"(%195, %40) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %197 = "tosa.conv2d"(%196, %17, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %198 = "tosa.transpose"(%197, %39) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %199 = "tosa.sub"(%198, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %200 = "tosa.mul"(%199, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %201 = "tosa.mul"(%200, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %202 = "tosa.add"(%201, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %203 = "tosa.clamp"(%202) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %204 = "tosa.transpose"(%203, %40) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %205 = "tosa.conv2d"(%204, %12, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %206 = "tosa.transpose"(%205, %39) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %207 = "tosa.sub"(%206, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %208 = "tosa.mul"(%207, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %209 = "tosa.mul"(%208, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %210 = "tosa.add"(%209, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %211 = "tosa.clamp"(%210) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %212 = "tosa.transpose"(%211, %40) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %213 = "tosa.conv2d"(%212, %13, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %214 = "tosa.transpose"(%213, %39) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %215 = "tosa.sub"(%214, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %216 = "tosa.mul"(%215, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %217 = "tosa.mul"(%216, %14) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %218 = "tosa.add"(%217, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %219 = "tosa.add"(%218, %195) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %220 = "tosa.clamp"(%219) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %221 = "tosa.transpose"(%220, %40) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %222 = "tosa.conv2d"(%221, %17, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %223 = "tosa.transpose"(%222, %39) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %224 = "tosa.sub"(%223, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %225 = "tosa.mul"(%224, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %226 = "tosa.mul"(%225, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %227 = "tosa.add"(%226, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %228 = "tosa.clamp"(%227) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %229 = "tosa.transpose"(%228, %40) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %230 = "tosa.conv2d"(%229, %12, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %231 = "tosa.transpose"(%230, %39) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %232 = "tosa.sub"(%231, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %233 = "tosa.mul"(%232, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %234 = "tosa.mul"(%233, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %235 = "tosa.add"(%234, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %236 = "tosa.clamp"(%235) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %237 = "tosa.transpose"(%236, %40) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %238 = "tosa.conv2d"(%237, %13, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %239 = "tosa.transpose"(%238, %39) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %240 = "tosa.sub"(%239, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %241 = "tosa.mul"(%240, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %242 = "tosa.mul"(%241, %14) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %243 = "tosa.add"(%242, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %244 = "tosa.add"(%243, %220) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %245 = "tosa.clamp"(%244) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %246 = "tosa.transpose"(%245, %40) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %247 = "tosa.conv2d"(%246, %18, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %248 = "tosa.transpose"(%247, %39) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %249 = "tosa.sub"(%248, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %250 = "tosa.mul"(%249, %74) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %251 = "tosa.mul"(%250, %6) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %252 = "tosa.add"(%251, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %253 = "tosa.clamp"(%252) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %254 = "tosa.transpose"(%253, %40) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %255 = "tosa.conv2d"(%254, %19, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %256 = "tosa.transpose"(%255, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %257 = "tosa.sub"(%256, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %258 = "tosa.mul"(%257, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %259 = "tosa.mul"(%258, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %260 = "tosa.add"(%259, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %261 = "tosa.clamp"(%260) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %262 = "tosa.transpose"(%261, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %263 = "tosa.conv2d"(%262, %20, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %264 = "tosa.transpose"(%263, %39) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %265 = "tosa.sub"(%264, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %266 = "tosa.rsqrt"(%22) : (tensor<1024x1x1xf32>) -> tensor<1024x1x1xf32>
    %267 = "tosa.reshape"(%266) {new_shape = array<i64: 1, 1024, 1, 1>} : (tensor<1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
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
    %278 = "tosa.clamp"(%277) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %279 = "tosa.transpose"(%278, %40) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %280 = "tosa.conv2d"(%279, %24, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %281 = "tosa.transpose"(%280, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %282 = "tosa.sub"(%281, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %283 = "tosa.mul"(%282, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %284 = "tosa.mul"(%283, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %285 = "tosa.add"(%284, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %286 = "tosa.clamp"(%285) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %287 = "tosa.transpose"(%286, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %288 = "tosa.conv2d"(%287, %19, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %289 = "tosa.transpose"(%288, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %290 = "tosa.sub"(%289, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %291 = "tosa.mul"(%290, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %292 = "tosa.mul"(%291, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %293 = "tosa.add"(%292, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %294 = "tosa.clamp"(%293) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %295 = "tosa.transpose"(%294, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %296 = "tosa.conv2d"(%295, %20, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %297 = "tosa.transpose"(%296, %39) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %298 = "tosa.sub"(%297, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %299 = "tosa.mul"(%298, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %300 = "tosa.mul"(%299, %21) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %301 = "tosa.add"(%300, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %302 = "tosa.add"(%301, %278) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %303 = "tosa.clamp"(%302) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %304 = "tosa.transpose"(%303, %40) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %305 = "tosa.conv2d"(%304, %24, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %306 = "tosa.transpose"(%305, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %307 = "tosa.sub"(%306, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %308 = "tosa.mul"(%307, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %309 = "tosa.mul"(%308, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %310 = "tosa.add"(%309, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %311 = "tosa.clamp"(%310) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %312 = "tosa.transpose"(%311, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %313 = "tosa.conv2d"(%312, %19, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %314 = "tosa.transpose"(%313, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %315 = "tosa.sub"(%314, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %316 = "tosa.mul"(%315, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %317 = "tosa.mul"(%316, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %318 = "tosa.add"(%317, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %319 = "tosa.clamp"(%318) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %320 = "tosa.transpose"(%319, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %321 = "tosa.conv2d"(%320, %20, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %322 = "tosa.transpose"(%321, %39) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %323 = "tosa.sub"(%322, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %324 = "tosa.mul"(%323, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %325 = "tosa.mul"(%324, %21) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %326 = "tosa.add"(%325, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %327 = "tosa.add"(%326, %303) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %328 = "tosa.clamp"(%327) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %329 = "tosa.transpose"(%328, %40) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %330 = "tosa.conv2d"(%329, %24, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %331 = "tosa.transpose"(%330, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %332 = "tosa.sub"(%331, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %333 = "tosa.mul"(%332, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %334 = "tosa.mul"(%333, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %335 = "tosa.add"(%334, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %336 = "tosa.clamp"(%335) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %337 = "tosa.transpose"(%336, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %338 = "tosa.conv2d"(%337, %19, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %339 = "tosa.transpose"(%338, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %340 = "tosa.sub"(%339, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %341 = "tosa.mul"(%340, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %342 = "tosa.mul"(%341, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %343 = "tosa.add"(%342, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %344 = "tosa.clamp"(%343) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %345 = "tosa.transpose"(%344, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %346 = "tosa.conv2d"(%345, %20, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %347 = "tosa.transpose"(%346, %39) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %348 = "tosa.sub"(%347, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %349 = "tosa.mul"(%348, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %350 = "tosa.mul"(%349, %21) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %351 = "tosa.add"(%350, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %352 = "tosa.add"(%351, %328) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %353 = "tosa.clamp"(%352) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %354 = "tosa.transpose"(%353, %40) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %355 = "tosa.conv2d"(%354, %24, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %356 = "tosa.transpose"(%355, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %357 = "tosa.sub"(%356, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %358 = "tosa.mul"(%357, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %359 = "tosa.mul"(%358, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %360 = "tosa.add"(%359, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %361 = "tosa.clamp"(%360) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %362 = "tosa.transpose"(%361, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %363 = "tosa.conv2d"(%362, %19, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %364 = "tosa.transpose"(%363, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %365 = "tosa.sub"(%364, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %366 = "tosa.mul"(%365, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %367 = "tosa.mul"(%366, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %368 = "tosa.add"(%367, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %369 = "tosa.clamp"(%368) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %370 = "tosa.transpose"(%369, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %371 = "tosa.conv2d"(%370, %20, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %372 = "tosa.transpose"(%371, %39) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %373 = "tosa.sub"(%372, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %374 = "tosa.mul"(%373, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %375 = "tosa.mul"(%374, %21) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %376 = "tosa.add"(%375, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %377 = "tosa.add"(%376, %353) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %378 = "tosa.clamp"(%377) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %379 = "tosa.transpose"(%378, %40) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %380 = "tosa.conv2d"(%379, %24, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %381 = "tosa.transpose"(%380, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %382 = "tosa.sub"(%381, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %383 = "tosa.mul"(%382, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %384 = "tosa.mul"(%383, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %385 = "tosa.add"(%384, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %386 = "tosa.clamp"(%385) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %387 = "tosa.transpose"(%386, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %388 = "tosa.conv2d"(%387, %19, %38) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %389 = "tosa.transpose"(%388, %39) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %390 = "tosa.sub"(%389, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %391 = "tosa.mul"(%390, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %392 = "tosa.mul"(%391, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %393 = "tosa.add"(%392, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %394 = "tosa.clamp"(%393) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %395 = "tosa.transpose"(%394, %40) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %396 = "tosa.conv2d"(%395, %20, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %397 = "tosa.transpose"(%396, %39) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %398 = "tosa.sub"(%397, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %399 = "tosa.mul"(%398, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %400 = "tosa.mul"(%399, %21) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %401 = "tosa.add"(%400, %21) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %402 = "tosa.add"(%401, %378) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %403 = "tosa.clamp"(%402) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %404 = "tosa.transpose"(%403, %40) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %405 = "tosa.conv2d"(%404, %25, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %406 = "tosa.transpose"(%405, %39) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %407 = "tosa.sub"(%406, %14) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %408 = "tosa.mul"(%407, %159) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %409 = "tosa.mul"(%408, %14) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %410 = "tosa.add"(%409, %14) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %411 = "tosa.clamp"(%410) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %412 = "tosa.transpose"(%411, %40) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %413 = "tosa.conv2d"(%412, %26, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %414 = "tosa.transpose"(%413, %39) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %415 = "tosa.sub"(%414, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %416 = "tosa.mul"(%415, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %417 = "tosa.mul"(%416, %14) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %418 = "tosa.add"(%417, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %419 = "tosa.clamp"(%418) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %420 = "tosa.transpose"(%419, %40) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %421 = "tosa.conv2d"(%420, %27, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %422 = "tosa.transpose"(%421, %39) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %423 = "tosa.sub"(%422, %28) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %424 = "tosa.rsqrt"(%29) : (tensor<2048x1x1xf32>) -> tensor<2048x1x1xf32>
    %425 = "tosa.reshape"(%424) {new_shape = array<i64: 1, 2048, 1, 1>} : (tensor<2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
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
    %436 = "tosa.clamp"(%435) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %437 = "tosa.transpose"(%436, %40) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %438 = "tosa.conv2d"(%437, %31, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %439 = "tosa.transpose"(%438, %39) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %440 = "tosa.sub"(%439, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %441 = "tosa.mul"(%440, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %442 = "tosa.mul"(%441, %14) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %443 = "tosa.add"(%442, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %444 = "tosa.clamp"(%443) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %445 = "tosa.transpose"(%444, %40) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %446 = "tosa.conv2d"(%445, %26, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %447 = "tosa.transpose"(%446, %39) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %448 = "tosa.sub"(%447, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %449 = "tosa.mul"(%448, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %450 = "tosa.mul"(%449, %14) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %451 = "tosa.add"(%450, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %452 = "tosa.clamp"(%451) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %453 = "tosa.transpose"(%452, %40) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %454 = "tosa.conv2d"(%453, %27, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %455 = "tosa.transpose"(%454, %39) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %456 = "tosa.sub"(%455, %28) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %457 = "tosa.mul"(%456, %425) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %458 = "tosa.mul"(%457, %28) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %459 = "tosa.add"(%458, %28) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %460 = "tosa.add"(%459, %436) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %461 = "tosa.clamp"(%460) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %462 = "tosa.transpose"(%461, %40) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %463 = "tosa.conv2d"(%462, %31, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %464 = "tosa.transpose"(%463, %39) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %465 = "tosa.sub"(%464, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %466 = "tosa.mul"(%465, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %467 = "tosa.mul"(%466, %14) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %468 = "tosa.add"(%467, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %469 = "tosa.clamp"(%468) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %470 = "tosa.transpose"(%469, %40) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %471 = "tosa.conv2d"(%470, %26, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %472 = "tosa.transpose"(%471, %39) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %473 = "tosa.sub"(%472, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %474 = "tosa.mul"(%473, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %475 = "tosa.mul"(%474, %14) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %476 = "tosa.add"(%475, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %477 = "tosa.clamp"(%476) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %478 = "tosa.transpose"(%477, %40) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %479 = "tosa.conv2d"(%478, %27, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %480 = "tosa.transpose"(%479, %39) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %481 = "tosa.sub"(%480, %28) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %482 = "tosa.mul"(%481, %425) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %483 = "tosa.mul"(%482, %28) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %484 = "tosa.add"(%483, %28) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %485 = "tosa.add"(%484, %461) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %486 = "tosa.clamp"(%485) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %487 = "tosa.transpose"(%486, %40) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %488 = "tosa.avg_pool2d"(%487) {acc_type = f32, kernel = array<i64: 7, 7>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>) -> tensor<1x1x1x2048xf32>
    %489 = "tosa.reshape"(%488) {new_shape = array<i64: 1, 1, 2048>} : (tensor<1x1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %490 = "tosa.matmul"(%489, %32) : (tensor<1x1x2048xf32>, tensor<1x2048x1000xf32>) -> tensor<1x1x1000xf32>
    %491 = "tosa.reshape"(%490) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %492 = "tosa.add"(%491, %33) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %492 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x7x7x3xf32>} : () -> tensor<64x7x7x3xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %2 = "tosa.const"() {value = dense<7.778000e-02> : tensor<64x1x1xf32>} : () -> tensor<64x1x1xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %4 = "tosa.const"() {value = dense<7.778000e-02> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x256xf32>} : () -> tensor<128x1x1x256xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %7 = "tosa.const"() {value = dense<7.778000e-02> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %9 = "tosa.const"() {value = dense<7.778000e-02> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1024x1x1xf32>} : () -> tensor<1x1024x1x1xf32>
    %11 = "tosa.const"() {value = dense<7.778000e-02> : tensor<1024x1x1xf32>} : () -> tensor<1024x1x1xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x2048x1x1xf32>} : () -> tensor<1x2048x1x1xf32>
    %13 = "tosa.const"() {value = dense<7.778000e-02> : tensor<2048x1x1xf32>} : () -> tensor<2048x1x1xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<2048x1x1x1024xf32>} : () -> tensor<2048x1x1x1024xf32>
    %15 = "tosa.const"() {value = dense<0.000000e+00> : tensor<2048xf32>} : () -> tensor<2048xf32>
    %16 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %17 = "tosa.const"() {value = dense<0.000000e+00> : tensor<512xf32>} : () -> tensor<512xf32>
    %18 = "tosa.const"() {value = dense<0.000000e+00> : tensor<128xf32>} : () -> tensor<128xf32>
    %19 = "tosa.const"() {value = dense<0.000000e+00> : tensor<256xf32>} : () -> tensor<256xf32>
    %20 = "tosa.const"() {value = dense<0.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000x2048xf32>} : () -> tensor<1x1000x2048xf32>
    %22 = "tosa.const"() {value = dense<0.0204081628> : tensor<1x7x7x2048xf32>} : () -> tensor<1x7x7x2048xf32>
    %23 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %24 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %25 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %26 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x2048xf32>} : () -> tensor<512x1x1x2048xf32>
    %27 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x512xf32>} : () -> tensor<512x3x3x512xf32>
    %28 = "tosa.const"() {value = dense<7.777000e-02> : tensor<2048x1x1x512xf32>} : () -> tensor<2048x1x1x512xf32>
    %29 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x2048xf32>} : () -> tensor<1024x1x1x2048xf32>
    %30 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x512xf32>} : () -> tensor<1024x1x1x512xf32>
    %31 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x1024xf32>} : () -> tensor<256x1x1x1024xf32>
    %32 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %33 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x256xf32>} : () -> tensor<1024x1x1x256xf32>
    %34 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x1024xf32>} : () -> tensor<512x1x1x1024xf32>
    %35 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x256xf32>} : () -> tensor<512x1x1x256xf32>
    %36 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x512xf32>} : () -> tensor<128x1x1x512xf32>
    %37 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x128xf32>} : () -> tensor<128x3x3x128xf32>
    %38 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x128xf32>} : () -> tensor<512x1x1x128xf32>
    %39 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x512xf32>} : () -> tensor<256x1x1x512xf32>
    %40 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x128xf32>} : () -> tensor<256x1x1x128xf32>
    %41 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x256xf32>} : () -> tensor<64x1x1x256xf32>
    %42 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x64xf32>} : () -> tensor<64x3x3x64xf32>
    %43 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x64xf32>} : () -> tensor<256x1x1x64xf32>
    %44 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x64xf32>} : () -> tensor<64x1x1x64xf32>
    %cst = arith.constant -3.40282347E+38 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %45 = "tosa.const"() {value = dense<7.777000e-02> : tensor<3x7x7x64xf32>} : () -> tensor<3x7x7x64xf32>
    %46 = ml_program.global_load @global0 : tensor<1x3x224x224xf32>
    %47 = "tosa.transpose"(%46, %25) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %48 = "tosa.conv2d"(%47, %0, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %49 = "tosa.transpose"(%48, %23) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %50 = "tosa.sub"(%49, %1) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %51 = "tosa.rsqrt"(%2) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %52 = "tosa.reshape"(%51) {new_shape = array<i64: 1, 64, 1, 1>} : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %53 = "tosa.mul"(%50, %52) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %54 = "tosa.mul"(%53, %1) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %55 = "tosa.add"(%54, %1) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %56 = "tosa.clamp"(%55) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %57 = "tosa.transpose"(%56, %25) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %58 = "tosa.max_pool2d"(%57) {kernel = array<i64: 3, 3>, pad = array<i64: 1, 0, 1, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    %59 = "tosa.conv2d"(%58, %44, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x1x1x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %60 = "tosa.transpose"(%59, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %61 = "tosa.sub"(%60, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %62 = "tosa.mul"(%61, %52) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %63 = "tosa.mul"(%62, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %64 = "tosa.add"(%63, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %65 = "tosa.clamp"(%64) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %66 = "tosa.transpose"(%65, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %67 = "tosa.conv2d"(%66, %42, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %68 = "tosa.transpose"(%67, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %69 = "tosa.sub"(%68, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %70 = "tosa.mul"(%69, %52) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %71 = "tosa.mul"(%70, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %72 = "tosa.add"(%71, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %73 = "tosa.clamp"(%72) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %74 = "tosa.transpose"(%73, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %75 = "tosa.conv2d"(%74, %43, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %76 = "tosa.transpose"(%75, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %77 = "tosa.sub"(%76, %3) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %78 = "tosa.rsqrt"(%4) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %79 = "tosa.reshape"(%78) {new_shape = array<i64: 1, 256, 1, 1>} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %80 = "tosa.mul"(%77, %79) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %81 = "tosa.mul"(%80, %3) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %82 = "tosa.add"(%81, %3) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %83 = "tosa.conv2d"(%58, %43, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %84 = "tosa.transpose"(%83, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %85 = "tosa.sub"(%84, %3) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %86 = "tosa.mul"(%85, %79) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %87 = "tosa.mul"(%86, %3) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %88 = "tosa.add"(%87, %3) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %89 = "tosa.add"(%82, %88) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %90 = "tosa.clamp"(%89) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %91 = "tosa.transpose"(%90, %25) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %92 = "tosa.conv2d"(%91, %41, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %93 = "tosa.transpose"(%92, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %94 = "tosa.sub"(%93, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %95 = "tosa.mul"(%94, %52) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %96 = "tosa.mul"(%95, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %97 = "tosa.add"(%96, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %98 = "tosa.clamp"(%97) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %99 = "tosa.transpose"(%98, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %100 = "tosa.conv2d"(%99, %42, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %101 = "tosa.transpose"(%100, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %102 = "tosa.sub"(%101, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %103 = "tosa.mul"(%102, %52) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %104 = "tosa.mul"(%103, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %105 = "tosa.add"(%104, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %106 = "tosa.clamp"(%105) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %107 = "tosa.transpose"(%106, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %108 = "tosa.conv2d"(%107, %43, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %109 = "tosa.transpose"(%108, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %110 = "tosa.sub"(%109, %3) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %111 = "tosa.mul"(%110, %79) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %112 = "tosa.mul"(%111, %3) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %113 = "tosa.add"(%112, %3) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %114 = "tosa.add"(%113, %90) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %115 = "tosa.clamp"(%114) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %116 = "tosa.transpose"(%115, %25) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %117 = "tosa.conv2d"(%116, %41, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %118 = "tosa.transpose"(%117, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %119 = "tosa.sub"(%118, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %120 = "tosa.mul"(%119, %52) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %121 = "tosa.mul"(%120, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %122 = "tosa.add"(%121, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %123 = "tosa.clamp"(%122) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %124 = "tosa.transpose"(%123, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %125 = "tosa.conv2d"(%124, %42, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %126 = "tosa.transpose"(%125, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %127 = "tosa.sub"(%126, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %128 = "tosa.mul"(%127, %52) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %129 = "tosa.mul"(%128, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %130 = "tosa.add"(%129, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %131 = "tosa.clamp"(%130) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %132 = "tosa.transpose"(%131, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %133 = "tosa.conv2d"(%132, %43, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %134 = "tosa.transpose"(%133, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %135 = "tosa.sub"(%134, %3) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %136 = "tosa.mul"(%135, %79) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %137 = "tosa.mul"(%136, %3) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %138 = "tosa.add"(%137, %3) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %139 = "tosa.add"(%138, %115) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %140 = "tosa.clamp"(%139) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %141 = "tosa.transpose"(%140, %25) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %142 = "tosa.conv2d"(%141, %5, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %143 = "tosa.transpose"(%142, %23) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %144 = "tosa.sub"(%143, %6) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %145 = "tosa.rsqrt"(%7) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %146 = "tosa.reshape"(%145) {new_shape = array<i64: 1, 128, 1, 1>} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %147 = "tosa.mul"(%144, %146) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %148 = "tosa.mul"(%147, %6) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %149 = "tosa.add"(%148, %6) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %150 = "tosa.clamp"(%149) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %151 = "tosa.transpose"(%150, %25) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %152 = "tosa.conv2d"(%151, %37, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %153 = "tosa.transpose"(%152, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %154 = "tosa.sub"(%153, %6) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %155 = "tosa.mul"(%154, %146) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %156 = "tosa.mul"(%155, %6) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %157 = "tosa.add"(%156, %6) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %158 = "tosa.clamp"(%157) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %159 = "tosa.transpose"(%158, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %160 = "tosa.conv2d"(%159, %38, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %161 = "tosa.transpose"(%160, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %162 = "tosa.sub"(%161, %8) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %163 = "tosa.rsqrt"(%9) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %164 = "tosa.reshape"(%163) {new_shape = array<i64: 1, 512, 1, 1>} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %165 = "tosa.mul"(%162, %164) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %166 = "tosa.mul"(%165, %8) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %167 = "tosa.add"(%166, %8) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %168 = "tosa.conv2d"(%141, %35, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %169 = "tosa.transpose"(%168, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %170 = "tosa.sub"(%169, %8) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %171 = "tosa.mul"(%170, %164) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %172 = "tosa.mul"(%171, %8) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %173 = "tosa.add"(%172, %8) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %174 = "tosa.add"(%167, %173) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %175 = "tosa.clamp"(%174) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %176 = "tosa.transpose"(%175, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %177 = "tosa.conv2d"(%176, %36, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %178 = "tosa.transpose"(%177, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %179 = "tosa.sub"(%178, %6) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %180 = "tosa.mul"(%179, %146) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %181 = "tosa.mul"(%180, %6) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %182 = "tosa.add"(%181, %6) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %183 = "tosa.clamp"(%182) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %184 = "tosa.transpose"(%183, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %185 = "tosa.conv2d"(%184, %37, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %186 = "tosa.transpose"(%185, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %187 = "tosa.sub"(%186, %6) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %188 = "tosa.mul"(%187, %146) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %189 = "tosa.mul"(%188, %6) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %190 = "tosa.add"(%189, %6) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %191 = "tosa.clamp"(%190) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %192 = "tosa.transpose"(%191, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %193 = "tosa.conv2d"(%192, %38, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %194 = "tosa.transpose"(%193, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %195 = "tosa.sub"(%194, %8) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %196 = "tosa.mul"(%195, %164) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %197 = "tosa.mul"(%196, %8) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %198 = "tosa.add"(%197, %8) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %199 = "tosa.add"(%198, %175) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %200 = "tosa.clamp"(%199) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %201 = "tosa.transpose"(%200, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %202 = "tosa.conv2d"(%201, %36, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %203 = "tosa.transpose"(%202, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %204 = "tosa.sub"(%203, %6) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %205 = "tosa.mul"(%204, %146) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %206 = "tosa.mul"(%205, %6) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %207 = "tosa.add"(%206, %6) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %208 = "tosa.clamp"(%207) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %209 = "tosa.transpose"(%208, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %210 = "tosa.conv2d"(%209, %37, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %211 = "tosa.transpose"(%210, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %212 = "tosa.sub"(%211, %6) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %213 = "tosa.mul"(%212, %146) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %214 = "tosa.mul"(%213, %6) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %215 = "tosa.add"(%214, %6) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %216 = "tosa.clamp"(%215) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %217 = "tosa.transpose"(%216, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %218 = "tosa.conv2d"(%217, %38, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %219 = "tosa.transpose"(%218, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %220 = "tosa.sub"(%219, %8) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %221 = "tosa.mul"(%220, %164) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %222 = "tosa.mul"(%221, %8) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %223 = "tosa.add"(%222, %8) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %224 = "tosa.add"(%223, %200) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %225 = "tosa.clamp"(%224) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %226 = "tosa.transpose"(%225, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %227 = "tosa.conv2d"(%226, %36, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %228 = "tosa.transpose"(%227, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %229 = "tosa.sub"(%228, %6) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %230 = "tosa.mul"(%229, %146) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %231 = "tosa.mul"(%230, %6) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %232 = "tosa.add"(%231, %6) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %233 = "tosa.clamp"(%232) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %234 = "tosa.transpose"(%233, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %235 = "tosa.conv2d"(%234, %37, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %236 = "tosa.transpose"(%235, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %237 = "tosa.sub"(%236, %6) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %238 = "tosa.mul"(%237, %146) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %239 = "tosa.mul"(%238, %6) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %240 = "tosa.add"(%239, %6) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %241 = "tosa.clamp"(%240) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %242 = "tosa.transpose"(%241, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %243 = "tosa.conv2d"(%242, %38, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %244 = "tosa.transpose"(%243, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %245 = "tosa.sub"(%244, %8) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %246 = "tosa.mul"(%245, %164) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %247 = "tosa.mul"(%246, %8) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %248 = "tosa.add"(%247, %8) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %249 = "tosa.add"(%248, %225) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %250 = "tosa.clamp"(%249) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %251 = "tosa.transpose"(%250, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %252 = "tosa.conv2d"(%251, %39, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %253 = "tosa.transpose"(%252, %23) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %254 = "tosa.sub"(%253, %3) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %255 = "tosa.mul"(%254, %79) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %256 = "tosa.mul"(%255, %3) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %257 = "tosa.add"(%256, %3) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %258 = "tosa.clamp"(%257) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %259 = "tosa.transpose"(%258, %25) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %260 = "tosa.conv2d"(%259, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %261 = "tosa.transpose"(%260, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %262 = "tosa.sub"(%261, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %263 = "tosa.mul"(%262, %79) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %264 = "tosa.mul"(%263, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %265 = "tosa.add"(%264, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %266 = "tosa.clamp"(%265) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %267 = "tosa.transpose"(%266, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %268 = "tosa.conv2d"(%267, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %269 = "tosa.transpose"(%268, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %270 = "tosa.sub"(%269, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %271 = "tosa.rsqrt"(%11) : (tensor<1024x1x1xf32>) -> tensor<1024x1x1xf32>
    %272 = "tosa.reshape"(%271) {new_shape = array<i64: 1, 1024, 1, 1>} : (tensor<1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %273 = "tosa.mul"(%270, %272) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %274 = "tosa.mul"(%273, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %275 = "tosa.add"(%274, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %276 = "tosa.conv2d"(%251, %30, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %277 = "tosa.transpose"(%276, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %278 = "tosa.sub"(%277, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %279 = "tosa.mul"(%278, %272) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %280 = "tosa.mul"(%279, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %281 = "tosa.add"(%280, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %282 = "tosa.add"(%275, %281) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %283 = "tosa.clamp"(%282) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %284 = "tosa.transpose"(%283, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %285 = "tosa.conv2d"(%284, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %286 = "tosa.transpose"(%285, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %287 = "tosa.sub"(%286, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %288 = "tosa.mul"(%287, %79) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %289 = "tosa.mul"(%288, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %290 = "tosa.add"(%289, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %291 = "tosa.clamp"(%290) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %292 = "tosa.transpose"(%291, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %293 = "tosa.conv2d"(%292, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %294 = "tosa.transpose"(%293, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %295 = "tosa.sub"(%294, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %296 = "tosa.mul"(%295, %79) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %297 = "tosa.mul"(%296, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %298 = "tosa.add"(%297, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %299 = "tosa.clamp"(%298) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %300 = "tosa.transpose"(%299, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %301 = "tosa.conv2d"(%300, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %302 = "tosa.transpose"(%301, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %303 = "tosa.sub"(%302, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %304 = "tosa.mul"(%303, %272) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %305 = "tosa.mul"(%304, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %306 = "tosa.add"(%305, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %307 = "tosa.add"(%306, %283) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %308 = "tosa.clamp"(%307) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %309 = "tosa.transpose"(%308, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %310 = "tosa.conv2d"(%309, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %311 = "tosa.transpose"(%310, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %312 = "tosa.sub"(%311, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %313 = "tosa.mul"(%312, %79) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %314 = "tosa.mul"(%313, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %315 = "tosa.add"(%314, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %316 = "tosa.clamp"(%315) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %317 = "tosa.transpose"(%316, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %318 = "tosa.conv2d"(%317, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %319 = "tosa.transpose"(%318, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %320 = "tosa.sub"(%319, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %321 = "tosa.mul"(%320, %79) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %322 = "tosa.mul"(%321, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %323 = "tosa.add"(%322, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %324 = "tosa.clamp"(%323) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %325 = "tosa.transpose"(%324, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %326 = "tosa.conv2d"(%325, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %327 = "tosa.transpose"(%326, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %328 = "tosa.sub"(%327, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %329 = "tosa.mul"(%328, %272) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %330 = "tosa.mul"(%329, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %331 = "tosa.add"(%330, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %332 = "tosa.add"(%331, %308) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %333 = "tosa.clamp"(%332) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %334 = "tosa.transpose"(%333, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %335 = "tosa.conv2d"(%334, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %336 = "tosa.transpose"(%335, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %337 = "tosa.sub"(%336, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %338 = "tosa.mul"(%337, %79) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %339 = "tosa.mul"(%338, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %340 = "tosa.add"(%339, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %341 = "tosa.clamp"(%340) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %342 = "tosa.transpose"(%341, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %343 = "tosa.conv2d"(%342, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %344 = "tosa.transpose"(%343, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %345 = "tosa.sub"(%344, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %346 = "tosa.mul"(%345, %79) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %347 = "tosa.mul"(%346, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %348 = "tosa.add"(%347, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %349 = "tosa.clamp"(%348) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %350 = "tosa.transpose"(%349, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %351 = "tosa.conv2d"(%350, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %352 = "tosa.transpose"(%351, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %353 = "tosa.sub"(%352, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %354 = "tosa.mul"(%353, %272) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %355 = "tosa.mul"(%354, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %356 = "tosa.add"(%355, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %357 = "tosa.add"(%356, %333) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %358 = "tosa.clamp"(%357) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %359 = "tosa.transpose"(%358, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %360 = "tosa.conv2d"(%359, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %361 = "tosa.transpose"(%360, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %362 = "tosa.sub"(%361, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %363 = "tosa.mul"(%362, %79) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %364 = "tosa.mul"(%363, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %365 = "tosa.add"(%364, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %366 = "tosa.clamp"(%365) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %367 = "tosa.transpose"(%366, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %368 = "tosa.conv2d"(%367, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %369 = "tosa.transpose"(%368, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %370 = "tosa.sub"(%369, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %371 = "tosa.mul"(%370, %79) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %372 = "tosa.mul"(%371, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %373 = "tosa.add"(%372, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %374 = "tosa.clamp"(%373) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %375 = "tosa.transpose"(%374, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %376 = "tosa.conv2d"(%375, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %377 = "tosa.transpose"(%376, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %378 = "tosa.sub"(%377, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %379 = "tosa.mul"(%378, %272) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %380 = "tosa.mul"(%379, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %381 = "tosa.add"(%380, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %382 = "tosa.add"(%381, %358) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %383 = "tosa.clamp"(%382) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %384 = "tosa.transpose"(%383, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %385 = "tosa.conv2d"(%384, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %386 = "tosa.transpose"(%385, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %387 = "tosa.sub"(%386, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %388 = "tosa.mul"(%387, %79) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %389 = "tosa.mul"(%388, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %390 = "tosa.add"(%389, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %391 = "tosa.clamp"(%390) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %392 = "tosa.transpose"(%391, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %393 = "tosa.conv2d"(%392, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %394 = "tosa.transpose"(%393, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %395 = "tosa.sub"(%394, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %396 = "tosa.mul"(%395, %79) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %397 = "tosa.mul"(%396, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %398 = "tosa.add"(%397, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %399 = "tosa.clamp"(%398) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %400 = "tosa.transpose"(%399, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %401 = "tosa.conv2d"(%400, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %402 = "tosa.transpose"(%401, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %403 = "tosa.sub"(%402, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %404 = "tosa.mul"(%403, %272) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %405 = "tosa.mul"(%404, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %406 = "tosa.add"(%405, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %407 = "tosa.add"(%406, %383) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %408 = "tosa.clamp"(%407) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %409 = "tosa.transpose"(%408, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %410 = "tosa.conv2d"(%409, %34, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %411 = "tosa.transpose"(%410, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %412 = "tosa.sub"(%411, %8) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %413 = "tosa.mul"(%412, %164) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %414 = "tosa.mul"(%413, %8) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %415 = "tosa.add"(%414, %8) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %416 = "tosa.clamp"(%415) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %417 = "tosa.transpose"(%416, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %418 = "tosa.conv2d"(%417, %27, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %419 = "tosa.transpose"(%418, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %420 = "tosa.sub"(%419, %8) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %421 = "tosa.mul"(%420, %164) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %422 = "tosa.mul"(%421, %8) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %423 = "tosa.add"(%422, %8) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %424 = "tosa.clamp"(%423) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %425 = "tosa.transpose"(%424, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %426 = "tosa.conv2d"(%425, %28, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %427 = "tosa.transpose"(%426, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %428 = "tosa.sub"(%427, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %429 = "tosa.rsqrt"(%13) : (tensor<2048x1x1xf32>) -> tensor<2048x1x1xf32>
    %430 = "tosa.reshape"(%429) {new_shape = array<i64: 1, 2048, 1, 1>} : (tensor<2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %431 = "tosa.mul"(%428, %430) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %432 = "tosa.mul"(%431, %12) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %433 = "tosa.add"(%432, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %434 = "tosa.conv2d"(%409, %14, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %435 = "tosa.transpose"(%434, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %436 = "tosa.sub"(%435, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %437 = "tosa.mul"(%436, %430) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %438 = "tosa.mul"(%437, %12) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %439 = "tosa.add"(%438, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %440 = "tosa.add"(%433, %439) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %441 = "tosa.clamp"(%440) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %442 = "tosa.transpose"(%441, %25) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %443 = "tosa.conv2d"(%442, %26, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %444 = "tosa.transpose"(%443, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %445 = "tosa.sub"(%444, %8) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %446 = "tosa.mul"(%445, %164) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %447 = "tosa.mul"(%446, %8) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %448 = "tosa.add"(%447, %8) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %449 = "tosa.clamp"(%448) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %450 = "tosa.transpose"(%449, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %451 = "tosa.conv2d"(%450, %27, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %452 = "tosa.transpose"(%451, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %453 = "tosa.sub"(%452, %8) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %454 = "tosa.mul"(%453, %164) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %455 = "tosa.mul"(%454, %8) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %456 = "tosa.add"(%455, %8) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %457 = "tosa.clamp"(%456) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %458 = "tosa.transpose"(%457, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %459 = "tosa.conv2d"(%458, %28, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %460 = "tosa.transpose"(%459, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %461 = "tosa.sub"(%460, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %462 = "tosa.mul"(%461, %430) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %463 = "tosa.mul"(%462, %12) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %464 = "tosa.add"(%463, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %465 = "tosa.add"(%464, %441) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %466 = "tosa.clamp"(%465) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %467 = "tosa.transpose"(%466, %25) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %468 = "tosa.conv2d"(%467, %26, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %469 = "tosa.transpose"(%468, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %470 = "tosa.sub"(%469, %8) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %471 = "tosa.mul"(%470, %164) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %472 = "tosa.mul"(%471, %8) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %473 = "tosa.add"(%472, %8) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %474 = "tosa.clamp"(%473) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %475 = "tosa.transpose"(%474, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %476 = "tosa.conv2d"(%475, %27, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %477 = "tosa.transpose"(%476, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %478 = "tosa.sub"(%477, %8) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %479 = "tosa.mul"(%478, %164) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %480 = "tosa.mul"(%479, %8) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %481 = "tosa.add"(%480, %8) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %482 = "tosa.clamp"(%481) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %483 = "tosa.transpose"(%482, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %484 = "tosa.conv2d"(%483, %28, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %485 = "tosa.transpose"(%484, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %486 = "tosa.sub"(%485, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %487 = "tosa.mul"(%486, %430) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %488 = "tosa.mul"(%487, %12) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %489 = "tosa.add"(%488, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %490 = "tosa.add"(%489, %466) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %491 = "tosa.clamp"(%490) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %492 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %493 = "tosa.matmul"(%492, %21) : (tensor<1x1x1000xf32>, tensor<1x1000x2048xf32>) -> tensor<1x1x2048xf32>
    %494 = "tosa.reshape"(%493) {new_shape = array<i64: 1, 1, 1, 2048>} : (tensor<1x1x2048xf32>) -> tensor<1x1x1x2048xf32>
    %495 = "tosa.mul"(%494, %22) {shift = 0 : i32} : (tensor<1x1x1x2048xf32>, tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %496 = "tosa.transpose"(%495, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %497 = "tosa.equal"(%490, %491) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %498 = "tosa.select"(%497, %496, %24) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %499 = "tosa.mul"(%498, %12) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %500 = "tosa.mul"(%430, %499) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %501 = "tosa.transpose"(%500, %25) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %502 = tensor.empty() : tensor<512xf32>
    %503 = "tosa.transpose_conv2d"(%501, %26, %502) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %504 = "tosa.transpose"(%503, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %505 = "tosa.equal"(%481, %482) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %506 = "tosa.select"(%505, %504, %24) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %507 = "tosa.mul"(%506, %8) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %508 = "tosa.mul"(%164, %507) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %509 = "tosa.transpose"(%508, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %510 = "tosa.transpose_conv2d"(%509, %27, %502) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %511 = "tosa.transpose"(%510, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %512 = "tosa.equal"(%473, %474) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %513 = "tosa.select"(%512, %511, %24) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %514 = "tosa.mul"(%513, %8) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %515 = "tosa.mul"(%164, %514) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %516 = "tosa.transpose"(%515, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %517 = tensor.empty() : tensor<2048xf32>
    %518 = "tosa.transpose_conv2d"(%516, %28, %517) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 2048>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %519 = "tosa.transpose"(%518, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %520 = "tosa.add"(%498, %519) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %521 = "tosa.equal"(%465, %466) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %522 = "tosa.select"(%521, %520, %24) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %523 = "tosa.mul"(%522, %12) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %524 = "tosa.mul"(%430, %523) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %525 = "tosa.transpose"(%524, %25) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %526 = "tosa.transpose_conv2d"(%525, %26, %502) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %527 = "tosa.transpose"(%526, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %528 = "tosa.equal"(%456, %457) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %529 = "tosa.select"(%528, %527, %24) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %530 = "tosa.mul"(%529, %8) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %531 = "tosa.mul"(%164, %530) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %532 = "tosa.transpose"(%531, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %533 = "tosa.transpose_conv2d"(%532, %27, %502) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %534 = "tosa.transpose"(%533, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %535 = "tosa.equal"(%448, %449) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %536 = "tosa.select"(%535, %534, %24) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %537 = "tosa.mul"(%536, %8) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %538 = "tosa.mul"(%164, %537) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %539 = "tosa.transpose"(%538, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %540 = "tosa.transpose_conv2d"(%539, %28, %517) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 2048>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %541 = "tosa.transpose"(%540, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %542 = "tosa.add"(%522, %541) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %543 = "tosa.equal"(%440, %441) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %544 = "tosa.select"(%543, %542, %24) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %545 = "tosa.mul"(%544, %12) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %546 = "tosa.mul"(%430, %545) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %547 = "tosa.transpose"(%546, %25) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %548 = tensor.empty() : tensor<1024xf32>
    %549 = "tosa.transpose_conv2d"(%547, %29, %548) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 2, 2>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %550 = "tosa.transpose_conv2d"(%547, %26, %502) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %551 = "tosa.transpose"(%550, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %552 = "tosa.equal"(%423, %424) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %553 = "tosa.select"(%552, %551, %24) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %554 = "tosa.mul"(%553, %8) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %555 = "tosa.mul"(%164, %554) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %556 = "tosa.transpose"(%555, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %557 = "tosa.transpose_conv2d"(%556, %27, %502) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 2, 2>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %558 = "tosa.transpose"(%557, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %559 = "tosa.equal"(%415, %416) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %560 = "tosa.select"(%559, %558, %24) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %561 = "tosa.mul"(%560, %8) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %562 = "tosa.mul"(%164, %561) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %563 = "tosa.transpose"(%562, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %564 = "tosa.transpose_conv2d"(%563, %30, %548) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %565 = "tosa.add"(%549, %564) : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %566 = "tosa.transpose"(%565, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %567 = "tosa.equal"(%407, %408) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %568 = "tosa.select"(%567, %566, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %569 = "tosa.mul"(%568, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %570 = "tosa.mul"(%272, %569) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %571 = "tosa.transpose"(%570, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %572 = tensor.empty() : tensor<256xf32>
    %573 = "tosa.transpose_conv2d"(%571, %31, %572) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %574 = "tosa.transpose"(%573, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %575 = "tosa.equal"(%398, %399) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %576 = "tosa.select"(%575, %574, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %577 = "tosa.mul"(%576, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %578 = "tosa.mul"(%79, %577) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %579 = "tosa.transpose"(%578, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %580 = "tosa.transpose_conv2d"(%579, %32, %572) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %581 = "tosa.transpose"(%580, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %582 = "tosa.equal"(%390, %391) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %583 = "tosa.select"(%582, %581, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %584 = "tosa.mul"(%583, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %585 = "tosa.mul"(%79, %584) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %586 = "tosa.transpose"(%585, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %587 = "tosa.transpose_conv2d"(%586, %33, %548) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %588 = "tosa.transpose"(%587, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %589 = "tosa.add"(%568, %588) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %590 = "tosa.equal"(%382, %383) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %591 = "tosa.select"(%590, %589, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %592 = "tosa.mul"(%591, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %593 = "tosa.mul"(%272, %592) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %594 = "tosa.transpose"(%593, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %595 = "tosa.transpose_conv2d"(%594, %31, %572) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %596 = "tosa.transpose"(%595, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %597 = "tosa.equal"(%373, %374) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %598 = "tosa.select"(%597, %596, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %599 = "tosa.mul"(%598, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %600 = "tosa.mul"(%79, %599) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %601 = "tosa.transpose"(%600, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %602 = "tosa.transpose_conv2d"(%601, %32, %572) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %603 = "tosa.transpose"(%602, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %604 = "tosa.equal"(%365, %366) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %605 = "tosa.select"(%604, %603, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %606 = "tosa.mul"(%605, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %607 = "tosa.mul"(%79, %606) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %608 = "tosa.transpose"(%607, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %609 = "tosa.transpose_conv2d"(%608, %33, %548) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %610 = "tosa.transpose"(%609, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %611 = "tosa.add"(%591, %610) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %612 = "tosa.equal"(%357, %358) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %613 = "tosa.select"(%612, %611, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %614 = "tosa.mul"(%613, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %615 = "tosa.mul"(%272, %614) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %616 = "tosa.transpose"(%615, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %617 = "tosa.transpose_conv2d"(%616, %31, %572) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %618 = "tosa.transpose"(%617, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %619 = "tosa.equal"(%348, %349) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %620 = "tosa.select"(%619, %618, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %621 = "tosa.mul"(%620, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %622 = "tosa.mul"(%79, %621) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %623 = "tosa.transpose"(%622, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %624 = "tosa.transpose_conv2d"(%623, %32, %572) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %625 = "tosa.transpose"(%624, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %626 = "tosa.equal"(%340, %341) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %627 = "tosa.select"(%626, %625, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %628 = "tosa.mul"(%627, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %629 = "tosa.mul"(%79, %628) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %630 = "tosa.transpose"(%629, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %631 = "tosa.transpose_conv2d"(%630, %33, %548) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %632 = "tosa.transpose"(%631, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %633 = "tosa.add"(%613, %632) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %634 = "tosa.equal"(%332, %333) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %635 = "tosa.select"(%634, %633, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %636 = "tosa.mul"(%635, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %637 = "tosa.mul"(%272, %636) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %638 = "tosa.transpose"(%637, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %639 = "tosa.transpose_conv2d"(%638, %31, %572) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %640 = "tosa.transpose"(%639, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %641 = "tosa.equal"(%323, %324) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %642 = "tosa.select"(%641, %640, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %643 = "tosa.mul"(%642, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %644 = "tosa.mul"(%79, %643) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %645 = "tosa.transpose"(%644, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %646 = "tosa.transpose_conv2d"(%645, %32, %572) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %647 = "tosa.transpose"(%646, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %648 = "tosa.equal"(%315, %316) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %649 = "tosa.select"(%648, %647, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %650 = "tosa.mul"(%649, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %651 = "tosa.mul"(%79, %650) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %652 = "tosa.transpose"(%651, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %653 = "tosa.transpose_conv2d"(%652, %33, %548) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %654 = "tosa.transpose"(%653, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %655 = "tosa.add"(%635, %654) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %656 = "tosa.equal"(%307, %308) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %657 = "tosa.select"(%656, %655, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %658 = "tosa.mul"(%657, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %659 = "tosa.mul"(%272, %658) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %660 = "tosa.transpose"(%659, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %661 = "tosa.transpose_conv2d"(%660, %31, %572) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %662 = "tosa.transpose"(%661, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %663 = "tosa.equal"(%298, %299) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %664 = "tosa.select"(%663, %662, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %665 = "tosa.mul"(%664, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %666 = "tosa.mul"(%79, %665) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %667 = "tosa.transpose"(%666, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %668 = "tosa.transpose_conv2d"(%667, %32, %572) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %669 = "tosa.transpose"(%668, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %670 = "tosa.equal"(%290, %291) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %671 = "tosa.select"(%670, %669, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %672 = "tosa.mul"(%671, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %673 = "tosa.mul"(%79, %672) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %674 = "tosa.transpose"(%673, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %675 = "tosa.transpose_conv2d"(%674, %33, %548) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %676 = "tosa.transpose"(%675, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %677 = "tosa.add"(%657, %676) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %678 = "tosa.equal"(%282, %283) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %679 = "tosa.select"(%678, %677, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %680 = "tosa.mul"(%679, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %681 = "tosa.mul"(%272, %680) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %682 = "tosa.transpose"(%681, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %683 = "tosa.transpose_conv2d"(%682, %34, %502) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %684 = "tosa.transpose_conv2d"(%682, %31, %572) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %685 = "tosa.transpose"(%684, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %686 = "tosa.equal"(%265, %266) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %687 = "tosa.select"(%686, %685, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %688 = "tosa.mul"(%687, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %689 = "tosa.mul"(%79, %688) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %690 = "tosa.transpose"(%689, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %691 = "tosa.transpose_conv2d"(%690, %32, %572) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %692 = "tosa.transpose"(%691, %23) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %693 = "tosa.equal"(%257, %258) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %694 = "tosa.select"(%693, %692, %24) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %695 = "tosa.mul"(%694, %3) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %696 = "tosa.mul"(%79, %695) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %697 = "tosa.transpose"(%696, %25) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %698 = "tosa.transpose_conv2d"(%697, %35, %502) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %699 = "tosa.add"(%683, %698) : (tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %700 = "tosa.transpose"(%699, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %701 = "tosa.equal"(%249, %250) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %702 = "tosa.select"(%701, %700, %24) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %703 = "tosa.mul"(%702, %8) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %704 = "tosa.mul"(%164, %703) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %705 = "tosa.transpose"(%704, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %706 = tensor.empty() : tensor<128xf32>
    %707 = "tosa.transpose_conv2d"(%705, %36, %706) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %708 = "tosa.transpose"(%707, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %709 = "tosa.equal"(%240, %241) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %710 = "tosa.select"(%709, %708, %24) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %711 = "tosa.mul"(%710, %6) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %712 = "tosa.mul"(%146, %711) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %713 = "tosa.transpose"(%712, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %714 = "tosa.transpose_conv2d"(%713, %37, %706) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %715 = "tosa.transpose"(%714, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %716 = "tosa.equal"(%232, %233) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %717 = "tosa.select"(%716, %715, %24) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %718 = "tosa.mul"(%717, %6) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %719 = "tosa.mul"(%146, %718) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %720 = "tosa.transpose"(%719, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %721 = "tosa.transpose_conv2d"(%720, %38, %502) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %722 = "tosa.transpose"(%721, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %723 = "tosa.add"(%702, %722) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %724 = "tosa.equal"(%224, %225) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %725 = "tosa.select"(%724, %723, %24) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %726 = "tosa.mul"(%725, %8) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %727 = "tosa.mul"(%164, %726) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %728 = "tosa.transpose"(%727, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %729 = "tosa.transpose_conv2d"(%728, %36, %706) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %730 = "tosa.transpose"(%729, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %731 = "tosa.equal"(%215, %216) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %732 = "tosa.select"(%731, %730, %24) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %733 = "tosa.mul"(%732, %6) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %734 = "tosa.mul"(%146, %733) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %735 = "tosa.transpose"(%734, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %736 = "tosa.transpose_conv2d"(%735, %37, %706) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %737 = "tosa.transpose"(%736, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %738 = "tosa.equal"(%207, %208) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %739 = "tosa.select"(%738, %737, %24) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %740 = "tosa.mul"(%739, %6) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %741 = "tosa.mul"(%146, %740) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %742 = "tosa.transpose"(%741, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %743 = "tosa.transpose_conv2d"(%742, %38, %502) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %744 = "tosa.transpose"(%743, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %745 = "tosa.add"(%725, %744) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %746 = "tosa.equal"(%199, %200) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %747 = "tosa.select"(%746, %745, %24) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %748 = "tosa.mul"(%747, %8) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %749 = "tosa.mul"(%164, %748) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %750 = "tosa.transpose"(%749, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %751 = "tosa.transpose_conv2d"(%750, %36, %706) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %752 = "tosa.transpose"(%751, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %753 = "tosa.equal"(%190, %191) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %754 = "tosa.select"(%753, %752, %24) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %755 = "tosa.mul"(%754, %6) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %756 = "tosa.mul"(%146, %755) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %757 = "tosa.transpose"(%756, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %758 = "tosa.transpose_conv2d"(%757, %37, %706) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %759 = "tosa.transpose"(%758, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %760 = "tosa.equal"(%182, %183) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %761 = "tosa.select"(%760, %759, %24) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %762 = "tosa.mul"(%761, %6) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %763 = "tosa.mul"(%146, %762) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %764 = "tosa.transpose"(%763, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %765 = "tosa.transpose_conv2d"(%764, %38, %502) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %766 = "tosa.transpose"(%765, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %767 = "tosa.add"(%747, %766) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %768 = "tosa.equal"(%174, %175) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %769 = "tosa.select"(%768, %767, %24) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %770 = "tosa.mul"(%769, %8) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %771 = "tosa.mul"(%164, %770) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %772 = "tosa.transpose"(%771, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %773 = "tosa.transpose_conv2d"(%772, %39, %572) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %774 = "tosa.transpose_conv2d"(%772, %36, %706) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %775 = "tosa.transpose"(%774, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %776 = "tosa.equal"(%157, %158) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %777 = "tosa.select"(%776, %775, %24) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %778 = "tosa.mul"(%777, %6) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %779 = "tosa.mul"(%146, %778) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %780 = "tosa.transpose"(%779, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %781 = "tosa.transpose_conv2d"(%780, %37, %706) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %782 = "tosa.transpose"(%781, %23) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %783 = "tosa.equal"(%149, %150) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %784 = "tosa.select"(%783, %782, %24) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %785 = "tosa.mul"(%784, %6) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %786 = "tosa.mul"(%146, %785) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %787 = "tosa.transpose"(%786, %25) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %788 = "tosa.transpose_conv2d"(%787, %40, %572) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %789 = "tosa.add"(%773, %788) : (tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %790 = "tosa.transpose"(%789, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %791 = "tosa.equal"(%139, %140) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %792 = "tosa.select"(%791, %790, %24) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %793 = "tosa.mul"(%792, %3) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %794 = "tosa.mul"(%79, %793) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %795 = "tosa.transpose"(%794, %25) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %796 = tensor.empty() : tensor<64xf32>
    %797 = "tosa.transpose_conv2d"(%795, %41, %796) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %798 = "tosa.transpose"(%797, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %799 = "tosa.equal"(%130, %131) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %800 = "tosa.select"(%799, %798, %24) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %801 = "tosa.mul"(%800, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %802 = "tosa.mul"(%52, %801) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %803 = "tosa.transpose"(%802, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %804 = "tosa.transpose_conv2d"(%803, %42, %796) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %805 = "tosa.transpose"(%804, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %806 = "tosa.equal"(%122, %123) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %807 = "tosa.select"(%806, %805, %24) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %808 = "tosa.mul"(%807, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %809 = "tosa.mul"(%52, %808) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %810 = "tosa.transpose"(%809, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %811 = "tosa.transpose_conv2d"(%810, %43, %572) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %812 = "tosa.transpose"(%811, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %813 = "tosa.add"(%792, %812) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %814 = "tosa.equal"(%114, %115) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %815 = "tosa.select"(%814, %813, %24) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %816 = "tosa.mul"(%815, %3) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %817 = "tosa.mul"(%79, %816) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %818 = "tosa.transpose"(%817, %25) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %819 = "tosa.transpose_conv2d"(%818, %41, %796) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %820 = "tosa.transpose"(%819, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %821 = "tosa.equal"(%105, %106) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %822 = "tosa.select"(%821, %820, %24) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %823 = "tosa.mul"(%822, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %824 = "tosa.mul"(%52, %823) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %825 = "tosa.transpose"(%824, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %826 = "tosa.transpose_conv2d"(%825, %42, %796) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %827 = "tosa.transpose"(%826, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %828 = "tosa.equal"(%97, %98) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %829 = "tosa.select"(%828, %827, %24) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %830 = "tosa.mul"(%829, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %831 = "tosa.mul"(%52, %830) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %832 = "tosa.transpose"(%831, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %833 = "tosa.transpose_conv2d"(%832, %43, %572) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %834 = "tosa.transpose"(%833, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %835 = "tosa.add"(%815, %834) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %836 = "tosa.equal"(%89, %90) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %837 = "tosa.select"(%836, %835, %24) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %838 = "tosa.mul"(%837, %3) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %839 = "tosa.mul"(%79, %838) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %840 = "tosa.transpose"(%839, %25) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %841 = "tosa.transpose_conv2d"(%840, %41, %796) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %842 = "tosa.transpose"(%841, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %843 = "tosa.equal"(%72, %73) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %844 = "tosa.select"(%843, %842, %24) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %845 = "tosa.mul"(%844, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %846 = "tosa.mul"(%52, %845) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %847 = "tosa.transpose"(%846, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %848 = "tosa.transpose_conv2d"(%847, %42, %796) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %849 = "tosa.transpose"(%848, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %850 = "tosa.equal"(%64, %65) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %851 = "tosa.select"(%850, %849, %24) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %852 = "tosa.mul"(%851, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %853 = "tosa.mul"(%52, %852) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %854 = "tosa.transpose"(%853, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %855 = "tosa.transpose_conv2d"(%854, %44, %796) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x1x1x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %856 = "tosa.add"(%841, %855) : (tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %padded = tensor.pad %57 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %857 = tensor.empty() : tensor<1x113x113x64xf32>
    %858 = tensor.empty() : tensor<3x3xf32>
    %859 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded, %858, %58, %856 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%857 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_1: f32, %in_2: f32, %in_3: f32, %out: f32):
      %869 = arith.cmpf oge, %in, %in_2 : f32
      %870 = arith.select %869, %in_3, %cst_0 : f32
      %871 = arith.addf %out, %870 : f32
      linalg.yield %871 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice = tensor.extract_slice %859[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %860 = "tosa.transpose"(%extracted_slice, %23) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %861 = "tosa.equal"(%55, %56) : (tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xi1>
    %862 = "tosa.select"(%861, %860, %24) : (tensor<1x64x112x112xi1>, tensor<1x64x112x112xf32>, tensor<f32>) -> tensor<1x64x112x112xf32>
    %863 = "tosa.mul"(%862, %1) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %864 = "tosa.mul"(%52, %863) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %865 = "tosa.transpose"(%864, %25) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %866 = tensor.empty() : tensor<3xf32>
    %867 = "tosa.transpose_conv2d"(%865, %45, %866) {out_pad = array<i64: -3, -3, -3, -3>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>, tensor<3x7x7x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %868 = "tosa.transpose"(%867, %23) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %868 : tensor<1x3x224x224xf32>
  }
}

