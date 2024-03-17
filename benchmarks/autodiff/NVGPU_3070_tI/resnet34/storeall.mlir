#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "ResNet"} {
  ml_program.global private mutable @global335 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global334 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global326 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global325 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global318 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global317 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global309 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global308 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global301 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global300 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global286 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global285 : tensor<1x512x7x7xf32>
  ml_program.global private mutable @global282 : tensor<1x512x1x1xf32>
  ml_program.global private mutable @global276 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global275 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global267 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global266 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global259 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global258 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global250 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global249 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global242 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global241 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global233 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global232 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global225 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global224 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global216 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global215 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global208 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global207 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global199 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global198 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global191 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global190 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global176 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global175 : tensor<1x256x14x14xf32>
  ml_program.global private mutable @global172 : tensor<1x256x1x1xf32>
  ml_program.global private mutable @global166 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global165 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global157 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global156 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global149 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global148 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global140 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global139 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global132 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global131 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global123 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global122 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global115 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global114 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global100 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global99 : tensor<1x128x28x28xf32>
  ml_program.global private mutable @global96 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global90 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global89 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global81 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global80 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global73 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global72 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global64 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global63 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global56 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global55 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global47 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global46 : tensor<1x64x56x56xf32>
  ml_program.global private mutable @global39 : tensor<1x56x56x64xf32>
  ml_program.global private mutable @global38 : tensor<1x112x112x64xf32>
  ml_program.global private mutable @global37 : tensor<1x64x112x112xf32>
  ml_program.global private mutable @global36 : tensor<1x64x112x112xf32>
  ml_program.global private mutable @global33 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global27 : tensor<64x7x7x3xf32>
  ml_program.global private mutable @global26 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global24 : tensor<64x3x3x64xf32>
  ml_program.global private mutable @global23 : tensor<128x3x3x64xf32>
  ml_program.global private mutable @global22 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global20 : tensor<128x3x3x128xf32>
  ml_program.global private mutable @global19 : tensor<128x1x1x64xf32>
  ml_program.global private mutable @global18 : tensor<256x3x3x128xf32>
  ml_program.global private mutable @global17 : tensor<1x256x1x1xf32>
  ml_program.global private mutable @global15 : tensor<256x3x3x256xf32>
  ml_program.global private mutable @global14 : tensor<256x1x1x128xf32>
  ml_program.global private mutable @global13 : tensor<512x3x3x256xf32>
  ml_program.global private mutable @global12 : tensor<1x512x1x1xf32>
  ml_program.global private mutable @global10 : tensor<512x3x3x512xf32>
  ml_program.global private mutable @global9 : tensor<512x1x1x256xf32>
  ml_program.global private mutable @global8 : tensor<1x512x1000xf32>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %0 = "tosa.const"() {value = dense<0.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %1 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3 = "tosa.const"() {value = dense<0.000000e+00> : tensor<128xf32>} : () -> tensor<128xf32>
    %4 = "tosa.const"() {value = dense<0.000000e+00> : tensor<256xf32>} : () -> tensor<256xf32>
    %5 = "tosa.const"() {value = dense<0.000000e+00> : tensor<512xf32>} : () -> tensor<512xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000xf32>} : () -> tensor<1x1000xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1000xf32>} : () -> tensor<1x512x1000xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x256xf32>} : () -> tensor<512x1x1x256xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x512xf32>} : () -> tensor<512x3x3x512xf32>
    %10 = "tosa.const"() {value = dense<7.778000e-02> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %11 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x256xf32>} : () -> tensor<512x3x3x256xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x128xf32>} : () -> tensor<256x1x1x128xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %15 = "tosa.const"() {value = dense<7.778000e-02> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x128xf32>} : () -> tensor<256x3x3x128xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x64xf32>} : () -> tensor<128x1x1x64xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x128xf32>} : () -> tensor<128x3x3x128xf32>
    %20 = "tosa.const"() {value = dense<7.778000e-02> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %22 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x64xf32>} : () -> tensor<128x3x3x64xf32>
    %23 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x64xf32>} : () -> tensor<64x3x3x64xf32>
    %24 = "tosa.const"() {value = dense<7.778000e-02> : tensor<64x1x1xf32>} : () -> tensor<64x1x1xf32>
    %25 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %26 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x7x7x3xf32>} : () -> tensor<64x7x7x3xf32>
    ml_program.global_store @global8 = %7 : tensor<1x512x1000xf32>
    ml_program.global_store @global9 = %8 : tensor<512x1x1x256xf32>
    ml_program.global_store @global10 = %9 : tensor<512x3x3x512xf32>
    ml_program.global_store @global12 = %11 : tensor<1x512x1x1xf32>
    ml_program.global_store @global13 = %12 : tensor<512x3x3x256xf32>
    ml_program.global_store @global14 = %13 : tensor<256x1x1x128xf32>
    ml_program.global_store @global15 = %14 : tensor<256x3x3x256xf32>
    ml_program.global_store @global17 = %16 : tensor<1x256x1x1xf32>
    ml_program.global_store @global18 = %17 : tensor<256x3x3x128xf32>
    ml_program.global_store @global19 = %18 : tensor<128x1x1x64xf32>
    ml_program.global_store @global20 = %19 : tensor<128x3x3x128xf32>
    ml_program.global_store @global22 = %21 : tensor<1x128x1x1xf32>
    ml_program.global_store @global23 = %22 : tensor<128x3x3x64xf32>
    ml_program.global_store @global24 = %23 : tensor<64x3x3x64xf32>
    ml_program.global_store @global26 = %25 : tensor<1x64x1x1xf32>
    ml_program.global_store @global27 = %26 : tensor<64x7x7x3xf32>
    %27 = "tosa.transpose"(%arg0, %1) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %28 = "tosa.conv2d"(%27, %26, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %29 = "tosa.transpose"(%28, %2) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %30 = "tosa.sub"(%29, %25) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %31 = "tosa.rsqrt"(%24) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %32 = "tosa.reshape"(%31) {new_shape = array<i64: 1, 64, 1, 1>} : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    ml_program.global_store @global33 = %32 : tensor<1x64x1x1xf32>
    %33 = "tosa.mul"(%30, %32) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %34 = "tosa.mul"(%33, %25) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %35 = "tosa.add"(%34, %25) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    ml_program.global_store @global36 = %35 : tensor<1x64x112x112xf32>
    %36 = "tosa.clamp"(%35) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    ml_program.global_store @global37 = %36 : tensor<1x64x112x112xf32>
    %37 = "tosa.transpose"(%36, %1) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    ml_program.global_store @global38 = %37 : tensor<1x112x112x64xf32>
    %38 = "tosa.max_pool2d"(%37) {kernel = array<i64: 3, 3>, pad = array<i64: 1, 0, 1, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    ml_program.global_store @global39 = %38 : tensor<1x56x56x64xf32>
    %39 = "tosa.transpose"(%38, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %40 = "tosa.conv2d"(%38, %23, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %41 = "tosa.transpose"(%40, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %42 = "tosa.sub"(%41, %25) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %43 = "tosa.mul"(%42, %32) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %44 = "tosa.mul"(%43, %25) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %45 = "tosa.add"(%44, %25) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global46 = %45 : tensor<1x64x56x56xf32>
    %46 = "tosa.clamp"(%45) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global47 = %46 : tensor<1x64x56x56xf32>
    %47 = "tosa.transpose"(%46, %1) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %48 = "tosa.conv2d"(%47, %23, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %49 = "tosa.transpose"(%48, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %50 = "tosa.sub"(%49, %25) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %51 = "tosa.mul"(%50, %32) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %52 = "tosa.mul"(%51, %25) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %53 = "tosa.add"(%52, %25) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %54 = "tosa.add"(%53, %39) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global55 = %54 : tensor<1x64x56x56xf32>
    %55 = "tosa.clamp"(%54) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global56 = %55 : tensor<1x64x56x56xf32>
    %56 = "tosa.transpose"(%55, %1) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %57 = "tosa.conv2d"(%56, %23, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %58 = "tosa.transpose"(%57, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %59 = "tosa.sub"(%58, %25) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %60 = "tosa.mul"(%59, %32) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %61 = "tosa.mul"(%60, %25) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %62 = "tosa.add"(%61, %25) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global63 = %62 : tensor<1x64x56x56xf32>
    %63 = "tosa.clamp"(%62) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global64 = %63 : tensor<1x64x56x56xf32>
    %64 = "tosa.transpose"(%63, %1) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %65 = "tosa.conv2d"(%64, %23, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %66 = "tosa.transpose"(%65, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %67 = "tosa.sub"(%66, %25) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %68 = "tosa.mul"(%67, %32) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %69 = "tosa.mul"(%68, %25) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %70 = "tosa.add"(%69, %25) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %71 = "tosa.add"(%70, %55) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global72 = %71 : tensor<1x64x56x56xf32>
    %72 = "tosa.clamp"(%71) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global73 = %72 : tensor<1x64x56x56xf32>
    %73 = "tosa.transpose"(%72, %1) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %74 = "tosa.conv2d"(%73, %23, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %75 = "tosa.transpose"(%74, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %76 = "tosa.sub"(%75, %25) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %77 = "tosa.mul"(%76, %32) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %78 = "tosa.mul"(%77, %25) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %79 = "tosa.add"(%78, %25) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global80 = %79 : tensor<1x64x56x56xf32>
    %80 = "tosa.clamp"(%79) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global81 = %80 : tensor<1x64x56x56xf32>
    %81 = "tosa.transpose"(%80, %1) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %82 = "tosa.conv2d"(%81, %23, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %83 = "tosa.transpose"(%82, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %84 = "tosa.sub"(%83, %25) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %85 = "tosa.mul"(%84, %32) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %86 = "tosa.mul"(%85, %25) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %87 = "tosa.add"(%86, %25) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %88 = "tosa.add"(%87, %72) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global89 = %88 : tensor<1x64x56x56xf32>
    %89 = "tosa.clamp"(%88) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    ml_program.global_store @global90 = %89 : tensor<1x64x56x56xf32>
    %90 = "tosa.transpose"(%89, %1) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %91 = "tosa.conv2d"(%90, %22, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x56x56x64xf32>, tensor<128x3x3x64xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %92 = "tosa.transpose"(%91, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %93 = "tosa.sub"(%92, %21) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %94 = "tosa.rsqrt"(%20) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %95 = "tosa.reshape"(%94) {new_shape = array<i64: 1, 128, 1, 1>} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    ml_program.global_store @global96 = %95 : tensor<1x128x1x1xf32>
    %96 = "tosa.mul"(%93, %95) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %97 = "tosa.mul"(%96, %21) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %98 = "tosa.add"(%97, %21) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global99 = %98 : tensor<1x128x28x28xf32>
    %99 = "tosa.clamp"(%98) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global100 = %99 : tensor<1x128x28x28xf32>
    %100 = "tosa.transpose"(%99, %1) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %101 = "tosa.conv2d"(%100, %19, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %102 = "tosa.transpose"(%101, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %103 = "tosa.sub"(%102, %21) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %104 = "tosa.mul"(%103, %95) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %105 = "tosa.mul"(%104, %21) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %106 = "tosa.add"(%105, %21) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %107 = "tosa.conv2d"(%90, %18, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x64xf32>, tensor<128x1x1x64xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %108 = "tosa.transpose"(%107, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %109 = "tosa.sub"(%108, %21) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %110 = "tosa.mul"(%109, %95) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %111 = "tosa.mul"(%110, %21) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %112 = "tosa.add"(%111, %21) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %113 = "tosa.add"(%106, %112) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global114 = %113 : tensor<1x128x28x28xf32>
    %114 = "tosa.clamp"(%113) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global115 = %114 : tensor<1x128x28x28xf32>
    %115 = "tosa.transpose"(%114, %1) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %116 = "tosa.conv2d"(%115, %19, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %117 = "tosa.transpose"(%116, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %118 = "tosa.sub"(%117, %21) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %119 = "tosa.mul"(%118, %95) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %120 = "tosa.mul"(%119, %21) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %121 = "tosa.add"(%120, %21) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global122 = %121 : tensor<1x128x28x28xf32>
    %122 = "tosa.clamp"(%121) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global123 = %122 : tensor<1x128x28x28xf32>
    %123 = "tosa.transpose"(%122, %1) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %124 = "tosa.conv2d"(%123, %19, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %125 = "tosa.transpose"(%124, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %126 = "tosa.sub"(%125, %21) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %127 = "tosa.mul"(%126, %95) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %128 = "tosa.mul"(%127, %21) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %129 = "tosa.add"(%128, %21) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %130 = "tosa.add"(%129, %114) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global131 = %130 : tensor<1x128x28x28xf32>
    %131 = "tosa.clamp"(%130) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global132 = %131 : tensor<1x128x28x28xf32>
    %132 = "tosa.transpose"(%131, %1) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %133 = "tosa.conv2d"(%132, %19, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %134 = "tosa.transpose"(%133, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %135 = "tosa.sub"(%134, %21) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %136 = "tosa.mul"(%135, %95) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %137 = "tosa.mul"(%136, %21) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %138 = "tosa.add"(%137, %21) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global139 = %138 : tensor<1x128x28x28xf32>
    %139 = "tosa.clamp"(%138) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global140 = %139 : tensor<1x128x28x28xf32>
    %140 = "tosa.transpose"(%139, %1) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %141 = "tosa.conv2d"(%140, %19, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %142 = "tosa.transpose"(%141, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %143 = "tosa.sub"(%142, %21) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %144 = "tosa.mul"(%143, %95) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %145 = "tosa.mul"(%144, %21) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %146 = "tosa.add"(%145, %21) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %147 = "tosa.add"(%146, %131) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global148 = %147 : tensor<1x128x28x28xf32>
    %148 = "tosa.clamp"(%147) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global149 = %148 : tensor<1x128x28x28xf32>
    %149 = "tosa.transpose"(%148, %1) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %150 = "tosa.conv2d"(%149, %19, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %151 = "tosa.transpose"(%150, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %152 = "tosa.sub"(%151, %21) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %153 = "tosa.mul"(%152, %95) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %154 = "tosa.mul"(%153, %21) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %155 = "tosa.add"(%154, %21) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global156 = %155 : tensor<1x128x28x28xf32>
    %156 = "tosa.clamp"(%155) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global157 = %156 : tensor<1x128x28x28xf32>
    %157 = "tosa.transpose"(%156, %1) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %158 = "tosa.conv2d"(%157, %19, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %159 = "tosa.transpose"(%158, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %160 = "tosa.sub"(%159, %21) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %161 = "tosa.mul"(%160, %95) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %162 = "tosa.mul"(%161, %21) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %163 = "tosa.add"(%162, %21) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %164 = "tosa.add"(%163, %148) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global165 = %164 : tensor<1x128x28x28xf32>
    %165 = "tosa.clamp"(%164) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    ml_program.global_store @global166 = %165 : tensor<1x128x28x28xf32>
    %166 = "tosa.transpose"(%165, %1) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %167 = "tosa.conv2d"(%166, %17, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<256x3x3x128xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %168 = "tosa.transpose"(%167, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %169 = "tosa.sub"(%168, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %170 = "tosa.rsqrt"(%15) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %171 = "tosa.reshape"(%170) {new_shape = array<i64: 1, 256, 1, 1>} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    ml_program.global_store @global172 = %171 : tensor<1x256x1x1xf32>
    %172 = "tosa.mul"(%169, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %173 = "tosa.mul"(%172, %16) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %174 = "tosa.add"(%173, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global175 = %174 : tensor<1x256x14x14xf32>
    %175 = "tosa.clamp"(%174) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global176 = %175 : tensor<1x256x14x14xf32>
    %176 = "tosa.transpose"(%175, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %177 = "tosa.conv2d"(%176, %14, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %178 = "tosa.transpose"(%177, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %179 = "tosa.sub"(%178, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %180 = "tosa.mul"(%179, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %181 = "tosa.mul"(%180, %16) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %182 = "tosa.add"(%181, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %183 = "tosa.conv2d"(%166, %13, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %184 = "tosa.transpose"(%183, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %185 = "tosa.sub"(%184, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %186 = "tosa.mul"(%185, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %187 = "tosa.mul"(%186, %16) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %188 = "tosa.add"(%187, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %189 = "tosa.add"(%182, %188) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global190 = %189 : tensor<1x256x14x14xf32>
    %190 = "tosa.clamp"(%189) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global191 = %190 : tensor<1x256x14x14xf32>
    %191 = "tosa.transpose"(%190, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %192 = "tosa.conv2d"(%191, %14, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %193 = "tosa.transpose"(%192, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %194 = "tosa.sub"(%193, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %195 = "tosa.mul"(%194, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %196 = "tosa.mul"(%195, %16) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %197 = "tosa.add"(%196, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global198 = %197 : tensor<1x256x14x14xf32>
    %198 = "tosa.clamp"(%197) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global199 = %198 : tensor<1x256x14x14xf32>
    %199 = "tosa.transpose"(%198, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %200 = "tosa.conv2d"(%199, %14, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %201 = "tosa.transpose"(%200, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %202 = "tosa.sub"(%201, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %203 = "tosa.mul"(%202, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %204 = "tosa.mul"(%203, %16) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %205 = "tosa.add"(%204, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %206 = "tosa.add"(%205, %190) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global207 = %206 : tensor<1x256x14x14xf32>
    %207 = "tosa.clamp"(%206) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global208 = %207 : tensor<1x256x14x14xf32>
    %208 = "tosa.transpose"(%207, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %209 = "tosa.conv2d"(%208, %14, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %210 = "tosa.transpose"(%209, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %211 = "tosa.sub"(%210, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %212 = "tosa.mul"(%211, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %213 = "tosa.mul"(%212, %16) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %214 = "tosa.add"(%213, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global215 = %214 : tensor<1x256x14x14xf32>
    %215 = "tosa.clamp"(%214) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global216 = %215 : tensor<1x256x14x14xf32>
    %216 = "tosa.transpose"(%215, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %217 = "tosa.conv2d"(%216, %14, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %218 = "tosa.transpose"(%217, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %219 = "tosa.sub"(%218, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %220 = "tosa.mul"(%219, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %221 = "tosa.mul"(%220, %16) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %222 = "tosa.add"(%221, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %223 = "tosa.add"(%222, %207) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global224 = %223 : tensor<1x256x14x14xf32>
    %224 = "tosa.clamp"(%223) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global225 = %224 : tensor<1x256x14x14xf32>
    %225 = "tosa.transpose"(%224, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %226 = "tosa.conv2d"(%225, %14, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %227 = "tosa.transpose"(%226, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %228 = "tosa.sub"(%227, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %229 = "tosa.mul"(%228, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %230 = "tosa.mul"(%229, %16) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %231 = "tosa.add"(%230, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global232 = %231 : tensor<1x256x14x14xf32>
    %232 = "tosa.clamp"(%231) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global233 = %232 : tensor<1x256x14x14xf32>
    %233 = "tosa.transpose"(%232, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %234 = "tosa.conv2d"(%233, %14, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %235 = "tosa.transpose"(%234, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %236 = "tosa.sub"(%235, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %237 = "tosa.mul"(%236, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %238 = "tosa.mul"(%237, %16) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %239 = "tosa.add"(%238, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %240 = "tosa.add"(%239, %224) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global241 = %240 : tensor<1x256x14x14xf32>
    %241 = "tosa.clamp"(%240) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global242 = %241 : tensor<1x256x14x14xf32>
    %242 = "tosa.transpose"(%241, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %243 = "tosa.conv2d"(%242, %14, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %244 = "tosa.transpose"(%243, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %245 = "tosa.sub"(%244, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %246 = "tosa.mul"(%245, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %247 = "tosa.mul"(%246, %16) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %248 = "tosa.add"(%247, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global249 = %248 : tensor<1x256x14x14xf32>
    %249 = "tosa.clamp"(%248) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global250 = %249 : tensor<1x256x14x14xf32>
    %250 = "tosa.transpose"(%249, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %251 = "tosa.conv2d"(%250, %14, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %252 = "tosa.transpose"(%251, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %253 = "tosa.sub"(%252, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %254 = "tosa.mul"(%253, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %255 = "tosa.mul"(%254, %16) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %256 = "tosa.add"(%255, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %257 = "tosa.add"(%256, %241) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global258 = %257 : tensor<1x256x14x14xf32>
    %258 = "tosa.clamp"(%257) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global259 = %258 : tensor<1x256x14x14xf32>
    %259 = "tosa.transpose"(%258, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %260 = "tosa.conv2d"(%259, %14, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %261 = "tosa.transpose"(%260, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %262 = "tosa.sub"(%261, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %263 = "tosa.mul"(%262, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %264 = "tosa.mul"(%263, %16) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %265 = "tosa.add"(%264, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global266 = %265 : tensor<1x256x14x14xf32>
    %266 = "tosa.clamp"(%265) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global267 = %266 : tensor<1x256x14x14xf32>
    %267 = "tosa.transpose"(%266, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %268 = "tosa.conv2d"(%267, %14, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %269 = "tosa.transpose"(%268, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %270 = "tosa.sub"(%269, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %271 = "tosa.mul"(%270, %171) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %272 = "tosa.mul"(%271, %16) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %273 = "tosa.add"(%272, %16) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %274 = "tosa.add"(%273, %258) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global275 = %274 : tensor<1x256x14x14xf32>
    %275 = "tosa.clamp"(%274) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    ml_program.global_store @global276 = %275 : tensor<1x256x14x14xf32>
    %276 = "tosa.transpose"(%275, %1) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %277 = "tosa.conv2d"(%276, %12, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<512x3x3x256xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %278 = "tosa.transpose"(%277, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %279 = "tosa.sub"(%278, %11) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %280 = "tosa.rsqrt"(%10) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %281 = "tosa.reshape"(%280) {new_shape = array<i64: 1, 512, 1, 1>} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    ml_program.global_store @global282 = %281 : tensor<1x512x1x1xf32>
    %282 = "tosa.mul"(%279, %281) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %283 = "tosa.mul"(%282, %11) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %284 = "tosa.add"(%283, %11) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global285 = %284 : tensor<1x512x7x7xf32>
    %285 = "tosa.clamp"(%284) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global286 = %285 : tensor<1x512x7x7xf32>
    %286 = "tosa.transpose"(%285, %1) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %287 = "tosa.conv2d"(%286, %9, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %288 = "tosa.transpose"(%287, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %289 = "tosa.sub"(%288, %11) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %290 = "tosa.mul"(%289, %281) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %291 = "tosa.mul"(%290, %11) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %292 = "tosa.add"(%291, %11) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %293 = "tosa.conv2d"(%276, %8, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %294 = "tosa.transpose"(%293, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %295 = "tosa.sub"(%294, %11) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %296 = "tosa.mul"(%295, %281) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %297 = "tosa.mul"(%296, %11) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %298 = "tosa.add"(%297, %11) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %299 = "tosa.add"(%292, %298) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global300 = %299 : tensor<1x512x7x7xf32>
    %300 = "tosa.clamp"(%299) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global301 = %300 : tensor<1x512x7x7xf32>
    %301 = "tosa.transpose"(%300, %1) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %302 = "tosa.conv2d"(%301, %9, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %303 = "tosa.transpose"(%302, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %304 = "tosa.sub"(%303, %11) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %305 = "tosa.mul"(%304, %281) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %306 = "tosa.mul"(%305, %11) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %307 = "tosa.add"(%306, %11) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global308 = %307 : tensor<1x512x7x7xf32>
    %308 = "tosa.clamp"(%307) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global309 = %308 : tensor<1x512x7x7xf32>
    %309 = "tosa.transpose"(%308, %1) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %310 = "tosa.conv2d"(%309, %9, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %311 = "tosa.transpose"(%310, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %312 = "tosa.sub"(%311, %11) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %313 = "tosa.mul"(%312, %281) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %314 = "tosa.mul"(%313, %11) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %315 = "tosa.add"(%314, %11) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %316 = "tosa.add"(%315, %300) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global317 = %316 : tensor<1x512x7x7xf32>
    %317 = "tosa.clamp"(%316) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global318 = %317 : tensor<1x512x7x7xf32>
    %318 = "tosa.transpose"(%317, %1) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %319 = "tosa.conv2d"(%318, %9, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %320 = "tosa.transpose"(%319, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %321 = "tosa.sub"(%320, %11) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %322 = "tosa.mul"(%321, %281) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %323 = "tosa.mul"(%322, %11) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %324 = "tosa.add"(%323, %11) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global325 = %324 : tensor<1x512x7x7xf32>
    %325 = "tosa.clamp"(%324) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global326 = %325 : tensor<1x512x7x7xf32>
    %326 = "tosa.transpose"(%325, %1) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %327 = "tosa.conv2d"(%326, %9, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %328 = "tosa.transpose"(%327, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %329 = "tosa.sub"(%328, %11) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %330 = "tosa.mul"(%329, %281) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %331 = "tosa.mul"(%330, %11) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %332 = "tosa.add"(%331, %11) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %333 = "tosa.add"(%332, %317) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global334 = %333 : tensor<1x512x7x7xf32>
    %334 = "tosa.clamp"(%333) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    ml_program.global_store @global335 = %334 : tensor<1x512x7x7xf32>
    %335 = "tosa.transpose"(%334, %1) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %336 = "tosa.avg_pool2d"(%335) {acc_type = f32, kernel = array<i64: 7, 7>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>) -> tensor<1x1x1x512xf32>
    %337 = "tosa.reshape"(%336) {new_shape = array<i64: 1, 1, 512>} : (tensor<1x1x1x512xf32>) -> tensor<1x1x512xf32>
    %338 = "tosa.matmul"(%337, %7) : (tensor<1x1x512xf32>, tensor<1x512x1000xf32>) -> tensor<1x1x1000xf32>
    %339 = "tosa.reshape"(%338) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %340 = "tosa.add"(%339, %6) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %340 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %0 = "tosa.const"() {value = dense<[0, 2, 1]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1 = "tosa.const"() {value = dense<0.0204081628> : tensor<1x7x7x512xf32>} : () -> tensor<1x7x7x512xf32>
    %2 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %4 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5 = "tosa.const"() {value = dense<[3, 1, 2, 0]> : tensor<4xi64>} : () -> tensor<4xi64>
    %cst = arith.constant -3.40282347E+38 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %6 = ml_program.global_load @global8 : tensor<1x512x1000xf32>
    %7 = ml_program.global_load @global9 : tensor<512x1x1x256xf32>
    %8 = ml_program.global_load @global10 : tensor<512x3x3x512xf32>
    %9 = ml_program.global_load @global12 : tensor<1x512x1x1xf32>
    %10 = ml_program.global_load @global13 : tensor<512x3x3x256xf32>
    %11 = ml_program.global_load @global14 : tensor<256x1x1x128xf32>
    %12 = ml_program.global_load @global15 : tensor<256x3x3x256xf32>
    %13 = ml_program.global_load @global17 : tensor<1x256x1x1xf32>
    %14 = ml_program.global_load @global18 : tensor<256x3x3x128xf32>
    %15 = ml_program.global_load @global19 : tensor<128x1x1x64xf32>
    %16 = ml_program.global_load @global20 : tensor<128x3x3x128xf32>
    %17 = ml_program.global_load @global22 : tensor<1x128x1x1xf32>
    %18 = ml_program.global_load @global23 : tensor<128x3x3x64xf32>
    %19 = ml_program.global_load @global24 : tensor<64x3x3x64xf32>
    %20 = ml_program.global_load @global26 : tensor<1x64x1x1xf32>
    %21 = ml_program.global_load @global27 : tensor<64x7x7x3xf32>
    %22 = ml_program.global_load @global33 : tensor<1x64x1x1xf32>
    %23 = ml_program.global_load @global36 : tensor<1x64x112x112xf32>
    %24 = ml_program.global_load @global37 : tensor<1x64x112x112xf32>
    %25 = ml_program.global_load @global38 : tensor<1x112x112x64xf32>
    %26 = ml_program.global_load @global39 : tensor<1x56x56x64xf32>
    %27 = ml_program.global_load @global46 : tensor<1x64x56x56xf32>
    %28 = ml_program.global_load @global47 : tensor<1x64x56x56xf32>
    %29 = ml_program.global_load @global55 : tensor<1x64x56x56xf32>
    %30 = ml_program.global_load @global56 : tensor<1x64x56x56xf32>
    %31 = ml_program.global_load @global63 : tensor<1x64x56x56xf32>
    %32 = ml_program.global_load @global64 : tensor<1x64x56x56xf32>
    %33 = ml_program.global_load @global72 : tensor<1x64x56x56xf32>
    %34 = ml_program.global_load @global73 : tensor<1x64x56x56xf32>
    %35 = ml_program.global_load @global80 : tensor<1x64x56x56xf32>
    %36 = ml_program.global_load @global81 : tensor<1x64x56x56xf32>
    %37 = ml_program.global_load @global89 : tensor<1x64x56x56xf32>
    %38 = ml_program.global_load @global90 : tensor<1x64x56x56xf32>
    %39 = ml_program.global_load @global96 : tensor<1x128x1x1xf32>
    %40 = ml_program.global_load @global99 : tensor<1x128x28x28xf32>
    %41 = ml_program.global_load @global100 : tensor<1x128x28x28xf32>
    %42 = ml_program.global_load @global114 : tensor<1x128x28x28xf32>
    %43 = ml_program.global_load @global115 : tensor<1x128x28x28xf32>
    %44 = ml_program.global_load @global122 : tensor<1x128x28x28xf32>
    %45 = ml_program.global_load @global123 : tensor<1x128x28x28xf32>
    %46 = ml_program.global_load @global131 : tensor<1x128x28x28xf32>
    %47 = ml_program.global_load @global132 : tensor<1x128x28x28xf32>
    %48 = ml_program.global_load @global139 : tensor<1x128x28x28xf32>
    %49 = ml_program.global_load @global140 : tensor<1x128x28x28xf32>
    %50 = ml_program.global_load @global148 : tensor<1x128x28x28xf32>
    %51 = ml_program.global_load @global149 : tensor<1x128x28x28xf32>
    %52 = ml_program.global_load @global156 : tensor<1x128x28x28xf32>
    %53 = ml_program.global_load @global157 : tensor<1x128x28x28xf32>
    %54 = ml_program.global_load @global165 : tensor<1x128x28x28xf32>
    %55 = ml_program.global_load @global166 : tensor<1x128x28x28xf32>
    %56 = ml_program.global_load @global172 : tensor<1x256x1x1xf32>
    %57 = ml_program.global_load @global175 : tensor<1x256x14x14xf32>
    %58 = ml_program.global_load @global176 : tensor<1x256x14x14xf32>
    %59 = ml_program.global_load @global190 : tensor<1x256x14x14xf32>
    %60 = ml_program.global_load @global191 : tensor<1x256x14x14xf32>
    %61 = ml_program.global_load @global198 : tensor<1x256x14x14xf32>
    %62 = ml_program.global_load @global199 : tensor<1x256x14x14xf32>
    %63 = ml_program.global_load @global207 : tensor<1x256x14x14xf32>
    %64 = ml_program.global_load @global208 : tensor<1x256x14x14xf32>
    %65 = ml_program.global_load @global215 : tensor<1x256x14x14xf32>
    %66 = ml_program.global_load @global216 : tensor<1x256x14x14xf32>
    %67 = ml_program.global_load @global224 : tensor<1x256x14x14xf32>
    %68 = ml_program.global_load @global225 : tensor<1x256x14x14xf32>
    %69 = ml_program.global_load @global232 : tensor<1x256x14x14xf32>
    %70 = ml_program.global_load @global233 : tensor<1x256x14x14xf32>
    %71 = ml_program.global_load @global241 : tensor<1x256x14x14xf32>
    %72 = ml_program.global_load @global242 : tensor<1x256x14x14xf32>
    %73 = ml_program.global_load @global249 : tensor<1x256x14x14xf32>
    %74 = ml_program.global_load @global250 : tensor<1x256x14x14xf32>
    %75 = ml_program.global_load @global258 : tensor<1x256x14x14xf32>
    %76 = ml_program.global_load @global259 : tensor<1x256x14x14xf32>
    %77 = ml_program.global_load @global266 : tensor<1x256x14x14xf32>
    %78 = ml_program.global_load @global267 : tensor<1x256x14x14xf32>
    %79 = ml_program.global_load @global275 : tensor<1x256x14x14xf32>
    %80 = ml_program.global_load @global276 : tensor<1x256x14x14xf32>
    %81 = ml_program.global_load @global282 : tensor<1x512x1x1xf32>
    %82 = ml_program.global_load @global285 : tensor<1x512x7x7xf32>
    %83 = ml_program.global_load @global286 : tensor<1x512x7x7xf32>
    %84 = ml_program.global_load @global300 : tensor<1x512x7x7xf32>
    %85 = ml_program.global_load @global301 : tensor<1x512x7x7xf32>
    %86 = ml_program.global_load @global308 : tensor<1x512x7x7xf32>
    %87 = ml_program.global_load @global309 : tensor<1x512x7x7xf32>
    %88 = ml_program.global_load @global317 : tensor<1x512x7x7xf32>
    %89 = ml_program.global_load @global318 : tensor<1x512x7x7xf32>
    %90 = ml_program.global_load @global325 : tensor<1x512x7x7xf32>
    %91 = ml_program.global_load @global326 : tensor<1x512x7x7xf32>
    %92 = ml_program.global_load @global334 : tensor<1x512x7x7xf32>
    %93 = ml_program.global_load @global335 : tensor<1x512x7x7xf32>
    %94 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %95 = "tosa.transpose"(%6, %0) : (tensor<1x512x1000xf32>, tensor<3xi32>) -> tensor<1x1000x512xf32>
    %96 = "tosa.matmul"(%94, %95) : (tensor<1x1x1000xf32>, tensor<1x1000x512xf32>) -> tensor<1x1x512xf32>
    %97 = "tosa.reshape"(%96) {new_shape = array<i64: 1, 1, 1, 512>} : (tensor<1x1x512xf32>) -> tensor<1x1x1x512xf32>
    %98 = "tosa.mul"(%97, %1) {shift = 0 : i32} : (tensor<1x1x1x512xf32>, tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %99 = "tosa.transpose"(%98, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %100 = "tosa.equal"(%92, %93) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %101 = "tosa.select"(%100, %99, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %102 = "tosa.mul"(%9, %101) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %103 = "tosa.mul"(%81, %102) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %104 = "tosa.transpose"(%103, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %105 = "tosa.transpose"(%8, %5) : (tensor<512x3x3x512xf32>, tensor<4xi64>) -> tensor<512x3x3x512xf32>
    %106 = tensor.empty() : tensor<512xf32>
    %107 = "tosa.transpose_conv2d"(%104, %105, %106) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %108 = "tosa.transpose"(%107, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %109 = "tosa.equal"(%90, %91) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %110 = "tosa.select"(%109, %108, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %111 = "tosa.mul"(%9, %110) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %112 = "tosa.mul"(%81, %111) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %113 = "tosa.transpose"(%112, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %114 = "tosa.transpose_conv2d"(%113, %105, %106) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %115 = "tosa.transpose"(%114, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %116 = "tosa.add"(%101, %115) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %117 = "tosa.equal"(%88, %89) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %118 = "tosa.select"(%117, %116, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %119 = "tosa.mul"(%9, %118) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %120 = "tosa.mul"(%81, %119) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %121 = "tosa.transpose"(%120, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %122 = "tosa.transpose_conv2d"(%121, %105, %106) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %123 = "tosa.transpose"(%122, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %124 = "tosa.equal"(%86, %87) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %125 = "tosa.select"(%124, %123, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %126 = "tosa.mul"(%9, %125) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %127 = "tosa.mul"(%81, %126) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %128 = "tosa.transpose"(%127, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %129 = "tosa.transpose_conv2d"(%128, %105, %106) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %130 = "tosa.transpose"(%129, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %131 = "tosa.add"(%118, %130) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %132 = "tosa.equal"(%84, %85) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %133 = "tosa.select"(%132, %131, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %134 = "tosa.mul"(%9, %133) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %135 = "tosa.mul"(%81, %134) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %136 = "tosa.transpose"(%135, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %137 = "tosa.transpose"(%7, %5) : (tensor<512x1x1x256xf32>, tensor<4xi64>) -> tensor<256x1x1x512xf32>
    %138 = tensor.empty() : tensor<256xf32>
    %139 = "tosa.transpose_conv2d"(%136, %137, %138) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 2, 2>} : (tensor<1x7x7x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %140 = "tosa.transpose_conv2d"(%136, %105, %106) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %141 = "tosa.transpose"(%140, %2) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %142 = "tosa.equal"(%82, %83) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %143 = "tosa.select"(%142, %141, %3) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %144 = "tosa.mul"(%9, %143) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %145 = "tosa.mul"(%81, %144) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %146 = "tosa.transpose"(%145, %4) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %147 = "tosa.transpose"(%10, %5) : (tensor<512x3x3x256xf32>, tensor<4xi64>) -> tensor<256x3x3x512xf32>
    %148 = "tosa.transpose_conv2d"(%146, %147, %138) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 2, 2>} : (tensor<1x7x7x512xf32>, tensor<256x3x3x512xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %149 = "tosa.add"(%139, %148) : (tensor<1x14x14x256xf32>, tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %150 = "tosa.transpose"(%149, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %151 = "tosa.equal"(%79, %80) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %152 = "tosa.select"(%151, %150, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %153 = "tosa.mul"(%13, %152) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %154 = "tosa.mul"(%56, %153) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %155 = "tosa.transpose"(%154, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %156 = "tosa.transpose"(%12, %5) : (tensor<256x3x3x256xf32>, tensor<4xi64>) -> tensor<256x3x3x256xf32>
    %157 = "tosa.transpose_conv2d"(%155, %156, %138) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %158 = "tosa.transpose"(%157, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %159 = "tosa.equal"(%77, %78) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %160 = "tosa.select"(%159, %158, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %161 = "tosa.mul"(%13, %160) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %162 = "tosa.mul"(%56, %161) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %163 = "tosa.transpose"(%162, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %164 = "tosa.transpose_conv2d"(%163, %156, %138) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %165 = "tosa.transpose"(%164, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %166 = "tosa.add"(%152, %165) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %167 = "tosa.equal"(%75, %76) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %168 = "tosa.select"(%167, %166, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %169 = "tosa.mul"(%13, %168) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %170 = "tosa.mul"(%56, %169) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %171 = "tosa.transpose"(%170, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %172 = "tosa.transpose_conv2d"(%171, %156, %138) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %173 = "tosa.transpose"(%172, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %174 = "tosa.equal"(%73, %74) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %175 = "tosa.select"(%174, %173, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %176 = "tosa.mul"(%13, %175) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %177 = "tosa.mul"(%56, %176) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %178 = "tosa.transpose"(%177, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %179 = "tosa.transpose_conv2d"(%178, %156, %138) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %180 = "tosa.transpose"(%179, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %181 = "tosa.add"(%168, %180) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %182 = "tosa.equal"(%71, %72) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %183 = "tosa.select"(%182, %181, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %184 = "tosa.mul"(%13, %183) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %185 = "tosa.mul"(%56, %184) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %186 = "tosa.transpose"(%185, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %187 = "tosa.transpose_conv2d"(%186, %156, %138) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %188 = "tosa.transpose"(%187, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %189 = "tosa.equal"(%69, %70) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %190 = "tosa.select"(%189, %188, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %191 = "tosa.mul"(%13, %190) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %192 = "tosa.mul"(%56, %191) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %193 = "tosa.transpose"(%192, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %194 = "tosa.transpose_conv2d"(%193, %156, %138) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %195 = "tosa.transpose"(%194, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %196 = "tosa.add"(%183, %195) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %197 = "tosa.equal"(%67, %68) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %198 = "tosa.select"(%197, %196, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %199 = "tosa.mul"(%13, %198) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %200 = "tosa.mul"(%56, %199) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %201 = "tosa.transpose"(%200, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %202 = "tosa.transpose_conv2d"(%201, %156, %138) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %203 = "tosa.transpose"(%202, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %204 = "tosa.equal"(%65, %66) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %205 = "tosa.select"(%204, %203, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %206 = "tosa.mul"(%13, %205) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %207 = "tosa.mul"(%56, %206) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %208 = "tosa.transpose"(%207, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %209 = "tosa.transpose_conv2d"(%208, %156, %138) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %210 = "tosa.transpose"(%209, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %211 = "tosa.add"(%198, %210) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %212 = "tosa.equal"(%63, %64) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %213 = "tosa.select"(%212, %211, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %214 = "tosa.mul"(%13, %213) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %215 = "tosa.mul"(%56, %214) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %216 = "tosa.transpose"(%215, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %217 = "tosa.transpose_conv2d"(%216, %156, %138) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %218 = "tosa.transpose"(%217, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %219 = "tosa.equal"(%61, %62) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %220 = "tosa.select"(%219, %218, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %221 = "tosa.mul"(%13, %220) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %222 = "tosa.mul"(%56, %221) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %223 = "tosa.transpose"(%222, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %224 = "tosa.transpose_conv2d"(%223, %156, %138) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %225 = "tosa.transpose"(%224, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %226 = "tosa.add"(%213, %225) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %227 = "tosa.equal"(%59, %60) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %228 = "tosa.select"(%227, %226, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %229 = "tosa.mul"(%13, %228) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %230 = "tosa.mul"(%56, %229) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %231 = "tosa.transpose"(%230, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %232 = "tosa.transpose"(%11, %5) : (tensor<256x1x1x128xf32>, tensor<4xi64>) -> tensor<128x1x1x256xf32>
    %233 = tensor.empty() : tensor<128xf32>
    %234 = "tosa.transpose_conv2d"(%231, %232, %233) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %235 = "tosa.transpose_conv2d"(%231, %156, %138) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %236 = "tosa.transpose"(%235, %2) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %237 = "tosa.equal"(%57, %58) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %238 = "tosa.select"(%237, %236, %3) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %239 = "tosa.mul"(%13, %238) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %240 = "tosa.mul"(%56, %239) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %241 = "tosa.transpose"(%240, %4) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %242 = "tosa.transpose"(%14, %5) : (tensor<256x3x3x128xf32>, tensor<4xi64>) -> tensor<128x3x3x256xf32>
    %243 = "tosa.transpose_conv2d"(%241, %242, %233) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 2, 2>} : (tensor<1x14x14x256xf32>, tensor<128x3x3x256xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %244 = "tosa.add"(%234, %243) : (tensor<1x28x28x128xf32>, tensor<1x28x28x128xf32>) -> tensor<1x28x28x128xf32>
    %245 = "tosa.transpose"(%244, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %246 = "tosa.equal"(%54, %55) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %247 = "tosa.select"(%246, %245, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %248 = "tosa.mul"(%17, %247) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %249 = "tosa.mul"(%39, %248) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %250 = "tosa.transpose"(%249, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %251 = "tosa.transpose"(%16, %5) : (tensor<128x3x3x128xf32>, tensor<4xi64>) -> tensor<128x3x3x128xf32>
    %252 = "tosa.transpose_conv2d"(%250, %251, %233) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %253 = "tosa.transpose"(%252, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %254 = "tosa.equal"(%52, %53) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %255 = "tosa.select"(%254, %253, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %256 = "tosa.mul"(%17, %255) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %257 = "tosa.mul"(%39, %256) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %258 = "tosa.transpose"(%257, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %259 = "tosa.transpose_conv2d"(%258, %251, %233) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %260 = "tosa.transpose"(%259, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %261 = "tosa.add"(%247, %260) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %262 = "tosa.equal"(%50, %51) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %263 = "tosa.select"(%262, %261, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %264 = "tosa.mul"(%17, %263) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %265 = "tosa.mul"(%39, %264) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %266 = "tosa.transpose"(%265, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %267 = "tosa.transpose_conv2d"(%266, %251, %233) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %268 = "tosa.transpose"(%267, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %269 = "tosa.equal"(%48, %49) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %270 = "tosa.select"(%269, %268, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %271 = "tosa.mul"(%17, %270) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %272 = "tosa.mul"(%39, %271) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %273 = "tosa.transpose"(%272, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %274 = "tosa.transpose_conv2d"(%273, %251, %233) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %275 = "tosa.transpose"(%274, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %276 = "tosa.add"(%263, %275) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %277 = "tosa.equal"(%46, %47) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %278 = "tosa.select"(%277, %276, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %279 = "tosa.mul"(%17, %278) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %280 = "tosa.mul"(%39, %279) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %281 = "tosa.transpose"(%280, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %282 = "tosa.transpose_conv2d"(%281, %251, %233) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %283 = "tosa.transpose"(%282, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %284 = "tosa.equal"(%44, %45) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %285 = "tosa.select"(%284, %283, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %286 = "tosa.mul"(%17, %285) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %287 = "tosa.mul"(%39, %286) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %288 = "tosa.transpose"(%287, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %289 = "tosa.transpose_conv2d"(%288, %251, %233) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %290 = "tosa.transpose"(%289, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %291 = "tosa.add"(%278, %290) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %292 = "tosa.equal"(%42, %43) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %293 = "tosa.select"(%292, %291, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %294 = "tosa.mul"(%17, %293) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %295 = "tosa.mul"(%39, %294) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %296 = "tosa.transpose"(%295, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %297 = "tosa.transpose"(%15, %5) : (tensor<128x1x1x64xf32>, tensor<4xi64>) -> tensor<64x1x1x128xf32>
    %298 = tensor.empty() : tensor<64xf32>
    %299 = "tosa.transpose_conv2d"(%296, %297, %298) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<64x1x1x128xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %300 = "tosa.transpose_conv2d"(%296, %251, %233) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %301 = "tosa.transpose"(%300, %2) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %302 = "tosa.equal"(%40, %41) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %303 = "tosa.select"(%302, %301, %3) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %304 = "tosa.mul"(%17, %303) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %305 = "tosa.mul"(%39, %304) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %306 = "tosa.transpose"(%305, %4) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %307 = "tosa.transpose"(%18, %5) : (tensor<128x3x3x64xf32>, tensor<4xi64>) -> tensor<64x3x3x128xf32>
    %308 = "tosa.transpose_conv2d"(%306, %307, %298) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 2, 2>} : (tensor<1x28x28x128xf32>, tensor<64x3x3x128xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %309 = "tosa.add"(%299, %308) : (tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %310 = "tosa.transpose"(%309, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %311 = "tosa.equal"(%37, %38) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %312 = "tosa.select"(%311, %310, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %313 = "tosa.mul"(%20, %312) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %314 = "tosa.mul"(%22, %313) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %315 = "tosa.transpose"(%314, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %316 = "tosa.transpose"(%19, %5) : (tensor<64x3x3x64xf32>, tensor<4xi64>) -> tensor<64x3x3x64xf32>
    %317 = "tosa.transpose_conv2d"(%315, %316, %298) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %318 = "tosa.transpose"(%317, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %319 = "tosa.equal"(%35, %36) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %320 = "tosa.select"(%319, %318, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %321 = "tosa.mul"(%20, %320) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %322 = "tosa.mul"(%22, %321) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %323 = "tosa.transpose"(%322, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %324 = "tosa.transpose_conv2d"(%323, %316, %298) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %325 = "tosa.transpose"(%324, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %326 = "tosa.add"(%312, %325) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %327 = "tosa.equal"(%33, %34) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %328 = "tosa.select"(%327, %326, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %329 = "tosa.mul"(%20, %328) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %330 = "tosa.mul"(%22, %329) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %331 = "tosa.transpose"(%330, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %332 = "tosa.transpose_conv2d"(%331, %316, %298) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %333 = "tosa.transpose"(%332, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %334 = "tosa.equal"(%31, %32) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %335 = "tosa.select"(%334, %333, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %336 = "tosa.mul"(%20, %335) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %337 = "tosa.mul"(%22, %336) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %338 = "tosa.transpose"(%337, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %339 = "tosa.transpose_conv2d"(%338, %316, %298) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %340 = "tosa.transpose"(%339, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %341 = "tosa.add"(%328, %340) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %342 = "tosa.equal"(%29, %30) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %343 = "tosa.select"(%342, %341, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %344 = "tosa.mul"(%20, %343) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %345 = "tosa.mul"(%22, %344) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %346 = "tosa.transpose"(%345, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %347 = "tosa.transpose_conv2d"(%346, %316, %298) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %348 = "tosa.transpose"(%347, %2) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %349 = "tosa.equal"(%27, %28) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %350 = "tosa.select"(%349, %348, %3) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %351 = "tosa.mul"(%20, %350) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %352 = "tosa.mul"(%22, %351) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %353 = "tosa.transpose"(%352, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %354 = "tosa.transpose_conv2d"(%353, %316, %298) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %355 = "tosa.transpose"(%343, %4) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %356 = "tosa.add"(%354, %355) : (tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %padded = tensor.pad %25 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %357 = tensor.empty() : tensor<1x113x113x64xf32>
    %358 = tensor.empty() : tensor<3x3xf32>
    %359 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded, %358, %26, %356 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%357 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_1: f32, %in_2: f32, %in_3: f32, %out: f32):
      %370 = arith.cmpf oge, %in, %in_2 : f32
      %371 = arith.select %370, %in_3, %cst_0 : f32
      %372 = arith.addf %out, %371 : f32
      linalg.yield %372 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice = tensor.extract_slice %359[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %360 = "tosa.transpose"(%extracted_slice, %2) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %361 = "tosa.equal"(%23, %24) : (tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xi1>
    %362 = "tosa.select"(%361, %360, %3) : (tensor<1x64x112x112xi1>, tensor<1x64x112x112xf32>, tensor<f32>) -> tensor<1x64x112x112xf32>
    %363 = "tosa.mul"(%20, %362) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %364 = "tosa.mul"(%22, %363) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %365 = "tosa.transpose"(%364, %4) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %366 = "tosa.transpose"(%21, %5) : (tensor<64x7x7x3xf32>, tensor<4xi64>) -> tensor<3x7x7x64xf32>
    %367 = tensor.empty() : tensor<3xf32>
    %368 = "tosa.transpose_conv2d"(%365, %366, %367) {out_pad = array<i64: -3, -3, -3, -3>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>, tensor<3x7x7x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %369 = "tosa.transpose"(%368, %2) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %369 : tensor<1x3x224x224xf32>
  }
}

