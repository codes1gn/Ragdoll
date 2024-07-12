#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "VGG"} {
  ml_program.global private mutable @global90 : tensor<1x4096xf32>
  ml_program.global private mutable @global89 : tensor<1x4096xf32>
  ml_program.global private mutable @global88 : tensor<1x4096xf32>
  ml_program.global private mutable @global84 : tensor<1x4096xf32>
  ml_program.global private mutable @global83 : tensor<1x4096xf32>
  ml_program.global private mutable @global82 : tensor<1x4096xf32>
  ml_program.global private mutable @global77 : tensor<1x7x7x512xf32>
  ml_program.global private mutable @global76 : tensor<1x14x14x512xf32>
  ml_program.global private mutable @global75 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global74 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global71 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global70 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global67 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global66 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global64 : tensor<1x14x14x512xf32>
  ml_program.global private mutable @global63 : tensor<1x28x28x512xf32>
  ml_program.global private mutable @global62 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global61 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global58 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global57 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global54 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global53 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global51 : tensor<1x28x28x256xf32>
  ml_program.global private mutable @global50 : tensor<1x56x56x256xf32>
  ml_program.global private mutable @global49 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global48 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global45 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global44 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global41 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global40 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global38 : tensor<1x56x56x128xf32>
  ml_program.global private mutable @global37 : tensor<1x112x112x128xf32>
  ml_program.global private mutable @global36 : tensor<1x128x112x112xf32>
  ml_program.global private mutable @global35 : tensor<1x128x112x112xf32>
  ml_program.global private mutable @global32 : tensor<1x128x112x112xf32>
  ml_program.global private mutable @global31 : tensor<1x128x112x112xf32>
  ml_program.global private mutable @global29 : tensor<1x112x112x64xf32>
  ml_program.global private mutable @global28 : tensor<1x224x224x64xf32>
  ml_program.global private mutable @global27 : tensor<1x64x224x224xf32>
  ml_program.global private mutable @global26 : tensor<1x64x224x224xf32>
  ml_program.global private mutable @global23 : tensor<1x64x224x224xf32>
  ml_program.global private mutable @global22 : tensor<1x64x224x224xf32>
  ml_program.global private mutable @global19 : tensor<64x3x3x3xf32>
  ml_program.global private mutable @global18 : tensor<64x3x3x64xf32>
  ml_program.global private mutable @global17 : tensor<128x3x3x64xf32>
  ml_program.global private mutable @global16 : tensor<128x3x3x128xf32>
  ml_program.global private mutable @global15 : tensor<256x3x3x128xf32>
  ml_program.global private mutable @global14 : tensor<256x3x3x256xf32>
  ml_program.global private mutable @global13 : tensor<512x3x3x256xf32>
  ml_program.global private mutable @global12 : tensor<512x3x3x512xf32>
  ml_program.global private mutable @global11 : tensor<1x25088x4096xf32>
  ml_program.global private mutable @global9 : tensor<1x4096x4096xf32>
  ml_program.global private mutable @global8 : tensor<1x4096x1000xf32>
  
  func.func private @dropout(%t : tensor<1x4096xf32>) -> tensor<1x4096xf32> {
    %zeros = arith.constant dense<0.0> : tensor<1x4096xf32>
    %window = tensor.empty() : tensor<1x2048xf32>
    %res = linalg.generic {
      indexing_maps = [
        affine_map<(i, j) -> (i, 2 * j)>,
        affine_map<(i, j) -> (i, j)>,
        affine_map<(i, j) -> (i, 2 * j)>
      ],
      iterator_types = ["parallel", "parallel"]
    } ins(%t, %window : tensor<1x4096xf32>, tensor<1x2048xf32>) outs(%zeros : tensor<1x4096xf32>) {
      ^bb0(%i : f32, %j : f32, %k : f32):
        linalg.yield %i : f32
    } -> tensor<1x4096xf32>
    return %res : tensor<1x4096xf32>
  }

  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512xf32>} : () -> tensor<512xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256xf32>} : () -> tensor<256xf32>
    %2 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128xf32>} : () -> tensor<128xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64xf32>} : () -> tensor<64xf32>
    %4 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000xf32>} : () -> tensor<1x1000xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096x1000xf32>} : () -> tensor<1x4096x1000xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096x4096xf32>} : () -> tensor<1x4096x4096xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096xf32>} : () -> tensor<1x4096xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x25088x4096xf32>} : () -> tensor<1x25088x4096xf32>
    %11 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x512xf32>} : () -> tensor<512x3x3x512xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x256xf32>} : () -> tensor<512x3x3x256xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x128xf32>} : () -> tensor<256x3x3x128xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x128xf32>} : () -> tensor<128x3x3x128xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x64xf32>} : () -> tensor<128x3x3x64xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x64xf32>} : () -> tensor<64x3x3x64xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x3xf32>} : () -> tensor<64x3x3x3xf32>
    ml_program.global_store @global8 = %7 : tensor<1x4096x1000xf32>
    ml_program.global_store @global9 = %8 : tensor<1x4096x4096xf32>
    ml_program.global_store @global11 = %10 : tensor<1x25088x4096xf32>
    ml_program.global_store @global12 = %11 : tensor<512x3x3x512xf32>
    ml_program.global_store @global13 = %12 : tensor<512x3x3x256xf32>
    ml_program.global_store @global14 = %13 : tensor<256x3x3x256xf32>
    ml_program.global_store @global15 = %14 : tensor<256x3x3x128xf32>
    ml_program.global_store @global16 = %15 : tensor<128x3x3x128xf32>
    ml_program.global_store @global17 = %16 : tensor<128x3x3x64xf32>
    ml_program.global_store @global18 = %17 : tensor<64x3x3x64xf32>
    ml_program.global_store @global19 = %18 : tensor<64x3x3x3xf32>
    %19 = "tosa.transpose"(%arg0, %4) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %20 = "tosa.conv2d"(%19, %18, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x224x224x3xf32>, tensor<64x3x3x3xf32>, tensor<64xf32>) -> tensor<1x224x224x64xf32>
    %21 = "tosa.transpose"(%20, %5) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    ml_program.global_store @global22 = %21 : tensor<1x64x224x224xf32>
    %22 = "tosa.clamp"(%21) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    ml_program.global_store @global23 = %22 : tensor<1x64x224x224xf32>
    %23 = "tosa.transpose"(%22, %4) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    %24 = "tosa.conv2d"(%23, %17, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x224x224x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x224x224x64xf32>
    %25 = "tosa.transpose"(%24, %5) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    ml_program.global_store @global26 = %25 : tensor<1x64x224x224xf32>
    %26 = "tosa.clamp"(%25) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    ml_program.global_store @global27 = %26 : tensor<1x64x224x224xf32>
    %27 = "tosa.transpose"(%26, %4) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    ml_program.global_store @global28 = %27 : tensor<1x224x224x64xf32>
    %28 = "tosa.max_pool2d"(%27) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x224x224x64xf32>) -> tensor<1x112x112x64xf32>
    ml_program.global_store @global29 = %28 : tensor<1x112x112x64xf32>
    %29 = "tosa.conv2d"(%28, %16, %2) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x112x112x64xf32>, tensor<128x3x3x64xf32>, tensor<128xf32>) -> tensor<1x112x112x128xf32>
    %30 = "tosa.transpose"(%29, %5) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    ml_program.global_store @global31 = %30 : tensor<1x128x112x112xf32>
    %31 = "tosa.clamp"(%30) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    ml_program.global_store @global32 = %31 : tensor<1x128x112x112xf32>
    %32 = "tosa.transpose"(%31, %4) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    %33 = "tosa.conv2d"(%32, %15, %2) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x112x112x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x112x112x128xf32>
    %34 = "tosa.transpose"(%33, %5) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    ml_program.global_store @global35 = %34 : tensor<1x128x112x112xf32>
    %35 = "tosa.clamp"(%34) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    ml_program.global_store @global36 = %35 : tensor<1x128x112x112xf32>
    %36 = "tosa.transpose"(%35, %4) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    ml_program.global_store @global37 = %36 : tensor<1x112x112x128xf32>
    %37 = "tosa.max_pool2d"(%36) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x128xf32>) -> tensor<1x56x56x128xf32>
    ml_program.global_store @global38 = %37 : tensor<1x56x56x128xf32>
    %38 = "tosa.conv2d"(%37, %14, %1) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x3x3x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %39 = "tosa.transpose"(%38, %5) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global40 = %39 : tensor<1x256x56x56xf32>
    %40 = "tosa.clamp"(%39) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global41 = %40 : tensor<1x256x56x56xf32>
    %41 = "tosa.transpose"(%40, %4) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %42 = "tosa.conv2d"(%41, %13, %1) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %43 = "tosa.transpose"(%42, %5) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global44 = %43 : tensor<1x256x56x56xf32>
    %44 = "tosa.clamp"(%43) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global45 = %44 : tensor<1x256x56x56xf32>
    %45 = "tosa.transpose"(%44, %4) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %46 = "tosa.conv2d"(%45, %13, %1) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %47 = "tosa.transpose"(%46, %5) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global48 = %47 : tensor<1x256x56x56xf32>
    %48 = "tosa.clamp"(%47) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global49 = %48 : tensor<1x256x56x56xf32>
    %49 = "tosa.transpose"(%48, %4) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    ml_program.global_store @global50 = %49 : tensor<1x56x56x256xf32>
    %50 = "tosa.max_pool2d"(%49) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>) -> tensor<1x28x28x256xf32>
    ml_program.global_store @global51 = %50 : tensor<1x28x28x256xf32>
    %51 = "tosa.conv2d"(%50, %12, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x3x3x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %52 = "tosa.transpose"(%51, %5) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global53 = %52 : tensor<1x512x28x28xf32>
    %53 = "tosa.clamp"(%52) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global54 = %53 : tensor<1x512x28x28xf32>
    %54 = "tosa.transpose"(%53, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %55 = "tosa.conv2d"(%54, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %56 = "tosa.transpose"(%55, %5) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global57 = %56 : tensor<1x512x28x28xf32>
    %57 = "tosa.clamp"(%56) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global58 = %57 : tensor<1x512x28x28xf32>
    %58 = "tosa.transpose"(%57, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %59 = "tosa.conv2d"(%58, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %60 = "tosa.transpose"(%59, %5) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global61 = %60 : tensor<1x512x28x28xf32>
    %61 = "tosa.clamp"(%60) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global62 = %61 : tensor<1x512x28x28xf32>
    %62 = "tosa.transpose"(%61, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    ml_program.global_store @global63 = %62 : tensor<1x28x28x512xf32>
    %63 = "tosa.max_pool2d"(%62) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>) -> tensor<1x14x14x512xf32>
    ml_program.global_store @global64 = %63 : tensor<1x14x14x512xf32>
    %64 = "tosa.conv2d"(%63, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %65 = "tosa.transpose"(%64, %5) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global66 = %65 : tensor<1x512x14x14xf32>
    %66 = "tosa.clamp"(%65) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global67 = %66 : tensor<1x512x14x14xf32>
    %67 = "tosa.transpose"(%66, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %68 = "tosa.conv2d"(%67, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %69 = "tosa.transpose"(%68, %5) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global70 = %69 : tensor<1x512x14x14xf32>
    %70 = "tosa.clamp"(%69) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global71 = %70 : tensor<1x512x14x14xf32>
    %71 = "tosa.transpose"(%70, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %72 = "tosa.conv2d"(%71, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %73 = "tosa.transpose"(%72, %5) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global74 = %73 : tensor<1x512x14x14xf32>
    %74 = "tosa.clamp"(%73) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global75 = %74 : tensor<1x512x14x14xf32>
    %75 = "tosa.transpose"(%74, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    ml_program.global_store @global76 = %75 : tensor<1x14x14x512xf32>
    %76 = "tosa.max_pool2d"(%75) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>) -> tensor<1x7x7x512xf32>
    ml_program.global_store @global77 = %76 : tensor<1x7x7x512xf32>
    %77 = "tosa.transpose"(%76, %5) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %78 = "tosa.reshape"(%77) {new_shape = array<i64: 1, 1, 25088>} : (tensor<1x512x7x7xf32>) -> tensor<1x1x25088xf32>
    %79 = "tosa.matmul"(%78, %10) : (tensor<1x1x25088xf32>, tensor<1x25088x4096xf32>) -> tensor<1x1x4096xf32>
    %80 = "tosa.reshape"(%79) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %81 = "tosa.add"(%80, %9) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global82 = %81 : tensor<1x4096xf32>
    %82 = "tosa.clamp"(%81) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global83 = %82 : tensor<1x4096xf32>
    // %83 = nabla.experimental.dropout %82 {p = 5.000000e-01 : f64} : tensor<1x4096xf32>
    %83 = call @dropout(%82) : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global84 = %83 : tensor<1x4096xf32>
    %84 = "tosa.reshape"(%83) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %85 = "tosa.matmul"(%84, %8) : (tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) -> tensor<1x1x4096xf32>
    %86 = "tosa.reshape"(%85) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %87 = "tosa.add"(%86, %9) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global88 = %87 : tensor<1x4096xf32>
    %88 = "tosa.clamp"(%87) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global89 = %88 : tensor<1x4096xf32>
    // %89 = nabla.experimental.dropout %88 {p = 5.000000e-01 : f64} : tensor<1x4096xf32>
    %89 = call @dropout(%82) : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global90 = %89 : tensor<1x4096xf32>
    %90 = "tosa.reshape"(%89) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %91 = "tosa.matmul"(%90, %7) : (tensor<1x1x4096xf32>, tensor<1x4096x1000xf32>) -> tensor<1x1x1000xf32>
    %92 = "tosa.reshape"(%91) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %93 = "tosa.add"(%92, %6) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %93 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %0 = "tosa.const"() {value = dense<[0, 2, 1]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %2 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %cst = arith.constant 0.000000e+00 : f32
    %3 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4 = "tosa.const"() {value = dense<[3, 1, 2, 0]> : tensor<4xi64>} : () -> tensor<4xi64>
    %5 = ml_program.global_load @global8 : tensor<1x4096x1000xf32>
    %6 = ml_program.global_load @global9 : tensor<1x4096x4096xf32>
    %7 = ml_program.global_load @global11 : tensor<1x25088x4096xf32>
    %8 = ml_program.global_load @global12 : tensor<512x3x3x512xf32>
    %9 = ml_program.global_load @global13 : tensor<512x3x3x256xf32>
    %10 = ml_program.global_load @global14 : tensor<256x3x3x256xf32>
    %11 = ml_program.global_load @global15 : tensor<256x3x3x128xf32>
    %12 = ml_program.global_load @global16 : tensor<128x3x3x128xf32>
    %13 = ml_program.global_load @global17 : tensor<128x3x3x64xf32>
    %14 = ml_program.global_load @global18 : tensor<64x3x3x64xf32>
    %15 = ml_program.global_load @global19 : tensor<64x3x3x3xf32>
    %16 = ml_program.global_load @global22 : tensor<1x64x224x224xf32>
    %17 = ml_program.global_load @global23 : tensor<1x64x224x224xf32>
    %18 = ml_program.global_load @global26 : tensor<1x64x224x224xf32>
    %19 = ml_program.global_load @global27 : tensor<1x64x224x224xf32>
    %20 = ml_program.global_load @global28 : tensor<1x224x224x64xf32>
    %21 = ml_program.global_load @global29 : tensor<1x112x112x64xf32>
    %22 = ml_program.global_load @global31 : tensor<1x128x112x112xf32>
    %23 = ml_program.global_load @global32 : tensor<1x128x112x112xf32>
    %24 = ml_program.global_load @global35 : tensor<1x128x112x112xf32>
    %25 = ml_program.global_load @global36 : tensor<1x128x112x112xf32>
    %26 = ml_program.global_load @global37 : tensor<1x112x112x128xf32>
    %27 = ml_program.global_load @global38 : tensor<1x56x56x128xf32>
    %28 = ml_program.global_load @global40 : tensor<1x256x56x56xf32>
    %29 = ml_program.global_load @global41 : tensor<1x256x56x56xf32>
    %30 = ml_program.global_load @global44 : tensor<1x256x56x56xf32>
    %31 = ml_program.global_load @global45 : tensor<1x256x56x56xf32>
    %32 = ml_program.global_load @global48 : tensor<1x256x56x56xf32>
    %33 = ml_program.global_load @global49 : tensor<1x256x56x56xf32>
    %34 = ml_program.global_load @global50 : tensor<1x56x56x256xf32>
    %35 = ml_program.global_load @global51 : tensor<1x28x28x256xf32>
    %36 = ml_program.global_load @global53 : tensor<1x512x28x28xf32>
    %37 = ml_program.global_load @global54 : tensor<1x512x28x28xf32>
    %38 = ml_program.global_load @global57 : tensor<1x512x28x28xf32>
    %39 = ml_program.global_load @global58 : tensor<1x512x28x28xf32>
    %40 = ml_program.global_load @global61 : tensor<1x512x28x28xf32>
    %41 = ml_program.global_load @global62 : tensor<1x512x28x28xf32>
    %42 = ml_program.global_load @global63 : tensor<1x28x28x512xf32>
    %43 = ml_program.global_load @global64 : tensor<1x14x14x512xf32>
    %44 = ml_program.global_load @global66 : tensor<1x512x14x14xf32>
    %45 = ml_program.global_load @global67 : tensor<1x512x14x14xf32>
    %46 = ml_program.global_load @global70 : tensor<1x512x14x14xf32>
    %47 = ml_program.global_load @global71 : tensor<1x512x14x14xf32>
    %48 = ml_program.global_load @global74 : tensor<1x512x14x14xf32>
    %49 = ml_program.global_load @global75 : tensor<1x512x14x14xf32>
    %50 = ml_program.global_load @global76 : tensor<1x14x14x512xf32>
    %51 = ml_program.global_load @global77 : tensor<1x7x7x512xf32>
    %52 = ml_program.global_load @global82 : tensor<1x4096xf32>
    %53 = ml_program.global_load @global83 : tensor<1x4096xf32>
    %54 = ml_program.global_load @global84 : tensor<1x4096xf32>
    %55 = ml_program.global_load @global88 : tensor<1x4096xf32>
    %56 = ml_program.global_load @global89 : tensor<1x4096xf32>
    %57 = ml_program.global_load @global90 : tensor<1x4096xf32>
    %58 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %59 = "tosa.transpose"(%5, %0) : (tensor<1x4096x1000xf32>, tensor<3xi32>) -> tensor<1x1000x4096xf32>
    %60 = "tosa.matmul"(%58, %59) : (tensor<1x1x1000xf32>, tensor<1x1000x4096xf32>) -> tensor<1x1x4096xf32>
    %61 = "tosa.reshape"(%60) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %62 = "tosa.equal"(%56, %57) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %63 = "tosa.select"(%62, %61, %1) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %64 = "tosa.equal"(%55, %56) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %65 = "tosa.select"(%64, %63, %1) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %66 = "tosa.reshape"(%65) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %67 = "tosa.transpose"(%6, %0) : (tensor<1x4096x4096xf32>, tensor<3xi32>) -> tensor<1x4096x4096xf32>
    %68 = "tosa.matmul"(%66, %67) : (tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) -> tensor<1x1x4096xf32>
    %69 = "tosa.reshape"(%68) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %70 = "tosa.equal"(%53, %54) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %71 = "tosa.select"(%70, %69, %1) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %72 = "tosa.equal"(%52, %53) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %73 = "tosa.select"(%72, %71, %1) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %74 = "tosa.reshape"(%73) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %75 = "tosa.transpose"(%7, %0) : (tensor<1x25088x4096xf32>, tensor<3xi32>) -> tensor<1x4096x25088xf32>
    %76 = "tosa.matmul"(%74, %75) : (tensor<1x1x4096xf32>, tensor<1x4096x25088xf32>) -> tensor<1x1x25088xf32>
    %77 = "tosa.reshape"(%76) {new_shape = array<i64: 1, 512, 7, 7>} : (tensor<1x1x25088xf32>) -> tensor<1x512x7x7xf32>
    %78 = "tosa.transpose"(%77, %2) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %79 = tensor.empty() : tensor<1x14x14x512xf32>
    %80 = tensor.empty() : tensor<2x2xf32>
    %81 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%50, %80, %51, %78 : tensor<1x14x14x512xf32>, tensor<2x2xf32>, tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%79 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %169 = arith.cmpf oge, %in, %in_1 : f32
      %170 = arith.select %169, %in_2, %cst : f32
      %171 = arith.addf %out, %170 : f32
      linalg.yield %171 : f32
    } -> tensor<1x14x14x512xf32>
    %82 = "tosa.transpose"(%81, %3) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %83 = "tosa.equal"(%48, %49) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %84 = "tosa.select"(%83, %82, %1) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %85 = "tosa.transpose"(%84, %2) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %86 = "tosa.transpose"(%8, %4) : (tensor<512x3x3x512xf32>, tensor<4xi64>) -> tensor<512x3x3x512xf32>
    %87 = tensor.empty() : tensor<512xf32>
    %88 = "tosa.transpose_conv2d"(%85, %86, %87) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %89 = "tosa.transpose"(%88, %3) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %90 = "tosa.equal"(%46, %47) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %91 = "tosa.select"(%90, %89, %1) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %92 = "tosa.transpose"(%91, %2) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %93 = "tosa.transpose_conv2d"(%92, %86, %87) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %94 = "tosa.transpose"(%93, %3) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %95 = "tosa.equal"(%44, %45) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %96 = "tosa.select"(%95, %94, %1) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %97 = "tosa.transpose"(%96, %2) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %98 = "tosa.transpose_conv2d"(%97, %86, %87) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %99 = tensor.empty() : tensor<1x28x28x512xf32>
    %100 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%42, %80, %43, %98 : tensor<1x28x28x512xf32>, tensor<2x2xf32>, tensor<1x14x14x512xf32>, tensor<1x14x14x512xf32>) outs(%99 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %169 = arith.cmpf oge, %in, %in_1 : f32
      %170 = arith.select %169, %in_2, %cst : f32
      %171 = arith.addf %out, %170 : f32
      linalg.yield %171 : f32
    } -> tensor<1x28x28x512xf32>
    %101 = "tosa.transpose"(%100, %3) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %102 = "tosa.equal"(%40, %41) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %103 = "tosa.select"(%102, %101, %1) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %104 = "tosa.transpose"(%103, %2) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %105 = "tosa.transpose_conv2d"(%104, %86, %87) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %106 = "tosa.transpose"(%105, %3) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %107 = "tosa.equal"(%38, %39) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %108 = "tosa.select"(%107, %106, %1) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %109 = "tosa.transpose"(%108, %2) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %110 = "tosa.transpose_conv2d"(%109, %86, %87) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %111 = "tosa.transpose"(%110, %3) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %112 = "tosa.equal"(%36, %37) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %113 = "tosa.select"(%112, %111, %1) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %114 = "tosa.transpose"(%113, %2) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %115 = "tosa.transpose"(%9, %4) : (tensor<512x3x3x256xf32>, tensor<4xi64>) -> tensor<256x3x3x512xf32>
    %116 = tensor.empty() : tensor<256xf32>
    %117 = "tosa.transpose_conv2d"(%114, %115, %116) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x3x3x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %118 = tensor.empty() : tensor<1x56x56x256xf32>
    %119 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%34, %80, %35, %117 : tensor<1x56x56x256xf32>, tensor<2x2xf32>, tensor<1x28x28x256xf32>, tensor<1x28x28x256xf32>) outs(%118 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %169 = arith.cmpf oge, %in, %in_1 : f32
      %170 = arith.select %169, %in_2, %cst : f32
      %171 = arith.addf %out, %170 : f32
      linalg.yield %171 : f32
    } -> tensor<1x56x56x256xf32>
    %120 = "tosa.transpose"(%119, %3) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %121 = "tosa.equal"(%32, %33) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %122 = "tosa.select"(%121, %120, %1) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %123 = "tosa.transpose"(%122, %2) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %124 = "tosa.transpose"(%10, %4) : (tensor<256x3x3x256xf32>, tensor<4xi64>) -> tensor<256x3x3x256xf32>
    %125 = "tosa.transpose_conv2d"(%123, %124, %116) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %126 = "tosa.transpose"(%125, %3) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %127 = "tosa.equal"(%30, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %128 = "tosa.select"(%127, %126, %1) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %129 = "tosa.transpose"(%128, %2) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %130 = "tosa.transpose_conv2d"(%129, %124, %116) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %131 = "tosa.transpose"(%130, %3) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %132 = "tosa.equal"(%28, %29) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %133 = "tosa.select"(%132, %131, %1) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %134 = "tosa.transpose"(%133, %2) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %135 = "tosa.transpose"(%11, %4) : (tensor<256x3x3x128xf32>, tensor<4xi64>) -> tensor<128x3x3x256xf32>
    %136 = tensor.empty() : tensor<128xf32>
    %137 = "tosa.transpose_conv2d"(%134, %135, %136) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x3x3x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %138 = tensor.empty() : tensor<1x112x112x128xf32>
    %139 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%26, %80, %27, %137 : tensor<1x112x112x128xf32>, tensor<2x2xf32>, tensor<1x56x56x128xf32>, tensor<1x56x56x128xf32>) outs(%138 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %169 = arith.cmpf oge, %in, %in_1 : f32
      %170 = arith.select %169, %in_2, %cst : f32
      %171 = arith.addf %out, %170 : f32
      linalg.yield %171 : f32
    } -> tensor<1x112x112x128xf32>
    %140 = "tosa.transpose"(%139, %3) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    %141 = "tosa.equal"(%24, %25) : (tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xi1>
    %142 = "tosa.select"(%141, %140, %1) : (tensor<1x128x112x112xi1>, tensor<1x128x112x112xf32>, tensor<f32>) -> tensor<1x128x112x112xf32>
    %143 = "tosa.transpose"(%142, %2) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    %144 = "tosa.transpose"(%12, %4) : (tensor<128x3x3x128xf32>, tensor<4xi64>) -> tensor<128x3x3x128xf32>
    %145 = "tosa.transpose_conv2d"(%143, %144, %136) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 112, 112, 128>, stride = array<i64: 1, 1>} : (tensor<1x112x112x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x112x112x128xf32>
    %146 = "tosa.transpose"(%145, %3) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    %147 = "tosa.equal"(%22, %23) : (tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xi1>
    %148 = "tosa.select"(%147, %146, %1) : (tensor<1x128x112x112xi1>, tensor<1x128x112x112xf32>, tensor<f32>) -> tensor<1x128x112x112xf32>
    %149 = "tosa.transpose"(%148, %2) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    %150 = "tosa.transpose"(%13, %4) : (tensor<128x3x3x64xf32>, tensor<4xi64>) -> tensor<64x3x3x128xf32>
    %151 = tensor.empty() : tensor<64xf32>
    %152 = "tosa.transpose_conv2d"(%149, %150, %151) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 112, 112, 64>, stride = array<i64: 1, 1>} : (tensor<1x112x112x128xf32>, tensor<64x3x3x128xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %153 = tensor.empty() : tensor<1x224x224x64xf32>
    %154 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%20, %80, %21, %152 : tensor<1x224x224x64xf32>, tensor<2x2xf32>, tensor<1x112x112x64xf32>, tensor<1x112x112x64xf32>) outs(%153 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %169 = arith.cmpf oge, %in, %in_1 : f32
      %170 = arith.select %169, %in_2, %cst : f32
      %171 = arith.addf %out, %170 : f32
      linalg.yield %171 : f32
    } -> tensor<1x224x224x64xf32>
    %155 = "tosa.transpose"(%154, %3) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    %156 = "tosa.equal"(%18, %19) : (tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xi1>
    %157 = "tosa.select"(%156, %155, %1) : (tensor<1x64x224x224xi1>, tensor<1x64x224x224xf32>, tensor<f32>) -> tensor<1x64x224x224xf32>
    %158 = "tosa.transpose"(%157, %2) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    %159 = "tosa.transpose"(%14, %4) : (tensor<64x3x3x64xf32>, tensor<4xi64>) -> tensor<64x3x3x64xf32>
    %160 = "tosa.transpose_conv2d"(%158, %159, %151) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 224, 224, 64>, stride = array<i64: 1, 1>} : (tensor<1x224x224x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x224x224x64xf32>
    %161 = "tosa.transpose"(%160, %3) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    %162 = "tosa.equal"(%16, %17) : (tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xi1>
    %163 = "tosa.select"(%162, %161, %1) : (tensor<1x64x224x224xi1>, tensor<1x64x224x224xf32>, tensor<f32>) -> tensor<1x64x224x224xf32>
    %164 = "tosa.transpose"(%163, %2) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    %165 = "tosa.transpose"(%15, %4) : (tensor<64x3x3x3xf32>, tensor<4xi64>) -> tensor<3x3x3x64xf32>
    %166 = tensor.empty() : tensor<3xf32>
    %167 = "tosa.transpose_conv2d"(%164, %165, %166) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 1, 1>} : (tensor<1x224x224x64xf32>, tensor<3x3x3x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %168 = "tosa.transpose"(%167, %3) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %168 : tensor<1x3x224x224xf32>
  }
}

