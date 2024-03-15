#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "ResNet"} {
  ml_program.global private mutable @global31 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global30 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global29 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global28 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global27 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global26 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global25 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global24 : tensor<1x14x14x256xf32>
  ml_program.global private mutable @global23 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global22 : tensor<1x14x14x256xf32>
  ml_program.global private mutable @global21 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global20 : tensor<1x14x14x1024xf32>
  ml_program.global private mutable @global19 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global18 : tensor<1x14x14x1024xf32>
  ml_program.global private mutable @global17 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global16 : tensor<1x14x14x256xf32>
  ml_program.global private mutable @global15 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global14 : tensor<1x14x14x256xf32>
  ml_program.global private mutable @global13 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global12 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global11 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global10 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global9 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global8 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global7 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global6 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global5 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global4 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global3 : tensor<1x56x56x256xf32>
  ml_program.global private mutable @global2 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global1 : tensor<512x1x1x128xf32>
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
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x128xf32>} : () -> tensor<512x1x1x128xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %14 = "tosa.const"() {value = dense<7.778000e-02> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x256xf32>} : () -> tensor<512x1x1x256xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x512xf32>} : () -> tensor<128x1x1x512xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x512xf32>} : () -> tensor<256x1x1x512xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x256xf32>} : () -> tensor<1024x1x1x256xf32>
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
    %41 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x128xf32>} : () -> tensor<128x3x3x128xf32>
    ml_program.global_store @global0 = %arg0 : tensor<1x3x224x224xf32>
    ml_program.global_store @global1 = %12 : tensor<512x1x1x128xf32>
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
    ml_program.global_store @global2 = %57 : tensor<1x64x56x56xf32>
    %58 = "tosa.mul"(%57, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %59 = "tosa.add"(%58, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %60 = "tosa.clamp"(%59) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %61 = "tosa.transpose"(%60, %39) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %62 = "tosa.conv2d"(%61, %4, %40) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
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
    %84 = "tosa.add"(%77, %83) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %85 = "tosa.clamp"(%84) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %86 = "tosa.transpose"(%85, %39) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    ml_program.global_store @global3 = %86 : tensor<1x56x56x256xf32>
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
    ml_program.global_store @global4 = %115 : tensor<1x64x56x56xf32>
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
    ml_program.global_store @global5 = %144 : tensor<1x128x56x56xf32>
    %145 = "tosa.clamp"(%144) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %146 = "tosa.transpose"(%145, %39) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %147 = "tosa.conv2d"(%146, %41, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %148 = "tosa.transpose"(%147, %38) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %149 = "tosa.sub"(%148, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %150 = "tosa.mul"(%149, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %151 = "tosa.mul"(%150, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %152 = "tosa.add"(%151, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %153 = "tosa.clamp"(%152) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %154 = "tosa.transpose"(%153, %39) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %155 = "tosa.conv2d"(%154, %12, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %156 = "tosa.transpose"(%155, %38) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %157 = "tosa.sub"(%156, %13) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %158 = "tosa.rsqrt"(%14) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %159 = "tosa.reshape"(%158) {new_shape = array<i64: 1, 512, 1, 1>} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %160 = "tosa.mul"(%157, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %161 = "tosa.mul"(%160, %13) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %162 = "tosa.add"(%161, %13) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %163 = "tosa.conv2d"(%136, %15, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %164 = "tosa.transpose"(%163, %38) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %165 = "tosa.sub"(%164, %13) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %166 = "tosa.mul"(%165, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %167 = "tosa.mul"(%166, %13) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %168 = "tosa.add"(%167, %13) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %169 = "tosa.add"(%162, %168) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %170 = "tosa.clamp"(%169) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %171 = "tosa.transpose"(%170, %39) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %172 = "tosa.conv2d"(%171, %16, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %173 = "tosa.transpose"(%172, %38) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global6 = %173 : tensor<1x128x28x28xf32>
    %174 = "tosa.sub"(%173, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %175 = "tosa.mul"(%174, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %176 = "tosa.mul"(%175, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %177 = "tosa.add"(%176, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %178 = "tosa.clamp"(%177) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %179 = "tosa.transpose"(%178, %39) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %180 = "tosa.conv2d"(%179, %41, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %181 = "tosa.transpose"(%180, %38) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %182 = "tosa.sub"(%181, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %183 = "tosa.mul"(%182, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %184 = "tosa.mul"(%183, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %185 = "tosa.add"(%184, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %186 = "tosa.clamp"(%185) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %187 = "tosa.transpose"(%186, %39) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %188 = "tosa.conv2d"(%187, %12, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %189 = "tosa.transpose"(%188, %38) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %190 = "tosa.sub"(%189, %13) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %191 = "tosa.mul"(%190, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %192 = "tosa.mul"(%191, %13) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %193 = "tosa.add"(%192, %13) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %194 = "tosa.add"(%193, %170) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %195 = "tosa.clamp"(%194) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %196 = "tosa.transpose"(%195, %39) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %197 = "tosa.conv2d"(%196, %16, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %198 = "tosa.transpose"(%197, %38) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %199 = "tosa.sub"(%198, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %200 = "tosa.mul"(%199, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %201 = "tosa.mul"(%200, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %202 = "tosa.add"(%201, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global7 = %202 : tensor<1x128x28x28xf32>
    %203 = "tosa.clamp"(%202) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %204 = "tosa.transpose"(%203, %39) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %205 = "tosa.conv2d"(%204, %41, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %206 = "tosa.transpose"(%205, %38) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %207 = "tosa.sub"(%206, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %208 = "tosa.mul"(%207, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %209 = "tosa.mul"(%208, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %210 = "tosa.add"(%209, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %211 = "tosa.clamp"(%210) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %212 = "tosa.transpose"(%211, %39) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %213 = "tosa.conv2d"(%212, %12, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %214 = "tosa.transpose"(%213, %38) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %215 = "tosa.sub"(%214, %13) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %216 = "tosa.mul"(%215, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %217 = "tosa.mul"(%216, %13) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %218 = "tosa.add"(%217, %13) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %219 = "tosa.add"(%218, %195) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %220 = "tosa.clamp"(%219) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %221 = "tosa.transpose"(%220, %39) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %222 = "tosa.conv2d"(%221, %16, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %223 = "tosa.transpose"(%222, %38) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %224 = "tosa.sub"(%223, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %225 = "tosa.mul"(%224, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %226 = "tosa.mul"(%225, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %227 = "tosa.add"(%226, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %228 = "tosa.clamp"(%227) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %229 = "tosa.transpose"(%228, %39) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %230 = "tosa.conv2d"(%229, %41, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %231 = "tosa.transpose"(%230, %38) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global8 = %231 : tensor<1x128x28x28xf32>
    %232 = "tosa.sub"(%231, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %233 = "tosa.mul"(%232, %141) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %234 = "tosa.mul"(%233, %10) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %235 = "tosa.add"(%234, %10) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %236 = "tosa.clamp"(%235) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %237 = "tosa.transpose"(%236, %39) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %238 = "tosa.conv2d"(%237, %12, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %239 = "tosa.transpose"(%238, %38) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %240 = "tosa.sub"(%239, %13) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %241 = "tosa.mul"(%240, %159) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %242 = "tosa.mul"(%241, %13) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %243 = "tosa.add"(%242, %13) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %244 = "tosa.add"(%243, %220) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %245 = "tosa.clamp"(%244) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %246 = "tosa.transpose"(%245, %39) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %247 = "tosa.conv2d"(%246, %17, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %248 = "tosa.transpose"(%247, %38) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %249 = "tosa.sub"(%248, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %250 = "tosa.mul"(%249, %74) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %251 = "tosa.mul"(%250, %6) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %252 = "tosa.add"(%251, %6) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %253 = "tosa.clamp"(%252) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %254 = "tosa.transpose"(%253, %39) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %255 = "tosa.conv2d"(%254, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %256 = "tosa.transpose"(%255, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %257 = "tosa.sub"(%256, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %258 = "tosa.mul"(%257, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %259 = "tosa.mul"(%258, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %260 = "tosa.add"(%259, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global9 = %260 : tensor<1x256x14x14xf32>
    %261 = "tosa.clamp"(%260) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %262 = "tosa.transpose"(%261, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %263 = "tosa.conv2d"(%262, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %264 = "tosa.transpose"(%263, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %265 = "tosa.sub"(%264, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %266 = "tosa.rsqrt"(%21) : (tensor<1024x1x1xf32>) -> tensor<1024x1x1xf32>
    %267 = "tosa.reshape"(%266) {new_shape = array<i64: 1, 1024, 1, 1>} : (tensor<1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %268 = "tosa.mul"(%265, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %269 = "tosa.mul"(%268, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %270 = "tosa.add"(%269, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %271 = "tosa.conv2d"(%246, %22, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %272 = "tosa.transpose"(%271, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
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
    %288 = "tosa.conv2d"(%287, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %289 = "tosa.transpose"(%288, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global10 = %289 : tensor<1x256x14x14xf32>
    %290 = "tosa.sub"(%289, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %291 = "tosa.mul"(%290, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %292 = "tosa.mul"(%291, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %293 = "tosa.add"(%292, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %294 = "tosa.clamp"(%293) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %295 = "tosa.transpose"(%294, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %296 = "tosa.conv2d"(%295, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
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
    %313 = "tosa.conv2d"(%312, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %314 = "tosa.transpose"(%313, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %315 = "tosa.sub"(%314, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %316 = "tosa.mul"(%315, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %317 = "tosa.mul"(%316, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %318 = "tosa.add"(%317, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global11 = %318 : tensor<1x256x14x14xf32>
    %319 = "tosa.clamp"(%318) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %320 = "tosa.transpose"(%319, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %321 = "tosa.conv2d"(%320, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
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
    %336 = "tosa.clamp"(%335) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %337 = "tosa.transpose"(%336, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %338 = "tosa.conv2d"(%337, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %339 = "tosa.transpose"(%338, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %340 = "tosa.sub"(%339, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %341 = "tosa.mul"(%340, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %342 = "tosa.mul"(%341, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %343 = "tosa.add"(%342, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %344 = "tosa.clamp"(%343) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %345 = "tosa.transpose"(%344, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %346 = "tosa.conv2d"(%345, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %347 = "tosa.transpose"(%346, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global12 = %347 : tensor<1x1024x14x14xf32>
    %348 = "tosa.sub"(%347, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %349 = "tosa.mul"(%348, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %350 = "tosa.mul"(%349, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %351 = "tosa.add"(%350, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %352 = "tosa.add"(%351, %328) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %353 = "tosa.clamp"(%352) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %354 = "tosa.transpose"(%353, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %355 = "tosa.conv2d"(%354, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %356 = "tosa.transpose"(%355, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %357 = "tosa.sub"(%356, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %358 = "tosa.mul"(%357, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %359 = "tosa.mul"(%358, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %360 = "tosa.add"(%359, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %361 = "tosa.clamp"(%360) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %362 = "tosa.transpose"(%361, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %363 = "tosa.conv2d"(%362, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %364 = "tosa.transpose"(%363, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %365 = "tosa.sub"(%364, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %366 = "tosa.mul"(%365, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %367 = "tosa.mul"(%366, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %368 = "tosa.add"(%367, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %369 = "tosa.clamp"(%368) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %370 = "tosa.transpose"(%369, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %371 = "tosa.conv2d"(%370, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %372 = "tosa.transpose"(%371, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %373 = "tosa.sub"(%372, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %374 = "tosa.mul"(%373, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %375 = "tosa.mul"(%374, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %376 = "tosa.add"(%375, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global13 = %376 : tensor<1x1024x14x14xf32>
    %377 = "tosa.add"(%376, %353) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
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
    %388 = "tosa.conv2d"(%387, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %389 = "tosa.transpose"(%388, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %390 = "tosa.sub"(%389, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %391 = "tosa.mul"(%390, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %392 = "tosa.mul"(%391, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %393 = "tosa.add"(%392, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %394 = "tosa.clamp"(%393) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %395 = "tosa.transpose"(%394, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %396 = "tosa.conv2d"(%395, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %397 = "tosa.transpose"(%396, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %398 = "tosa.sub"(%397, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %399 = "tosa.mul"(%398, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %400 = "tosa.mul"(%399, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %401 = "tosa.add"(%400, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %402 = "tosa.add"(%401, %378) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %403 = "tosa.clamp"(%402) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %404 = "tosa.transpose"(%403, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %405 = "tosa.conv2d"(%404, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    ml_program.global_store @global14 = %405 : tensor<1x14x14x256xf32>
    %406 = "tosa.transpose"(%405, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %407 = "tosa.sub"(%406, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %408 = "tosa.mul"(%407, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %409 = "tosa.mul"(%408, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %410 = "tosa.add"(%409, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %411 = "tosa.clamp"(%410) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %412 = "tosa.transpose"(%411, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %413 = "tosa.conv2d"(%412, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %414 = "tosa.transpose"(%413, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %415 = "tosa.sub"(%414, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %416 = "tosa.mul"(%415, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %417 = "tosa.mul"(%416, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %418 = "tosa.add"(%417, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %419 = "tosa.clamp"(%418) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %420 = "tosa.transpose"(%419, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %421 = "tosa.conv2d"(%420, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %422 = "tosa.transpose"(%421, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %423 = "tosa.sub"(%422, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %424 = "tosa.mul"(%423, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %425 = "tosa.mul"(%424, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %426 = "tosa.add"(%425, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %427 = "tosa.add"(%426, %403) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %428 = "tosa.clamp"(%427) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %429 = "tosa.transpose"(%428, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %430 = "tosa.conv2d"(%429, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %431 = "tosa.transpose"(%430, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %432 = "tosa.sub"(%431, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %433 = "tosa.mul"(%432, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %434 = "tosa.mul"(%433, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global15 = %434 : tensor<1x256x14x14xf32>
    %435 = "tosa.add"(%434, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %436 = "tosa.clamp"(%435) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %437 = "tosa.transpose"(%436, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %438 = "tosa.conv2d"(%437, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %439 = "tosa.transpose"(%438, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %440 = "tosa.sub"(%439, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %441 = "tosa.mul"(%440, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %442 = "tosa.mul"(%441, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %443 = "tosa.add"(%442, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %444 = "tosa.clamp"(%443) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %445 = "tosa.transpose"(%444, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %446 = "tosa.conv2d"(%445, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %447 = "tosa.transpose"(%446, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %448 = "tosa.sub"(%447, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %449 = "tosa.mul"(%448, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %450 = "tosa.mul"(%449, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %451 = "tosa.add"(%450, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %452 = "tosa.add"(%451, %428) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %453 = "tosa.clamp"(%452) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %454 = "tosa.transpose"(%453, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %455 = "tosa.conv2d"(%454, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %456 = "tosa.transpose"(%455, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %457 = "tosa.sub"(%456, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %458 = "tosa.mul"(%457, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %459 = "tosa.mul"(%458, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %460 = "tosa.add"(%459, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %461 = "tosa.clamp"(%460) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %462 = "tosa.transpose"(%461, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %463 = "tosa.conv2d"(%462, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    ml_program.global_store @global16 = %463 : tensor<1x14x14x256xf32>
    %464 = "tosa.transpose"(%463, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %465 = "tosa.sub"(%464, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %466 = "tosa.mul"(%465, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %467 = "tosa.mul"(%466, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %468 = "tosa.add"(%467, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %469 = "tosa.clamp"(%468) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %470 = "tosa.transpose"(%469, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %471 = "tosa.conv2d"(%470, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %472 = "tosa.transpose"(%471, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %473 = "tosa.sub"(%472, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %474 = "tosa.mul"(%473, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %475 = "tosa.mul"(%474, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %476 = "tosa.add"(%475, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %477 = "tosa.add"(%476, %453) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %478 = "tosa.clamp"(%477) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %479 = "tosa.transpose"(%478, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %480 = "tosa.conv2d"(%479, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %481 = "tosa.transpose"(%480, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %482 = "tosa.sub"(%481, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %483 = "tosa.mul"(%482, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %484 = "tosa.mul"(%483, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %485 = "tosa.add"(%484, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %486 = "tosa.clamp"(%485) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %487 = "tosa.transpose"(%486, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %488 = "tosa.conv2d"(%487, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %489 = "tosa.transpose"(%488, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %490 = "tosa.sub"(%489, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %491 = "tosa.mul"(%490, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %492 = "tosa.mul"(%491, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global17 = %492 : tensor<1x256x14x14xf32>
    %493 = "tosa.add"(%492, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %494 = "tosa.clamp"(%493) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %495 = "tosa.transpose"(%494, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %496 = "tosa.conv2d"(%495, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %497 = "tosa.transpose"(%496, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %498 = "tosa.sub"(%497, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %499 = "tosa.mul"(%498, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %500 = "tosa.mul"(%499, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %501 = "tosa.add"(%500, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %502 = "tosa.add"(%501, %478) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %503 = "tosa.clamp"(%502) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %504 = "tosa.transpose"(%503, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %505 = "tosa.conv2d"(%504, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %506 = "tosa.transpose"(%505, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %507 = "tosa.sub"(%506, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %508 = "tosa.mul"(%507, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %509 = "tosa.mul"(%508, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %510 = "tosa.add"(%509, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %511 = "tosa.clamp"(%510) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %512 = "tosa.transpose"(%511, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %513 = "tosa.conv2d"(%512, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %514 = "tosa.transpose"(%513, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %515 = "tosa.sub"(%514, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %516 = "tosa.mul"(%515, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %517 = "tosa.mul"(%516, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %518 = "tosa.add"(%517, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %519 = "tosa.clamp"(%518) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %520 = "tosa.transpose"(%519, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %521 = "tosa.conv2d"(%520, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    ml_program.global_store @global18 = %521 : tensor<1x14x14x1024xf32>
    %522 = "tosa.transpose"(%521, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %523 = "tosa.sub"(%522, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %524 = "tosa.mul"(%523, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %525 = "tosa.mul"(%524, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %526 = "tosa.add"(%525, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %527 = "tosa.add"(%526, %503) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %528 = "tosa.clamp"(%527) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %529 = "tosa.transpose"(%528, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %530 = "tosa.conv2d"(%529, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %531 = "tosa.transpose"(%530, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %532 = "tosa.sub"(%531, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %533 = "tosa.mul"(%532, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %534 = "tosa.mul"(%533, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %535 = "tosa.add"(%534, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %536 = "tosa.clamp"(%535) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %537 = "tosa.transpose"(%536, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %538 = "tosa.conv2d"(%537, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %539 = "tosa.transpose"(%538, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %540 = "tosa.sub"(%539, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %541 = "tosa.mul"(%540, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %542 = "tosa.mul"(%541, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %543 = "tosa.add"(%542, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %544 = "tosa.clamp"(%543) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %545 = "tosa.transpose"(%544, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %546 = "tosa.conv2d"(%545, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %547 = "tosa.transpose"(%546, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %548 = "tosa.sub"(%547, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %549 = "tosa.mul"(%548, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %550 = "tosa.mul"(%549, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global19 = %550 : tensor<1x1024x14x14xf32>
    %551 = "tosa.add"(%550, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %552 = "tosa.add"(%551, %528) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %553 = "tosa.clamp"(%552) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %554 = "tosa.transpose"(%553, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %555 = "tosa.conv2d"(%554, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %556 = "tosa.transpose"(%555, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %557 = "tosa.sub"(%556, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %558 = "tosa.mul"(%557, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %559 = "tosa.mul"(%558, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %560 = "tosa.add"(%559, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %561 = "tosa.clamp"(%560) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %562 = "tosa.transpose"(%561, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %563 = "tosa.conv2d"(%562, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %564 = "tosa.transpose"(%563, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %565 = "tosa.sub"(%564, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %566 = "tosa.mul"(%565, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %567 = "tosa.mul"(%566, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %568 = "tosa.add"(%567, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %569 = "tosa.clamp"(%568) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %570 = "tosa.transpose"(%569, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %571 = "tosa.conv2d"(%570, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %572 = "tosa.transpose"(%571, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %573 = "tosa.sub"(%572, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %574 = "tosa.mul"(%573, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %575 = "tosa.mul"(%574, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %576 = "tosa.add"(%575, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %577 = "tosa.add"(%576, %553) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %578 = "tosa.clamp"(%577) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %579 = "tosa.transpose"(%578, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    ml_program.global_store @global20 = %579 : tensor<1x14x14x1024xf32>
    %580 = "tosa.conv2d"(%579, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %581 = "tosa.transpose"(%580, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %582 = "tosa.sub"(%581, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %583 = "tosa.mul"(%582, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %584 = "tosa.mul"(%583, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %585 = "tosa.add"(%584, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %586 = "tosa.clamp"(%585) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %587 = "tosa.transpose"(%586, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %588 = "tosa.conv2d"(%587, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %589 = "tosa.transpose"(%588, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %590 = "tosa.sub"(%589, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %591 = "tosa.mul"(%590, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %592 = "tosa.mul"(%591, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %593 = "tosa.add"(%592, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %594 = "tosa.clamp"(%593) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %595 = "tosa.transpose"(%594, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %596 = "tosa.conv2d"(%595, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %597 = "tosa.transpose"(%596, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %598 = "tosa.sub"(%597, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %599 = "tosa.mul"(%598, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %600 = "tosa.mul"(%599, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %601 = "tosa.add"(%600, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %602 = "tosa.add"(%601, %578) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %603 = "tosa.clamp"(%602) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %604 = "tosa.transpose"(%603, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %605 = "tosa.conv2d"(%604, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %606 = "tosa.transpose"(%605, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %607 = "tosa.sub"(%606, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %608 = "tosa.mul"(%607, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global21 = %608 : tensor<1x256x14x14xf32>
    %609 = "tosa.mul"(%608, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %610 = "tosa.add"(%609, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %611 = "tosa.clamp"(%610) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %612 = "tosa.transpose"(%611, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %613 = "tosa.conv2d"(%612, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %614 = "tosa.transpose"(%613, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %615 = "tosa.sub"(%614, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %616 = "tosa.mul"(%615, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %617 = "tosa.mul"(%616, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %618 = "tosa.add"(%617, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %619 = "tosa.clamp"(%618) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %620 = "tosa.transpose"(%619, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %621 = "tosa.conv2d"(%620, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %622 = "tosa.transpose"(%621, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %623 = "tosa.sub"(%622, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %624 = "tosa.mul"(%623, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %625 = "tosa.mul"(%624, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %626 = "tosa.add"(%625, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %627 = "tosa.add"(%626, %603) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %628 = "tosa.clamp"(%627) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %629 = "tosa.transpose"(%628, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %630 = "tosa.conv2d"(%629, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %631 = "tosa.transpose"(%630, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %632 = "tosa.sub"(%631, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %633 = "tosa.mul"(%632, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %634 = "tosa.mul"(%633, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %635 = "tosa.add"(%634, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %636 = "tosa.clamp"(%635) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %637 = "tosa.transpose"(%636, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    ml_program.global_store @global22 = %637 : tensor<1x14x14x256xf32>
    %638 = "tosa.conv2d"(%637, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %639 = "tosa.transpose"(%638, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %640 = "tosa.sub"(%639, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %641 = "tosa.mul"(%640, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %642 = "tosa.mul"(%641, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %643 = "tosa.add"(%642, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %644 = "tosa.clamp"(%643) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %645 = "tosa.transpose"(%644, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %646 = "tosa.conv2d"(%645, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %647 = "tosa.transpose"(%646, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %648 = "tosa.sub"(%647, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %649 = "tosa.mul"(%648, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %650 = "tosa.mul"(%649, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %651 = "tosa.add"(%650, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %652 = "tosa.add"(%651, %628) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %653 = "tosa.clamp"(%652) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %654 = "tosa.transpose"(%653, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %655 = "tosa.conv2d"(%654, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %656 = "tosa.transpose"(%655, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %657 = "tosa.sub"(%656, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %658 = "tosa.mul"(%657, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %659 = "tosa.mul"(%658, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %660 = "tosa.add"(%659, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %661 = "tosa.clamp"(%660) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %662 = "tosa.transpose"(%661, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %663 = "tosa.conv2d"(%662, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %664 = "tosa.transpose"(%663, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %665 = "tosa.sub"(%664, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %666 = "tosa.mul"(%665, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global23 = %666 : tensor<1x256x14x14xf32>
    %667 = "tosa.mul"(%666, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %668 = "tosa.add"(%667, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %669 = "tosa.clamp"(%668) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %670 = "tosa.transpose"(%669, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %671 = "tosa.conv2d"(%670, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %672 = "tosa.transpose"(%671, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %673 = "tosa.sub"(%672, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %674 = "tosa.mul"(%673, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %675 = "tosa.mul"(%674, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %676 = "tosa.add"(%675, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %677 = "tosa.add"(%676, %653) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %678 = "tosa.clamp"(%677) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %679 = "tosa.transpose"(%678, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %680 = "tosa.conv2d"(%679, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %681 = "tosa.transpose"(%680, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %682 = "tosa.sub"(%681, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %683 = "tosa.mul"(%682, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %684 = "tosa.mul"(%683, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %685 = "tosa.add"(%684, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %686 = "tosa.clamp"(%685) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %687 = "tosa.transpose"(%686, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %688 = "tosa.conv2d"(%687, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %689 = "tosa.transpose"(%688, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %690 = "tosa.sub"(%689, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %691 = "tosa.mul"(%690, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %692 = "tosa.mul"(%691, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %693 = "tosa.add"(%692, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %694 = "tosa.clamp"(%693) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %695 = "tosa.transpose"(%694, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    ml_program.global_store @global24 = %695 : tensor<1x14x14x256xf32>
    %696 = "tosa.conv2d"(%695, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %697 = "tosa.transpose"(%696, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %698 = "tosa.sub"(%697, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %699 = "tosa.mul"(%698, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %700 = "tosa.mul"(%699, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %701 = "tosa.add"(%700, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %702 = "tosa.add"(%701, %678) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %703 = "tosa.clamp"(%702) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %704 = "tosa.transpose"(%703, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %705 = "tosa.conv2d"(%704, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %706 = "tosa.transpose"(%705, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %707 = "tosa.sub"(%706, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %708 = "tosa.mul"(%707, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %709 = "tosa.mul"(%708, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %710 = "tosa.add"(%709, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %711 = "tosa.clamp"(%710) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %712 = "tosa.transpose"(%711, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %713 = "tosa.conv2d"(%712, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %714 = "tosa.transpose"(%713, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %715 = "tosa.sub"(%714, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %716 = "tosa.mul"(%715, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %717 = "tosa.mul"(%716, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %718 = "tosa.add"(%717, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %719 = "tosa.clamp"(%718) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %720 = "tosa.transpose"(%719, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %721 = "tosa.conv2d"(%720, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %722 = "tosa.transpose"(%721, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %723 = "tosa.sub"(%722, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %724 = "tosa.mul"(%723, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global25 = %724 : tensor<1x1024x14x14xf32>
    %725 = "tosa.mul"(%724, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %726 = "tosa.add"(%725, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %727 = "tosa.add"(%726, %703) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %728 = "tosa.clamp"(%727) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %729 = "tosa.transpose"(%728, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %730 = "tosa.conv2d"(%729, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %731 = "tosa.transpose"(%730, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %732 = "tosa.sub"(%731, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %733 = "tosa.mul"(%732, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %734 = "tosa.mul"(%733, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %735 = "tosa.add"(%734, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %736 = "tosa.clamp"(%735) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %737 = "tosa.transpose"(%736, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %738 = "tosa.conv2d"(%737, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %739 = "tosa.transpose"(%738, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %740 = "tosa.sub"(%739, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %741 = "tosa.mul"(%740, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %742 = "tosa.mul"(%741, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %743 = "tosa.add"(%742, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %744 = "tosa.clamp"(%743) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %745 = "tosa.transpose"(%744, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %746 = "tosa.conv2d"(%745, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %747 = "tosa.transpose"(%746, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %748 = "tosa.sub"(%747, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %749 = "tosa.mul"(%748, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %750 = "tosa.mul"(%749, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %751 = "tosa.add"(%750, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %752 = "tosa.add"(%751, %728) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %753 = "tosa.clamp"(%752) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global26 = %753 : tensor<1x1024x14x14xf32>
    %754 = "tosa.transpose"(%753, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %755 = "tosa.conv2d"(%754, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %756 = "tosa.transpose"(%755, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %757 = "tosa.sub"(%756, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %758 = "tosa.mul"(%757, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %759 = "tosa.mul"(%758, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %760 = "tosa.add"(%759, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %761 = "tosa.clamp"(%760) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %762 = "tosa.transpose"(%761, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %763 = "tosa.conv2d"(%762, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %764 = "tosa.transpose"(%763, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %765 = "tosa.sub"(%764, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %766 = "tosa.mul"(%765, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %767 = "tosa.mul"(%766, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %768 = "tosa.add"(%767, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %769 = "tosa.clamp"(%768) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %770 = "tosa.transpose"(%769, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %771 = "tosa.conv2d"(%770, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %772 = "tosa.transpose"(%771, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %773 = "tosa.sub"(%772, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %774 = "tosa.mul"(%773, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %775 = "tosa.mul"(%774, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %776 = "tosa.add"(%775, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %777 = "tosa.add"(%776, %753) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %778 = "tosa.clamp"(%777) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %779 = "tosa.transpose"(%778, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %780 = "tosa.conv2d"(%779, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %781 = "tosa.transpose"(%780, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %782 = "tosa.sub"(%781, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global27 = %782 : tensor<1x256x14x14xf32>
    %783 = "tosa.mul"(%782, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %784 = "tosa.mul"(%783, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %785 = "tosa.add"(%784, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %786 = "tosa.clamp"(%785) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %787 = "tosa.transpose"(%786, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %788 = "tosa.conv2d"(%787, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %789 = "tosa.transpose"(%788, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %790 = "tosa.sub"(%789, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %791 = "tosa.mul"(%790, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %792 = "tosa.mul"(%791, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %793 = "tosa.add"(%792, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %794 = "tosa.clamp"(%793) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %795 = "tosa.transpose"(%794, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %796 = "tosa.conv2d"(%795, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %797 = "tosa.transpose"(%796, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %798 = "tosa.sub"(%797, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %799 = "tosa.mul"(%798, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %800 = "tosa.mul"(%799, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %801 = "tosa.add"(%800, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %802 = "tosa.add"(%801, %778) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %803 = "tosa.clamp"(%802) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %804 = "tosa.transpose"(%803, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %805 = "tosa.conv2d"(%804, %23, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %806 = "tosa.transpose"(%805, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %807 = "tosa.sub"(%806, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %808 = "tosa.mul"(%807, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %809 = "tosa.mul"(%808, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %810 = "tosa.add"(%809, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %811 = "tosa.clamp"(%810) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global28 = %811 : tensor<1x256x14x14xf32>
    %812 = "tosa.transpose"(%811, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %813 = "tosa.conv2d"(%812, %18, %37) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %814 = "tosa.transpose"(%813, %38) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %815 = "tosa.sub"(%814, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %816 = "tosa.mul"(%815, %74) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %817 = "tosa.mul"(%816, %6) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %818 = "tosa.add"(%817, %6) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %819 = "tosa.clamp"(%818) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %820 = "tosa.transpose"(%819, %39) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %821 = "tosa.conv2d"(%820, %19, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %822 = "tosa.transpose"(%821, %38) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %823 = "tosa.sub"(%822, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %824 = "tosa.mul"(%823, %267) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %825 = "tosa.mul"(%824, %20) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %826 = "tosa.add"(%825, %20) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %827 = "tosa.add"(%826, %803) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %828 = "tosa.clamp"(%827) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %829 = "tosa.transpose"(%828, %39) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %830 = "tosa.conv2d"(%829, %24, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %831 = "tosa.transpose"(%830, %38) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %832 = "tosa.sub"(%831, %13) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %833 = "tosa.mul"(%832, %159) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %834 = "tosa.mul"(%833, %13) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %835 = "tosa.add"(%834, %13) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %836 = "tosa.clamp"(%835) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %837 = "tosa.transpose"(%836, %39) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %838 = "tosa.conv2d"(%837, %25, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %839 = "tosa.transpose"(%838, %38) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %840 = "tosa.sub"(%839, %13) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global29 = %840 : tensor<1x512x7x7xf32>
    %841 = "tosa.mul"(%840, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %842 = "tosa.mul"(%841, %13) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %843 = "tosa.add"(%842, %13) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %844 = "tosa.clamp"(%843) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %845 = "tosa.transpose"(%844, %39) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %846 = "tosa.conv2d"(%845, %26, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %847 = "tosa.transpose"(%846, %38) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %848 = "tosa.sub"(%847, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %849 = "tosa.rsqrt"(%28) : (tensor<2048x1x1xf32>) -> tensor<2048x1x1xf32>
    %850 = "tosa.reshape"(%849) {new_shape = array<i64: 1, 2048, 1, 1>} : (tensor<2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %851 = "tosa.mul"(%848, %850) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %852 = "tosa.mul"(%851, %27) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %853 = "tosa.add"(%852, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %854 = "tosa.conv2d"(%829, %29, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %855 = "tosa.transpose"(%854, %38) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %856 = "tosa.sub"(%855, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %857 = "tosa.mul"(%856, %850) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %858 = "tosa.mul"(%857, %27) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %859 = "tosa.add"(%858, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %860 = "tosa.add"(%853, %859) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %861 = "tosa.clamp"(%860) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %862 = "tosa.transpose"(%861, %39) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %863 = "tosa.conv2d"(%862, %30, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %864 = "tosa.transpose"(%863, %38) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %865 = "tosa.sub"(%864, %13) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %866 = "tosa.mul"(%865, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %867 = "tosa.mul"(%866, %13) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %868 = "tosa.add"(%867, %13) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %869 = "tosa.clamp"(%868) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global30 = %869 : tensor<1x512x7x7xf32>
    %870 = "tosa.transpose"(%869, %39) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %871 = "tosa.conv2d"(%870, %25, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %872 = "tosa.transpose"(%871, %38) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %873 = "tosa.sub"(%872, %13) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %874 = "tosa.mul"(%873, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %875 = "tosa.mul"(%874, %13) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %876 = "tosa.add"(%875, %13) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %877 = "tosa.clamp"(%876) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %878 = "tosa.transpose"(%877, %39) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %879 = "tosa.conv2d"(%878, %26, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %880 = "tosa.transpose"(%879, %38) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %881 = "tosa.sub"(%880, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %882 = "tosa.mul"(%881, %850) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %883 = "tosa.mul"(%882, %27) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %884 = "tosa.add"(%883, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %885 = "tosa.add"(%884, %861) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %886 = "tosa.clamp"(%885) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %887 = "tosa.transpose"(%886, %39) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %888 = "tosa.conv2d"(%887, %30, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %889 = "tosa.transpose"(%888, %38) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %890 = "tosa.sub"(%889, %13) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %891 = "tosa.mul"(%890, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %892 = "tosa.mul"(%891, %13) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %893 = "tosa.add"(%892, %13) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %894 = "tosa.clamp"(%893) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %895 = "tosa.transpose"(%894, %39) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %896 = "tosa.conv2d"(%895, %25, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %897 = "tosa.transpose"(%896, %38) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %898 = "tosa.sub"(%897, %13) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global31 = %898 : tensor<1x512x7x7xf32>
    %899 = "tosa.mul"(%898, %159) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %900 = "tosa.mul"(%899, %13) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %901 = "tosa.add"(%900, %13) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %902 = "tosa.clamp"(%901) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %903 = "tosa.transpose"(%902, %39) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %904 = "tosa.conv2d"(%903, %26, %33) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %905 = "tosa.transpose"(%904, %38) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %906 = "tosa.sub"(%905, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %907 = "tosa.mul"(%906, %850) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %908 = "tosa.mul"(%907, %27) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %909 = "tosa.add"(%908, %27) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %910 = "tosa.add"(%909, %886) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %911 = "tosa.clamp"(%910) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %912 = "tosa.transpose"(%911, %39) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %913 = "tosa.avg_pool2d"(%912) {acc_type = f32, kernel = array<i64: 7, 7>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>) -> tensor<1x1x1x2048xf32>
    %914 = "tosa.reshape"(%913) {new_shape = array<i64: 1, 1, 2048>} : (tensor<1x1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %915 = "tosa.matmul"(%914, %31) : (tensor<1x1x2048xf32>, tensor<1x2048x1000xf32>) -> tensor<1x1x1000xf32>
    %916 = "tosa.reshape"(%915) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %917 = "tosa.add"(%916, %32) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %917 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x7x7x3xf32>} : () -> tensor<64x7x7x3xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %2 = "tosa.const"() {value = dense<7.778000e-02> : tensor<64x1x1xf32>} : () -> tensor<64x1x1xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %4 = "tosa.const"() {value = dense<7.778000e-02> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %6 = "tosa.const"() {value = dense<7.778000e-02> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %8 = "tosa.const"() {value = dense<7.778000e-02> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x512xf32>} : () -> tensor<128x1x1x512xf32>
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
    %36 = "tosa.const"() {value = dense<[3, 1, 2, 0]> : tensor<4xi64>} : () -> tensor<4xi64>
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
    %47 = ml_program.global_load @global1 : tensor<512x1x1x128xf32>
    %48 = "tosa.transpose"(%46, %25) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %49 = "tosa.conv2d"(%48, %0, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %50 = "tosa.transpose"(%49, %23) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %51 = "tosa.sub"(%50, %1) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %52 = "tosa.rsqrt"(%2) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %53 = "tosa.reshape"(%52) {new_shape = array<i64: 1, 64, 1, 1>} : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %54 = "tosa.mul"(%51, %53) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %55 = "tosa.mul"(%54, %1) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %56 = "tosa.add"(%55, %1) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %57 = "tosa.clamp"(%56) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %58 = "tosa.transpose"(%57, %25) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %59 = "tosa.max_pool2d"(%58) {kernel = array<i64: 3, 3>, pad = array<i64: 1, 0, 1, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    %60 = ml_program.global_load @global2 : tensor<1x64x56x56xf32>
    %61 = "tosa.mul"(%60, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %62 = "tosa.add"(%61, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %63 = "tosa.clamp"(%62) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %64 = "tosa.transpose"(%63, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %65 = "tosa.conv2d"(%64, %42, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %66 = "tosa.transpose"(%65, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %67 = "tosa.sub"(%66, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %68 = "tosa.mul"(%67, %53) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %69 = "tosa.mul"(%68, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %70 = "tosa.add"(%69, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %71 = "tosa.clamp"(%70) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %72 = "tosa.transpose"(%71, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %73 = "tosa.conv2d"(%72, %43, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %74 = "tosa.transpose"(%73, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %75 = "tosa.sub"(%74, %3) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %76 = "tosa.rsqrt"(%4) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %77 = "tosa.reshape"(%76) {new_shape = array<i64: 1, 256, 1, 1>} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %78 = "tosa.mul"(%75, %77) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %79 = "tosa.mul"(%78, %3) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %80 = "tosa.add"(%79, %3) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %81 = "tosa.conv2d"(%59, %43, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %82 = "tosa.transpose"(%81, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %83 = "tosa.sub"(%82, %3) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %84 = "tosa.mul"(%83, %77) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %85 = "tosa.mul"(%84, %3) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %86 = "tosa.add"(%85, %3) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %87 = "tosa.add"(%80, %86) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %88 = "tosa.clamp"(%87) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %89 = ml_program.global_load @global3 : tensor<1x56x56x256xf32>
    %90 = "tosa.conv2d"(%89, %41, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %91 = "tosa.transpose"(%90, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %92 = "tosa.sub"(%91, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %93 = "tosa.mul"(%92, %53) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %94 = "tosa.mul"(%93, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %95 = "tosa.add"(%94, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %96 = "tosa.clamp"(%95) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %97 = "tosa.transpose"(%96, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %98 = "tosa.conv2d"(%97, %42, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %99 = "tosa.transpose"(%98, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %100 = "tosa.sub"(%99, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %101 = "tosa.mul"(%100, %53) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %102 = "tosa.mul"(%101, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %103 = "tosa.add"(%102, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %104 = "tosa.clamp"(%103) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %105 = "tosa.transpose"(%104, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %106 = "tosa.conv2d"(%105, %43, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %107 = "tosa.transpose"(%106, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %108 = "tosa.sub"(%107, %3) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %109 = "tosa.mul"(%108, %77) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %110 = "tosa.mul"(%109, %3) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %111 = "tosa.add"(%110, %3) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %112 = "tosa.add"(%111, %88) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %113 = "tosa.clamp"(%112) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %114 = ml_program.global_load @global4 : tensor<1x64x56x56xf32>
    %115 = "tosa.mul"(%114, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %116 = "tosa.add"(%115, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %117 = "tosa.clamp"(%116) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %118 = "tosa.transpose"(%117, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %119 = "tosa.conv2d"(%118, %42, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %120 = "tosa.transpose"(%119, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %121 = "tosa.sub"(%120, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %122 = "tosa.mul"(%121, %53) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %123 = "tosa.mul"(%122, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %124 = "tosa.add"(%123, %1) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %125 = "tosa.clamp"(%124) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %126 = "tosa.transpose"(%125, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %127 = "tosa.conv2d"(%126, %43, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %128 = "tosa.transpose"(%127, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %129 = "tosa.sub"(%128, %3) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %130 = "tosa.mul"(%129, %77) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %131 = "tosa.mul"(%130, %3) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %132 = "tosa.add"(%131, %3) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %133 = "tosa.add"(%132, %113) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %134 = "tosa.clamp"(%133) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %135 = "tosa.transpose"(%134, %25) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %136 = "tosa.rsqrt"(%6) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %137 = "tosa.reshape"(%136) {new_shape = array<i64: 1, 128, 1, 1>} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %138 = ml_program.global_load @global5 : tensor<1x128x56x56xf32>
    %139 = "tosa.clamp"(%138) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %140 = "tosa.transpose"(%139, %25) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %141 = "tosa.conv2d"(%140, %37, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %142 = "tosa.transpose"(%141, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %143 = "tosa.sub"(%142, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %144 = "tosa.mul"(%143, %137) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %145 = "tosa.mul"(%144, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %146 = "tosa.add"(%145, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %147 = "tosa.clamp"(%146) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %148 = "tosa.transpose"(%147, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %149 = "tosa.conv2d"(%148, %47, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %150 = "tosa.transpose"(%149, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %151 = "tosa.sub"(%150, %7) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %152 = "tosa.rsqrt"(%8) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %153 = "tosa.reshape"(%152) {new_shape = array<i64: 1, 512, 1, 1>} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %154 = "tosa.mul"(%151, %153) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %155 = "tosa.mul"(%154, %7) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %156 = "tosa.add"(%155, %7) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %157 = "tosa.conv2d"(%135, %35, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %158 = "tosa.transpose"(%157, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %159 = "tosa.sub"(%158, %7) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %160 = "tosa.mul"(%159, %153) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %161 = "tosa.mul"(%160, %7) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %162 = "tosa.add"(%161, %7) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %163 = "tosa.add"(%156, %162) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %164 = "tosa.clamp"(%163) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %165 = ml_program.global_load @global6 : tensor<1x128x28x28xf32>
    %166 = "tosa.sub"(%165, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %167 = "tosa.mul"(%166, %137) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %168 = "tosa.mul"(%167, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %169 = "tosa.add"(%168, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %170 = "tosa.clamp"(%169) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %171 = "tosa.transpose"(%170, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %172 = "tosa.conv2d"(%171, %37, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %173 = "tosa.transpose"(%172, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %174 = "tosa.sub"(%173, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %175 = "tosa.mul"(%174, %137) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %176 = "tosa.mul"(%175, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %177 = "tosa.add"(%176, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %178 = "tosa.clamp"(%177) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %179 = "tosa.transpose"(%178, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %180 = "tosa.conv2d"(%179, %47, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %181 = "tosa.transpose"(%180, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %182 = "tosa.sub"(%181, %7) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %183 = "tosa.mul"(%182, %153) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %184 = "tosa.mul"(%183, %7) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %185 = "tosa.add"(%184, %7) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %186 = "tosa.add"(%185, %164) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %187 = "tosa.clamp"(%186) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %188 = ml_program.global_load @global7 : tensor<1x128x28x28xf32>
    %189 = "tosa.clamp"(%188) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %190 = "tosa.transpose"(%189, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %191 = "tosa.conv2d"(%190, %37, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %192 = "tosa.transpose"(%191, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %193 = "tosa.sub"(%192, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %194 = "tosa.mul"(%193, %137) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %195 = "tosa.mul"(%194, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %196 = "tosa.add"(%195, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %197 = "tosa.clamp"(%196) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %198 = "tosa.transpose"(%197, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %199 = "tosa.conv2d"(%198, %47, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %200 = "tosa.transpose"(%199, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %201 = "tosa.sub"(%200, %7) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %202 = "tosa.mul"(%201, %153) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %203 = "tosa.mul"(%202, %7) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %204 = "tosa.add"(%203, %7) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %205 = "tosa.add"(%204, %187) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %206 = "tosa.clamp"(%205) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %207 = "tosa.transpose"(%206, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %208 = "tosa.conv2d"(%207, %9, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %209 = "tosa.transpose"(%208, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %210 = "tosa.sub"(%209, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %211 = "tosa.mul"(%210, %137) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %212 = "tosa.mul"(%211, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %213 = "tosa.add"(%212, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %214 = "tosa.clamp"(%213) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %215 = ml_program.global_load @global8 : tensor<1x128x28x28xf32>
    %216 = "tosa.sub"(%215, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %217 = "tosa.mul"(%216, %137) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %218 = "tosa.mul"(%217, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %219 = "tosa.add"(%218, %5) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %220 = "tosa.clamp"(%219) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %221 = "tosa.transpose"(%220, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %222 = "tosa.conv2d"(%221, %47, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %223 = "tosa.transpose"(%222, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %224 = "tosa.sub"(%223, %7) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %225 = "tosa.mul"(%224, %153) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %226 = "tosa.mul"(%225, %7) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %227 = "tosa.add"(%226, %7) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %228 = "tosa.add"(%227, %206) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %229 = "tosa.clamp"(%228) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %230 = "tosa.transpose"(%229, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %231 = "tosa.conv2d"(%230, %39, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %232 = "tosa.transpose"(%231, %23) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %233 = "tosa.sub"(%232, %3) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %234 = "tosa.mul"(%233, %77) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %235 = "tosa.mul"(%234, %3) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %236 = "tosa.add"(%235, %3) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %237 = "tosa.clamp"(%236) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %238 = ml_program.global_load @global9 : tensor<1x256x14x14xf32>
    %239 = "tosa.clamp"(%238) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %240 = "tosa.transpose"(%239, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %241 = "tosa.conv2d"(%240, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %242 = "tosa.transpose"(%241, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %243 = "tosa.sub"(%242, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %244 = "tosa.rsqrt"(%11) : (tensor<1024x1x1xf32>) -> tensor<1024x1x1xf32>
    %245 = "tosa.reshape"(%244) {new_shape = array<i64: 1, 1024, 1, 1>} : (tensor<1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %246 = "tosa.mul"(%243, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %247 = "tosa.mul"(%246, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %248 = "tosa.add"(%247, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %249 = "tosa.conv2d"(%230, %30, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %250 = "tosa.transpose"(%249, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %251 = "tosa.sub"(%250, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %252 = "tosa.mul"(%251, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %253 = "tosa.mul"(%252, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %254 = "tosa.add"(%253, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %255 = "tosa.add"(%248, %254) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %256 = "tosa.clamp"(%255) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %257 = "tosa.transpose"(%256, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %258 = "tosa.conv2d"(%257, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %259 = "tosa.transpose"(%258, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %260 = "tosa.sub"(%259, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %261 = "tosa.mul"(%260, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %262 = "tosa.mul"(%261, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %263 = "tosa.add"(%262, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %264 = "tosa.clamp"(%263) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %265 = ml_program.global_load @global10 : tensor<1x256x14x14xf32>
    %266 = "tosa.sub"(%265, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %267 = "tosa.mul"(%266, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %268 = "tosa.mul"(%267, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %269 = "tosa.add"(%268, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %270 = "tosa.clamp"(%269) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %271 = "tosa.transpose"(%270, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %272 = "tosa.conv2d"(%271, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %273 = "tosa.transpose"(%272, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %274 = "tosa.sub"(%273, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %275 = "tosa.mul"(%274, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %276 = "tosa.mul"(%275, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %277 = "tosa.add"(%276, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %278 = "tosa.add"(%277, %256) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %279 = "tosa.clamp"(%278) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %280 = "tosa.transpose"(%279, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %281 = "tosa.conv2d"(%280, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %282 = "tosa.transpose"(%281, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %283 = "tosa.sub"(%282, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %284 = "tosa.mul"(%283, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %285 = "tosa.mul"(%284, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %286 = "tosa.add"(%285, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %287 = "tosa.clamp"(%286) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %288 = ml_program.global_load @global11 : tensor<1x256x14x14xf32>
    %289 = "tosa.clamp"(%288) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %290 = "tosa.transpose"(%289, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %291 = "tosa.conv2d"(%290, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %292 = "tosa.transpose"(%291, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %293 = "tosa.sub"(%292, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %294 = "tosa.mul"(%293, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %295 = "tosa.mul"(%294, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %296 = "tosa.add"(%295, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %297 = "tosa.add"(%296, %279) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %298 = "tosa.clamp"(%297) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %299 = "tosa.transpose"(%298, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %300 = "tosa.conv2d"(%299, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %301 = "tosa.transpose"(%300, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %302 = "tosa.sub"(%301, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %303 = "tosa.mul"(%302, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %304 = "tosa.mul"(%303, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %305 = "tosa.add"(%304, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %306 = "tosa.clamp"(%305) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %307 = "tosa.transpose"(%306, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %308 = "tosa.conv2d"(%307, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %309 = "tosa.transpose"(%308, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %310 = "tosa.sub"(%309, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %311 = "tosa.mul"(%310, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %312 = "tosa.mul"(%311, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %313 = "tosa.add"(%312, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %314 = "tosa.clamp"(%313) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %315 = ml_program.global_load @global12 : tensor<1x1024x14x14xf32>
    %316 = "tosa.sub"(%315, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %317 = "tosa.mul"(%316, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %318 = "tosa.mul"(%317, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %319 = "tosa.add"(%318, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %320 = "tosa.add"(%319, %298) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %321 = "tosa.clamp"(%320) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %322 = "tosa.transpose"(%321, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %323 = "tosa.conv2d"(%322, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %324 = "tosa.transpose"(%323, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %325 = "tosa.sub"(%324, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %326 = "tosa.mul"(%325, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %327 = "tosa.mul"(%326, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %328 = "tosa.add"(%327, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %329 = "tosa.clamp"(%328) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %330 = "tosa.transpose"(%329, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %331 = "tosa.conv2d"(%330, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %332 = "tosa.transpose"(%331, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %333 = "tosa.sub"(%332, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %334 = "tosa.mul"(%333, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %335 = "tosa.mul"(%334, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %336 = "tosa.add"(%335, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %337 = "tosa.clamp"(%336) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %338 = ml_program.global_load @global13 : tensor<1x1024x14x14xf32>
    %339 = "tosa.add"(%338, %321) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %340 = "tosa.clamp"(%339) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %341 = "tosa.transpose"(%340, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %342 = "tosa.conv2d"(%341, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %343 = "tosa.transpose"(%342, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %344 = "tosa.sub"(%343, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %345 = "tosa.mul"(%344, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %346 = "tosa.mul"(%345, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %347 = "tosa.add"(%346, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %348 = "tosa.clamp"(%347) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %349 = "tosa.transpose"(%348, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %350 = "tosa.conv2d"(%349, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %351 = "tosa.transpose"(%350, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %352 = "tosa.sub"(%351, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %353 = "tosa.mul"(%352, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %354 = "tosa.mul"(%353, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %355 = "tosa.add"(%354, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %356 = "tosa.clamp"(%355) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %357 = "tosa.transpose"(%356, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %358 = "tosa.conv2d"(%357, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %359 = "tosa.transpose"(%358, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %360 = "tosa.sub"(%359, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %361 = "tosa.mul"(%360, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %362 = "tosa.mul"(%361, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %363 = "tosa.add"(%362, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %364 = "tosa.add"(%363, %340) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %365 = "tosa.clamp"(%364) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %366 = ml_program.global_load @global14 : tensor<1x14x14x256xf32>
    %367 = "tosa.transpose"(%366, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %368 = "tosa.sub"(%367, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %369 = "tosa.mul"(%368, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %370 = "tosa.mul"(%369, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %371 = "tosa.add"(%370, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %372 = "tosa.clamp"(%371) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %373 = "tosa.transpose"(%372, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %374 = "tosa.conv2d"(%373, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %375 = "tosa.transpose"(%374, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %376 = "tosa.sub"(%375, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %377 = "tosa.mul"(%376, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %378 = "tosa.mul"(%377, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %379 = "tosa.add"(%378, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %380 = "tosa.clamp"(%379) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %381 = "tosa.transpose"(%380, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %382 = "tosa.conv2d"(%381, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %383 = "tosa.transpose"(%382, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %384 = "tosa.sub"(%383, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %385 = "tosa.mul"(%384, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %386 = "tosa.mul"(%385, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %387 = "tosa.add"(%386, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %388 = "tosa.add"(%387, %365) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %389 = "tosa.clamp"(%388) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %390 = ml_program.global_load @global15 : tensor<1x256x14x14xf32>
    %391 = "tosa.add"(%390, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %392 = "tosa.clamp"(%391) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %393 = "tosa.transpose"(%392, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %394 = "tosa.conv2d"(%393, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %395 = "tosa.transpose"(%394, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %396 = "tosa.sub"(%395, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %397 = "tosa.mul"(%396, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %398 = "tosa.mul"(%397, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %399 = "tosa.add"(%398, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %400 = "tosa.clamp"(%399) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %401 = "tosa.transpose"(%400, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %402 = "tosa.conv2d"(%401, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %403 = "tosa.transpose"(%402, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %404 = "tosa.sub"(%403, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %405 = "tosa.mul"(%404, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %406 = "tosa.mul"(%405, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %407 = "tosa.add"(%406, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %408 = "tosa.add"(%407, %389) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %409 = "tosa.clamp"(%408) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %410 = "tosa.transpose"(%409, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %411 = "tosa.conv2d"(%410, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %412 = "tosa.transpose"(%411, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %413 = "tosa.sub"(%412, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %414 = "tosa.mul"(%413, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %415 = "tosa.mul"(%414, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %416 = "tosa.add"(%415, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %417 = "tosa.clamp"(%416) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %418 = ml_program.global_load @global16 : tensor<1x14x14x256xf32>
    %419 = "tosa.transpose"(%418, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %420 = "tosa.sub"(%419, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %421 = "tosa.mul"(%420, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %422 = "tosa.mul"(%421, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %423 = "tosa.add"(%422, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %424 = "tosa.clamp"(%423) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %425 = "tosa.transpose"(%424, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %426 = "tosa.conv2d"(%425, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %427 = "tosa.transpose"(%426, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %428 = "tosa.sub"(%427, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %429 = "tosa.mul"(%428, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %430 = "tosa.mul"(%429, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %431 = "tosa.add"(%430, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %432 = "tosa.add"(%431, %409) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %433 = "tosa.clamp"(%432) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %434 = "tosa.transpose"(%433, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %435 = "tosa.conv2d"(%434, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %436 = "tosa.transpose"(%435, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %437 = "tosa.sub"(%436, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %438 = "tosa.mul"(%437, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %439 = "tosa.mul"(%438, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %440 = "tosa.add"(%439, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %441 = "tosa.clamp"(%440) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %442 = ml_program.global_load @global17 : tensor<1x256x14x14xf32>
    %443 = "tosa.add"(%442, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %444 = "tosa.clamp"(%443) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %445 = "tosa.transpose"(%444, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %446 = "tosa.conv2d"(%445, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %447 = "tosa.transpose"(%446, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %448 = "tosa.sub"(%447, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %449 = "tosa.mul"(%448, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %450 = "tosa.mul"(%449, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %451 = "tosa.add"(%450, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %452 = "tosa.add"(%451, %433) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %453 = "tosa.clamp"(%452) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %454 = "tosa.transpose"(%453, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %455 = "tosa.conv2d"(%454, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %456 = "tosa.transpose"(%455, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %457 = "tosa.sub"(%456, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %458 = "tosa.mul"(%457, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %459 = "tosa.mul"(%458, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %460 = "tosa.add"(%459, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %461 = "tosa.clamp"(%460) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %462 = "tosa.transpose"(%461, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %463 = "tosa.conv2d"(%462, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %464 = "tosa.transpose"(%463, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %465 = "tosa.sub"(%464, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %466 = "tosa.mul"(%465, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %467 = "tosa.mul"(%466, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %468 = "tosa.add"(%467, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %469 = "tosa.clamp"(%468) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %470 = ml_program.global_load @global18 : tensor<1x14x14x1024xf32>
    %471 = "tosa.transpose"(%470, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %472 = "tosa.sub"(%471, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %473 = "tosa.mul"(%472, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %474 = "tosa.mul"(%473, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %475 = "tosa.add"(%474, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %476 = "tosa.add"(%475, %453) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %477 = "tosa.clamp"(%476) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %478 = "tosa.transpose"(%477, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %479 = "tosa.conv2d"(%478, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %480 = "tosa.transpose"(%479, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %481 = "tosa.sub"(%480, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %482 = "tosa.mul"(%481, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %483 = "tosa.mul"(%482, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %484 = "tosa.add"(%483, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %485 = "tosa.clamp"(%484) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %486 = "tosa.transpose"(%485, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %487 = "tosa.conv2d"(%486, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %488 = "tosa.transpose"(%487, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %489 = "tosa.sub"(%488, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %490 = "tosa.mul"(%489, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %491 = "tosa.mul"(%490, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %492 = "tosa.add"(%491, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %493 = "tosa.clamp"(%492) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %494 = ml_program.global_load @global19 : tensor<1x1024x14x14xf32>
    %495 = "tosa.add"(%494, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %496 = "tosa.add"(%495, %477) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %497 = "tosa.clamp"(%496) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %498 = "tosa.transpose"(%497, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %499 = "tosa.conv2d"(%498, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %500 = "tosa.transpose"(%499, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %501 = "tosa.sub"(%500, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %502 = "tosa.mul"(%501, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %503 = "tosa.mul"(%502, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %504 = "tosa.add"(%503, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %505 = "tosa.clamp"(%504) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %506 = "tosa.transpose"(%505, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %507 = "tosa.conv2d"(%506, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %508 = "tosa.transpose"(%507, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %509 = "tosa.sub"(%508, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %510 = "tosa.mul"(%509, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %511 = "tosa.mul"(%510, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %512 = "tosa.add"(%511, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %513 = "tosa.clamp"(%512) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %514 = "tosa.transpose"(%513, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %515 = "tosa.conv2d"(%514, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %516 = "tosa.transpose"(%515, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %517 = "tosa.sub"(%516, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %518 = "tosa.mul"(%517, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %519 = "tosa.mul"(%518, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %520 = "tosa.add"(%519, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %521 = "tosa.add"(%520, %497) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %522 = "tosa.clamp"(%521) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %523 = ml_program.global_load @global20 : tensor<1x14x14x1024xf32>
    %524 = "tosa.conv2d"(%523, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %525 = "tosa.transpose"(%524, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %526 = "tosa.sub"(%525, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %527 = "tosa.mul"(%526, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %528 = "tosa.mul"(%527, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %529 = "tosa.add"(%528, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %530 = "tosa.clamp"(%529) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %531 = "tosa.transpose"(%530, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %532 = "tosa.conv2d"(%531, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %533 = "tosa.transpose"(%532, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %534 = "tosa.sub"(%533, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %535 = "tosa.mul"(%534, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %536 = "tosa.mul"(%535, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %537 = "tosa.add"(%536, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %538 = "tosa.clamp"(%537) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %539 = "tosa.transpose"(%538, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %540 = "tosa.conv2d"(%539, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %541 = "tosa.transpose"(%540, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %542 = "tosa.sub"(%541, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %543 = "tosa.mul"(%542, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %544 = "tosa.mul"(%543, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %545 = "tosa.add"(%544, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %546 = "tosa.add"(%545, %522) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %547 = "tosa.clamp"(%546) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %548 = ml_program.global_load @global21 : tensor<1x256x14x14xf32>
    %549 = "tosa.mul"(%548, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %550 = "tosa.add"(%549, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %551 = "tosa.clamp"(%550) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %552 = "tosa.transpose"(%551, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %553 = "tosa.conv2d"(%552, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %554 = "tosa.transpose"(%553, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %555 = "tosa.sub"(%554, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %556 = "tosa.mul"(%555, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %557 = "tosa.mul"(%556, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %558 = "tosa.add"(%557, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %559 = "tosa.clamp"(%558) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %560 = "tosa.transpose"(%559, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %561 = "tosa.conv2d"(%560, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %562 = "tosa.transpose"(%561, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %563 = "tosa.sub"(%562, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %564 = "tosa.mul"(%563, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %565 = "tosa.mul"(%564, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %566 = "tosa.add"(%565, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %567 = "tosa.add"(%566, %547) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %568 = "tosa.clamp"(%567) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %569 = "tosa.transpose"(%568, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %570 = "tosa.conv2d"(%569, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %571 = "tosa.transpose"(%570, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %572 = "tosa.sub"(%571, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %573 = "tosa.mul"(%572, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %574 = "tosa.mul"(%573, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %575 = "tosa.add"(%574, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %576 = "tosa.clamp"(%575) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %577 = ml_program.global_load @global22 : tensor<1x14x14x256xf32>
    %578 = "tosa.conv2d"(%577, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %579 = "tosa.transpose"(%578, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %580 = "tosa.sub"(%579, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %581 = "tosa.mul"(%580, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %582 = "tosa.mul"(%581, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %583 = "tosa.add"(%582, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %584 = "tosa.clamp"(%583) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %585 = "tosa.transpose"(%584, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %586 = "tosa.conv2d"(%585, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %587 = "tosa.transpose"(%586, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %588 = "tosa.sub"(%587, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %589 = "tosa.mul"(%588, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %590 = "tosa.mul"(%589, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %591 = "tosa.add"(%590, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %592 = "tosa.add"(%591, %568) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %593 = "tosa.clamp"(%592) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %594 = "tosa.transpose"(%593, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %595 = "tosa.conv2d"(%594, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %596 = "tosa.transpose"(%595, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %597 = "tosa.sub"(%596, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %598 = "tosa.mul"(%597, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %599 = "tosa.mul"(%598, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %600 = "tosa.add"(%599, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %601 = "tosa.clamp"(%600) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %602 = ml_program.global_load @global23 : tensor<1x256x14x14xf32>
    %603 = "tosa.mul"(%602, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %604 = "tosa.add"(%603, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %605 = "tosa.clamp"(%604) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %606 = "tosa.transpose"(%605, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %607 = "tosa.conv2d"(%606, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %608 = "tosa.transpose"(%607, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %609 = "tosa.sub"(%608, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %610 = "tosa.mul"(%609, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %611 = "tosa.mul"(%610, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %612 = "tosa.add"(%611, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %613 = "tosa.add"(%612, %593) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %614 = "tosa.clamp"(%613) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %615 = "tosa.transpose"(%614, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %616 = "tosa.conv2d"(%615, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %617 = "tosa.transpose"(%616, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %618 = "tosa.sub"(%617, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %619 = "tosa.mul"(%618, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %620 = "tosa.mul"(%619, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %621 = "tosa.add"(%620, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %622 = "tosa.clamp"(%621) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %623 = "tosa.transpose"(%622, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %624 = "tosa.conv2d"(%623, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %625 = "tosa.transpose"(%624, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %626 = "tosa.sub"(%625, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %627 = "tosa.mul"(%626, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %628 = "tosa.mul"(%627, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %629 = "tosa.add"(%628, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %630 = "tosa.clamp"(%629) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %631 = ml_program.global_load @global24 : tensor<1x14x14x256xf32>
    %632 = "tosa.conv2d"(%631, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %633 = "tosa.transpose"(%632, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %634 = "tosa.sub"(%633, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %635 = "tosa.mul"(%634, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %636 = "tosa.mul"(%635, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %637 = "tosa.add"(%636, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %638 = "tosa.add"(%637, %614) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %639 = "tosa.clamp"(%638) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %640 = "tosa.transpose"(%639, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %641 = "tosa.conv2d"(%640, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %642 = "tosa.transpose"(%641, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %643 = "tosa.sub"(%642, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %644 = "tosa.mul"(%643, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %645 = "tosa.mul"(%644, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %646 = "tosa.add"(%645, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %647 = "tosa.clamp"(%646) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %648 = "tosa.transpose"(%647, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %649 = "tosa.conv2d"(%648, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %650 = "tosa.transpose"(%649, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %651 = "tosa.sub"(%650, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %652 = "tosa.mul"(%651, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %653 = "tosa.mul"(%652, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %654 = "tosa.add"(%653, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %655 = "tosa.clamp"(%654) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %656 = ml_program.global_load @global25 : tensor<1x1024x14x14xf32>
    %657 = "tosa.mul"(%656, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %658 = "tosa.add"(%657, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %659 = "tosa.add"(%658, %639) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %660 = "tosa.clamp"(%659) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %661 = "tosa.transpose"(%660, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %662 = "tosa.conv2d"(%661, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %663 = "tosa.transpose"(%662, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %664 = "tosa.sub"(%663, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %665 = "tosa.mul"(%664, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %666 = "tosa.mul"(%665, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %667 = "tosa.add"(%666, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %668 = "tosa.clamp"(%667) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %669 = "tosa.transpose"(%668, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %670 = "tosa.conv2d"(%669, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %671 = "tosa.transpose"(%670, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %672 = "tosa.sub"(%671, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %673 = "tosa.mul"(%672, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %674 = "tosa.mul"(%673, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %675 = "tosa.add"(%674, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %676 = "tosa.clamp"(%675) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %677 = "tosa.transpose"(%676, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %678 = "tosa.conv2d"(%677, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %679 = "tosa.transpose"(%678, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %680 = "tosa.sub"(%679, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %681 = "tosa.mul"(%680, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %682 = "tosa.mul"(%681, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %683 = "tosa.add"(%682, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %684 = "tosa.add"(%683, %660) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %685 = ml_program.global_load @global26 : tensor<1x1024x14x14xf32>
    %686 = "tosa.transpose"(%685, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %687 = "tosa.conv2d"(%686, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %688 = "tosa.transpose"(%687, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %689 = "tosa.sub"(%688, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %690 = "tosa.mul"(%689, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %691 = "tosa.mul"(%690, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %692 = "tosa.add"(%691, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %693 = "tosa.clamp"(%692) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %694 = "tosa.transpose"(%693, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %695 = "tosa.conv2d"(%694, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %696 = "tosa.transpose"(%695, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %697 = "tosa.sub"(%696, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %698 = "tosa.mul"(%697, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %699 = "tosa.mul"(%698, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %700 = "tosa.add"(%699, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %701 = "tosa.clamp"(%700) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %702 = "tosa.transpose"(%701, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %703 = "tosa.conv2d"(%702, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %704 = "tosa.transpose"(%703, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %705 = "tosa.sub"(%704, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %706 = "tosa.mul"(%705, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %707 = "tosa.mul"(%706, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %708 = "tosa.add"(%707, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %709 = "tosa.add"(%708, %685) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %710 = "tosa.clamp"(%709) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %711 = ml_program.global_load @global27 : tensor<1x256x14x14xf32>
    %712 = "tosa.mul"(%711, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %713 = "tosa.mul"(%712, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %714 = "tosa.add"(%713, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %715 = "tosa.clamp"(%714) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %716 = "tosa.transpose"(%715, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %717 = "tosa.conv2d"(%716, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %718 = "tosa.transpose"(%717, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %719 = "tosa.sub"(%718, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %720 = "tosa.mul"(%719, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %721 = "tosa.mul"(%720, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %722 = "tosa.add"(%721, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %723 = "tosa.clamp"(%722) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %724 = "tosa.transpose"(%723, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %725 = "tosa.conv2d"(%724, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %726 = "tosa.transpose"(%725, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %727 = "tosa.sub"(%726, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %728 = "tosa.mul"(%727, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %729 = "tosa.mul"(%728, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %730 = "tosa.add"(%729, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %731 = "tosa.add"(%730, %710) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %732 = "tosa.clamp"(%731) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %733 = "tosa.transpose"(%732, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %734 = "tosa.conv2d"(%733, %31, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %735 = "tosa.transpose"(%734, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %736 = "tosa.sub"(%735, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %737 = "tosa.mul"(%736, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %738 = "tosa.mul"(%737, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %739 = "tosa.add"(%738, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %740 = ml_program.global_load @global28 : tensor<1x256x14x14xf32>
    %741 = "tosa.transpose"(%740, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %742 = "tosa.conv2d"(%741, %32, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %743 = "tosa.transpose"(%742, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %744 = "tosa.sub"(%743, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %745 = "tosa.mul"(%744, %77) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %746 = "tosa.mul"(%745, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %747 = "tosa.add"(%746, %3) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %748 = "tosa.clamp"(%747) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %749 = "tosa.transpose"(%748, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %750 = "tosa.conv2d"(%749, %33, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %751 = "tosa.transpose"(%750, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %752 = "tosa.sub"(%751, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %753 = "tosa.mul"(%752, %245) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %754 = "tosa.mul"(%753, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %755 = "tosa.add"(%754, %10) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %756 = "tosa.add"(%755, %732) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %757 = "tosa.clamp"(%756) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %758 = "tosa.transpose"(%757, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %759 = "tosa.conv2d"(%758, %34, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %760 = "tosa.transpose"(%759, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %761 = "tosa.sub"(%760, %7) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %762 = "tosa.mul"(%761, %153) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %763 = "tosa.mul"(%762, %7) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %764 = "tosa.add"(%763, %7) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %765 = "tosa.clamp"(%764) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %766 = ml_program.global_load @global29 : tensor<1x512x7x7xf32>
    %767 = "tosa.mul"(%766, %153) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %768 = "tosa.mul"(%767, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %769 = "tosa.add"(%768, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %770 = "tosa.clamp"(%769) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %771 = "tosa.transpose"(%770, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %772 = "tosa.conv2d"(%771, %28, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %773 = "tosa.transpose"(%772, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %774 = "tosa.sub"(%773, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %775 = "tosa.rsqrt"(%13) : (tensor<2048x1x1xf32>) -> tensor<2048x1x1xf32>
    %776 = "tosa.reshape"(%775) {new_shape = array<i64: 1, 2048, 1, 1>} : (tensor<2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %777 = "tosa.mul"(%774, %776) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %778 = "tosa.mul"(%777, %12) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %779 = "tosa.add"(%778, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %780 = "tosa.conv2d"(%758, %14, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %781 = "tosa.transpose"(%780, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %782 = "tosa.sub"(%781, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %783 = "tosa.mul"(%782, %776) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %784 = "tosa.mul"(%783, %12) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %785 = "tosa.add"(%784, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %786 = "tosa.add"(%779, %785) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %787 = "tosa.clamp"(%786) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %788 = "tosa.transpose"(%787, %25) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %789 = "tosa.conv2d"(%788, %26, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %790 = "tosa.transpose"(%789, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %791 = "tosa.sub"(%790, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %792 = "tosa.mul"(%791, %153) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %793 = "tosa.mul"(%792, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %794 = "tosa.add"(%793, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %795 = ml_program.global_load @global30 : tensor<1x512x7x7xf32>
    %796 = "tosa.transpose"(%795, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %797 = "tosa.conv2d"(%796, %27, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %798 = "tosa.transpose"(%797, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %799 = "tosa.sub"(%798, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %800 = "tosa.mul"(%799, %153) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %801 = "tosa.mul"(%800, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %802 = "tosa.add"(%801, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %803 = "tosa.clamp"(%802) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %804 = "tosa.transpose"(%803, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %805 = "tosa.conv2d"(%804, %28, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %806 = "tosa.transpose"(%805, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %807 = "tosa.sub"(%806, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %808 = "tosa.mul"(%807, %776) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %809 = "tosa.mul"(%808, %12) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %810 = "tosa.add"(%809, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %811 = "tosa.add"(%810, %787) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %812 = "tosa.clamp"(%811) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %813 = "tosa.transpose"(%812, %25) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %814 = "tosa.conv2d"(%813, %26, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %815 = "tosa.transpose"(%814, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %816 = "tosa.sub"(%815, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %817 = "tosa.mul"(%816, %153) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %818 = "tosa.mul"(%817, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %819 = "tosa.add"(%818, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %820 = "tosa.clamp"(%819) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %821 = ml_program.global_load @global31 : tensor<1x512x7x7xf32>
    %822 = "tosa.mul"(%821, %153) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %823 = "tosa.mul"(%822, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %824 = "tosa.add"(%823, %7) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %825 = "tosa.clamp"(%824) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %826 = "tosa.transpose"(%825, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %827 = "tosa.conv2d"(%826, %28, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %828 = "tosa.transpose"(%827, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %829 = "tosa.sub"(%828, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %830 = "tosa.mul"(%829, %776) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %831 = "tosa.mul"(%830, %12) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %832 = "tosa.add"(%831, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %833 = "tosa.add"(%832, %812) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %834 = "tosa.clamp"(%833) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %835 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %836 = "tosa.matmul"(%835, %21) : (tensor<1x1x1000xf32>, tensor<1x1000x2048xf32>) -> tensor<1x1x2048xf32>
    %837 = "tosa.reshape"(%836) {new_shape = array<i64: 1, 1, 1, 2048>} : (tensor<1x1x2048xf32>) -> tensor<1x1x1x2048xf32>
    %838 = "tosa.mul"(%837, %22) {shift = 0 : i32} : (tensor<1x1x1x2048xf32>, tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %839 = "tosa.transpose"(%838, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %840 = "tosa.equal"(%833, %834) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %841 = "tosa.select"(%840, %839, %24) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %842 = "tosa.mul"(%841, %12) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %843 = "tosa.mul"(%776, %842) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %844 = "tosa.transpose"(%843, %25) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %845 = tensor.empty() : tensor<512xf32>
    %846 = "tosa.transpose_conv2d"(%844, %26, %845) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %847 = "tosa.transpose"(%846, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %848 = "tosa.equal"(%824, %825) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %849 = "tosa.select"(%848, %847, %24) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %850 = "tosa.mul"(%849, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %851 = "tosa.mul"(%153, %850) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %852 = "tosa.transpose"(%851, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %853 = "tosa.transpose_conv2d"(%852, %27, %845) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %854 = "tosa.transpose"(%853, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %855 = "tosa.equal"(%819, %820) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %856 = "tosa.select"(%855, %854, %24) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %857 = "tosa.mul"(%856, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %858 = "tosa.mul"(%153, %857) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %859 = "tosa.transpose"(%858, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %860 = tensor.empty() : tensor<2048xf32>
    %861 = "tosa.transpose_conv2d"(%859, %28, %860) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 2048>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %862 = "tosa.transpose"(%861, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %863 = "tosa.add"(%841, %862) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %864 = "tosa.equal"(%811, %812) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %865 = "tosa.select"(%864, %863, %24) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %866 = "tosa.mul"(%865, %12) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %867 = "tosa.mul"(%776, %866) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %868 = "tosa.transpose"(%867, %25) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %869 = "tosa.transpose_conv2d"(%868, %26, %845) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %870 = "tosa.transpose"(%869, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %871 = "tosa.equal"(%802, %803) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %872 = "tosa.select"(%871, %870, %24) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %873 = "tosa.mul"(%872, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %874 = "tosa.mul"(%153, %873) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %875 = "tosa.transpose"(%874, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %876 = "tosa.transpose_conv2d"(%875, %27, %845) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %877 = "tosa.transpose"(%876, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %878 = "tosa.equal"(%794, %795) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %879 = "tosa.select"(%878, %877, %24) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %880 = "tosa.mul"(%879, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %881 = "tosa.mul"(%153, %880) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %882 = "tosa.transpose"(%881, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %883 = "tosa.transpose_conv2d"(%882, %28, %860) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 2048>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %884 = "tosa.transpose"(%883, %23) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %885 = "tosa.add"(%865, %884) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %886 = "tosa.equal"(%786, %787) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %887 = "tosa.select"(%886, %885, %24) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %888 = "tosa.mul"(%887, %12) {shift = 0 : i32} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %889 = "tosa.mul"(%776, %888) {shift = 0 : i32} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %890 = "tosa.transpose"(%889, %25) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %891 = tensor.empty() : tensor<1024xf32>
    %892 = "tosa.transpose_conv2d"(%890, %29, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 2, 2>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %893 = "tosa.transpose_conv2d"(%890, %26, %845) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %894 = "tosa.transpose"(%893, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %895 = "tosa.equal"(%769, %770) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %896 = "tosa.select"(%895, %894, %24) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %897 = "tosa.mul"(%896, %7) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %898 = "tosa.mul"(%153, %897) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %899 = "tosa.transpose"(%898, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %900 = "tosa.transpose_conv2d"(%899, %27, %845) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 2, 2>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %901 = "tosa.transpose"(%900, %23) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %902 = "tosa.equal"(%764, %765) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %903 = "tosa.select"(%902, %901, %24) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %904 = "tosa.mul"(%903, %7) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %905 = "tosa.mul"(%153, %904) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %906 = "tosa.transpose"(%905, %25) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %907 = "tosa.transpose_conv2d"(%906, %30, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %908 = "tosa.add"(%892, %907) : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %909 = "tosa.transpose"(%908, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %910 = "tosa.equal"(%756, %757) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %911 = "tosa.select"(%910, %909, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %912 = "tosa.mul"(%911, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %913 = "tosa.mul"(%245, %912) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %914 = "tosa.transpose"(%913, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %915 = tensor.empty() : tensor<256xf32>
    %916 = "tosa.transpose_conv2d"(%914, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %917 = "tosa.transpose"(%916, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %918 = "tosa.equal"(%747, %748) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %919 = "tosa.select"(%918, %917, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %920 = "tosa.mul"(%919, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %921 = "tosa.mul"(%77, %920) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %922 = "tosa.transpose"(%921, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %923 = "tosa.transpose_conv2d"(%922, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %924 = "tosa.transpose"(%923, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %925 = "tosa.equal"(%739, %740) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %926 = "tosa.select"(%925, %924, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %927 = "tosa.mul"(%926, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %928 = "tosa.mul"(%77, %927) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %929 = "tosa.transpose"(%928, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %930 = "tosa.transpose_conv2d"(%929, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %931 = "tosa.transpose"(%930, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %932 = "tosa.add"(%911, %931) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %933 = "tosa.equal"(%731, %732) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %934 = "tosa.select"(%933, %932, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %935 = "tosa.mul"(%934, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %936 = "tosa.mul"(%245, %935) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %937 = "tosa.transpose"(%936, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %938 = "tosa.transpose_conv2d"(%937, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %939 = "tosa.transpose"(%938, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %940 = "tosa.equal"(%722, %723) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %941 = "tosa.select"(%940, %939, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %942 = "tosa.mul"(%941, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %943 = "tosa.mul"(%77, %942) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %944 = "tosa.transpose"(%943, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %945 = "tosa.transpose_conv2d"(%944, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %946 = "tosa.transpose"(%945, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %947 = "tosa.equal"(%714, %715) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %948 = "tosa.select"(%947, %946, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %949 = "tosa.mul"(%948, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %950 = "tosa.mul"(%77, %949) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %951 = "tosa.transpose"(%950, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %952 = "tosa.transpose_conv2d"(%951, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %953 = "tosa.transpose"(%952, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %954 = "tosa.add"(%934, %953) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %955 = "tosa.equal"(%709, %710) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %956 = "tosa.select"(%955, %954, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %957 = "tosa.mul"(%956, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %958 = "tosa.mul"(%245, %957) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %959 = "tosa.transpose"(%958, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %960 = "tosa.transpose_conv2d"(%959, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %961 = "tosa.transpose"(%960, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %962 = "tosa.equal"(%700, %701) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %963 = "tosa.select"(%962, %961, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %964 = "tosa.mul"(%963, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %965 = "tosa.mul"(%77, %964) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %966 = "tosa.transpose"(%965, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %967 = "tosa.transpose_conv2d"(%966, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %968 = "tosa.transpose"(%967, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %969 = "tosa.equal"(%692, %693) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %970 = "tosa.select"(%969, %968, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %971 = "tosa.mul"(%970, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %972 = "tosa.mul"(%77, %971) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %973 = "tosa.transpose"(%972, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %974 = "tosa.transpose_conv2d"(%973, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %975 = "tosa.transpose"(%974, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %976 = "tosa.add"(%956, %975) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %977 = "tosa.equal"(%684, %685) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %978 = "tosa.select"(%977, %976, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %979 = "tosa.mul"(%978, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %980 = "tosa.mul"(%245, %979) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %981 = "tosa.transpose"(%980, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %982 = "tosa.transpose_conv2d"(%981, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %983 = "tosa.transpose"(%982, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %984 = "tosa.equal"(%675, %676) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %985 = "tosa.select"(%984, %983, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %986 = "tosa.mul"(%985, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %987 = "tosa.mul"(%77, %986) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %988 = "tosa.transpose"(%987, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %989 = "tosa.transpose_conv2d"(%988, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %990 = "tosa.transpose"(%989, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %991 = "tosa.equal"(%667, %668) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %992 = "tosa.select"(%991, %990, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %993 = "tosa.mul"(%992, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %994 = "tosa.mul"(%77, %993) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %995 = "tosa.transpose"(%994, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %996 = "tosa.transpose_conv2d"(%995, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %997 = "tosa.transpose"(%996, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %998 = "tosa.add"(%978, %997) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %999 = "tosa.equal"(%659, %660) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %1000 = "tosa.select"(%999, %998, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %1001 = "tosa.mul"(%1000, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1002 = "tosa.mul"(%245, %1001) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1003 = "tosa.transpose"(%1002, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %1004 = "tosa.transpose_conv2d"(%1003, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1005 = "tosa.transpose"(%1004, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1006 = "tosa.equal"(%654, %655) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1007 = "tosa.select"(%1006, %1005, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1008 = "tosa.mul"(%1007, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1009 = "tosa.mul"(%77, %1008) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1010 = "tosa.transpose"(%1009, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1011 = "tosa.transpose_conv2d"(%1010, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1012 = "tosa.transpose"(%1011, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1013 = "tosa.equal"(%646, %647) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1014 = "tosa.select"(%1013, %1012, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1015 = "tosa.mul"(%1014, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1016 = "tosa.mul"(%77, %1015) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1017 = "tosa.transpose"(%1016, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1018 = "tosa.transpose_conv2d"(%1017, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %1019 = "tosa.transpose"(%1018, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %1020 = "tosa.add"(%1000, %1019) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1021 = "tosa.equal"(%638, %639) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %1022 = "tosa.select"(%1021, %1020, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %1023 = "tosa.mul"(%1022, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1024 = "tosa.mul"(%245, %1023) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1025 = "tosa.transpose"(%1024, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %1026 = "tosa.transpose_conv2d"(%1025, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1027 = "tosa.transpose"(%1026, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1028 = "tosa.equal"(%629, %630) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1029 = "tosa.select"(%1028, %1027, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1030 = "tosa.mul"(%1029, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1031 = "tosa.mul"(%77, %1030) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1032 = "tosa.transpose"(%1031, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1033 = "tosa.transpose_conv2d"(%1032, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1034 = "tosa.transpose"(%1033, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1035 = "tosa.equal"(%621, %622) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1036 = "tosa.select"(%1035, %1034, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1037 = "tosa.mul"(%1036, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1038 = "tosa.mul"(%77, %1037) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1039 = "tosa.transpose"(%1038, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1040 = "tosa.transpose_conv2d"(%1039, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %1041 = "tosa.transpose"(%1040, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %1042 = "tosa.add"(%1022, %1041) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1043 = "tosa.equal"(%613, %614) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %1044 = "tosa.select"(%1043, %1042, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %1045 = "tosa.mul"(%1044, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1046 = "tosa.mul"(%245, %1045) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1047 = "tosa.transpose"(%1046, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %1048 = "tosa.transpose_conv2d"(%1047, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1049 = "tosa.transpose"(%1048, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1050 = "tosa.equal"(%604, %605) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1051 = "tosa.select"(%1050, %1049, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1052 = "tosa.mul"(%1051, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1053 = "tosa.mul"(%77, %1052) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1054 = "tosa.transpose"(%1053, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1055 = "tosa.transpose_conv2d"(%1054, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1056 = "tosa.transpose"(%1055, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1057 = "tosa.equal"(%600, %601) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1058 = "tosa.select"(%1057, %1056, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1059 = "tosa.mul"(%1058, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1060 = "tosa.mul"(%77, %1059) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1061 = "tosa.transpose"(%1060, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1062 = "tosa.transpose_conv2d"(%1061, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %1063 = "tosa.transpose"(%1062, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %1064 = "tosa.add"(%1044, %1063) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1065 = "tosa.equal"(%592, %593) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %1066 = "tosa.select"(%1065, %1064, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %1067 = "tosa.mul"(%1066, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1068 = "tosa.mul"(%245, %1067) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1069 = "tosa.transpose"(%1068, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %1070 = "tosa.transpose_conv2d"(%1069, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1071 = "tosa.transpose"(%1070, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1072 = "tosa.equal"(%583, %584) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1073 = "tosa.select"(%1072, %1071, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1074 = "tosa.mul"(%1073, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1075 = "tosa.mul"(%77, %1074) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1076 = "tosa.transpose"(%1075, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1077 = "tosa.transpose_conv2d"(%1076, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1078 = "tosa.transpose"(%1077, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1079 = "tosa.equal"(%575, %576) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1080 = "tosa.select"(%1079, %1078, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1081 = "tosa.mul"(%1080, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1082 = "tosa.mul"(%77, %1081) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1083 = "tosa.transpose"(%1082, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1084 = "tosa.transpose_conv2d"(%1083, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %1085 = "tosa.transpose"(%1084, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %1086 = "tosa.add"(%1066, %1085) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1087 = "tosa.equal"(%567, %568) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %1088 = "tosa.select"(%1087, %1086, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %1089 = "tosa.mul"(%1088, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1090 = "tosa.mul"(%245, %1089) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1091 = "tosa.transpose"(%1090, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %1092 = "tosa.transpose_conv2d"(%1091, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1093 = "tosa.transpose"(%1092, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1094 = "tosa.equal"(%558, %559) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1095 = "tosa.select"(%1094, %1093, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1096 = "tosa.mul"(%1095, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1097 = "tosa.mul"(%77, %1096) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1098 = "tosa.transpose"(%1097, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1099 = "tosa.transpose_conv2d"(%1098, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1100 = "tosa.transpose"(%1099, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1101 = "tosa.equal"(%550, %551) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1102 = "tosa.select"(%1101, %1100, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1103 = "tosa.mul"(%1102, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1104 = "tosa.mul"(%77, %1103) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1105 = "tosa.transpose"(%1104, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1106 = "tosa.transpose_conv2d"(%1105, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %1107 = "tosa.transpose"(%1106, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %1108 = "tosa.add"(%1088, %1107) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1109 = "tosa.equal"(%546, %547) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %1110 = "tosa.select"(%1109, %1108, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %1111 = "tosa.mul"(%1110, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1112 = "tosa.mul"(%245, %1111) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1113 = "tosa.transpose"(%1112, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %1114 = "tosa.transpose_conv2d"(%1113, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1115 = "tosa.transpose"(%1114, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1116 = "tosa.equal"(%537, %538) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1117 = "tosa.select"(%1116, %1115, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1118 = "tosa.mul"(%1117, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1119 = "tosa.mul"(%77, %1118) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1120 = "tosa.transpose"(%1119, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1121 = "tosa.transpose_conv2d"(%1120, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1122 = "tosa.transpose"(%1121, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1123 = "tosa.equal"(%529, %530) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1124 = "tosa.select"(%1123, %1122, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1125 = "tosa.mul"(%1124, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1126 = "tosa.mul"(%77, %1125) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1127 = "tosa.transpose"(%1126, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1128 = "tosa.transpose_conv2d"(%1127, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %1129 = "tosa.transpose"(%1128, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %1130 = "tosa.add"(%1110, %1129) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1131 = "tosa.equal"(%521, %522) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %1132 = "tosa.select"(%1131, %1130, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %1133 = "tosa.mul"(%1132, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1134 = "tosa.mul"(%245, %1133) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1135 = "tosa.transpose"(%1134, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %1136 = "tosa.transpose_conv2d"(%1135, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1137 = "tosa.transpose"(%1136, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1138 = "tosa.equal"(%512, %513) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1139 = "tosa.select"(%1138, %1137, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1140 = "tosa.mul"(%1139, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1141 = "tosa.mul"(%77, %1140) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1142 = "tosa.transpose"(%1141, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1143 = "tosa.transpose_conv2d"(%1142, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1144 = "tosa.transpose"(%1143, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1145 = "tosa.equal"(%504, %505) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1146 = "tosa.select"(%1145, %1144, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1147 = "tosa.mul"(%1146, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1148 = "tosa.mul"(%77, %1147) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1149 = "tosa.transpose"(%1148, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1150 = "tosa.transpose_conv2d"(%1149, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %1151 = "tosa.transpose"(%1150, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %1152 = "tosa.add"(%1132, %1151) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1153 = "tosa.equal"(%496, %497) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %1154 = "tosa.select"(%1153, %1152, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %1155 = "tosa.mul"(%1154, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1156 = "tosa.mul"(%245, %1155) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1157 = "tosa.transpose"(%1156, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %1158 = "tosa.transpose_conv2d"(%1157, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1159 = "tosa.transpose"(%1158, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1160 = "tosa.equal"(%492, %493) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1161 = "tosa.select"(%1160, %1159, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1162 = "tosa.mul"(%1161, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1163 = "tosa.mul"(%77, %1162) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1164 = "tosa.transpose"(%1163, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1165 = "tosa.transpose_conv2d"(%1164, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1166 = "tosa.transpose"(%1165, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1167 = "tosa.equal"(%484, %485) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1168 = "tosa.select"(%1167, %1166, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1169 = "tosa.mul"(%1168, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1170 = "tosa.mul"(%77, %1169) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1171 = "tosa.transpose"(%1170, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1172 = "tosa.transpose_conv2d"(%1171, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %1173 = "tosa.transpose"(%1172, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %1174 = "tosa.add"(%1154, %1173) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1175 = "tosa.equal"(%476, %477) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %1176 = "tosa.select"(%1175, %1174, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %1177 = "tosa.mul"(%1176, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1178 = "tosa.mul"(%245, %1177) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1179 = "tosa.transpose"(%1178, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %1180 = "tosa.transpose_conv2d"(%1179, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1181 = "tosa.transpose"(%1180, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1182 = "tosa.equal"(%468, %469) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1183 = "tosa.select"(%1182, %1181, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1184 = "tosa.mul"(%1183, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1185 = "tosa.mul"(%77, %1184) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1186 = "tosa.transpose"(%1185, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1187 = "tosa.transpose_conv2d"(%1186, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1188 = "tosa.transpose"(%1187, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1189 = "tosa.equal"(%460, %461) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1190 = "tosa.select"(%1189, %1188, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1191 = "tosa.mul"(%1190, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1192 = "tosa.mul"(%77, %1191) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1193 = "tosa.transpose"(%1192, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1194 = "tosa.transpose_conv2d"(%1193, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %1195 = "tosa.transpose"(%1194, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %1196 = "tosa.add"(%1176, %1195) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1197 = "tosa.equal"(%452, %453) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %1198 = "tosa.select"(%1197, %1196, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %1199 = "tosa.mul"(%1198, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1200 = "tosa.mul"(%245, %1199) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1201 = "tosa.transpose"(%1200, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %1202 = "tosa.transpose_conv2d"(%1201, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1203 = "tosa.transpose"(%1202, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1204 = "tosa.equal"(%443, %444) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1205 = "tosa.select"(%1204, %1203, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1206 = "tosa.mul"(%1205, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1207 = "tosa.mul"(%77, %1206) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1208 = "tosa.transpose"(%1207, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1209 = "tosa.transpose_conv2d"(%1208, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1210 = "tosa.transpose"(%1209, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1211 = "tosa.equal"(%440, %441) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1212 = "tosa.select"(%1211, %1210, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1213 = "tosa.mul"(%1212, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1214 = "tosa.mul"(%77, %1213) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1215 = "tosa.transpose"(%1214, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1216 = "tosa.transpose_conv2d"(%1215, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %1217 = "tosa.transpose"(%1216, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %1218 = "tosa.add"(%1198, %1217) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1219 = "tosa.equal"(%432, %433) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %1220 = "tosa.select"(%1219, %1218, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %1221 = "tosa.mul"(%1220, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1222 = "tosa.mul"(%245, %1221) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1223 = "tosa.transpose"(%1222, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %1224 = "tosa.transpose_conv2d"(%1223, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1225 = "tosa.transpose"(%1224, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1226 = "tosa.equal"(%423, %424) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1227 = "tosa.select"(%1226, %1225, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1228 = "tosa.mul"(%1227, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1229 = "tosa.mul"(%77, %1228) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1230 = "tosa.transpose"(%1229, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1231 = "tosa.transpose_conv2d"(%1230, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1232 = "tosa.transpose"(%1231, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1233 = "tosa.equal"(%416, %417) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1234 = "tosa.select"(%1233, %1232, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1235 = "tosa.mul"(%1234, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1236 = "tosa.mul"(%77, %1235) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1237 = "tosa.transpose"(%1236, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1238 = "tosa.transpose_conv2d"(%1237, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %1239 = "tosa.transpose"(%1238, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %1240 = "tosa.add"(%1220, %1239) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1241 = "tosa.equal"(%408, %409) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %1242 = "tosa.select"(%1241, %1240, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %1243 = "tosa.mul"(%1242, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1244 = "tosa.mul"(%245, %1243) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1245 = "tosa.transpose"(%1244, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %1246 = "tosa.transpose_conv2d"(%1245, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1247 = "tosa.transpose"(%1246, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1248 = "tosa.equal"(%399, %400) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1249 = "tosa.select"(%1248, %1247, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1250 = "tosa.mul"(%1249, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1251 = "tosa.mul"(%77, %1250) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1252 = "tosa.transpose"(%1251, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1253 = "tosa.transpose_conv2d"(%1252, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1254 = "tosa.transpose"(%1253, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1255 = "tosa.equal"(%391, %392) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1256 = "tosa.select"(%1255, %1254, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1257 = "tosa.mul"(%1256, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1258 = "tosa.mul"(%77, %1257) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1259 = "tosa.transpose"(%1258, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1260 = "tosa.transpose_conv2d"(%1259, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %1261 = "tosa.transpose"(%1260, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %1262 = "tosa.add"(%1242, %1261) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1263 = "tosa.equal"(%388, %389) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %1264 = "tosa.select"(%1263, %1262, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %1265 = "tosa.mul"(%1264, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1266 = "tosa.mul"(%245, %1265) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1267 = "tosa.transpose"(%1266, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %1268 = "tosa.transpose_conv2d"(%1267, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1269 = "tosa.transpose"(%1268, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1270 = "tosa.equal"(%379, %380) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1271 = "tosa.select"(%1270, %1269, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1272 = "tosa.mul"(%1271, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1273 = "tosa.mul"(%77, %1272) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1274 = "tosa.transpose"(%1273, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1275 = "tosa.transpose_conv2d"(%1274, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1276 = "tosa.transpose"(%1275, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1277 = "tosa.equal"(%371, %372) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1278 = "tosa.select"(%1277, %1276, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1279 = "tosa.mul"(%1278, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1280 = "tosa.mul"(%77, %1279) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1281 = "tosa.transpose"(%1280, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1282 = "tosa.transpose_conv2d"(%1281, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %1283 = "tosa.transpose"(%1282, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %1284 = "tosa.add"(%1264, %1283) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1285 = "tosa.equal"(%364, %365) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %1286 = "tosa.select"(%1285, %1284, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %1287 = "tosa.mul"(%1286, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1288 = "tosa.mul"(%245, %1287) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1289 = "tosa.transpose"(%1288, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %1290 = "tosa.transpose_conv2d"(%1289, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1291 = "tosa.transpose"(%1290, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1292 = "tosa.equal"(%355, %356) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1293 = "tosa.select"(%1292, %1291, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1294 = "tosa.mul"(%1293, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1295 = "tosa.mul"(%77, %1294) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1296 = "tosa.transpose"(%1295, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1297 = "tosa.transpose_conv2d"(%1296, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1298 = "tosa.transpose"(%1297, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1299 = "tosa.equal"(%347, %348) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1300 = "tosa.select"(%1299, %1298, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1301 = "tosa.mul"(%1300, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1302 = "tosa.mul"(%77, %1301) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1303 = "tosa.transpose"(%1302, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1304 = "tosa.transpose_conv2d"(%1303, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %1305 = "tosa.transpose"(%1304, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %1306 = "tosa.add"(%1286, %1305) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1307 = "tosa.equal"(%339, %340) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %1308 = "tosa.select"(%1307, %1306, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %1309 = "tosa.mul"(%1308, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1310 = "tosa.mul"(%245, %1309) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1311 = "tosa.transpose"(%1310, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %1312 = "tosa.transpose_conv2d"(%1311, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1313 = "tosa.transpose"(%1312, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1314 = "tosa.equal"(%336, %337) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1315 = "tosa.select"(%1314, %1313, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1316 = "tosa.mul"(%1315, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1317 = "tosa.mul"(%77, %1316) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1318 = "tosa.transpose"(%1317, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1319 = "tosa.transpose_conv2d"(%1318, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1320 = "tosa.transpose"(%1319, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1321 = "tosa.equal"(%328, %329) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1322 = "tosa.select"(%1321, %1320, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1323 = "tosa.mul"(%1322, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1324 = "tosa.mul"(%77, %1323) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1325 = "tosa.transpose"(%1324, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1326 = "tosa.transpose_conv2d"(%1325, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %1327 = "tosa.transpose"(%1326, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %1328 = "tosa.add"(%1308, %1327) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1329 = "tosa.equal"(%320, %321) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %1330 = "tosa.select"(%1329, %1328, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %1331 = "tosa.mul"(%1330, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1332 = "tosa.mul"(%245, %1331) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1333 = "tosa.transpose"(%1332, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %1334 = "tosa.transpose_conv2d"(%1333, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1335 = "tosa.transpose"(%1334, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1336 = "tosa.equal"(%313, %314) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1337 = "tosa.select"(%1336, %1335, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1338 = "tosa.mul"(%1337, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1339 = "tosa.mul"(%77, %1338) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1340 = "tosa.transpose"(%1339, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1341 = "tosa.transpose_conv2d"(%1340, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1342 = "tosa.transpose"(%1341, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1343 = "tosa.equal"(%305, %306) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1344 = "tosa.select"(%1343, %1342, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1345 = "tosa.mul"(%1344, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1346 = "tosa.mul"(%77, %1345) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1347 = "tosa.transpose"(%1346, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1348 = "tosa.transpose_conv2d"(%1347, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %1349 = "tosa.transpose"(%1348, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %1350 = "tosa.add"(%1330, %1349) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1351 = "tosa.equal"(%297, %298) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %1352 = "tosa.select"(%1351, %1350, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %1353 = "tosa.mul"(%1352, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1354 = "tosa.mul"(%245, %1353) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1355 = "tosa.transpose"(%1354, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %1356 = "tosa.transpose_conv2d"(%1355, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1357 = "tosa.transpose"(%1356, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1358 = "tosa.equal"(%288, %289) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1359 = "tosa.select"(%1358, %1357, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1360 = "tosa.mul"(%1359, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1361 = "tosa.mul"(%77, %1360) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1362 = "tosa.transpose"(%1361, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1363 = "tosa.transpose_conv2d"(%1362, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1364 = "tosa.transpose"(%1363, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1365 = "tosa.equal"(%286, %287) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1366 = "tosa.select"(%1365, %1364, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1367 = "tosa.mul"(%1366, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1368 = "tosa.mul"(%77, %1367) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1369 = "tosa.transpose"(%1368, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1370 = "tosa.transpose_conv2d"(%1369, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %1371 = "tosa.transpose"(%1370, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %1372 = "tosa.add"(%1352, %1371) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1373 = "tosa.equal"(%278, %279) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %1374 = "tosa.select"(%1373, %1372, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %1375 = "tosa.mul"(%1374, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1376 = "tosa.mul"(%245, %1375) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1377 = "tosa.transpose"(%1376, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %1378 = "tosa.transpose_conv2d"(%1377, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1379 = "tosa.transpose"(%1378, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1380 = "tosa.equal"(%269, %270) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1381 = "tosa.select"(%1380, %1379, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1382 = "tosa.mul"(%1381, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1383 = "tosa.mul"(%77, %1382) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1384 = "tosa.transpose"(%1383, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1385 = "tosa.transpose_conv2d"(%1384, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1386 = "tosa.transpose"(%1385, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1387 = "tosa.equal"(%263, %264) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1388 = "tosa.select"(%1387, %1386, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1389 = "tosa.mul"(%1388, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1390 = "tosa.mul"(%77, %1389) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1391 = "tosa.transpose"(%1390, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1392 = "tosa.transpose_conv2d"(%1391, %33, %891) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %1393 = "tosa.transpose"(%1392, %23) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %1394 = "tosa.add"(%1374, %1393) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1395 = "tosa.equal"(%255, %256) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %1396 = "tosa.select"(%1395, %1394, %24) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %1397 = "tosa.mul"(%1396, %10) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1398 = "tosa.mul"(%245, %1397) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1399 = "tosa.transpose"(%1398, %25) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %1400 = "tosa.transpose_conv2d"(%1399, %34, %845) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %1401 = "tosa.transpose_conv2d"(%1399, %31, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %1402 = "tosa.transpose"(%1401, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %1403 = "tosa.equal"(%238, %239) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %1404 = "tosa.select"(%1403, %1402, %24) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %1405 = "tosa.mul"(%1404, %3) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %1406 = "tosa.mul"(%77, %1405) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1407 = "tosa.transpose"(%1406, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %1408 = "tosa.transpose_conv2d"(%1407, %32, %915) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %1409 = "tosa.transpose"(%1408, %23) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %1410 = "tosa.equal"(%236, %237) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %1411 = "tosa.select"(%1410, %1409, %24) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %1412 = "tosa.mul"(%1411, %3) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %1413 = "tosa.mul"(%77, %1412) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %1414 = "tosa.transpose"(%1413, %25) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %1415 = "tosa.transpose_conv2d"(%1414, %35, %845) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %1416 = "tosa.add"(%1400, %1415) : (tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %1417 = "tosa.transpose"(%1416, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %1418 = "tosa.equal"(%228, %229) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %1419 = "tosa.select"(%1418, %1417, %24) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %1420 = "tosa.mul"(%1419, %7) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %1421 = "tosa.mul"(%153, %1420) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %1422 = "tosa.transpose"(%1421, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %1423 = "tosa.transpose"(%47, %36) : (tensor<512x1x1x128xf32>, tensor<4xi64>) -> tensor<128x1x1x512xf32>
    %1424 = tensor.empty() : tensor<128xf32>
    %1425 = "tosa.transpose_conv2d"(%1422, %1423, %1424) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %1426 = "tosa.transpose"(%1425, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %1427 = "tosa.equal"(%219, %220) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %1428 = "tosa.select"(%1427, %1426, %24) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %1429 = "tosa.mul"(%1428, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %1430 = "tosa.mul"(%137, %1429) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1431 = "tosa.transpose"(%1430, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %1432 = "tosa.transpose_conv2d"(%1431, %37, %1424) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %1433 = "tosa.transpose"(%1432, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %1434 = "tosa.equal"(%213, %214) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %1435 = "tosa.select"(%1434, %1433, %24) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %1436 = "tosa.mul"(%1435, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %1437 = "tosa.mul"(%137, %1436) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1438 = "tosa.transpose"(%1437, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %1439 = "tosa.transpose_conv2d"(%1438, %38, %845) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %1440 = "tosa.transpose"(%1439, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %1441 = "tosa.add"(%1419, %1440) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %1442 = "tosa.equal"(%205, %206) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %1443 = "tosa.select"(%1442, %1441, %24) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %1444 = "tosa.mul"(%1443, %7) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %1445 = "tosa.mul"(%153, %1444) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %1446 = "tosa.transpose"(%1445, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %1447 = "tosa.transpose_conv2d"(%1446, %1423, %1424) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %1448 = "tosa.transpose"(%1447, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %1449 = "tosa.equal"(%196, %197) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %1450 = "tosa.select"(%1449, %1448, %24) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %1451 = "tosa.mul"(%1450, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %1452 = "tosa.mul"(%137, %1451) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1453 = "tosa.transpose"(%1452, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %1454 = "tosa.transpose_conv2d"(%1453, %37, %1424) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %1455 = "tosa.transpose"(%1454, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %1456 = "tosa.equal"(%188, %189) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %1457 = "tosa.select"(%1456, %1455, %24) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %1458 = "tosa.mul"(%1457, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %1459 = "tosa.mul"(%137, %1458) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1460 = "tosa.transpose"(%1459, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %1461 = "tosa.transpose_conv2d"(%1460, %38, %845) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %1462 = "tosa.transpose"(%1461, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %1463 = "tosa.add"(%1443, %1462) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %1464 = "tosa.equal"(%186, %187) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %1465 = "tosa.select"(%1464, %1463, %24) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %1466 = "tosa.mul"(%1465, %7) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %1467 = "tosa.mul"(%153, %1466) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %1468 = "tosa.transpose"(%1467, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %1469 = "tosa.transpose_conv2d"(%1468, %1423, %1424) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %1470 = "tosa.transpose"(%1469, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %1471 = "tosa.equal"(%177, %178) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %1472 = "tosa.select"(%1471, %1470, %24) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %1473 = "tosa.mul"(%1472, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %1474 = "tosa.mul"(%137, %1473) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1475 = "tosa.transpose"(%1474, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %1476 = "tosa.transpose_conv2d"(%1475, %37, %1424) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %1477 = "tosa.transpose"(%1476, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %1478 = "tosa.equal"(%169, %170) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %1479 = "tosa.select"(%1478, %1477, %24) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %1480 = "tosa.mul"(%1479, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %1481 = "tosa.mul"(%137, %1480) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1482 = "tosa.transpose"(%1481, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %1483 = "tosa.transpose_conv2d"(%1482, %38, %845) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %1484 = "tosa.transpose"(%1483, %23) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %1485 = "tosa.add"(%1465, %1484) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %1486 = "tosa.equal"(%163, %164) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %1487 = "tosa.select"(%1486, %1485, %24) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %1488 = "tosa.mul"(%1487, %7) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %1489 = "tosa.mul"(%153, %1488) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %1490 = "tosa.transpose"(%1489, %25) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %1491 = "tosa.transpose_conv2d"(%1490, %39, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %1492 = "tosa.transpose_conv2d"(%1490, %1423, %1424) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %1493 = "tosa.transpose"(%1492, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %1494 = "tosa.equal"(%146, %147) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %1495 = "tosa.select"(%1494, %1493, %24) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %1496 = "tosa.mul"(%1495, %5) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %1497 = "tosa.mul"(%137, %1496) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %1498 = "tosa.transpose"(%1497, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %1499 = "tosa.transpose_conv2d"(%1498, %37, %1424) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %1500 = "tosa.transpose"(%1499, %23) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %1501 = "tosa.equal"(%138, %139) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %1502 = "tosa.select"(%1501, %1500, %24) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %1503 = "tosa.mul"(%1502, %5) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %1504 = "tosa.mul"(%137, %1503) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %1505 = "tosa.transpose"(%1504, %25) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %1506 = "tosa.transpose_conv2d"(%1505, %40, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %1507 = "tosa.add"(%1491, %1506) : (tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %1508 = "tosa.transpose"(%1507, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %1509 = "tosa.equal"(%133, %134) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %1510 = "tosa.select"(%1509, %1508, %24) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %1511 = "tosa.mul"(%1510, %3) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %1512 = "tosa.mul"(%77, %1511) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %1513 = "tosa.transpose"(%1512, %25) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %1514 = tensor.empty() : tensor<64xf32>
    %1515 = "tosa.transpose_conv2d"(%1513, %41, %1514) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %1516 = "tosa.transpose"(%1515, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %1517 = "tosa.equal"(%124, %125) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %1518 = "tosa.select"(%1517, %1516, %24) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %1519 = "tosa.mul"(%1518, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %1520 = "tosa.mul"(%53, %1519) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %1521 = "tosa.transpose"(%1520, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %1522 = "tosa.transpose_conv2d"(%1521, %42, %1514) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %1523 = "tosa.transpose"(%1522, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %1524 = "tosa.equal"(%116, %117) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %1525 = "tosa.select"(%1524, %1523, %24) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %1526 = "tosa.mul"(%1525, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %1527 = "tosa.mul"(%53, %1526) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %1528 = "tosa.transpose"(%1527, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %1529 = "tosa.transpose_conv2d"(%1528, %43, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %1530 = "tosa.transpose"(%1529, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %1531 = "tosa.add"(%1510, %1530) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %1532 = "tosa.equal"(%112, %113) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %1533 = "tosa.select"(%1532, %1531, %24) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %1534 = "tosa.mul"(%1533, %3) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %1535 = "tosa.mul"(%77, %1534) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %1536 = "tosa.transpose"(%1535, %25) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %1537 = "tosa.transpose_conv2d"(%1536, %41, %1514) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %1538 = "tosa.transpose"(%1537, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %1539 = "tosa.equal"(%103, %104) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %1540 = "tosa.select"(%1539, %1538, %24) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %1541 = "tosa.mul"(%1540, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %1542 = "tosa.mul"(%53, %1541) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %1543 = "tosa.transpose"(%1542, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %1544 = "tosa.transpose_conv2d"(%1543, %42, %1514) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %1545 = "tosa.transpose"(%1544, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %1546 = "tosa.equal"(%95, %96) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %1547 = "tosa.select"(%1546, %1545, %24) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %1548 = "tosa.mul"(%1547, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %1549 = "tosa.mul"(%53, %1548) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %1550 = "tosa.transpose"(%1549, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %1551 = "tosa.transpose_conv2d"(%1550, %43, %915) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %1552 = "tosa.transpose"(%1551, %23) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %1553 = "tosa.add"(%1533, %1552) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %1554 = "tosa.equal"(%87, %88) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %1555 = "tosa.select"(%1554, %1553, %24) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %1556 = "tosa.mul"(%1555, %3) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %1557 = "tosa.mul"(%77, %1556) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %1558 = "tosa.transpose"(%1557, %25) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %1559 = "tosa.transpose_conv2d"(%1558, %41, %1514) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %1560 = "tosa.transpose"(%1559, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %1561 = "tosa.equal"(%70, %71) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %1562 = "tosa.select"(%1561, %1560, %24) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %1563 = "tosa.mul"(%1562, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %1564 = "tosa.mul"(%53, %1563) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %1565 = "tosa.transpose"(%1564, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %1566 = "tosa.transpose_conv2d"(%1565, %42, %1514) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %1567 = "tosa.transpose"(%1566, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %1568 = "tosa.equal"(%62, %63) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %1569 = "tosa.select"(%1568, %1567, %24) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %1570 = "tosa.mul"(%1569, %1) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %1571 = "tosa.mul"(%53, %1570) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %1572 = "tosa.transpose"(%1571, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %1573 = "tosa.transpose_conv2d"(%1572, %44, %1514) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x1x1x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %1574 = "tosa.add"(%1559, %1573) : (tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %padded = tensor.pad %58 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %1575 = tensor.empty() : tensor<1x113x113x64xf32>
    %1576 = tensor.empty() : tensor<3x3xf32>
    %1577 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded, %1576, %59, %1574 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%1575 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_1: f32, %in_2: f32, %in_3: f32, %out: f32):
      %1587 = arith.cmpf oge, %in, %in_2 : f32
      %1588 = arith.select %1587, %in_3, %cst_0 : f32
      %1589 = arith.addf %out, %1588 : f32
      linalg.yield %1589 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice = tensor.extract_slice %1577[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %1578 = "tosa.transpose"(%extracted_slice, %23) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %1579 = "tosa.equal"(%56, %57) : (tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xi1>
    %1580 = "tosa.select"(%1579, %1578, %24) : (tensor<1x64x112x112xi1>, tensor<1x64x112x112xf32>, tensor<f32>) -> tensor<1x64x112x112xf32>
    %1581 = "tosa.mul"(%1580, %1) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %1582 = "tosa.mul"(%53, %1581) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %1583 = "tosa.transpose"(%1582, %25) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %1584 = tensor.empty() : tensor<3xf32>
    %1585 = "tosa.transpose_conv2d"(%1583, %45, %1584) {out_pad = array<i64: -3, -3, -3, -3>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>, tensor<3x7x7x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %1586 = "tosa.transpose"(%1585, %23) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %1586 : tensor<1x3x224x224xf32>
  }
}

