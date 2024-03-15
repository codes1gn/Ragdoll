#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "ResNet"} {
  ml_program.global private mutable @global23 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global22 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global21 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global20 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global19 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global18 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global17 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global16 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global15 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global14 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global13 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global12 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global11 : tensor<1x28x28x128xf32>
  ml_program.global private mutable @global10 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global9 : tensor<1x28x28x512xf32>
  ml_program.global private mutable @global8 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global7 : tensor<1x56x56x128xf32>
  ml_program.global private mutable @global6 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global5 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global4 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global3 : tensor<1x56x56x64xf32>
  ml_program.global private mutable @global2 : tensor<64x7x7x3xf32>
  ml_program.global private mutable @global1 : tensor<1x1024x1x1xf32>
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
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1024x1x1xf32>} : () -> tensor<1x1024x1x1xf32>
    %21 = "tosa.const"() {value = dense<7.778000e-02> : tensor<1024x1x1xf32>} : () -> tensor<1024x1x1xf32>
    %22 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x512xf32>} : () -> tensor<1024x1x1x512xf32>
    %23 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x1024xf32>} : () -> tensor<256x1x1x1024xf32>
    %24 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x1024xf32>} : () -> tensor<512x1x1x1024xf32>
    %25 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x512xf32>} : () -> tensor<512x3x3x512xf32>
    %26 = "tosa.const"() {value = dense<7.777000e-02> : tensor<2048x1x1x512xf32>} : () -> tensor<2048x1x1x512xf32>
    %27 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x2048x1x1xf32>} : () -> tensor<1x2048x1x1xf32>
    %28 = "tosa.const"() {value = dense<7.778000e-02> : tensor<2048x1x1xf32>} : () -> tensor<2048x1x1xf32>
    %29 = "tosa.const"() {value = dense<7.777000e-02> : tensor<2048x1x1x1024xf32>} : () -> tensor<2048x1x1x1024xf32>
    %30 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x2048xf32>} : () -> tensor<512x1x1x2048xf32>
    %31 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x2048x1000xf32>} : () -> tensor<1x2048x1000xf32>
    %32 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000xf32>} : () -> tensor<1x1000xf32>
    %33 = "tosa.const"() {value = dense<0.000000e+00> : tensor<2048xf32>} : () -> tensor<2048xf32>
    %34 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %35 = "tosa.const"() {value = dense<0.000000e+00> : tensor<512xf32>} : () -> tensor<512xf32>
    %36 = "tosa.const"() {value = dense<0.000000e+00> : tensor<128xf32>} : () -> tensor<128xf32>
    %37 = "tosa.const"() {value = dense<0.000000e+00> : tensor<256xf32>} : () -> tensor<256xf32>
    %38 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %39 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %40 = "tosa.const"() {value = dense<0.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %41 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x256xf32>} : () -> tensor<1024x1x1x256xf32>
    ml_program.global_store @global0 = %arg0 : tensor<1x3x224x224xf32>
    ml_program.global_store @global1 = %20 : tensor<1x1024x1x1xf32>
    ml_program.global_store @global2 = %0 : tensor<64x7x7x3xf32>
    %42 = "tosa.transpose"(%arg0, %39) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %43 = "tosa.conv2d"(%42, %0, %40) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %44 = "tosa.transpose"(%43, %38) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %45 = "tosa.sub"(%44, %1) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %46 = "tosa.rsqrt"(%2) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %47 = "tosa.reshape"(%46) {new_shape = array<i64: 1, 64, 1, 1>} : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %48 = "tosa.mul"(%45, %47) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %49 = "tosa.mul"(%48, %1) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %50 = "tosa.add"(%49, %1) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %51 = "tosa.clamp"(%50) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %52 = "tosa.transpose"(%51, %39) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %53 = "tosa.max_pool2d"(%52) {kernel = array<i64: 3, 3>, pad = array<i64: 1, 0, 1, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    %54 = "tosa.conv2d"(%53, %3, %40) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x1x1x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %55 = "tosa.transpose"(%54, %38) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %56 = "tosa.sub"(%55, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %57 = "tosa.mul"(%56, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %58 = "tosa.mul"(%57, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %59 = "tosa.add"(%58, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %60 = "tosa.clamp"(%59) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %61 = "tosa.transpose"(%60, %39) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %62 = "tosa.conv2d"(%61, %4, %40) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    ml_program.global_store @global3 = %62 : tensor<1x56x56x64xf32>
    %63 = "tosa.transpose"(%62, %38) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %64 = "tosa.sub"(%63, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %65 = "tosa.mul"(%64, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %66 = "tosa.mul"(%65, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %67 = "tosa.add"(%66, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %68 = "tosa.clamp"(%67) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %69 = "tosa.transpose"(%68, %39) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %70 = "tosa.conv2d"(%69, %5, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %71 = "tosa.transpose"(%70, %38) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %72 = "tosa.sub"(%71, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %73 = "tosa.rsqrt"(%7) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %74 = "tosa.reshape"(%73) {new_shape = array<i64: 1, 256, 1, 1>} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %75 = "tosa.mul"(%72, %74) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %76 = "tosa.mul"(%75, %6) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %77 = "tosa.add"(%76, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %78 = "tosa.conv2d"(%53, %5, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %79 = "tosa.transpose"(%78, %38) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %80 = "tosa.sub"(%79, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %81 = "tosa.mul"(%80, %74) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %82 = "tosa.mul"(%81, %6) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %83 = "tosa.add"(%82, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global4 = %83 : tensor<1x256x56x56xf32>
    %84 = "tosa.add"(%77, %83) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %85 = "tosa.clamp"(%84) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %86 = "tosa.transpose"(%85, %39) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %87 = "tosa.conv2d"(%86, %8, %40) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %88 = "tosa.transpose"(%87, %38) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %89 = "tosa.sub"(%88, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %90 = "tosa.mul"(%89, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %91 = "tosa.mul"(%90, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %92 = "tosa.add"(%91, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %93 = "tosa.clamp"(%92) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %94 = "tosa.transpose"(%93, %39) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %95 = "tosa.conv2d"(%94, %4, %40) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %96 = "tosa.transpose"(%95, %38) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %97 = "tosa.sub"(%96, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %98 = "tosa.mul"(%97, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %99 = "tosa.mul"(%98, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %100 = "tosa.add"(%99, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %101 = "tosa.clamp"(%100) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %102 = "tosa.transpose"(%101, %39) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %103 = "tosa.conv2d"(%102, %5, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %104 = "tosa.transpose"(%103, %38) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global5 = %104 : tensor<1x256x56x56xf32>
    %105 = "tosa.sub"(%104, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %106 = "tosa.mul"(%105, %74) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %107 = "tosa.mul"(%106, %6) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %108 = "tosa.add"(%107, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %109 = "tosa.add"(%108, %85) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %110 = "tosa.clamp"(%109) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %111 = "tosa.transpose"(%110, %39) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %112 = "tosa.conv2d"(%111, %8, %40) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %113 = "tosa.transpose"(%112, %38) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %114 = "tosa.sub"(%113, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %115 = "tosa.mul"(%114, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %116 = "tosa.mul"(%115, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %117 = "tosa.add"(%116, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %118 = "tosa.clamp"(%117) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %119 = "tosa.transpose"(%118, %39) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %120 = "tosa.conv2d"(%119, %4, %40) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %121 = "tosa.transpose"(%120, %38) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %122 = "tosa.sub"(%121, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %123 = "tosa.mul"(%122, %47) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %124 = "tosa.mul"(%123, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %125 = "tosa.add"(%124, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global6 = %125 : tensor<1x64x56x56xf32>
    %126 = "tosa.clamp"(%125) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %127 = "tosa.transpose"(%126, %39) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %128 = "tosa.conv2d"(%127, %5, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %129 = "tosa.transpose"(%128, %38) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %130 = "tosa.sub"(%129, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %131 = "tosa.mul"(%130, %74) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %132 = "tosa.mul"(%131, %6) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %133 = "tosa.add"(%132, %6) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %134 = "tosa.add"(%133, %110) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %135 = "tosa.clamp"(%134) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %136 = "tosa.transpose"(%135, %39) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %137 = "tosa.conv2d"(%136, %9, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %138 = "tosa.transpose"(%137, %38) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %139 = "tosa.sub"(%138, %10) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %140 = "tosa.rsqrt"(%11) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %141 = "tosa.reshape"(%140) {new_shape = array<i64: 1, 128, 1, 1>} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %142 = "tosa.mul"(%139, %141) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %143 = "tosa.mul"(%142, %10) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %144 = "tosa.add"(%143, %10) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %145 = "tosa.clamp"(%144) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %146 = "tosa.transpose"(%145, %39) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    ml_program.global_store @global7 = %146 : tensor<1x56x56x128xf32>
    %147 = "tosa.conv2d"(%146, %12, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %148 = "tosa.transpose"(%147, %38) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %149 = "tosa.sub"(%148, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %150 = "tosa.mul"(%149, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %151 = "tosa.mul"(%150, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %152 = "tosa.add"(%151, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %153 = "tosa.clamp"(%152) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %154 = "tosa.transpose"(%153, %39) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %155 = "tosa.conv2d"(%154, %13, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %156 = "tosa.transpose"(%155, %38) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %157 = "tosa.sub"(%156, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %158 = "tosa.rsqrt"(%15) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %159 = "tosa.reshape"(%158) {new_shape = array<i64: 1, 512, 1, 1>} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %160 = "tosa.mul"(%157, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %161 = "tosa.mul"(%160, %14) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %162 = "tosa.add"(%161, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %163 = "tosa.conv2d"(%136, %16, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %164 = "tosa.transpose"(%163, %38) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %165 = "tosa.sub"(%164, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %166 = "tosa.mul"(%165, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %167 = "tosa.mul"(%166, %14) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global8 = %167 : tensor<1x512x28x28xf32>
    %168 = "tosa.add"(%167, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %169 = "tosa.add"(%162, %168) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %170 = "tosa.clamp"(%169) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %171 = "tosa.transpose"(%170, %39) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %172 = "tosa.conv2d"(%171, %17, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %173 = "tosa.transpose"(%172, %38) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %174 = "tosa.sub"(%173, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %175 = "tosa.mul"(%174, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %176 = "tosa.mul"(%175, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %177 = "tosa.add"(%176, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %178 = "tosa.clamp"(%177) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %179 = "tosa.transpose"(%178, %39) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %180 = "tosa.conv2d"(%179, %12, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %181 = "tosa.transpose"(%180, %38) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %182 = "tosa.sub"(%181, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %183 = "tosa.mul"(%182, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %184 = "tosa.mul"(%183, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %185 = "tosa.add"(%184, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %186 = "tosa.clamp"(%185) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %187 = "tosa.transpose"(%186, %39) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %188 = "tosa.conv2d"(%187, %13, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    ml_program.global_store @global9 = %188 : tensor<1x28x28x512xf32>
    %189 = "tosa.transpose"(%188, %38) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %190 = "tosa.sub"(%189, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %191 = "tosa.mul"(%190, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %192 = "tosa.mul"(%191, %14) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %193 = "tosa.add"(%192, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %194 = "tosa.add"(%193, %170) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %195 = "tosa.clamp"(%194) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %196 = "tosa.transpose"(%195, %39) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %197 = "tosa.conv2d"(%196, %17, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %198 = "tosa.transpose"(%197, %38) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %199 = "tosa.sub"(%198, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %200 = "tosa.mul"(%199, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %201 = "tosa.mul"(%200, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %202 = "tosa.add"(%201, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %203 = "tosa.clamp"(%202) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %204 = "tosa.transpose"(%203, %39) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %205 = "tosa.conv2d"(%204, %12, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %206 = "tosa.transpose"(%205, %38) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %207 = "tosa.sub"(%206, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %208 = "tosa.mul"(%207, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %209 = "tosa.mul"(%208, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global10 = %209 : tensor<1x128x28x28xf32>
    %210 = "tosa.add"(%209, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %211 = "tosa.clamp"(%210) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %212 = "tosa.transpose"(%211, %39) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %213 = "tosa.conv2d"(%212, %13, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %214 = "tosa.transpose"(%213, %38) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %215 = "tosa.sub"(%214, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %216 = "tosa.mul"(%215, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %217 = "tosa.mul"(%216, %14) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %218 = "tosa.add"(%217, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %219 = "tosa.add"(%218, %195) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %220 = "tosa.clamp"(%219) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %221 = "tosa.transpose"(%220, %39) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %222 = "tosa.conv2d"(%221, %17, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %223 = "tosa.transpose"(%222, %38) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %224 = "tosa.sub"(%223, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %225 = "tosa.mul"(%224, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %226 = "tosa.mul"(%225, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %227 = "tosa.add"(%226, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %228 = "tosa.clamp"(%227) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %229 = "tosa.transpose"(%228, %39) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %230 = "tosa.conv2d"(%229, %12, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    ml_program.global_store @global11 = %230 : tensor<1x28x28x128xf32>
    %231 = "tosa.transpose"(%230, %38) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %232 = "tosa.sub"(%231, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %233 = "tosa.mul"(%232, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %234 = "tosa.mul"(%233, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %235 = "tosa.add"(%234, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %236 = "tosa.clamp"(%235) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %237 = "tosa.transpose"(%236, %39) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %238 = "tosa.conv2d"(%237, %13, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %239 = "tosa.transpose"(%238, %38) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %240 = "tosa.sub"(%239, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %241 = "tosa.mul"(%240, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %242 = "tosa.mul"(%241, %14) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %243 = "tosa.add"(%242, %14) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %244 = "tosa.add"(%243, %220) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %245 = "tosa.clamp"(%244) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %246 = "tosa.transpose"(%245, %39) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %247 = "tosa.conv2d"(%246, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %248 = "tosa.transpose"(%247, %38) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %249 = "tosa.sub"(%248, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %250 = "tosa.mul"(%249, %74) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %251 = "tosa.mul"(%250, %6) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global12 = %251 : tensor<1x256x28x28xf32>
    %252 = "tosa.add"(%251, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %253 = "tosa.clamp"(%252) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %254 = "tosa.transpose"(%253, %39) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %255 = "tosa.conv2d"(%254, %19, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %256 = "tosa.transpose"(%255, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %257 = "tosa.sub"(%256, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %258 = "tosa.mul"(%257, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %259 = "tosa.mul"(%258, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %260 = "tosa.add"(%259, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %261 = "tosa.clamp"(%260) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %262 = "tosa.transpose"(%261, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %263 = "tosa.conv2d"(%262, %41, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %264 = "tosa.transpose"(%263, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %265 = "tosa.sub"(%264, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %266 = "tosa.rsqrt"(%21) : (tensor<1024x1x1xf32>) -> tensor<1024x1x1xf32>
    %267 = "tosa.reshape"(%266) {new_shape = array<i64: 1, 1024, 1, 1>} : (tensor<1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %268 = "tosa.mul"(%265, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %269 = "tosa.mul"(%268, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %270 = "tosa.add"(%269, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %271 = "tosa.conv2d"(%246, %22, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %272 = "tosa.transpose"(%271, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global13 = %272 : tensor<1x1024x14x14xf32>
    %273 = "tosa.sub"(%272, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %274 = "tosa.mul"(%273, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %275 = "tosa.mul"(%274, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %276 = "tosa.add"(%275, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %277 = "tosa.add"(%270, %276) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %278 = "tosa.clamp"(%277) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %279 = "tosa.transpose"(%278, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %280 = "tosa.conv2d"(%279, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %281 = "tosa.transpose"(%280, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %282 = "tosa.sub"(%281, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %283 = "tosa.mul"(%282, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %284 = "tosa.mul"(%283, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %285 = "tosa.add"(%284, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %286 = "tosa.clamp"(%285) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %287 = "tosa.transpose"(%286, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %288 = "tosa.conv2d"(%287, %19, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %289 = "tosa.transpose"(%288, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %290 = "tosa.sub"(%289, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %291 = "tosa.mul"(%290, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %292 = "tosa.mul"(%291, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %293 = "tosa.add"(%292, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global14 = %293 : tensor<1x256x14x14xf32>
    %294 = "tosa.clamp"(%293) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %295 = "tosa.transpose"(%294, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %296 = "tosa.conv2d"(%295, %41, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %297 = "tosa.transpose"(%296, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %298 = "tosa.sub"(%297, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %299 = "tosa.mul"(%298, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %300 = "tosa.mul"(%299, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %301 = "tosa.add"(%300, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %302 = "tosa.add"(%301, %278) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %303 = "tosa.clamp"(%302) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %304 = "tosa.transpose"(%303, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %305 = "tosa.conv2d"(%304, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %306 = "tosa.transpose"(%305, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %307 = "tosa.sub"(%306, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %308 = "tosa.mul"(%307, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %309 = "tosa.mul"(%308, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %310 = "tosa.add"(%309, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %311 = "tosa.clamp"(%310) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %312 = "tosa.transpose"(%311, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %313 = "tosa.conv2d"(%312, %19, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %314 = "tosa.transpose"(%313, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global15 = %314 : tensor<1x256x14x14xf32>
    %315 = "tosa.sub"(%314, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %316 = "tosa.mul"(%315, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %317 = "tosa.mul"(%316, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %318 = "tosa.add"(%317, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %319 = "tosa.clamp"(%318) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %320 = "tosa.transpose"(%319, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %321 = "tosa.conv2d"(%320, %41, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %322 = "tosa.transpose"(%321, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %323 = "tosa.sub"(%322, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %324 = "tosa.mul"(%323, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %325 = "tosa.mul"(%324, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %326 = "tosa.add"(%325, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %327 = "tosa.add"(%326, %303) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %328 = "tosa.clamp"(%327) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %329 = "tosa.transpose"(%328, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %330 = "tosa.conv2d"(%329, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %331 = "tosa.transpose"(%330, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %332 = "tosa.sub"(%331, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %333 = "tosa.mul"(%332, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %334 = "tosa.mul"(%333, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %335 = "tosa.add"(%334, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global16 = %335 : tensor<1x256x14x14xf32>
    %336 = "tosa.clamp"(%335) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %337 = "tosa.transpose"(%336, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %338 = "tosa.conv2d"(%337, %19, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %339 = "tosa.transpose"(%338, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %340 = "tosa.sub"(%339, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %341 = "tosa.mul"(%340, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %342 = "tosa.mul"(%341, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %343 = "tosa.add"(%342, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %344 = "tosa.clamp"(%343) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %345 = "tosa.transpose"(%344, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %346 = "tosa.conv2d"(%345, %41, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %347 = "tosa.transpose"(%346, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %348 = "tosa.sub"(%347, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %349 = "tosa.mul"(%348, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %350 = "tosa.mul"(%349, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %351 = "tosa.add"(%350, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %352 = "tosa.add"(%351, %328) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %353 = "tosa.clamp"(%352) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %354 = "tosa.transpose"(%353, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %355 = "tosa.conv2d"(%354, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %356 = "tosa.transpose"(%355, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global17 = %356 : tensor<1x256x14x14xf32>
    %357 = "tosa.sub"(%356, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %358 = "tosa.mul"(%357, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %359 = "tosa.mul"(%358, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %360 = "tosa.add"(%359, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %361 = "tosa.clamp"(%360) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %362 = "tosa.transpose"(%361, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %363 = "tosa.conv2d"(%362, %19, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %364 = "tosa.transpose"(%363, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %365 = "tosa.sub"(%364, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %366 = "tosa.mul"(%365, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %367 = "tosa.mul"(%366, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %368 = "tosa.add"(%367, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %369 = "tosa.clamp"(%368) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %370 = "tosa.transpose"(%369, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %371 = "tosa.conv2d"(%370, %41, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %372 = "tosa.transpose"(%371, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %373 = "tosa.sub"(%372, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %374 = "tosa.mul"(%373, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %375 = "tosa.mul"(%374, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %376 = "tosa.add"(%375, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %377 = "tosa.add"(%376, %353) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global18 = %377 : tensor<1x1024x14x14xf32>
    %378 = "tosa.clamp"(%377) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %379 = "tosa.transpose"(%378, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %380 = "tosa.conv2d"(%379, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %381 = "tosa.transpose"(%380, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %382 = "tosa.sub"(%381, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %383 = "tosa.mul"(%382, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %384 = "tosa.mul"(%383, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %385 = "tosa.add"(%384, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %386 = "tosa.clamp"(%385) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %387 = "tosa.transpose"(%386, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %388 = "tosa.conv2d"(%387, %19, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %389 = "tosa.transpose"(%388, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %390 = "tosa.sub"(%389, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %391 = "tosa.mul"(%390, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %392 = "tosa.mul"(%391, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %393 = "tosa.add"(%392, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %394 = "tosa.clamp"(%393) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %395 = "tosa.transpose"(%394, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %396 = "tosa.conv2d"(%395, %41, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %397 = "tosa.transpose"(%396, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %398 = "tosa.sub"(%397, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global19 = %398 : tensor<1x1024x14x14xf32>
    %399 = "tosa.mul"(%398, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %400 = "tosa.mul"(%399, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %401 = "tosa.add"(%400, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %402 = "tosa.add"(%401, %378) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %403 = "tosa.clamp"(%402) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %404 = "tosa.transpose"(%403, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %405 = "tosa.conv2d"(%404, %24, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %406 = "tosa.transpose"(%405, %38) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %407 = "tosa.sub"(%406, %14) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %408 = "tosa.mul"(%407, %159) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %409 = "tosa.mul"(%408, %14) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %410 = "tosa.add"(%409, %14) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %411 = "tosa.clamp"(%410) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %412 = "tosa.transpose"(%411, %39) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %413 = "tosa.conv2d"(%412, %25, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %414 = "tosa.transpose"(%413, %38) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %415 = "tosa.sub"(%414, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %416 = "tosa.mul"(%415, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %417 = "tosa.mul"(%416, %14) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %418 = "tosa.add"(%417, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %419 = "tosa.clamp"(%418) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global20 = %419 : tensor<1x512x7x7xf32>
    %420 = "tosa.transpose"(%419, %39) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %421 = "tosa.conv2d"(%420, %26, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %422 = "tosa.transpose"(%421, %38) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %423 = "tosa.sub"(%422, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %424 = "tosa.rsqrt"(%28) : (tensor<2048x1x1xf32>) -> tensor<2048x1x1xf32>
    %425 = "tosa.reshape"(%424) {new_shape = array<i64: 1, 2048, 1, 1>} : (tensor<2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %426 = "tosa.mul"(%423, %425) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %427 = "tosa.mul"(%426, %27) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %428 = "tosa.add"(%427, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %429 = "tosa.conv2d"(%404, %29, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %430 = "tosa.transpose"(%429, %38) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %431 = "tosa.sub"(%430, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %432 = "tosa.mul"(%431, %425) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %433 = "tosa.mul"(%432, %27) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %434 = "tosa.add"(%433, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %435 = "tosa.add"(%428, %434) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %436 = "tosa.clamp"(%435) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %437 = "tosa.transpose"(%436, %39) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %438 = "tosa.conv2d"(%437, %30, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %439 = "tosa.transpose"(%438, %38) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %440 = "tosa.sub"(%439, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global21 = %440 : tensor<1x512x7x7xf32>
    %441 = "tosa.mul"(%440, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %442 = "tosa.mul"(%441, %14) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %443 = "tosa.add"(%442, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %444 = "tosa.clamp"(%443) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %445 = "tosa.transpose"(%444, %39) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %446 = "tosa.conv2d"(%445, %25, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %447 = "tosa.transpose"(%446, %38) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %448 = "tosa.sub"(%447, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %449 = "tosa.mul"(%448, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %450 = "tosa.mul"(%449, %14) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %451 = "tosa.add"(%450, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %452 = "tosa.clamp"(%451) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %453 = "tosa.transpose"(%452, %39) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %454 = "tosa.conv2d"(%453, %26, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %455 = "tosa.transpose"(%454, %38) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %456 = "tosa.sub"(%455, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %457 = "tosa.mul"(%456, %425) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %458 = "tosa.mul"(%457, %27) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %459 = "tosa.add"(%458, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %460 = "tosa.add"(%459, %436) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %461 = "tosa.clamp"(%460) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global22 = %461 : tensor<1x2048x7x7xf32>
    %462 = "tosa.transpose"(%461, %39) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %463 = "tosa.conv2d"(%462, %30, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %464 = "tosa.transpose"(%463, %38) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %465 = "tosa.sub"(%464, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %466 = "tosa.mul"(%465, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %467 = "tosa.mul"(%466, %14) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %468 = "tosa.add"(%467, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %469 = "tosa.clamp"(%468) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %470 = "tosa.transpose"(%469, %39) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %471 = "tosa.conv2d"(%470, %25, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %472 = "tosa.transpose"(%471, %38) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %473 = "tosa.sub"(%472, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %474 = "tosa.mul"(%473, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %475 = "tosa.mul"(%474, %14) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %476 = "tosa.add"(%475, %14) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %477 = "tosa.clamp"(%476) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %478 = "tosa.transpose"(%477, %39) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %479 = "tosa.conv2d"(%478, %26, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %480 = "tosa.transpose"(%479, %38) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %481 = "tosa.sub"(%480, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %482 = "tosa.mul"(%481, %425) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global23 = %482 : tensor<1x2048x7x7xf32>
    %483 = "tosa.mul"(%482, %27) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %484 = "tosa.add"(%483, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %485 = "tosa.add"(%484, %461) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %486 = "tosa.clamp"(%485) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %487 = "tosa.transpose"(%486, %39) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %488 = "tosa.avg_pool2d"(%487) {acc_type = f32, kernel = array<i64: 7, 7>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>) -> tensor<1x1x1x2048xf32>
    %489 = "tosa.reshape"(%488) {new_shape = array<i64: 1, 1, 2048>} : (tensor<1x1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %490 = "tosa.matmul"(%489, %31) : (tensor<1x1x2048xf32>, tensor<1x2048x1000xf32>) -> tensor<1x1x1000xf32>
    %491 = "tosa.reshape"(%490) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %492 = "tosa.add"(%491, %32) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %492 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %1 = "tosa.const"() {value = dense<7.778000e-02> : tensor<64x1x1xf32>} : () -> tensor<64x1x1xf32>
    %2 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %3 = "tosa.const"() {value = dense<7.778000e-02> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x256xf32>} : () -> tensor<128x1x1x256xf32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %6 = "tosa.const"() {value = dense<7.778000e-02> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %8 = "tosa.const"() {value = dense<7.778000e-02> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %9 = "tosa.const"() {value = dense<7.778000e-02> : tensor<1024x1x1xf32>} : () -> tensor<1024x1x1xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x2048x1x1xf32>} : () -> tensor<1x2048x1x1xf32>
    %11 = "tosa.const"() {value = dense<7.778000e-02> : tensor<2048x1x1xf32>} : () -> tensor<2048x1x1xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<2048x1x1x1024xf32>} : () -> tensor<2048x1x1x1024xf32>
    %13 = "tosa.const"() {value = dense<0.000000e+00> : tensor<2048xf32>} : () -> tensor<2048xf32>
    %14 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %15 = "tosa.const"() {value = dense<0.000000e+00> : tensor<512xf32>} : () -> tensor<512xf32>
    %16 = "tosa.const"() {value = dense<0.000000e+00> : tensor<128xf32>} : () -> tensor<128xf32>
    %17 = "tosa.const"() {value = dense<0.000000e+00> : tensor<256xf32>} : () -> tensor<256xf32>
    %18 = "tosa.const"() {value = dense<0.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000x2048xf32>} : () -> tensor<1x1000x2048xf32>
    %20 = "tosa.const"() {value = dense<0.0204081628> : tensor<1x7x7x2048xf32>} : () -> tensor<1x7x7x2048xf32>
    %21 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %22 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %23 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %24 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x2048xf32>} : () -> tensor<512x1x1x2048xf32>
    %25 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x512xf32>} : () -> tensor<512x3x3x512xf32>
    %26 = "tosa.const"() {value = dense<7.777000e-02> : tensor<2048x1x1x512xf32>} : () -> tensor<2048x1x1x512xf32>
    %27 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x2048xf32>} : () -> tensor<1024x1x1x2048xf32>
    %28 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x512xf32>} : () -> tensor<1024x1x1x512xf32>
    %29 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x1024xf32>} : () -> tensor<256x1x1x1024xf32>
    %30 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %31 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x256xf32>} : () -> tensor<1024x1x1x256xf32>
    %32 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x1024xf32>} : () -> tensor<512x1x1x1024xf32>
    %33 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x256xf32>} : () -> tensor<512x1x1x256xf32>
    %34 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x512xf32>} : () -> tensor<128x1x1x512xf32>
    %35 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x128xf32>} : () -> tensor<128x3x3x128xf32>
    %36 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x128xf32>} : () -> tensor<512x1x1x128xf32>
    %37 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x512xf32>} : () -> tensor<256x1x1x512xf32>
    %38 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x128xf32>} : () -> tensor<256x1x1x128xf32>
    %39 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x256xf32>} : () -> tensor<64x1x1x256xf32>
    %40 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x64xf32>} : () -> tensor<64x3x3x64xf32>
    %41 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x64xf32>} : () -> tensor<256x1x1x64xf32>
    %42 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x64xf32>} : () -> tensor<64x1x1x64xf32>
    %cst = arith.constant -3.40282347E+38 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %43 = "tosa.const"() {value = dense<[3, 1, 2, 0]> : tensor<4xi64>} : () -> tensor<4xi64>
    %44 = ml_program.global_load @global0 : tensor<1x3x224x224xf32>
    %45 = ml_program.global_load @global1 : tensor<1x1024x1x1xf32>
    %46 = ml_program.global_load @global2 : tensor<64x7x7x3xf32>
    %47 = "tosa.transpose"(%44, %23) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %48 = "tosa.conv2d"(%47, %46, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %49 = "tosa.transpose"(%48, %21) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %50 = "tosa.sub"(%49, %0) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %51 = "tosa.rsqrt"(%1) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %52 = "tosa.reshape"(%51) {new_shape = array<i64: 1, 64, 1, 1>} : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %53 = "tosa.mul"(%50, %52) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %54 = "tosa.mul"(%53, %0) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %55 = "tosa.add"(%54, %0) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %56 = "tosa.clamp"(%55) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %57 = "tosa.transpose"(%56, %23) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %58 = "tosa.max_pool2d"(%57) {kernel = array<i64: 3, 3>, pad = array<i64: 1, 0, 1, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    %59 = "tosa.conv2d"(%58, %42, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x1x1x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %60 = "tosa.transpose"(%59, %21) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %61 = "tosa.sub"(%60, %0) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %62 = "tosa.mul"(%61, %52) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %63 = "tosa.mul"(%62, %0) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %64 = "tosa.add"(%63, %0) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %65 = "tosa.clamp"(%64) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %66 = ml_program.global_load @global3 : tensor<1x56x56x64xf32>
    %67 = "tosa.transpose"(%66, %21) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %68 = "tosa.sub"(%67, %0) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %69 = "tosa.mul"(%68, %52) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %70 = "tosa.mul"(%69, %0) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %71 = "tosa.add"(%70, %0) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %72 = "tosa.clamp"(%71) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %73 = "tosa.transpose"(%72, %23) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %74 = "tosa.conv2d"(%73, %41, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %75 = "tosa.transpose"(%74, %21) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %76 = "tosa.sub"(%75, %2) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %77 = "tosa.rsqrt"(%3) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %78 = "tosa.reshape"(%77) {new_shape = array<i64: 1, 256, 1, 1>} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %79 = "tosa.mul"(%76, %78) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %80 = "tosa.mul"(%79, %2) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %81 = "tosa.add"(%80, %2) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %82 = ml_program.global_load @global4 : tensor<1x256x56x56xf32>
    %83 = "tosa.add"(%81, %82) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %84 = "tosa.clamp"(%83) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %85 = "tosa.transpose"(%84, %23) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %86 = "tosa.conv2d"(%85, %39, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %87 = "tosa.transpose"(%86, %21) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %88 = "tosa.sub"(%87, %0) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %89 = "tosa.mul"(%88, %52) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %90 = "tosa.mul"(%89, %0) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %91 = "tosa.add"(%90, %0) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %92 = "tosa.clamp"(%91) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %93 = "tosa.transpose"(%92, %23) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %94 = "tosa.conv2d"(%93, %40, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %95 = "tosa.transpose"(%94, %21) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %96 = "tosa.sub"(%95, %0) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %97 = "tosa.mul"(%96, %52) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %98 = "tosa.mul"(%97, %0) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %99 = "tosa.add"(%98, %0) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %100 = "tosa.clamp"(%99) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %101 = ml_program.global_load @global5 : tensor<1x256x56x56xf32>
    %102 = "tosa.sub"(%101, %2) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %103 = "tosa.mul"(%102, %78) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %104 = "tosa.mul"(%103, %2) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %105 = "tosa.add"(%104, %2) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %106 = "tosa.add"(%105, %84) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %107 = "tosa.clamp"(%106) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %108 = "tosa.transpose"(%107, %23) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %109 = "tosa.conv2d"(%108, %39, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %110 = "tosa.transpose"(%109, %21) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %111 = "tosa.sub"(%110, %0) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %112 = "tosa.mul"(%111, %52) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %113 = "tosa.mul"(%112, %0) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %114 = "tosa.add"(%113, %0) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %115 = "tosa.clamp"(%114) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %116 = ml_program.global_load @global6 : tensor<1x64x56x56xf32>
    %117 = "tosa.clamp"(%116) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %118 = "tosa.transpose"(%117, %23) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %119 = "tosa.conv2d"(%118, %41, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %120 = "tosa.transpose"(%119, %21) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %121 = "tosa.sub"(%120, %2) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %122 = "tosa.mul"(%121, %78) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %123 = "tosa.mul"(%122, %2) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %124 = "tosa.add"(%123, %2) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %125 = "tosa.add"(%124, %107) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %126 = "tosa.clamp"(%125) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %127 = "tosa.transpose"(%126, %23) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %128 = "tosa.conv2d"(%127, %4, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %129 = "tosa.transpose"(%128, %21) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %130 = "tosa.sub"(%129, %5) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %131 = "tosa.rsqrt"(%6) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %132 = "tosa.reshape"(%131) {new_shape = array<i64: 1, 128, 1, 1>} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %133 = "tosa.mul"(%130, %132) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %134 = "tosa.mul"(%133, %5) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %135 = "tosa.add"(%134, %5) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %136 = "tosa.clamp"(%135) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %137 = ml_program.global_load @global7 : tensor<1x56x56x128xf32>
    %138 = "tosa.conv2d"(%137, %35, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %139 = "tosa.transpose"(%138, %21) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %140 = "tosa.sub"(%139, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %141 = "tosa.mul"(%140, %132) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %142 = "tosa.mul"(%141, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %143 = "tosa.add"(%142, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %144 = "tosa.clamp"(%143) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %145 = "tosa.transpose"(%144, %23) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %146 = "tosa.conv2d"(%145, %36, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %147 = "tosa.transpose"(%146, %21) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %148 = "tosa.sub"(%147, %7) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %149 = "tosa.rsqrt"(%8) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %150 = "tosa.reshape"(%149) {new_shape = array<i64: 1, 512, 1, 1>} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %151 = "tosa.mul"(%148, %150) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %152 = "tosa.mul"(%151, %7) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %153 = "tosa.add"(%152, %7) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %154 = ml_program.global_load @global8 : tensor<1x512x28x28xf32>
    %155 = "tosa.add"(%154, %7) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %156 = "tosa.add"(%153, %155) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %157 = "tosa.clamp"(%156) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %158 = "tosa.transpose"(%157, %23) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %159 = "tosa.conv2d"(%158, %34, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %160 = "tosa.transpose"(%159, %21) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %161 = "tosa.sub"(%160, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %162 = "tosa.mul"(%161, %132) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %163 = "tosa.mul"(%162, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %164 = "tosa.add"(%163, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %165 = "tosa.clamp"(%164) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %166 = "tosa.transpose"(%165, %23) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %167 = "tosa.conv2d"(%166, %35, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %168 = "tosa.transpose"(%167, %21) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %169 = "tosa.sub"(%168, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %170 = "tosa.mul"(%169, %132) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %171 = "tosa.mul"(%170, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %172 = "tosa.add"(%171, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %173 = "tosa.clamp"(%172) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %174 = ml_program.global_load @global9 : tensor<1x28x28x512xf32>
    %175 = "tosa.transpose"(%174, %21) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %176 = "tosa.sub"(%175, %7) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %177 = "tosa.mul"(%176, %150) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %178 = "tosa.mul"(%177, %7) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %179 = "tosa.add"(%178, %7) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %180 = "tosa.add"(%179, %157) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %181 = "tosa.clamp"(%180) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %182 = "tosa.transpose"(%181, %23) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %183 = "tosa.conv2d"(%182, %34, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %184 = "tosa.transpose"(%183, %21) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %185 = "tosa.sub"(%184, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %186 = "tosa.mul"(%185, %132) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %187 = "tosa.mul"(%186, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %188 = "tosa.add"(%187, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %189 = "tosa.clamp"(%188) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %190 = ml_program.global_load @global10 : tensor<1x128x28x28xf32>
    %191 = "tosa.add"(%190, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %192 = "tosa.clamp"(%191) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %193 = "tosa.transpose"(%192, %23) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %194 = "tosa.conv2d"(%193, %36, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %195 = "tosa.transpose"(%194, %21) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %196 = "tosa.sub"(%195, %7) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %197 = "tosa.mul"(%196, %150) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %198 = "tosa.mul"(%197, %7) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %199 = "tosa.add"(%198, %7) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %200 = "tosa.add"(%199, %181) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %201 = "tosa.clamp"(%200) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %202 = "tosa.transpose"(%201, %23) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %203 = "tosa.conv2d"(%202, %34, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %204 = "tosa.transpose"(%203, %21) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %205 = "tosa.sub"(%204, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %206 = "tosa.mul"(%205, %132) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %207 = "tosa.mul"(%206, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %208 = "tosa.add"(%207, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %209 = "tosa.clamp"(%208) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %210 = ml_program.global_load @global11 : tensor<1x28x28x128xf32>
    %211 = "tosa.transpose"(%210, %21) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %212 = "tosa.sub"(%211, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %213 = "tosa.mul"(%212, %132) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %214 = "tosa.mul"(%213, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %215 = "tosa.add"(%214, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %216 = "tosa.clamp"(%215) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %217 = "tosa.transpose"(%216, %23) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %218 = "tosa.conv2d"(%217, %36, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %219 = "tosa.transpose"(%218, %21) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %220 = "tosa.sub"(%219, %7) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %221 = "tosa.mul"(%220, %150) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %222 = "tosa.mul"(%221, %7) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %223 = "tosa.add"(%222, %7) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %224 = "tosa.add"(%223, %201) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %225 = "tosa.clamp"(%224) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %226 = ml_program.global_load @global12 : tensor<1x256x28x28xf32>
    %227 = "tosa.add"(%226, %2) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %228 = "tosa.clamp"(%227) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %229 = "tosa.transpose"(%228, %23) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %230 = "tosa.conv2d"(%229, %30, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %231 = "tosa.transpose"(%230, %21) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %232 = "tosa.sub"(%231, %2) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %233 = "tosa.mul"(%232, %78) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %234 = "tosa.mul"(%233, %2) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %235 = "tosa.add"(%234, %2) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %236 = "tosa.clamp"(%235) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %237 = "tosa.transpose"(%236, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %238 = "tosa.conv2d"(%237, %31, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %239 = "tosa.transpose"(%238, %21) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %240 = "tosa.sub"(%239, %45) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %241 = "tosa.rsqrt"(%9) : (tensor<1024x1x1xf32>) -> tensor<1024x1x1xf32>
    %242 = "tosa.reshape"(%241) {new_shape = array<i64: 1, 1024, 1, 1>} : (tensor<1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %243 = "tosa.mul"(%240, %242) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %244 = "tosa.mul"(%243, %45) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %245 = "tosa.add"(%244, %45) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %246 = ml_program.global_load @global13 : tensor<1x1024x14x14xf32>
    %247 = "tosa.sub"(%246, %45) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %248 = "tosa.mul"(%247, %242) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %249 = "tosa.mul"(%248, %45) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %250 = "tosa.add"(%249, %45) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %251 = "tosa.add"(%245, %250) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %252 = "tosa.clamp"(%251) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %253 = "tosa.transpose"(%252, %23) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %254 = "tosa.conv2d"(%253, %29, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %255 = "tosa.transpose"(%254, %21) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %256 = "tosa.sub"(%255, %2) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %257 = "tosa.mul"(%256, %78) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %258 = "tosa.mul"(%257, %2) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %259 = "tosa.add"(%258, %2) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %260 = "tosa.clamp"(%259) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %261 = ml_program.global_load @global14 : tensor<1x256x14x14xf32>
    %262 = "tosa.clamp"(%261) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %263 = "tosa.transpose"(%262, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %264 = "tosa.conv2d"(%263, %31, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %265 = "tosa.transpose"(%264, %21) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %266 = "tosa.sub"(%265, %45) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %267 = "tosa.mul"(%266, %242) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %268 = "tosa.mul"(%267, %45) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %269 = "tosa.add"(%268, %45) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %270 = "tosa.add"(%269, %252) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %271 = "tosa.clamp"(%270) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %272 = "tosa.transpose"(%271, %23) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %273 = "tosa.conv2d"(%272, %29, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %274 = "tosa.transpose"(%273, %21) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %275 = "tosa.sub"(%274, %2) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %276 = "tosa.mul"(%275, %78) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %277 = "tosa.mul"(%276, %2) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %278 = "tosa.add"(%277, %2) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %279 = "tosa.clamp"(%278) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %280 = ml_program.global_load @global15 : tensor<1x256x14x14xf32>
    %281 = "tosa.sub"(%280, %2) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %282 = "tosa.mul"(%281, %78) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %283 = "tosa.mul"(%282, %2) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %284 = "tosa.add"(%283, %2) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %285 = "tosa.clamp"(%284) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %286 = "tosa.transpose"(%285, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %287 = "tosa.conv2d"(%286, %31, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %288 = "tosa.transpose"(%287, %21) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %289 = "tosa.sub"(%288, %45) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %290 = "tosa.mul"(%289, %242) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %291 = "tosa.mul"(%290, %45) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %292 = "tosa.add"(%291, %45) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %293 = "tosa.add"(%292, %271) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %294 = "tosa.clamp"(%293) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %295 = ml_program.global_load @global16 : tensor<1x256x14x14xf32>
    %296 = "tosa.clamp"(%295) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %297 = "tosa.transpose"(%296, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %298 = "tosa.conv2d"(%297, %30, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %299 = "tosa.transpose"(%298, %21) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %300 = "tosa.sub"(%299, %2) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %301 = "tosa.mul"(%300, %78) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %302 = "tosa.mul"(%301, %2) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %303 = "tosa.add"(%302, %2) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %304 = "tosa.clamp"(%303) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %305 = "tosa.transpose"(%304, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %306 = "tosa.conv2d"(%305, %31, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %307 = "tosa.transpose"(%306, %21) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %308 = "tosa.sub"(%307, %45) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %309 = "tosa.mul"(%308, %242) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %310 = "tosa.mul"(%309, %45) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %311 = "tosa.add"(%310, %45) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %312 = "tosa.add"(%311, %294) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %313 = "tosa.clamp"(%312) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %314 = ml_program.global_load @global17 : tensor<1x256x14x14xf32>
    %315 = "tosa.sub"(%314, %2) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %316 = "tosa.mul"(%315, %78) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %317 = "tosa.mul"(%316, %2) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %318 = "tosa.add"(%317, %2) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %319 = "tosa.clamp"(%318) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %320 = "tosa.transpose"(%319, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %321 = "tosa.conv2d"(%320, %30, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %322 = "tosa.transpose"(%321, %21) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %323 = "tosa.sub"(%322, %2) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %324 = "tosa.mul"(%323, %78) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %325 = "tosa.mul"(%324, %2) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %326 = "tosa.add"(%325, %2) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %327 = "tosa.clamp"(%326) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %328 = ml_program.global_load @global18 : tensor<1x1024x14x14xf32>
    %329 = "tosa.clamp"(%328) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %330 = "tosa.transpose"(%329, %23) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %331 = "tosa.conv2d"(%330, %29, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %332 = "tosa.transpose"(%331, %21) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %333 = "tosa.sub"(%332, %2) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %334 = "tosa.mul"(%333, %78) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %335 = "tosa.mul"(%334, %2) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %336 = "tosa.add"(%335, %2) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %337 = "tosa.clamp"(%336) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %338 = "tosa.transpose"(%337, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %339 = "tosa.conv2d"(%338, %30, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %340 = "tosa.transpose"(%339, %21) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %341 = "tosa.sub"(%340, %2) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %342 = "tosa.mul"(%341, %78) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %343 = "tosa.mul"(%342, %2) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %344 = "tosa.add"(%343, %2) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %345 = "tosa.clamp"(%344) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %346 = ml_program.global_load @global19 : tensor<1x1024x14x14xf32>
    %347 = "tosa.mul"(%346, %242) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %348 = "tosa.mul"(%347, %45) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %349 = "tosa.add"(%348, %45) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %350 = "tosa.add"(%349, %329) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %351 = "tosa.clamp"(%350) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %352 = "tosa.transpose"(%351, %23) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %353 = "tosa.conv2d"(%352, %32, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %354 = "tosa.transpose"(%353, %21) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %355 = "tosa.sub"(%354, %7) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %356 = "tosa.mul"(%355, %150) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %357 = "tosa.mul"(%356, %7) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %358 = "tosa.add"(%357, %7) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %359 = "tosa.clamp"(%358) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %360 = "tosa.transpose"(%359, %23) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %361 = "tosa.conv2d"(%360, %25, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %362 = "tosa.transpose"(%361, %21) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %363 = "tosa.sub"(%362, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %364 = "tosa.mul"(%363, %150) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %365 = "tosa.mul"(%364, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %366 = "tosa.add"(%365, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %367 = ml_program.global_load @global20 : tensor<1x512x7x7xf32>
    %368 = "tosa.transpose"(%367, %23) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %369 = "tosa.conv2d"(%368, %26, %13) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %370 = "tosa.transpose"(%369, %21) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %371 = "tosa.sub"(%370, %10) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %372 = "tosa.rsqrt"(%11) : (tensor<2048x1x1xf32>) -> tensor<2048x1x1xf32>
    %373 = "tosa.reshape"(%372) {new_shape = array<i64: 1, 2048, 1, 1>} : (tensor<2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %374 = "tosa.mul"(%371, %373) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %375 = "tosa.mul"(%374, %10) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %376 = "tosa.add"(%375, %10) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %377 = "tosa.conv2d"(%352, %12, %13) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %378 = "tosa.transpose"(%377, %21) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %379 = "tosa.sub"(%378, %10) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %380 = "tosa.mul"(%379, %373) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %381 = "tosa.mul"(%380, %10) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %382 = "tosa.add"(%381, %10) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %383 = "tosa.add"(%376, %382) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %384 = "tosa.clamp"(%383) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %385 = ml_program.global_load @global21 : tensor<1x512x7x7xf32>
    %386 = "tosa.mul"(%385, %150) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %387 = "tosa.mul"(%386, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %388 = "tosa.add"(%387, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %389 = "tosa.clamp"(%388) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %390 = "tosa.transpose"(%389, %23) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %391 = "tosa.conv2d"(%390, %25, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %392 = "tosa.transpose"(%391, %21) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %393 = "tosa.sub"(%392, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %394 = "tosa.mul"(%393, %150) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %395 = "tosa.mul"(%394, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %396 = "tosa.add"(%395, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %397 = "tosa.clamp"(%396) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %398 = "tosa.transpose"(%397, %23) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %399 = "tosa.conv2d"(%398, %26, %13) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %400 = "tosa.transpose"(%399, %21) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %401 = "tosa.sub"(%400, %10) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %402 = "tosa.mul"(%401, %373) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %403 = "tosa.mul"(%402, %10) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %404 = "tosa.add"(%403, %10) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %405 = "tosa.add"(%404, %384) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %406 = ml_program.global_load @global22 : tensor<1x2048x7x7xf32>
    %407 = "tosa.transpose"(%406, %23) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %408 = "tosa.conv2d"(%407, %24, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %409 = "tosa.transpose"(%408, %21) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %410 = "tosa.sub"(%409, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %411 = "tosa.mul"(%410, %150) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %412 = "tosa.mul"(%411, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %413 = "tosa.add"(%412, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %414 = "tosa.clamp"(%413) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %415 = "tosa.transpose"(%414, %23) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %416 = "tosa.conv2d"(%415, %25, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %417 = "tosa.transpose"(%416, %21) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %418 = "tosa.sub"(%417, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %419 = "tosa.mul"(%418, %150) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %420 = "tosa.mul"(%419, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %421 = "tosa.add"(%420, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %422 = "tosa.clamp"(%421) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %423 = ml_program.global_load @global23 : tensor<1x2048x7x7xf32>
    %424 = "tosa.mul"(%423, %10) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %425 = "tosa.add"(%424, %10) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %426 = "tosa.add"(%425, %406) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %427 = "tosa.clamp"(%426) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %428 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %429 = "tosa.matmul"(%428, %19) : (tensor<1x1x1000xf32>, tensor<1x1000x2048xf32>) -> tensor<1x1x2048xf32>
    %430 = "tosa.reshape"(%429) {new_shape = array<i64: 1, 1, 1, 2048>} : (tensor<1x1x2048xf32>) -> tensor<1x1x1x2048xf32>
    %431 = "tosa.mul"(%430, %20) {shift = 0 : i32} : (tensor<1x1x1x2048xf32>, tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %432 = "tosa.transpose"(%431, %21) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %433 = "tosa.equal"(%426, %427) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %434 = "tosa.select"(%433, %432, %22) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %435 = "tosa.mul"(%434, %10) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %436 = "tosa.mul"(%373, %435) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %437 = "tosa.transpose"(%436, %23) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %438 = tensor.empty() : tensor<512xf32>
    %439 = "tosa.transpose_conv2d"(%437, %24, %438) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %440 = "tosa.transpose"(%439, %21) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %441 = "tosa.equal"(%421, %422) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %442 = "tosa.select"(%441, %440, %22) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %443 = "tosa.mul"(%442, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %444 = "tosa.mul"(%150, %443) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %445 = "tosa.transpose"(%444, %23) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %446 = "tosa.transpose_conv2d"(%445, %25, %438) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %447 = "tosa.transpose"(%446, %21) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %448 = "tosa.equal"(%413, %414) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %449 = "tosa.select"(%448, %447, %22) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %450 = "tosa.mul"(%449, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %451 = "tosa.mul"(%150, %450) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %452 = "tosa.transpose"(%451, %23) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %453 = tensor.empty() : tensor<2048xf32>
    %454 = "tosa.transpose_conv2d"(%452, %26, %453) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 2048>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %455 = "tosa.transpose"(%454, %21) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %456 = "tosa.add"(%434, %455) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %457 = "tosa.equal"(%405, %406) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %458 = "tosa.select"(%457, %456, %22) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %459 = "tosa.mul"(%458, %10) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %460 = "tosa.mul"(%373, %459) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %461 = "tosa.transpose"(%460, %23) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %462 = "tosa.transpose_conv2d"(%461, %24, %438) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %463 = "tosa.transpose"(%462, %21) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %464 = "tosa.equal"(%396, %397) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %465 = "tosa.select"(%464, %463, %22) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %466 = "tosa.mul"(%465, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %467 = "tosa.mul"(%150, %466) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %468 = "tosa.transpose"(%467, %23) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %469 = "tosa.transpose_conv2d"(%468, %25, %438) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %470 = "tosa.transpose"(%469, %21) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %471 = "tosa.equal"(%388, %389) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %472 = "tosa.select"(%471, %470, %22) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %473 = "tosa.mul"(%472, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %474 = "tosa.mul"(%150, %473) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %475 = "tosa.transpose"(%474, %23) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %476 = "tosa.transpose_conv2d"(%475, %26, %453) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 2048>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %477 = "tosa.transpose"(%476, %21) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %478 = "tosa.add"(%458, %477) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %479 = "tosa.equal"(%383, %384) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %480 = "tosa.select"(%479, %478, %22) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %481 = "tosa.mul"(%480, %10) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %482 = "tosa.mul"(%373, %481) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %483 = "tosa.transpose"(%482, %23) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %484 = tensor.empty() : tensor<1024xf32>
    %485 = "tosa.transpose_conv2d"(%483, %27, %484) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 2, 2>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %486 = "tosa.transpose_conv2d"(%483, %24, %438) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %487 = "tosa.transpose"(%486, %21) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %488 = "tosa.equal"(%366, %367) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %489 = "tosa.select"(%488, %487, %22) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %490 = "tosa.mul"(%489, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %491 = "tosa.mul"(%150, %490) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %492 = "tosa.transpose"(%491, %23) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %493 = "tosa.transpose_conv2d"(%492, %25, %438) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 2, 2>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %494 = "tosa.transpose"(%493, %21) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %495 = "tosa.equal"(%358, %359) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %496 = "tosa.select"(%495, %494, %22) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %497 = "tosa.mul"(%496, %7) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %498 = "tosa.mul"(%150, %497) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %499 = "tosa.transpose"(%498, %23) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %500 = "tosa.transpose_conv2d"(%499, %28, %484) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %501 = "tosa.add"(%485, %500) : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %502 = "tosa.transpose"(%501, %21) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %503 = "tosa.equal"(%350, %351) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %504 = "tosa.select"(%503, %502, %22) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %505 = "tosa.mul"(%45, %504) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %506 = "tosa.mul"(%242, %505) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %507 = "tosa.transpose"(%506, %23) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %508 = tensor.empty() : tensor<256xf32>
    %509 = "tosa.transpose_conv2d"(%507, %29, %508) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %510 = "tosa.transpose"(%509, %21) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %511 = "tosa.equal"(%344, %345) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %512 = "tosa.select"(%511, %510, %22) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %513 = "tosa.mul"(%512, %2) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %514 = "tosa.mul"(%78, %513) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %515 = "tosa.transpose"(%514, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %516 = "tosa.transpose_conv2d"(%515, %30, %508) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %517 = "tosa.transpose"(%516, %21) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %518 = "tosa.equal"(%336, %337) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %519 = "tosa.select"(%518, %517, %22) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %520 = "tosa.mul"(%519, %2) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %521 = "tosa.mul"(%78, %520) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %522 = "tosa.transpose"(%521, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %523 = "tosa.transpose_conv2d"(%522, %31, %484) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %524 = "tosa.transpose"(%523, %21) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %525 = "tosa.add"(%504, %524) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %526 = "tosa.equal"(%328, %329) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %527 = "tosa.select"(%526, %525, %22) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %528 = "tosa.mul"(%45, %527) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %529 = "tosa.mul"(%242, %528) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %530 = "tosa.transpose"(%529, %23) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %531 = "tosa.transpose_conv2d"(%530, %29, %508) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %532 = "tosa.transpose"(%531, %21) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %533 = "tosa.equal"(%326, %327) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %534 = "tosa.select"(%533, %532, %22) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %535 = "tosa.mul"(%534, %2) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %536 = "tosa.mul"(%78, %535) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %537 = "tosa.transpose"(%536, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %538 = "tosa.transpose_conv2d"(%537, %30, %508) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %539 = "tosa.transpose"(%538, %21) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %540 = "tosa.equal"(%318, %319) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %541 = "tosa.select"(%540, %539, %22) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %542 = "tosa.mul"(%541, %2) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %543 = "tosa.mul"(%78, %542) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %544 = "tosa.transpose"(%543, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %545 = "tosa.transpose_conv2d"(%544, %31, %484) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %546 = "tosa.transpose"(%545, %21) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %547 = "tosa.add"(%527, %546) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %548 = "tosa.equal"(%312, %313) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %549 = "tosa.select"(%548, %547, %22) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %550 = "tosa.mul"(%45, %549) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %551 = "tosa.mul"(%242, %550) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %552 = "tosa.transpose"(%551, %23) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %553 = "tosa.transpose_conv2d"(%552, %29, %508) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %554 = "tosa.transpose"(%553, %21) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %555 = "tosa.equal"(%303, %304) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %556 = "tosa.select"(%555, %554, %22) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %557 = "tosa.mul"(%556, %2) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %558 = "tosa.mul"(%78, %557) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %559 = "tosa.transpose"(%558, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %560 = "tosa.transpose_conv2d"(%559, %30, %508) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %561 = "tosa.transpose"(%560, %21) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %562 = "tosa.equal"(%295, %296) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %563 = "tosa.select"(%562, %561, %22) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %564 = "tosa.mul"(%563, %2) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %565 = "tosa.mul"(%78, %564) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %566 = "tosa.transpose"(%565, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %567 = "tosa.transpose_conv2d"(%566, %31, %484) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %568 = "tosa.transpose"(%567, %21) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %569 = "tosa.add"(%549, %568) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %570 = "tosa.equal"(%293, %294) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %571 = "tosa.select"(%570, %569, %22) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %572 = "tosa.mul"(%45, %571) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %573 = "tosa.mul"(%242, %572) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %574 = "tosa.transpose"(%573, %23) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %575 = "tosa.transpose_conv2d"(%574, %29, %508) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %576 = "tosa.transpose"(%575, %21) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %577 = "tosa.equal"(%284, %285) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %578 = "tosa.select"(%577, %576, %22) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %579 = "tosa.mul"(%578, %2) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %580 = "tosa.mul"(%78, %579) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %581 = "tosa.transpose"(%580, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %582 = "tosa.transpose_conv2d"(%581, %30, %508) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %583 = "tosa.transpose"(%582, %21) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %584 = "tosa.equal"(%278, %279) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %585 = "tosa.select"(%584, %583, %22) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %586 = "tosa.mul"(%585, %2) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %587 = "tosa.mul"(%78, %586) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %588 = "tosa.transpose"(%587, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %589 = "tosa.transpose_conv2d"(%588, %31, %484) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %590 = "tosa.transpose"(%589, %21) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %591 = "tosa.add"(%571, %590) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %592 = "tosa.equal"(%270, %271) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %593 = "tosa.select"(%592, %591, %22) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %594 = "tosa.mul"(%45, %593) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %595 = "tosa.mul"(%242, %594) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %596 = "tosa.transpose"(%595, %23) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %597 = "tosa.transpose_conv2d"(%596, %29, %508) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %598 = "tosa.transpose"(%597, %21) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %599 = "tosa.equal"(%261, %262) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %600 = "tosa.select"(%599, %598, %22) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %601 = "tosa.mul"(%600, %2) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %602 = "tosa.mul"(%78, %601) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %603 = "tosa.transpose"(%602, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %604 = "tosa.transpose_conv2d"(%603, %30, %508) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %605 = "tosa.transpose"(%604, %21) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %606 = "tosa.equal"(%259, %260) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %607 = "tosa.select"(%606, %605, %22) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %608 = "tosa.mul"(%607, %2) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %609 = "tosa.mul"(%78, %608) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %610 = "tosa.transpose"(%609, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %611 = "tosa.transpose_conv2d"(%610, %31, %484) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %612 = "tosa.transpose"(%611, %21) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %613 = "tosa.add"(%593, %612) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %614 = "tosa.equal"(%251, %252) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %615 = "tosa.select"(%614, %613, %22) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %616 = "tosa.mul"(%45, %615) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %617 = "tosa.mul"(%242, %616) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %618 = "tosa.transpose"(%617, %23) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %619 = "tosa.transpose_conv2d"(%618, %32, %438) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %620 = "tosa.transpose_conv2d"(%618, %29, %508) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %621 = "tosa.transpose"(%620, %21) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %622 = "tosa.equal"(%235, %236) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %623 = "tosa.select"(%622, %621, %22) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %624 = "tosa.mul"(%623, %2) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %625 = "tosa.mul"(%78, %624) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %626 = "tosa.transpose"(%625, %23) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %627 = "tosa.transpose_conv2d"(%626, %30, %508) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %628 = "tosa.transpose"(%627, %21) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %629 = "tosa.equal"(%227, %228) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %630 = "tosa.select"(%629, %628, %22) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %631 = "tosa.mul"(%630, %2) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %632 = "tosa.mul"(%78, %631) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %633 = "tosa.transpose"(%632, %23) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %634 = "tosa.transpose_conv2d"(%633, %33, %438) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %635 = "tosa.add"(%619, %634) : (tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %636 = "tosa.transpose"(%635, %21) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %637 = "tosa.equal"(%224, %225) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %638 = "tosa.select"(%637, %636, %22) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %639 = "tosa.mul"(%638, %7) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %640 = "tosa.mul"(%150, %639) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %641 = "tosa.transpose"(%640, %23) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %642 = tensor.empty() : tensor<128xf32>
    %643 = "tosa.transpose_conv2d"(%641, %34, %642) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %644 = "tosa.transpose"(%643, %21) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %645 = "tosa.equal"(%215, %216) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %646 = "tosa.select"(%645, %644, %22) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %647 = "tosa.mul"(%646, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %648 = "tosa.mul"(%132, %647) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %649 = "tosa.transpose"(%648, %23) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %650 = "tosa.transpose_conv2d"(%649, %35, %642) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %651 = "tosa.transpose"(%650, %21) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %652 = "tosa.equal"(%208, %209) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %653 = "tosa.select"(%652, %651, %22) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %654 = "tosa.mul"(%653, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %655 = "tosa.mul"(%132, %654) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %656 = "tosa.transpose"(%655, %23) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %657 = "tosa.transpose_conv2d"(%656, %36, %438) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %658 = "tosa.transpose"(%657, %21) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %659 = "tosa.add"(%638, %658) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %660 = "tosa.equal"(%200, %201) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %661 = "tosa.select"(%660, %659, %22) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %662 = "tosa.mul"(%661, %7) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %663 = "tosa.mul"(%150, %662) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %664 = "tosa.transpose"(%663, %23) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %665 = "tosa.transpose_conv2d"(%664, %34, %642) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %666 = "tosa.transpose"(%665, %21) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %667 = "tosa.equal"(%191, %192) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %668 = "tosa.select"(%667, %666, %22) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %669 = "tosa.mul"(%668, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %670 = "tosa.mul"(%132, %669) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %671 = "tosa.transpose"(%670, %23) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %672 = "tosa.transpose_conv2d"(%671, %35, %642) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %673 = "tosa.transpose"(%672, %21) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %674 = "tosa.equal"(%188, %189) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %675 = "tosa.select"(%674, %673, %22) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %676 = "tosa.mul"(%675, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %677 = "tosa.mul"(%132, %676) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %678 = "tosa.transpose"(%677, %23) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %679 = "tosa.transpose_conv2d"(%678, %36, %438) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %680 = "tosa.transpose"(%679, %21) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %681 = "tosa.add"(%661, %680) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %682 = "tosa.equal"(%180, %181) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %683 = "tosa.select"(%682, %681, %22) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %684 = "tosa.mul"(%683, %7) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %685 = "tosa.mul"(%150, %684) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %686 = "tosa.transpose"(%685, %23) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %687 = "tosa.transpose_conv2d"(%686, %34, %642) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %688 = "tosa.transpose"(%687, %21) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %689 = "tosa.equal"(%172, %173) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %690 = "tosa.select"(%689, %688, %22) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %691 = "tosa.mul"(%690, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %692 = "tosa.mul"(%132, %691) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %693 = "tosa.transpose"(%692, %23) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %694 = "tosa.transpose_conv2d"(%693, %35, %642) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %695 = "tosa.transpose"(%694, %21) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %696 = "tosa.equal"(%164, %165) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %697 = "tosa.select"(%696, %695, %22) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %698 = "tosa.mul"(%697, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %699 = "tosa.mul"(%132, %698) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %700 = "tosa.transpose"(%699, %23) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %701 = "tosa.transpose_conv2d"(%700, %36, %438) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %702 = "tosa.transpose"(%701, %21) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %703 = "tosa.add"(%683, %702) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %704 = "tosa.equal"(%156, %157) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %705 = "tosa.select"(%704, %703, %22) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %706 = "tosa.mul"(%705, %7) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %707 = "tosa.mul"(%150, %706) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %708 = "tosa.transpose"(%707, %23) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %709 = "tosa.transpose_conv2d"(%708, %37, %508) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %710 = "tosa.transpose_conv2d"(%708, %34, %642) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %711 = "tosa.transpose"(%710, %21) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %712 = "tosa.equal"(%143, %144) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %713 = "tosa.select"(%712, %711, %22) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %714 = "tosa.mul"(%713, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %715 = "tosa.mul"(%132, %714) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %716 = "tosa.transpose"(%715, %23) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %717 = "tosa.transpose_conv2d"(%716, %35, %642) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %718 = "tosa.transpose"(%717, %21) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %719 = "tosa.equal"(%135, %136) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %720 = "tosa.select"(%719, %718, %22) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %721 = "tosa.mul"(%720, %5) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %722 = "tosa.mul"(%132, %721) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %723 = "tosa.transpose"(%722, %23) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %724 = "tosa.transpose_conv2d"(%723, %38, %508) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %725 = "tosa.add"(%709, %724) : (tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %726 = "tosa.transpose"(%725, %21) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %727 = "tosa.equal"(%125, %126) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %728 = "tosa.select"(%727, %726, %22) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %729 = "tosa.mul"(%728, %2) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %730 = "tosa.mul"(%78, %729) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %731 = "tosa.transpose"(%730, %23) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %732 = tensor.empty() : tensor<64xf32>
    %733 = "tosa.transpose_conv2d"(%731, %39, %732) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %734 = "tosa.transpose"(%733, %21) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %735 = "tosa.equal"(%116, %117) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %736 = "tosa.select"(%735, %734, %22) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %737 = "tosa.mul"(%736, %0) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %738 = "tosa.mul"(%52, %737) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %739 = "tosa.transpose"(%738, %23) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %740 = "tosa.transpose_conv2d"(%739, %40, %732) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %741 = "tosa.transpose"(%740, %21) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %742 = "tosa.equal"(%114, %115) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %743 = "tosa.select"(%742, %741, %22) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %744 = "tosa.mul"(%743, %0) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %745 = "tosa.mul"(%52, %744) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %746 = "tosa.transpose"(%745, %23) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %747 = "tosa.transpose_conv2d"(%746, %41, %508) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %748 = "tosa.transpose"(%747, %21) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %749 = "tosa.add"(%728, %748) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %750 = "tosa.equal"(%106, %107) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %751 = "tosa.select"(%750, %749, %22) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %752 = "tosa.mul"(%751, %2) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %753 = "tosa.mul"(%78, %752) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %754 = "tosa.transpose"(%753, %23) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %755 = "tosa.transpose_conv2d"(%754, %39, %732) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %756 = "tosa.transpose"(%755, %21) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %757 = "tosa.equal"(%99, %100) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %758 = "tosa.select"(%757, %756, %22) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %759 = "tosa.mul"(%758, %0) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %760 = "tosa.mul"(%52, %759) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %761 = "tosa.transpose"(%760, %23) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %762 = "tosa.transpose_conv2d"(%761, %40, %732) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %763 = "tosa.transpose"(%762, %21) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %764 = "tosa.equal"(%91, %92) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %765 = "tosa.select"(%764, %763, %22) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %766 = "tosa.mul"(%765, %0) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %767 = "tosa.mul"(%52, %766) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %768 = "tosa.transpose"(%767, %23) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %769 = "tosa.transpose_conv2d"(%768, %41, %508) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %770 = "tosa.transpose"(%769, %21) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %771 = "tosa.add"(%751, %770) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %772 = "tosa.equal"(%83, %84) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %773 = "tosa.select"(%772, %771, %22) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %774 = "tosa.mul"(%773, %2) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %775 = "tosa.mul"(%78, %774) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %776 = "tosa.transpose"(%775, %23) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %777 = "tosa.transpose_conv2d"(%776, %39, %732) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %778 = "tosa.transpose"(%777, %21) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %779 = "tosa.equal"(%71, %72) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %780 = "tosa.select"(%779, %778, %22) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %781 = "tosa.mul"(%780, %0) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %782 = "tosa.mul"(%52, %781) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %783 = "tosa.transpose"(%782, %23) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %784 = "tosa.transpose_conv2d"(%783, %40, %732) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %785 = "tosa.transpose"(%784, %21) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %786 = "tosa.equal"(%64, %65) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %787 = "tosa.select"(%786, %785, %22) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %788 = "tosa.mul"(%787, %0) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %789 = "tosa.mul"(%52, %788) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %790 = "tosa.transpose"(%789, %23) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %791 = "tosa.transpose_conv2d"(%790, %42, %732) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x1x1x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %792 = "tosa.add"(%777, %791) : (tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %padded = tensor.pad %57 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %793 = tensor.empty() : tensor<1x113x113x64xf32>
    %794 = tensor.empty() : tensor<3x3xf32>
    %795 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded, %794, %58, %792 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%793 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_1: f32, %in_2: f32, %in_3: f32, %out: f32):
      %806 = arith.cmpf oge, %in, %in_2 : f32
      %807 = arith.select %806, %in_3, %cst_0 : f32
      %808 = arith.addf %out, %807 : f32
      linalg.yield %808 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice = tensor.extract_slice %795[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %796 = "tosa.transpose"(%extracted_slice, %21) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %797 = "tosa.equal"(%55, %56) : (tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xi1>
    %798 = "tosa.select"(%797, %796, %22) : (tensor<1x64x112x112xi1>, tensor<1x64x112x112xf32>, tensor<f32>) -> tensor<1x64x112x112xf32>
    %799 = "tosa.mul"(%798, %0) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %800 = "tosa.mul"(%52, %799) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %801 = "tosa.transpose"(%800, %23) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %802 = "tosa.transpose"(%46, %43) : (tensor<64x7x7x3xf32>, tensor<4xi64>) -> tensor<3x7x7x64xf32>
    %803 = tensor.empty() : tensor<3xf32>
    %804 = "tosa.transpose_conv2d"(%801, %802, %803) {out_pad = array<i64: -3, -3, -3, -3>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>, tensor<3x7x7x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %805 = "tosa.transpose"(%804, %21) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %805 : tensor<1x3x224x224xf32>
  }
}

