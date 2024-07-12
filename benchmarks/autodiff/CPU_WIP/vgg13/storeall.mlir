#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "VGG"} {
  ml_program.global private mutable @global78 : tensor<1x4096xf32>
  ml_program.global private mutable @global77 : tensor<1x4096xf32>
  ml_program.global private mutable @global76 : tensor<1x4096xf32>
  ml_program.global private mutable @global72 : tensor<1x4096xf32>
  ml_program.global private mutable @global71 : tensor<1x4096xf32>
  ml_program.global private mutable @global70 : tensor<1x4096xf32>
  ml_program.global private mutable @global65 : tensor<1x7x7x512xf32>
  ml_program.global private mutable @global64 : tensor<1x14x14x512xf32>
  ml_program.global private mutable @global63 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global62 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global59 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global58 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global56 : tensor<1x14x14x512xf32>
  ml_program.global private mutable @global55 : tensor<1x28x28x512xf32>
  ml_program.global private mutable @global54 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global53 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global50 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global49 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global47 : tensor<1x28x28x256xf32>
  ml_program.global private mutable @global46 : tensor<1x56x56x256xf32>
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
    ml_program.global_store @global46 = %45 : tensor<1x56x56x256xf32>
    %46 = "tosa.max_pool2d"(%45) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>) -> tensor<1x28x28x256xf32>
    ml_program.global_store @global47 = %46 : tensor<1x28x28x256xf32>
    %47 = "tosa.conv2d"(%46, %12, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x3x3x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %48 = "tosa.transpose"(%47, %5) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global49 = %48 : tensor<1x512x28x28xf32>
    %49 = "tosa.clamp"(%48) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global50 = %49 : tensor<1x512x28x28xf32>
    %50 = "tosa.transpose"(%49, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %51 = "tosa.conv2d"(%50, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %52 = "tosa.transpose"(%51, %5) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global53 = %52 : tensor<1x512x28x28xf32>
    %53 = "tosa.clamp"(%52) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global54 = %53 : tensor<1x512x28x28xf32>
    %54 = "tosa.transpose"(%53, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    ml_program.global_store @global55 = %54 : tensor<1x28x28x512xf32>
    %55 = "tosa.max_pool2d"(%54) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>) -> tensor<1x14x14x512xf32>
    ml_program.global_store @global56 = %55 : tensor<1x14x14x512xf32>
    %56 = "tosa.conv2d"(%55, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %57 = "tosa.transpose"(%56, %5) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global58 = %57 : tensor<1x512x14x14xf32>
    %58 = "tosa.clamp"(%57) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global59 = %58 : tensor<1x512x14x14xf32>
    %59 = "tosa.transpose"(%58, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %60 = "tosa.conv2d"(%59, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %61 = "tosa.transpose"(%60, %5) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global62 = %61 : tensor<1x512x14x14xf32>
    %62 = "tosa.clamp"(%61) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global63 = %62 : tensor<1x512x14x14xf32>
    %63 = "tosa.transpose"(%62, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    ml_program.global_store @global64 = %63 : tensor<1x14x14x512xf32>
    %64 = "tosa.max_pool2d"(%63) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>) -> tensor<1x7x7x512xf32>
    ml_program.global_store @global65 = %64 : tensor<1x7x7x512xf32>
    %65 = "tosa.transpose"(%64, %5) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %66 = "tosa.reshape"(%65) {new_shape = array<i64: 1, 1, 25088>} : (tensor<1x512x7x7xf32>) -> tensor<1x1x25088xf32>
    %67 = "tosa.matmul"(%66, %10) : (tensor<1x1x25088xf32>, tensor<1x25088x4096xf32>) -> tensor<1x1x4096xf32>
    %68 = "tosa.reshape"(%67) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %69 = "tosa.add"(%68, %9) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global70 = %69 : tensor<1x4096xf32>
    %70 = "tosa.clamp"(%69) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global71 = %70 : tensor<1x4096xf32>
    %71 = call @dropout(%70) : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global72 = %71 : tensor<1x4096xf32>
    %72 = "tosa.reshape"(%71) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %73 = "tosa.matmul"(%72, %8) : (tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) -> tensor<1x1x4096xf32>
    %74 = "tosa.reshape"(%73) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %75 = "tosa.add"(%74, %9) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global76 = %75 : tensor<1x4096xf32>
    %76 = "tosa.clamp"(%75) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global77 = %76 : tensor<1x4096xf32>
    %77 = call @dropout(%76) : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global78 = %77 : tensor<1x4096xf32>
    %78 = "tosa.reshape"(%77) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %79 = "tosa.matmul"(%78, %7) : (tensor<1x1x4096xf32>, tensor<1x4096x1000xf32>) -> tensor<1x1x1000xf32>
    %80 = "tosa.reshape"(%79) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %81 = "tosa.add"(%80, %6) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %81 : tensor<1x1000xf32>
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
    %32 = ml_program.global_load @global46 : tensor<1x56x56x256xf32>
    %33 = ml_program.global_load @global47 : tensor<1x28x28x256xf32>
    %34 = ml_program.global_load @global49 : tensor<1x512x28x28xf32>
    %35 = ml_program.global_load @global50 : tensor<1x512x28x28xf32>
    %36 = ml_program.global_load @global53 : tensor<1x512x28x28xf32>
    %37 = ml_program.global_load @global54 : tensor<1x512x28x28xf32>
    %38 = ml_program.global_load @global55 : tensor<1x28x28x512xf32>
    %39 = ml_program.global_load @global56 : tensor<1x14x14x512xf32>
    %40 = ml_program.global_load @global58 : tensor<1x512x14x14xf32>
    %41 = ml_program.global_load @global59 : tensor<1x512x14x14xf32>
    %42 = ml_program.global_load @global62 : tensor<1x512x14x14xf32>
    %43 = ml_program.global_load @global63 : tensor<1x512x14x14xf32>
    %44 = ml_program.global_load @global64 : tensor<1x14x14x512xf32>
    %45 = ml_program.global_load @global65 : tensor<1x7x7x512xf32>
    %46 = ml_program.global_load @global70 : tensor<1x4096xf32>
    %47 = ml_program.global_load @global71 : tensor<1x4096xf32>
    %48 = ml_program.global_load @global72 : tensor<1x4096xf32>
    %49 = ml_program.global_load @global76 : tensor<1x4096xf32>
    %50 = ml_program.global_load @global77 : tensor<1x4096xf32>
    %51 = ml_program.global_load @global78 : tensor<1x4096xf32>
    %52 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %53 = "tosa.transpose"(%5, %0) : (tensor<1x4096x1000xf32>, tensor<3xi32>) -> tensor<1x1000x4096xf32>
    %54 = "tosa.matmul"(%52, %53) : (tensor<1x1x1000xf32>, tensor<1x1000x4096xf32>) -> tensor<1x1x4096xf32>
    %55 = "tosa.reshape"(%54) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %56 = "tosa.equal"(%50, %51) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %57 = "tosa.select"(%56, %55, %1) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %58 = "tosa.equal"(%49, %50) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %59 = "tosa.select"(%58, %57, %1) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %60 = "tosa.reshape"(%59) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %61 = "tosa.transpose"(%6, %0) : (tensor<1x4096x4096xf32>, tensor<3xi32>) -> tensor<1x4096x4096xf32>
    %62 = "tosa.matmul"(%60, %61) : (tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) -> tensor<1x1x4096xf32>
    %63 = "tosa.reshape"(%62) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %64 = "tosa.equal"(%47, %48) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %65 = "tosa.select"(%64, %63, %1) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %66 = "tosa.equal"(%46, %47) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %67 = "tosa.select"(%66, %65, %1) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %68 = "tosa.reshape"(%67) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %69 = "tosa.transpose"(%7, %0) : (tensor<1x25088x4096xf32>, tensor<3xi32>) -> tensor<1x4096x25088xf32>
    %70 = "tosa.matmul"(%68, %69) : (tensor<1x1x4096xf32>, tensor<1x4096x25088xf32>) -> tensor<1x1x25088xf32>
    %71 = "tosa.reshape"(%70) {new_shape = array<i64: 1, 512, 7, 7>} : (tensor<1x1x25088xf32>) -> tensor<1x512x7x7xf32>
    %72 = "tosa.transpose"(%71, %2) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %73 = tensor.empty() : tensor<1x14x14x512xf32>
    %74 = tensor.empty() : tensor<2x2xf32>
    %75 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%44, %74, %45, %72 : tensor<1x14x14x512xf32>, tensor<2x2xf32>, tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%73 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %148 = arith.cmpf oge, %in, %in_1 : f32
      %149 = arith.select %148, %in_2, %cst : f32
      %150 = arith.addf %out, %149 : f32
      linalg.yield %150 : f32
    } -> tensor<1x14x14x512xf32>
    %76 = "tosa.transpose"(%75, %3) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %77 = "tosa.equal"(%42, %43) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %78 = "tosa.select"(%77, %76, %1) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %79 = "tosa.transpose"(%78, %2) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %80 = "tosa.transpose"(%8, %4) : (tensor<512x3x3x512xf32>, tensor<4xi64>) -> tensor<512x3x3x512xf32>
    %81 = tensor.empty() : tensor<512xf32>
    %82 = "tosa.transpose_conv2d"(%79, %80, %81) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %83 = "tosa.transpose"(%82, %3) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %84 = "tosa.equal"(%40, %41) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %85 = "tosa.select"(%84, %83, %1) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %86 = "tosa.transpose"(%85, %2) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %87 = "tosa.transpose_conv2d"(%86, %80, %81) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %88 = tensor.empty() : tensor<1x28x28x512xf32>
    %89 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%38, %74, %39, %87 : tensor<1x28x28x512xf32>, tensor<2x2xf32>, tensor<1x14x14x512xf32>, tensor<1x14x14x512xf32>) outs(%88 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %148 = arith.cmpf oge, %in, %in_1 : f32
      %149 = arith.select %148, %in_2, %cst : f32
      %150 = arith.addf %out, %149 : f32
      linalg.yield %150 : f32
    } -> tensor<1x28x28x512xf32>
    %90 = "tosa.transpose"(%89, %3) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %91 = "tosa.equal"(%36, %37) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %92 = "tosa.select"(%91, %90, %1) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %93 = "tosa.transpose"(%92, %2) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %94 = "tosa.transpose_conv2d"(%93, %80, %81) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %95 = "tosa.transpose"(%94, %3) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %96 = "tosa.equal"(%34, %35) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %97 = "tosa.select"(%96, %95, %1) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %98 = "tosa.transpose"(%97, %2) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %99 = "tosa.transpose"(%9, %4) : (tensor<512x3x3x256xf32>, tensor<4xi64>) -> tensor<256x3x3x512xf32>
    %100 = tensor.empty() : tensor<256xf32>
    %101 = "tosa.transpose_conv2d"(%98, %99, %100) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x3x3x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %102 = tensor.empty() : tensor<1x56x56x256xf32>
    %103 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%32, %74, %33, %101 : tensor<1x56x56x256xf32>, tensor<2x2xf32>, tensor<1x28x28x256xf32>, tensor<1x28x28x256xf32>) outs(%102 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %148 = arith.cmpf oge, %in, %in_1 : f32
      %149 = arith.select %148, %in_2, %cst : f32
      %150 = arith.addf %out, %149 : f32
      linalg.yield %150 : f32
    } -> tensor<1x56x56x256xf32>
    %104 = "tosa.transpose"(%103, %3) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %105 = "tosa.equal"(%30, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %106 = "tosa.select"(%105, %104, %1) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %107 = "tosa.transpose"(%106, %2) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %108 = "tosa.transpose"(%10, %4) : (tensor<256x3x3x256xf32>, tensor<4xi64>) -> tensor<256x3x3x256xf32>
    %109 = "tosa.transpose_conv2d"(%107, %108, %100) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %110 = "tosa.transpose"(%109, %3) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %111 = "tosa.equal"(%28, %29) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %112 = "tosa.select"(%111, %110, %1) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %113 = "tosa.transpose"(%112, %2) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %114 = "tosa.transpose"(%11, %4) : (tensor<256x3x3x128xf32>, tensor<4xi64>) -> tensor<128x3x3x256xf32>
    %115 = tensor.empty() : tensor<128xf32>
    %116 = "tosa.transpose_conv2d"(%113, %114, %115) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x3x3x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %117 = tensor.empty() : tensor<1x112x112x128xf32>
    %118 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%26, %74, %27, %116 : tensor<1x112x112x128xf32>, tensor<2x2xf32>, tensor<1x56x56x128xf32>, tensor<1x56x56x128xf32>) outs(%117 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %148 = arith.cmpf oge, %in, %in_1 : f32
      %149 = arith.select %148, %in_2, %cst : f32
      %150 = arith.addf %out, %149 : f32
      linalg.yield %150 : f32
    } -> tensor<1x112x112x128xf32>
    %119 = "tosa.transpose"(%118, %3) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    %120 = "tosa.equal"(%24, %25) : (tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xi1>
    %121 = "tosa.select"(%120, %119, %1) : (tensor<1x128x112x112xi1>, tensor<1x128x112x112xf32>, tensor<f32>) -> tensor<1x128x112x112xf32>
    %122 = "tosa.transpose"(%121, %2) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    %123 = "tosa.transpose"(%12, %4) : (tensor<128x3x3x128xf32>, tensor<4xi64>) -> tensor<128x3x3x128xf32>
    %124 = "tosa.transpose_conv2d"(%122, %123, %115) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 112, 112, 128>, stride = array<i64: 1, 1>} : (tensor<1x112x112x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x112x112x128xf32>
    %125 = "tosa.transpose"(%124, %3) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    %126 = "tosa.equal"(%22, %23) : (tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xi1>
    %127 = "tosa.select"(%126, %125, %1) : (tensor<1x128x112x112xi1>, tensor<1x128x112x112xf32>, tensor<f32>) -> tensor<1x128x112x112xf32>
    %128 = "tosa.transpose"(%127, %2) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    %129 = "tosa.transpose"(%13, %4) : (tensor<128x3x3x64xf32>, tensor<4xi64>) -> tensor<64x3x3x128xf32>
    %130 = tensor.empty() : tensor<64xf32>
    %131 = "tosa.transpose_conv2d"(%128, %129, %130) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 112, 112, 64>, stride = array<i64: 1, 1>} : (tensor<1x112x112x128xf32>, tensor<64x3x3x128xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %132 = tensor.empty() : tensor<1x224x224x64xf32>
    %133 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%20, %74, %21, %131 : tensor<1x224x224x64xf32>, tensor<2x2xf32>, tensor<1x112x112x64xf32>, tensor<1x112x112x64xf32>) outs(%132 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %148 = arith.cmpf oge, %in, %in_1 : f32
      %149 = arith.select %148, %in_2, %cst : f32
      %150 = arith.addf %out, %149 : f32
      linalg.yield %150 : f32
    } -> tensor<1x224x224x64xf32>
    %134 = "tosa.transpose"(%133, %3) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    %135 = "tosa.equal"(%18, %19) : (tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xi1>
    %136 = "tosa.select"(%135, %134, %1) : (tensor<1x64x224x224xi1>, tensor<1x64x224x224xf32>, tensor<f32>) -> tensor<1x64x224x224xf32>
    %137 = "tosa.transpose"(%136, %2) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    %138 = "tosa.transpose"(%14, %4) : (tensor<64x3x3x64xf32>, tensor<4xi64>) -> tensor<64x3x3x64xf32>
    %139 = "tosa.transpose_conv2d"(%137, %138, %130) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 224, 224, 64>, stride = array<i64: 1, 1>} : (tensor<1x224x224x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x224x224x64xf32>
    %140 = "tosa.transpose"(%139, %3) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    %141 = "tosa.equal"(%16, %17) : (tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xi1>
    %142 = "tosa.select"(%141, %140, %1) : (tensor<1x64x224x224xi1>, tensor<1x64x224x224xf32>, tensor<f32>) -> tensor<1x64x224x224xf32>
    %143 = "tosa.transpose"(%142, %2) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    %144 = "tosa.transpose"(%15, %4) : (tensor<64x3x3x3xf32>, tensor<4xi64>) -> tensor<3x3x3x64xf32>
    %145 = tensor.empty() : tensor<3xf32>
    %146 = "tosa.transpose_conv2d"(%143, %144, %145) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 1, 1>} : (tensor<1x224x224x64xf32>, tensor<3x3x3x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %147 = "tosa.transpose"(%146, %3) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %147 : tensor<1x3x224x224xf32>
  }
}

