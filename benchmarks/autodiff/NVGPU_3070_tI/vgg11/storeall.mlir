#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "VGG"} {
  ml_program.global private mutable @global68 : tensor<1x4096xf32>
  ml_program.global private mutable @global67 : tensor<1x4096xf32>
  ml_program.global private mutable @global66 : tensor<1x4096xf32>
  ml_program.global private mutable @global62 : tensor<1x4096xf32>
  ml_program.global private mutable @global61 : tensor<1x4096xf32>
  ml_program.global private mutable @global60 : tensor<1x4096xf32>
  ml_program.global private mutable @global55 : tensor<1x7x7x512xf32>
  ml_program.global private mutable @global54 : tensor<1x14x14x512xf32>
  ml_program.global private mutable @global53 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global52 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global49 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global48 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global46 : tensor<1x14x14x512xf32>
  ml_program.global private mutable @global45 : tensor<1x28x28x512xf32>
  ml_program.global private mutable @global44 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global43 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global40 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global39 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global37 : tensor<1x28x28x256xf32>
  ml_program.global private mutable @global36 : tensor<1x56x56x256xf32>
  ml_program.global private mutable @global35 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global34 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global31 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global30 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global28 : tensor<1x56x56x128xf32>
  ml_program.global private mutable @global27 : tensor<1x112x112x128xf32>
  ml_program.global private mutable @global26 : tensor<1x128x112x112xf32>
  ml_program.global private mutable @global25 : tensor<1x128x112x112xf32>
  ml_program.global private mutable @global23 : tensor<1x112x112x64xf32>
  ml_program.global private mutable @global22 : tensor<1x224x224x64xf32>
  ml_program.global private mutable @global21 : tensor<1x64x224x224xf32>
  ml_program.global private mutable @global20 : tensor<1x64x224x224xf32>
  ml_program.global private mutable @global17 : tensor<64x3x3x3xf32>
  ml_program.global private mutable @global16 : tensor<128x3x3x64xf32>
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
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x64xf32>} : () -> tensor<128x3x3x64xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x3xf32>} : () -> tensor<64x3x3x3xf32>
    ml_program.global_store @global8 = %7 : tensor<1x4096x1000xf32>
    ml_program.global_store @global9 = %8 : tensor<1x4096x4096xf32>
    ml_program.global_store @global11 = %10 : tensor<1x25088x4096xf32>
    ml_program.global_store @global12 = %11 : tensor<512x3x3x512xf32>
    ml_program.global_store @global13 = %12 : tensor<512x3x3x256xf32>
    ml_program.global_store @global14 = %13 : tensor<256x3x3x256xf32>
    ml_program.global_store @global15 = %14 : tensor<256x3x3x128xf32>
    ml_program.global_store @global16 = %15 : tensor<128x3x3x64xf32>
    ml_program.global_store @global17 = %16 : tensor<64x3x3x3xf32>
    %17 = "tosa.transpose"(%arg0, %4) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %18 = "tosa.conv2d"(%17, %16, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x224x224x3xf32>, tensor<64x3x3x3xf32>, tensor<64xf32>) -> tensor<1x224x224x64xf32>
    %19 = "tosa.transpose"(%18, %5) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    ml_program.global_store @global20 = %19 : tensor<1x64x224x224xf32>
    %20 = "tosa.clamp"(%19) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    ml_program.global_store @global21 = %20 : tensor<1x64x224x224xf32>
    %21 = "tosa.transpose"(%20, %4) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    ml_program.global_store @global22 = %21 : tensor<1x224x224x64xf32>
    %22 = "tosa.max_pool2d"(%21) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x224x224x64xf32>) -> tensor<1x112x112x64xf32>
    ml_program.global_store @global23 = %22 : tensor<1x112x112x64xf32>
    %23 = "tosa.conv2d"(%22, %15, %2) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x112x112x64xf32>, tensor<128x3x3x64xf32>, tensor<128xf32>) -> tensor<1x112x112x128xf32>
    %24 = "tosa.transpose"(%23, %5) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    ml_program.global_store @global25 = %24 : tensor<1x128x112x112xf32>
    %25 = "tosa.clamp"(%24) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    ml_program.global_store @global26 = %25 : tensor<1x128x112x112xf32>
    %26 = "tosa.transpose"(%25, %4) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    ml_program.global_store @global27 = %26 : tensor<1x112x112x128xf32>
    %27 = "tosa.max_pool2d"(%26) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x128xf32>) -> tensor<1x56x56x128xf32>
    ml_program.global_store @global28 = %27 : tensor<1x56x56x128xf32>
    %28 = "tosa.conv2d"(%27, %14, %1) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x3x3x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %29 = "tosa.transpose"(%28, %5) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global30 = %29 : tensor<1x256x56x56xf32>
    %30 = "tosa.clamp"(%29) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global31 = %30 : tensor<1x256x56x56xf32>
    %31 = "tosa.transpose"(%30, %4) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %32 = "tosa.conv2d"(%31, %13, %1) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %33 = "tosa.transpose"(%32, %5) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global34 = %33 : tensor<1x256x56x56xf32>
    %34 = "tosa.clamp"(%33) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global35 = %34 : tensor<1x256x56x56xf32>
    %35 = "tosa.transpose"(%34, %4) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    ml_program.global_store @global36 = %35 : tensor<1x56x56x256xf32>
    %36 = "tosa.max_pool2d"(%35) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>) -> tensor<1x28x28x256xf32>
    ml_program.global_store @global37 = %36 : tensor<1x28x28x256xf32>
    %37 = "tosa.conv2d"(%36, %12, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x3x3x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %38 = "tosa.transpose"(%37, %5) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global39 = %38 : tensor<1x512x28x28xf32>
    %39 = "tosa.clamp"(%38) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global40 = %39 : tensor<1x512x28x28xf32>
    %40 = "tosa.transpose"(%39, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %41 = "tosa.conv2d"(%40, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %42 = "tosa.transpose"(%41, %5) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global43 = %42 : tensor<1x512x28x28xf32>
    %43 = "tosa.clamp"(%42) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global44 = %43 : tensor<1x512x28x28xf32>
    %44 = "tosa.transpose"(%43, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    ml_program.global_store @global45 = %44 : tensor<1x28x28x512xf32>
    %45 = "tosa.max_pool2d"(%44) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>) -> tensor<1x14x14x512xf32>
    ml_program.global_store @global46 = %45 : tensor<1x14x14x512xf32>
    %46 = "tosa.conv2d"(%45, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %47 = "tosa.transpose"(%46, %5) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global48 = %47 : tensor<1x512x14x14xf32>
    %48 = "tosa.clamp"(%47) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global49 = %48 : tensor<1x512x14x14xf32>
    %49 = "tosa.transpose"(%48, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %50 = "tosa.conv2d"(%49, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %51 = "tosa.transpose"(%50, %5) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global52 = %51 : tensor<1x512x14x14xf32>
    %52 = "tosa.clamp"(%51) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global53 = %52 : tensor<1x512x14x14xf32>
    %53 = "tosa.transpose"(%52, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    ml_program.global_store @global54 = %53 : tensor<1x14x14x512xf32>
    %54 = "tosa.max_pool2d"(%53) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>) -> tensor<1x7x7x512xf32>
    ml_program.global_store @global55 = %54 : tensor<1x7x7x512xf32>
    %55 = "tosa.transpose"(%54, %5) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %56 = "tosa.reshape"(%55) {new_shape = array<i64: 1, 1, 25088>} : (tensor<1x512x7x7xf32>) -> tensor<1x1x25088xf32>
    %57 = "tosa.matmul"(%56, %10) : (tensor<1x1x25088xf32>, tensor<1x25088x4096xf32>) -> tensor<1x1x4096xf32>
    %58 = "tosa.reshape"(%57) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %59 = "tosa.add"(%58, %9) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global60 = %59 : tensor<1x4096xf32>
    %60 = "tosa.clamp"(%59) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global61 = %60 : tensor<1x4096xf32>
    %61 = call @dropout(%60) : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global62 = %61 : tensor<1x4096xf32>
    %62 = "tosa.reshape"(%61) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %63 = "tosa.matmul"(%62, %8) : (tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) -> tensor<1x1x4096xf32>
    %64 = "tosa.reshape"(%63) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %65 = "tosa.add"(%64, %9) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global66 = %65 : tensor<1x4096xf32>
    %66 = "tosa.clamp"(%65) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global67 = %66 : tensor<1x4096xf32>
    %67 = call @dropout(%66) : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global68 = %67 : tensor<1x4096xf32>
    %68 = "tosa.reshape"(%67) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %69 = "tosa.matmul"(%68, %7) : (tensor<1x1x4096xf32>, tensor<1x4096x1000xf32>) -> tensor<1x1x1000xf32>
    %70 = "tosa.reshape"(%69) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %71 = "tosa.add"(%70, %6) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %71 : tensor<1x1000xf32>
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
    %12 = ml_program.global_load @global16 : tensor<128x3x3x64xf32>
    %13 = ml_program.global_load @global17 : tensor<64x3x3x3xf32>
    %14 = ml_program.global_load @global20 : tensor<1x64x224x224xf32>
    %15 = ml_program.global_load @global21 : tensor<1x64x224x224xf32>
    %16 = ml_program.global_load @global22 : tensor<1x224x224x64xf32>
    %17 = ml_program.global_load @global23 : tensor<1x112x112x64xf32>
    %18 = ml_program.global_load @global25 : tensor<1x128x112x112xf32>
    %19 = ml_program.global_load @global26 : tensor<1x128x112x112xf32>
    %20 = ml_program.global_load @global27 : tensor<1x112x112x128xf32>
    %21 = ml_program.global_load @global28 : tensor<1x56x56x128xf32>
    %22 = ml_program.global_load @global30 : tensor<1x256x56x56xf32>
    %23 = ml_program.global_load @global31 : tensor<1x256x56x56xf32>
    %24 = ml_program.global_load @global34 : tensor<1x256x56x56xf32>
    %25 = ml_program.global_load @global35 : tensor<1x256x56x56xf32>
    %26 = ml_program.global_load @global36 : tensor<1x56x56x256xf32>
    %27 = ml_program.global_load @global37 : tensor<1x28x28x256xf32>
    %28 = ml_program.global_load @global39 : tensor<1x512x28x28xf32>
    %29 = ml_program.global_load @global40 : tensor<1x512x28x28xf32>
    %30 = ml_program.global_load @global43 : tensor<1x512x28x28xf32>
    %31 = ml_program.global_load @global44 : tensor<1x512x28x28xf32>
    %32 = ml_program.global_load @global45 : tensor<1x28x28x512xf32>
    %33 = ml_program.global_load @global46 : tensor<1x14x14x512xf32>
    %34 = ml_program.global_load @global48 : tensor<1x512x14x14xf32>
    %35 = ml_program.global_load @global49 : tensor<1x512x14x14xf32>
    %36 = ml_program.global_load @global52 : tensor<1x512x14x14xf32>
    %37 = ml_program.global_load @global53 : tensor<1x512x14x14xf32>
    %38 = ml_program.global_load @global54 : tensor<1x14x14x512xf32>
    %39 = ml_program.global_load @global55 : tensor<1x7x7x512xf32>
    %40 = ml_program.global_load @global60 : tensor<1x4096xf32>
    %41 = ml_program.global_load @global61 : tensor<1x4096xf32>
    %42 = ml_program.global_load @global62 : tensor<1x4096xf32>
    %43 = ml_program.global_load @global66 : tensor<1x4096xf32>
    %44 = ml_program.global_load @global67 : tensor<1x4096xf32>
    %45 = ml_program.global_load @global68 : tensor<1x4096xf32>
    %46 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %47 = "tosa.transpose"(%5, %0) : (tensor<1x4096x1000xf32>, tensor<3xi32>) -> tensor<1x1000x4096xf32>
    %48 = "tosa.matmul"(%46, %47) : (tensor<1x1x1000xf32>, tensor<1x1000x4096xf32>) -> tensor<1x1x4096xf32>
    %49 = "tosa.reshape"(%48) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %50 = "tosa.equal"(%44, %45) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %51 = "tosa.select"(%50, %49, %1) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %52 = "tosa.equal"(%43, %44) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %53 = "tosa.select"(%52, %51, %1) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %54 = "tosa.reshape"(%53) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %55 = "tosa.transpose"(%6, %0) : (tensor<1x4096x4096xf32>, tensor<3xi32>) -> tensor<1x4096x4096xf32>
    %56 = "tosa.matmul"(%54, %55) : (tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) -> tensor<1x1x4096xf32>
    %57 = "tosa.reshape"(%56) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %58 = "tosa.equal"(%41, %42) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %59 = "tosa.select"(%58, %57, %1) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %60 = "tosa.equal"(%40, %41) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %61 = "tosa.select"(%60, %59, %1) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %62 = "tosa.reshape"(%61) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %63 = "tosa.transpose"(%7, %0) : (tensor<1x25088x4096xf32>, tensor<3xi32>) -> tensor<1x4096x25088xf32>
    %64 = "tosa.matmul"(%62, %63) : (tensor<1x1x4096xf32>, tensor<1x4096x25088xf32>) -> tensor<1x1x25088xf32>
    %65 = "tosa.reshape"(%64) {new_shape = array<i64: 1, 512, 7, 7>} : (tensor<1x1x25088xf32>) -> tensor<1x512x7x7xf32>
    %66 = "tosa.transpose"(%65, %2) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %67 = tensor.empty() : tensor<1x14x14x512xf32>
    %68 = tensor.empty() : tensor<2x2xf32>
    %69 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%38, %68, %39, %66 : tensor<1x14x14x512xf32>, tensor<2x2xf32>, tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%67 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %130 = arith.cmpf oge, %in, %in_1 : f32
      %131 = arith.select %130, %in_2, %cst : f32
      %132 = arith.addf %out, %131 : f32
      linalg.yield %132 : f32
    } -> tensor<1x14x14x512xf32>
    %70 = "tosa.transpose"(%69, %3) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %71 = "tosa.equal"(%36, %37) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %72 = "tosa.select"(%71, %70, %1) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %73 = "tosa.transpose"(%72, %2) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %74 = "tosa.transpose"(%8, %4) : (tensor<512x3x3x512xf32>, tensor<4xi64>) -> tensor<512x3x3x512xf32>
    %75 = tensor.empty() : tensor<512xf32>
    %76 = "tosa.transpose_conv2d"(%73, %74, %75) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %77 = "tosa.transpose"(%76, %3) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %78 = "tosa.equal"(%34, %35) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %79 = "tosa.select"(%78, %77, %1) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %80 = "tosa.transpose"(%79, %2) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %81 = "tosa.transpose_conv2d"(%80, %74, %75) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %82 = tensor.empty() : tensor<1x28x28x512xf32>
    %83 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%32, %68, %33, %81 : tensor<1x28x28x512xf32>, tensor<2x2xf32>, tensor<1x14x14x512xf32>, tensor<1x14x14x512xf32>) outs(%82 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %130 = arith.cmpf oge, %in, %in_1 : f32
      %131 = arith.select %130, %in_2, %cst : f32
      %132 = arith.addf %out, %131 : f32
      linalg.yield %132 : f32
    } -> tensor<1x28x28x512xf32>
    %84 = "tosa.transpose"(%83, %3) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %85 = "tosa.equal"(%30, %31) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %86 = "tosa.select"(%85, %84, %1) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %87 = "tosa.transpose"(%86, %2) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %88 = "tosa.transpose_conv2d"(%87, %74, %75) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %89 = "tosa.transpose"(%88, %3) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %90 = "tosa.equal"(%28, %29) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %91 = "tosa.select"(%90, %89, %1) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %92 = "tosa.transpose"(%91, %2) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %93 = "tosa.transpose"(%9, %4) : (tensor<512x3x3x256xf32>, tensor<4xi64>) -> tensor<256x3x3x512xf32>
    %94 = tensor.empty() : tensor<256xf32>
    %95 = "tosa.transpose_conv2d"(%92, %93, %94) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x3x3x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %96 = tensor.empty() : tensor<1x56x56x256xf32>
    %97 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%26, %68, %27, %95 : tensor<1x56x56x256xf32>, tensor<2x2xf32>, tensor<1x28x28x256xf32>, tensor<1x28x28x256xf32>) outs(%96 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %130 = arith.cmpf oge, %in, %in_1 : f32
      %131 = arith.select %130, %in_2, %cst : f32
      %132 = arith.addf %out, %131 : f32
      linalg.yield %132 : f32
    } -> tensor<1x56x56x256xf32>
    %98 = "tosa.transpose"(%97, %3) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %99 = "tosa.equal"(%24, %25) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %100 = "tosa.select"(%99, %98, %1) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %101 = "tosa.transpose"(%100, %2) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %102 = "tosa.transpose"(%10, %4) : (tensor<256x3x3x256xf32>, tensor<4xi64>) -> tensor<256x3x3x256xf32>
    %103 = "tosa.transpose_conv2d"(%101, %102, %94) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %104 = "tosa.transpose"(%103, %3) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %105 = "tosa.equal"(%22, %23) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %106 = "tosa.select"(%105, %104, %1) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %107 = "tosa.transpose"(%106, %2) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %108 = "tosa.transpose"(%11, %4) : (tensor<256x3x3x128xf32>, tensor<4xi64>) -> tensor<128x3x3x256xf32>
    %109 = tensor.empty() : tensor<128xf32>
    %110 = "tosa.transpose_conv2d"(%107, %108, %109) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x3x3x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %111 = tensor.empty() : tensor<1x112x112x128xf32>
    %112 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%20, %68, %21, %110 : tensor<1x112x112x128xf32>, tensor<2x2xf32>, tensor<1x56x56x128xf32>, tensor<1x56x56x128xf32>) outs(%111 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %130 = arith.cmpf oge, %in, %in_1 : f32
      %131 = arith.select %130, %in_2, %cst : f32
      %132 = arith.addf %out, %131 : f32
      linalg.yield %132 : f32
    } -> tensor<1x112x112x128xf32>
    %113 = "tosa.transpose"(%112, %3) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    %114 = "tosa.equal"(%18, %19) : (tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xi1>
    %115 = "tosa.select"(%114, %113, %1) : (tensor<1x128x112x112xi1>, tensor<1x128x112x112xf32>, tensor<f32>) -> tensor<1x128x112x112xf32>
    %116 = "tosa.transpose"(%115, %2) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    %117 = "tosa.transpose"(%12, %4) : (tensor<128x3x3x64xf32>, tensor<4xi64>) -> tensor<64x3x3x128xf32>
    %118 = tensor.empty() : tensor<64xf32>
    %119 = "tosa.transpose_conv2d"(%116, %117, %118) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 112, 112, 64>, stride = array<i64: 1, 1>} : (tensor<1x112x112x128xf32>, tensor<64x3x3x128xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %120 = tensor.empty() : tensor<1x224x224x64xf32>
    %121 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%16, %68, %17, %119 : tensor<1x224x224x64xf32>, tensor<2x2xf32>, tensor<1x112x112x64xf32>, tensor<1x112x112x64xf32>) outs(%120 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %130 = arith.cmpf oge, %in, %in_1 : f32
      %131 = arith.select %130, %in_2, %cst : f32
      %132 = arith.addf %out, %131 : f32
      linalg.yield %132 : f32
    } -> tensor<1x224x224x64xf32>
    %122 = "tosa.transpose"(%121, %3) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    %123 = "tosa.equal"(%14, %15) : (tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xi1>
    %124 = "tosa.select"(%123, %122, %1) : (tensor<1x64x224x224xi1>, tensor<1x64x224x224xf32>, tensor<f32>) -> tensor<1x64x224x224xf32>
    %125 = "tosa.transpose"(%124, %2) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    %126 = "tosa.transpose"(%13, %4) : (tensor<64x3x3x3xf32>, tensor<4xi64>) -> tensor<3x3x3x64xf32>
    %127 = tensor.empty() : tensor<3xf32>
    %128 = "tosa.transpose_conv2d"(%125, %126, %127) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 1, 1>} : (tensor<1x224x224x64xf32>, tensor<3x3x3x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %129 = "tosa.transpose"(%128, %3) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %129 : tensor<1x3x224x224xf32>
  }
}

