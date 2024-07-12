#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "VGG"} {
  ml_program.global private mutable @global102 : tensor<1x4096xf32>
  ml_program.global private mutable @global101 : tensor<1x4096xf32>
  ml_program.global private mutable @global100 : tensor<1x4096xf32>
  ml_program.global private mutable @global96 : tensor<1x4096xf32>
  ml_program.global private mutable @global95 : tensor<1x4096xf32>
  ml_program.global private mutable @global94 : tensor<1x4096xf32>
  ml_program.global private mutable @global89 : tensor<1x7x7x512xf32>
  ml_program.global private mutable @global88 : tensor<1x14x14x512xf32>
  ml_program.global private mutable @global87 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global86 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global83 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global82 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global79 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global78 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global75 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global74 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global72 : tensor<1x14x14x512xf32>
  ml_program.global private mutable @global71 : tensor<1x28x28x512xf32>
  ml_program.global private mutable @global70 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global69 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global66 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global65 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global62 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global61 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global58 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global57 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global55 : tensor<1x28x28x256xf32>
  ml_program.global private mutable @global54 : tensor<1x56x56x256xf32>
  ml_program.global private mutable @global53 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global52 : tensor<1x256x56x56xf32>
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
    %50 = "tosa.conv2d"(%49, %13, %1) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %51 = "tosa.transpose"(%50, %5) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global52 = %51 : tensor<1x256x56x56xf32>
    %52 = "tosa.clamp"(%51) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global53 = %52 : tensor<1x256x56x56xf32>
    %53 = "tosa.transpose"(%52, %4) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    ml_program.global_store @global54 = %53 : tensor<1x56x56x256xf32>
    %54 = "tosa.max_pool2d"(%53) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>) -> tensor<1x28x28x256xf32>
    ml_program.global_store @global55 = %54 : tensor<1x28x28x256xf32>
    %55 = "tosa.conv2d"(%54, %12, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x3x3x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
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
    %63 = "tosa.conv2d"(%62, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %64 = "tosa.transpose"(%63, %5) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global65 = %64 : tensor<1x512x28x28xf32>
    %65 = "tosa.clamp"(%64) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global66 = %65 : tensor<1x512x28x28xf32>
    %66 = "tosa.transpose"(%65, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %67 = "tosa.conv2d"(%66, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %68 = "tosa.transpose"(%67, %5) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global69 = %68 : tensor<1x512x28x28xf32>
    %69 = "tosa.clamp"(%68) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global70 = %69 : tensor<1x512x28x28xf32>
    %70 = "tosa.transpose"(%69, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    ml_program.global_store @global71 = %70 : tensor<1x28x28x512xf32>
    %71 = "tosa.max_pool2d"(%70) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>) -> tensor<1x14x14x512xf32>
    ml_program.global_store @global72 = %71 : tensor<1x14x14x512xf32>
    %72 = "tosa.conv2d"(%71, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %73 = "tosa.transpose"(%72, %5) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global74 = %73 : tensor<1x512x14x14xf32>
    %74 = "tosa.clamp"(%73) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global75 = %74 : tensor<1x512x14x14xf32>
    %75 = "tosa.transpose"(%74, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %76 = "tosa.conv2d"(%75, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %77 = "tosa.transpose"(%76, %5) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global78 = %77 : tensor<1x512x14x14xf32>
    %78 = "tosa.clamp"(%77) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global79 = %78 : tensor<1x512x14x14xf32>
    %79 = "tosa.transpose"(%78, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %80 = "tosa.conv2d"(%79, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %81 = "tosa.transpose"(%80, %5) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global82 = %81 : tensor<1x512x14x14xf32>
    %82 = "tosa.clamp"(%81) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global83 = %82 : tensor<1x512x14x14xf32>
    %83 = "tosa.transpose"(%82, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %84 = "tosa.conv2d"(%83, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %85 = "tosa.transpose"(%84, %5) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global86 = %85 : tensor<1x512x14x14xf32>
    %86 = "tosa.clamp"(%85) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global87 = %86 : tensor<1x512x14x14xf32>
    %87 = "tosa.transpose"(%86, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    ml_program.global_store @global88 = %87 : tensor<1x14x14x512xf32>
    %88 = "tosa.max_pool2d"(%87) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>) -> tensor<1x7x7x512xf32>
    ml_program.global_store @global89 = %88 : tensor<1x7x7x512xf32>
    %89 = "tosa.transpose"(%88, %5) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %90 = "tosa.reshape"(%89) {new_shape = array<i64: 1, 1, 25088>} : (tensor<1x512x7x7xf32>) -> tensor<1x1x25088xf32>
    %91 = "tosa.matmul"(%90, %10) : (tensor<1x1x25088xf32>, tensor<1x25088x4096xf32>) -> tensor<1x1x4096xf32>
    %92 = "tosa.reshape"(%91) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %93 = "tosa.add"(%92, %9) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global94 = %93 : tensor<1x4096xf32>
    %94 = "tosa.clamp"(%93) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global95 = %94 : tensor<1x4096xf32>
    %95 = call @dropout(%94) : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global96 = %95 : tensor<1x4096xf32>
    %96 = "tosa.reshape"(%95) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %97 = "tosa.matmul"(%96, %8) : (tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) -> tensor<1x1x4096xf32>
    %98 = "tosa.reshape"(%97) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %99 = "tosa.add"(%98, %9) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global100 = %99 : tensor<1x4096xf32>
    %100 = "tosa.clamp"(%99) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global101 = %100 : tensor<1x4096xf32>
    %101 = call @dropout(%100) : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global102 = %101 : tensor<1x4096xf32>
    %102 = "tosa.reshape"(%101) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %103 = "tosa.matmul"(%102, %7) : (tensor<1x1x4096xf32>, tensor<1x4096x1000xf32>) -> tensor<1x1x1000xf32>
    %104 = "tosa.reshape"(%103) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %105 = "tosa.add"(%104, %6) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %105 : tensor<1x1000xf32>
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
    %34 = ml_program.global_load @global52 : tensor<1x256x56x56xf32>
    %35 = ml_program.global_load @global53 : tensor<1x256x56x56xf32>
    %36 = ml_program.global_load @global54 : tensor<1x56x56x256xf32>
    %37 = ml_program.global_load @global55 : tensor<1x28x28x256xf32>
    %38 = ml_program.global_load @global57 : tensor<1x512x28x28xf32>
    %39 = ml_program.global_load @global58 : tensor<1x512x28x28xf32>
    %40 = ml_program.global_load @global61 : tensor<1x512x28x28xf32>
    %41 = ml_program.global_load @global62 : tensor<1x512x28x28xf32>
    %42 = ml_program.global_load @global65 : tensor<1x512x28x28xf32>
    %43 = ml_program.global_load @global66 : tensor<1x512x28x28xf32>
    %44 = ml_program.global_load @global69 : tensor<1x512x28x28xf32>
    %45 = ml_program.global_load @global70 : tensor<1x512x28x28xf32>
    %46 = ml_program.global_load @global71 : tensor<1x28x28x512xf32>
    %47 = ml_program.global_load @global72 : tensor<1x14x14x512xf32>
    %48 = ml_program.global_load @global74 : tensor<1x512x14x14xf32>
    %49 = ml_program.global_load @global75 : tensor<1x512x14x14xf32>
    %50 = ml_program.global_load @global78 : tensor<1x512x14x14xf32>
    %51 = ml_program.global_load @global79 : tensor<1x512x14x14xf32>
    %52 = ml_program.global_load @global82 : tensor<1x512x14x14xf32>
    %53 = ml_program.global_load @global83 : tensor<1x512x14x14xf32>
    %54 = ml_program.global_load @global86 : tensor<1x512x14x14xf32>
    %55 = ml_program.global_load @global87 : tensor<1x512x14x14xf32>
    %56 = ml_program.global_load @global88 : tensor<1x14x14x512xf32>
    %57 = ml_program.global_load @global89 : tensor<1x7x7x512xf32>
    %58 = ml_program.global_load @global94 : tensor<1x4096xf32>
    %59 = ml_program.global_load @global95 : tensor<1x4096xf32>
    %60 = ml_program.global_load @global96 : tensor<1x4096xf32>
    %61 = ml_program.global_load @global100 : tensor<1x4096xf32>
    %62 = ml_program.global_load @global101 : tensor<1x4096xf32>
    %63 = ml_program.global_load @global102 : tensor<1x4096xf32>
    %64 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %65 = "tosa.transpose"(%5, %0) : (tensor<1x4096x1000xf32>, tensor<3xi32>) -> tensor<1x1000x4096xf32>
    %66 = "tosa.matmul"(%64, %65) : (tensor<1x1x1000xf32>, tensor<1x1000x4096xf32>) -> tensor<1x1x4096xf32>
    %67 = "tosa.reshape"(%66) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %68 = "tosa.equal"(%62, %63) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %69 = "tosa.select"(%68, %67, %1) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %70 = "tosa.equal"(%61, %62) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %71 = "tosa.select"(%70, %69, %1) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %72 = "tosa.reshape"(%71) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %73 = "tosa.transpose"(%6, %0) : (tensor<1x4096x4096xf32>, tensor<3xi32>) -> tensor<1x4096x4096xf32>
    %74 = "tosa.matmul"(%72, %73) : (tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) -> tensor<1x1x4096xf32>
    %75 = "tosa.reshape"(%74) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %76 = "tosa.equal"(%59, %60) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %77 = "tosa.select"(%76, %75, %1) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %78 = "tosa.equal"(%58, %59) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %79 = "tosa.select"(%78, %77, %1) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %80 = "tosa.reshape"(%79) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %81 = "tosa.transpose"(%7, %0) : (tensor<1x25088x4096xf32>, tensor<3xi32>) -> tensor<1x4096x25088xf32>
    %82 = "tosa.matmul"(%80, %81) : (tensor<1x1x4096xf32>, tensor<1x4096x25088xf32>) -> tensor<1x1x25088xf32>
    %83 = "tosa.reshape"(%82) {new_shape = array<i64: 1, 512, 7, 7>} : (tensor<1x1x25088xf32>) -> tensor<1x512x7x7xf32>
    %84 = "tosa.transpose"(%83, %2) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %85 = tensor.empty() : tensor<1x14x14x512xf32>
    %86 = tensor.empty() : tensor<2x2xf32>
    %87 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%56, %86, %57, %84 : tensor<1x14x14x512xf32>, tensor<2x2xf32>, tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%85 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %190 = arith.cmpf oge, %in, %in_1 : f32
      %191 = arith.select %190, %in_2, %cst : f32
      %192 = arith.addf %out, %191 : f32
      linalg.yield %192 : f32
    } -> tensor<1x14x14x512xf32>
    %88 = "tosa.transpose"(%87, %3) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %89 = "tosa.equal"(%54, %55) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %90 = "tosa.select"(%89, %88, %1) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %91 = "tosa.transpose"(%90, %2) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %92 = "tosa.transpose"(%8, %4) : (tensor<512x3x3x512xf32>, tensor<4xi64>) -> tensor<512x3x3x512xf32>
    %93 = tensor.empty() : tensor<512xf32>
    %94 = "tosa.transpose_conv2d"(%91, %92, %93) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %95 = "tosa.transpose"(%94, %3) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %96 = "tosa.equal"(%52, %53) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %97 = "tosa.select"(%96, %95, %1) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %98 = "tosa.transpose"(%97, %2) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %99 = "tosa.transpose_conv2d"(%98, %92, %93) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %100 = "tosa.transpose"(%99, %3) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %101 = "tosa.equal"(%50, %51) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %102 = "tosa.select"(%101, %100, %1) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %103 = "tosa.transpose"(%102, %2) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %104 = "tosa.transpose_conv2d"(%103, %92, %93) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %105 = "tosa.transpose"(%104, %3) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %106 = "tosa.equal"(%48, %49) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %107 = "tosa.select"(%106, %105, %1) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %108 = "tosa.transpose"(%107, %2) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %109 = "tosa.transpose_conv2d"(%108, %92, %93) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %110 = tensor.empty() : tensor<1x28x28x512xf32>
    %111 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%46, %86, %47, %109 : tensor<1x28x28x512xf32>, tensor<2x2xf32>, tensor<1x14x14x512xf32>, tensor<1x14x14x512xf32>) outs(%110 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %190 = arith.cmpf oge, %in, %in_1 : f32
      %191 = arith.select %190, %in_2, %cst : f32
      %192 = arith.addf %out, %191 : f32
      linalg.yield %192 : f32
    } -> tensor<1x28x28x512xf32>
    %112 = "tosa.transpose"(%111, %3) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %113 = "tosa.equal"(%44, %45) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %114 = "tosa.select"(%113, %112, %1) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %115 = "tosa.transpose"(%114, %2) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %116 = "tosa.transpose_conv2d"(%115, %92, %93) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %117 = "tosa.transpose"(%116, %3) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %118 = "tosa.equal"(%42, %43) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %119 = "tosa.select"(%118, %117, %1) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %120 = "tosa.transpose"(%119, %2) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %121 = "tosa.transpose_conv2d"(%120, %92, %93) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %122 = "tosa.transpose"(%121, %3) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %123 = "tosa.equal"(%40, %41) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %124 = "tosa.select"(%123, %122, %1) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %125 = "tosa.transpose"(%124, %2) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %126 = "tosa.transpose_conv2d"(%125, %92, %93) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %127 = "tosa.transpose"(%126, %3) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %128 = "tosa.equal"(%38, %39) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %129 = "tosa.select"(%128, %127, %1) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %130 = "tosa.transpose"(%129, %2) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %131 = "tosa.transpose"(%9, %4) : (tensor<512x3x3x256xf32>, tensor<4xi64>) -> tensor<256x3x3x512xf32>
    %132 = tensor.empty() : tensor<256xf32>
    %133 = "tosa.transpose_conv2d"(%130, %131, %132) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x3x3x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %134 = tensor.empty() : tensor<1x56x56x256xf32>
    %135 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%36, %86, %37, %133 : tensor<1x56x56x256xf32>, tensor<2x2xf32>, tensor<1x28x28x256xf32>, tensor<1x28x28x256xf32>) outs(%134 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %190 = arith.cmpf oge, %in, %in_1 : f32
      %191 = arith.select %190, %in_2, %cst : f32
      %192 = arith.addf %out, %191 : f32
      linalg.yield %192 : f32
    } -> tensor<1x56x56x256xf32>
    %136 = "tosa.transpose"(%135, %3) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %137 = "tosa.equal"(%34, %35) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %138 = "tosa.select"(%137, %136, %1) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %139 = "tosa.transpose"(%138, %2) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %140 = "tosa.transpose"(%10, %4) : (tensor<256x3x3x256xf32>, tensor<4xi64>) -> tensor<256x3x3x256xf32>
    %141 = "tosa.transpose_conv2d"(%139, %140, %132) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %142 = "tosa.transpose"(%141, %3) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %143 = "tosa.equal"(%32, %33) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %144 = "tosa.select"(%143, %142, %1) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %145 = "tosa.transpose"(%144, %2) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %146 = "tosa.transpose_conv2d"(%145, %140, %132) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %147 = "tosa.transpose"(%146, %3) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %148 = "tosa.equal"(%30, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %149 = "tosa.select"(%148, %147, %1) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %150 = "tosa.transpose"(%149, %2) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %151 = "tosa.transpose_conv2d"(%150, %140, %132) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %152 = "tosa.transpose"(%151, %3) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %153 = "tosa.equal"(%28, %29) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %154 = "tosa.select"(%153, %152, %1) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %155 = "tosa.transpose"(%154, %2) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %156 = "tosa.transpose"(%11, %4) : (tensor<256x3x3x128xf32>, tensor<4xi64>) -> tensor<128x3x3x256xf32>
    %157 = tensor.empty() : tensor<128xf32>
    %158 = "tosa.transpose_conv2d"(%155, %156, %157) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x3x3x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %159 = tensor.empty() : tensor<1x112x112x128xf32>
    %160 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%26, %86, %27, %158 : tensor<1x112x112x128xf32>, tensor<2x2xf32>, tensor<1x56x56x128xf32>, tensor<1x56x56x128xf32>) outs(%159 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %190 = arith.cmpf oge, %in, %in_1 : f32
      %191 = arith.select %190, %in_2, %cst : f32
      %192 = arith.addf %out, %191 : f32
      linalg.yield %192 : f32
    } -> tensor<1x112x112x128xf32>
    %161 = "tosa.transpose"(%160, %3) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    %162 = "tosa.equal"(%24, %25) : (tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xi1>
    %163 = "tosa.select"(%162, %161, %1) : (tensor<1x128x112x112xi1>, tensor<1x128x112x112xf32>, tensor<f32>) -> tensor<1x128x112x112xf32>
    %164 = "tosa.transpose"(%163, %2) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    %165 = "tosa.transpose"(%12, %4) : (tensor<128x3x3x128xf32>, tensor<4xi64>) -> tensor<128x3x3x128xf32>
    %166 = "tosa.transpose_conv2d"(%164, %165, %157) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 112, 112, 128>, stride = array<i64: 1, 1>} : (tensor<1x112x112x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x112x112x128xf32>
    %167 = "tosa.transpose"(%166, %3) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    %168 = "tosa.equal"(%22, %23) : (tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xi1>
    %169 = "tosa.select"(%168, %167, %1) : (tensor<1x128x112x112xi1>, tensor<1x128x112x112xf32>, tensor<f32>) -> tensor<1x128x112x112xf32>
    %170 = "tosa.transpose"(%169, %2) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    %171 = "tosa.transpose"(%13, %4) : (tensor<128x3x3x64xf32>, tensor<4xi64>) -> tensor<64x3x3x128xf32>
    %172 = tensor.empty() : tensor<64xf32>
    %173 = "tosa.transpose_conv2d"(%170, %171, %172) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 112, 112, 64>, stride = array<i64: 1, 1>} : (tensor<1x112x112x128xf32>, tensor<64x3x3x128xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %174 = tensor.empty() : tensor<1x224x224x64xf32>
    %175 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%20, %86, %21, %173 : tensor<1x224x224x64xf32>, tensor<2x2xf32>, tensor<1x112x112x64xf32>, tensor<1x112x112x64xf32>) outs(%174 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %190 = arith.cmpf oge, %in, %in_1 : f32
      %191 = arith.select %190, %in_2, %cst : f32
      %192 = arith.addf %out, %191 : f32
      linalg.yield %192 : f32
    } -> tensor<1x224x224x64xf32>
    %176 = "tosa.transpose"(%175, %3) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    %177 = "tosa.equal"(%18, %19) : (tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xi1>
    %178 = "tosa.select"(%177, %176, %1) : (tensor<1x64x224x224xi1>, tensor<1x64x224x224xf32>, tensor<f32>) -> tensor<1x64x224x224xf32>
    %179 = "tosa.transpose"(%178, %2) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    %180 = "tosa.transpose"(%14, %4) : (tensor<64x3x3x64xf32>, tensor<4xi64>) -> tensor<64x3x3x64xf32>
    %181 = "tosa.transpose_conv2d"(%179, %180, %172) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 224, 224, 64>, stride = array<i64: 1, 1>} : (tensor<1x224x224x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x224x224x64xf32>
    %182 = "tosa.transpose"(%181, %3) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    %183 = "tosa.equal"(%16, %17) : (tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xi1>
    %184 = "tosa.select"(%183, %182, %1) : (tensor<1x64x224x224xi1>, tensor<1x64x224x224xf32>, tensor<f32>) -> tensor<1x64x224x224xf32>
    %185 = "tosa.transpose"(%184, %2) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    %186 = "tosa.transpose"(%15, %4) : (tensor<64x3x3x3xf32>, tensor<4xi64>) -> tensor<3x3x3x64xf32>
    %187 = tensor.empty() : tensor<3xf32>
    %188 = "tosa.transpose_conv2d"(%185, %186, %187) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 1, 1>} : (tensor<1x224x224x64xf32>, tensor<3x3x3x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %189 = "tosa.transpose"(%188, %3) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %189 : tensor<1x3x224x224xf32>
  }
}

