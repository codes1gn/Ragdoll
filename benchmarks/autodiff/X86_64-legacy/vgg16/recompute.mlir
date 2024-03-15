#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "VGG"} {
  ml_program.global private mutable @global0 : tensor<1x3x224x224xf32>

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
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x3xf32>} : () -> tensor<64x3x3x3xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x64xf32>} : () -> tensor<64x3x3x64xf32>
    %2 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x64xf32>} : () -> tensor<128x3x3x64xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x128xf32>} : () -> tensor<128x3x3x128xf32>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x128xf32>} : () -> tensor<256x3x3x128xf32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x256xf32>} : () -> tensor<512x3x3x256xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x512xf32>} : () -> tensor<512x3x3x512xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x25088x4096xf32>} : () -> tensor<1x25088x4096xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096xf32>} : () -> tensor<1x4096xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096x4096xf32>} : () -> tensor<1x4096x4096xf32>
    %11 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096x1000xf32>} : () -> tensor<1x4096x1000xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000xf32>} : () -> tensor<1x1000xf32>
    %13 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %14 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64xf32>} : () -> tensor<64xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128xf32>} : () -> tensor<128xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256xf32>} : () -> tensor<256xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512xf32>} : () -> tensor<512xf32>
    ml_program.global_store @global0 = %arg0 : tensor<1x3x224x224xf32>
    %19 = "tosa.transpose"(%arg0, %14) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %20 = "tosa.conv2d"(%19, %0, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x224x224x3xf32>, tensor<64x3x3x3xf32>, tensor<64xf32>) -> tensor<1x224x224x64xf32>
    %21 = "tosa.transpose"(%20, %13) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    %22 = "tosa.clamp"(%21) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    %23 = "tosa.transpose"(%22, %14) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    %24 = "tosa.conv2d"(%23, %1, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x224x224x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x224x224x64xf32>
    %25 = "tosa.transpose"(%24, %13) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    %26 = "tosa.clamp"(%25) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    %27 = "tosa.transpose"(%26, %14) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    %28 = "tosa.max_pool2d"(%27) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x224x224x64xf32>) -> tensor<1x112x112x64xf32>
    %29 = "tosa.conv2d"(%28, %2, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x112x112x64xf32>, tensor<128x3x3x64xf32>, tensor<128xf32>) -> tensor<1x112x112x128xf32>
    %30 = "tosa.transpose"(%29, %13) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    %31 = "tosa.clamp"(%30) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    %32 = "tosa.transpose"(%31, %14) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    %33 = "tosa.conv2d"(%32, %3, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x112x112x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x112x112x128xf32>
    %34 = "tosa.transpose"(%33, %13) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    %35 = "tosa.clamp"(%34) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    %36 = "tosa.transpose"(%35, %14) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    %37 = "tosa.max_pool2d"(%36) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x128xf32>) -> tensor<1x56x56x128xf32>
    %38 = "tosa.conv2d"(%37, %4, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x3x3x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %39 = "tosa.transpose"(%38, %13) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %40 = "tosa.clamp"(%39) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %41 = "tosa.transpose"(%40, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %42 = "tosa.conv2d"(%41, %5, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %43 = "tosa.transpose"(%42, %13) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %44 = "tosa.clamp"(%43) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %45 = "tosa.transpose"(%44, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %46 = "tosa.conv2d"(%45, %5, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %47 = "tosa.transpose"(%46, %13) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %48 = "tosa.clamp"(%47) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %49 = "tosa.transpose"(%48, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %50 = "tosa.max_pool2d"(%49) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>) -> tensor<1x28x28x256xf32>
    %51 = "tosa.conv2d"(%50, %6, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x3x3x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %52 = "tosa.transpose"(%51, %13) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %53 = "tosa.clamp"(%52) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %54 = "tosa.transpose"(%53, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %55 = "tosa.conv2d"(%54, %7, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %56 = "tosa.transpose"(%55, %13) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %57 = "tosa.clamp"(%56) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %58 = "tosa.transpose"(%57, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %59 = "tosa.conv2d"(%58, %7, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %60 = "tosa.transpose"(%59, %13) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %61 = "tosa.clamp"(%60) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %62 = "tosa.transpose"(%61, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %63 = "tosa.max_pool2d"(%62) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>) -> tensor<1x14x14x512xf32>
    %64 = "tosa.conv2d"(%63, %7, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %65 = "tosa.transpose"(%64, %13) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %66 = "tosa.clamp"(%65) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %67 = "tosa.transpose"(%66, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %68 = "tosa.conv2d"(%67, %7, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %69 = "tosa.transpose"(%68, %13) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %70 = "tosa.clamp"(%69) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %71 = "tosa.transpose"(%70, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %72 = "tosa.conv2d"(%71, %7, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %73 = "tosa.transpose"(%72, %13) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %74 = "tosa.clamp"(%73) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %75 = "tosa.transpose"(%74, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %76 = "tosa.max_pool2d"(%75) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>) -> tensor<1x7x7x512xf32>
    %77 = "tosa.transpose"(%76, %13) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %78 = "tosa.reshape"(%77) {new_shape = array<i64: 1, 1, 25088>} : (tensor<1x512x7x7xf32>) -> tensor<1x1x25088xf32>
    %79 = "tosa.matmul"(%78, %8) : (tensor<1x1x25088xf32>, tensor<1x25088x4096xf32>) -> tensor<1x1x4096xf32>
    %80 = "tosa.reshape"(%79) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %81 = "tosa.add"(%80, %9) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %82 = "tosa.clamp"(%81) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    // %83 = nabla.experimental.dropout %82 {p = 5.000000e-01 : f64} : tensor<1x4096xf32>
    %83 = call @dropout(%82) : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %84 = "tosa.reshape"(%83) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %85 = "tosa.matmul"(%84, %10) : (tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) -> tensor<1x1x4096xf32>
    %86 = "tosa.reshape"(%85) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %87 = "tosa.add"(%86, %9) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %88 = "tosa.clamp"(%87) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    // %89 = nabla.experimental.dropout %88 {p = 5.000000e-01 : f64} : tensor<1x4096xf32>
    %89 = call @dropout(%88) : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %90 = "tosa.reshape"(%89) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %91 = "tosa.matmul"(%90, %11) : (tensor<1x1x4096xf32>, tensor<1x4096x1000xf32>) -> tensor<1x1x1000xf32>
    %92 = "tosa.reshape"(%91) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %93 = "tosa.add"(%92, %12) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %93 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x3xf32>} : () -> tensor<64x3x3x3xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x64xf32>} : () -> tensor<128x3x3x64xf32>
    %2 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x128xf32>} : () -> tensor<256x3x3x128xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x256xf32>} : () -> tensor<512x3x3x256xf32>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x25088x4096xf32>} : () -> tensor<1x25088x4096xf32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096xf32>} : () -> tensor<1x4096xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64xf32>} : () -> tensor<64xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128xf32>} : () -> tensor<128xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256xf32>} : () -> tensor<256xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512xf32>} : () -> tensor<512xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000x4096xf32>} : () -> tensor<1x1000x4096xf32>
    %11 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096x4096xf32>} : () -> tensor<1x4096x4096xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096x25088xf32>} : () -> tensor<1x4096x25088xf32>
    %14 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %cst = arith.constant 0.000000e+00 : f32
    %15 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x512xf32>} : () -> tensor<512x3x3x512xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x512xf32>} : () -> tensor<256x3x3x512xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x256xf32>} : () -> tensor<128x3x3x256xf32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x128xf32>} : () -> tensor<128x3x3x128xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x128xf32>} : () -> tensor<64x3x3x128xf32>
    %22 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x64xf32>} : () -> tensor<64x3x3x64xf32>
    %23 = "tosa.const"() {value = dense<7.777000e-02> : tensor<3x3x3x64xf32>} : () -> tensor<3x3x3x64xf32>
    %24 = ml_program.global_load @global0 : tensor<1x3x224x224xf32>
    %25 = "tosa.transpose"(%24, %14) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %26 = "tosa.conv2d"(%25, %0, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x224x224x3xf32>, tensor<64x3x3x3xf32>, tensor<64xf32>) -> tensor<1x224x224x64xf32>
    %27 = "tosa.transpose"(%26, %15) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    %28 = "tosa.clamp"(%27) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    %29 = "tosa.transpose"(%28, %14) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    %30 = "tosa.conv2d"(%29, %22, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x224x224x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x224x224x64xf32>
    %31 = "tosa.transpose"(%30, %15) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    %32 = "tosa.clamp"(%31) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    %33 = "tosa.transpose"(%32, %14) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    %34 = "tosa.max_pool2d"(%33) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x224x224x64xf32>) -> tensor<1x112x112x64xf32>
    %35 = "tosa.conv2d"(%34, %1, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x112x112x64xf32>, tensor<128x3x3x64xf32>, tensor<128xf32>) -> tensor<1x112x112x128xf32>
    %36 = "tosa.transpose"(%35, %15) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    %37 = "tosa.clamp"(%36) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    %38 = "tosa.transpose"(%37, %14) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    %39 = "tosa.conv2d"(%38, %20, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x112x112x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x112x112x128xf32>
    %40 = "tosa.transpose"(%39, %15) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    %41 = "tosa.clamp"(%40) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    %42 = "tosa.transpose"(%41, %14) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    %43 = "tosa.max_pool2d"(%42) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x128xf32>) -> tensor<1x56x56x128xf32>
    %44 = "tosa.conv2d"(%43, %2, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x3x3x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %45 = "tosa.transpose"(%44, %15) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %46 = "tosa.clamp"(%45) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %47 = "tosa.transpose"(%46, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %48 = "tosa.conv2d"(%47, %18, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %49 = "tosa.transpose"(%48, %15) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %50 = "tosa.clamp"(%49) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %51 = "tosa.transpose"(%50, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %52 = "tosa.conv2d"(%51, %18, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %53 = "tosa.transpose"(%52, %15) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %54 = "tosa.clamp"(%53) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %55 = "tosa.transpose"(%54, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %56 = "tosa.max_pool2d"(%55) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>) -> tensor<1x28x28x256xf32>
    %57 = "tosa.conv2d"(%56, %3, %9) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x3x3x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %58 = "tosa.transpose"(%57, %15) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %59 = "tosa.clamp"(%58) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %60 = "tosa.transpose"(%59, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %61 = "tosa.conv2d"(%60, %16, %9) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %62 = "tosa.transpose"(%61, %15) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %63 = "tosa.clamp"(%62) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %64 = "tosa.transpose"(%63, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %65 = "tosa.conv2d"(%64, %16, %9) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %66 = "tosa.transpose"(%65, %15) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %67 = "tosa.clamp"(%66) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %68 = "tosa.transpose"(%67, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %69 = "tosa.max_pool2d"(%68) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>) -> tensor<1x14x14x512xf32>
    %70 = "tosa.conv2d"(%69, %16, %9) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %71 = "tosa.transpose"(%70, %15) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %72 = "tosa.clamp"(%71) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %73 = "tosa.transpose"(%72, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %74 = "tosa.conv2d"(%73, %16, %9) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %75 = "tosa.transpose"(%74, %15) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %76 = "tosa.clamp"(%75) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %77 = "tosa.transpose"(%76, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %78 = "tosa.conv2d"(%77, %16, %9) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %79 = "tosa.transpose"(%78, %15) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %80 = "tosa.clamp"(%79) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %81 = "tosa.transpose"(%80, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %82 = "tosa.max_pool2d"(%81) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>) -> tensor<1x7x7x512xf32>
    %83 = "tosa.transpose"(%82, %15) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %84 = "tosa.reshape"(%83) {new_shape = array<i64: 1, 1, 25088>} : (tensor<1x512x7x7xf32>) -> tensor<1x1x25088xf32>
    %85 = "tosa.matmul"(%84, %4) : (tensor<1x1x25088xf32>, tensor<1x25088x4096xf32>) -> tensor<1x1x4096xf32>
    %86 = "tosa.reshape"(%85) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %87 = "tosa.add"(%86, %5) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %88 = "tosa.clamp"(%87) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    // %89 = nabla.experimental.dropout %88 {p = 5.000000e-01 : f64} : tensor<1x4096xf32>
    %89 = call @dropout(%88) : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %90 = "tosa.reshape"(%89) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %91 = "tosa.matmul"(%90, %12) : (tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) -> tensor<1x1x4096xf32>
    %92 = "tosa.reshape"(%91) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %93 = "tosa.add"(%92, %5) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %94 = "tosa.clamp"(%93) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    // %95 = nabla.experimental.dropout %94 {p = 5.000000e-01 : f64} : tensor<1x4096xf32>
    %95 = call @dropout(%94) : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %96 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %97 = "tosa.matmul"(%96, %10) : (tensor<1x1x1000xf32>, tensor<1x1000x4096xf32>) -> tensor<1x1x4096xf32>
    %98 = "tosa.reshape"(%97) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %99 = "tosa.equal"(%94, %95) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %100 = "tosa.select"(%99, %98, %11) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %101 = "tosa.equal"(%93, %94) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %102 = "tosa.select"(%101, %100, %11) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %103 = "tosa.reshape"(%102) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %104 = "tosa.matmul"(%103, %12) : (tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) -> tensor<1x1x4096xf32>
    %105 = "tosa.reshape"(%104) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %106 = "tosa.equal"(%88, %89) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %107 = "tosa.select"(%106, %105, %11) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %108 = "tosa.equal"(%87, %88) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %109 = "tosa.select"(%108, %107, %11) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %110 = "tosa.reshape"(%109) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %111 = "tosa.matmul"(%110, %13) : (tensor<1x1x4096xf32>, tensor<1x4096x25088xf32>) -> tensor<1x1x25088xf32>
    %112 = "tosa.reshape"(%111) {new_shape = array<i64: 1, 512, 7, 7>} : (tensor<1x1x25088xf32>) -> tensor<1x512x7x7xf32>
    %113 = "tosa.transpose"(%112, %14) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %114 = tensor.empty() : tensor<1x14x14x512xf32>
    %115 = tensor.empty() : tensor<2x2xf32>
    %116 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%81, %115, %82, %113 : tensor<1x14x14x512xf32>, tensor<2x2xf32>, tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%114 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %196 = arith.cmpf oge, %in, %in_1 : f32
      %197 = arith.select %196, %in_2, %cst : f32
      %198 = arith.addf %out, %197 : f32
      linalg.yield %198 : f32
    } -> tensor<1x14x14x512xf32>
    %117 = "tosa.transpose"(%116, %15) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %118 = "tosa.equal"(%79, %80) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %119 = "tosa.select"(%118, %117, %11) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %120 = "tosa.transpose"(%119, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %121 = tensor.empty() : tensor<512xf32>
    %122 = "tosa.transpose_conv2d"(%120, %16, %121) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %123 = "tosa.transpose"(%122, %15) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %124 = "tosa.equal"(%75, %76) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %125 = "tosa.select"(%124, %123, %11) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %126 = "tosa.transpose"(%125, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %127 = "tosa.transpose_conv2d"(%126, %16, %121) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %128 = "tosa.transpose"(%127, %15) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %129 = "tosa.equal"(%71, %72) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %130 = "tosa.select"(%129, %128, %11) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %131 = "tosa.transpose"(%130, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %132 = "tosa.transpose_conv2d"(%131, %16, %121) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %133 = tensor.empty() : tensor<1x28x28x512xf32>
    %134 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%68, %115, %69, %132 : tensor<1x28x28x512xf32>, tensor<2x2xf32>, tensor<1x14x14x512xf32>, tensor<1x14x14x512xf32>) outs(%133 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %196 = arith.cmpf oge, %in, %in_1 : f32
      %197 = arith.select %196, %in_2, %cst : f32
      %198 = arith.addf %out, %197 : f32
      linalg.yield %198 : f32
    } -> tensor<1x28x28x512xf32>
    %135 = "tosa.transpose"(%134, %15) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %136 = "tosa.equal"(%66, %67) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %137 = "tosa.select"(%136, %135, %11) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %138 = "tosa.transpose"(%137, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %139 = "tosa.transpose_conv2d"(%138, %16, %121) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %140 = "tosa.transpose"(%139, %15) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %141 = "tosa.equal"(%62, %63) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %142 = "tosa.select"(%141, %140, %11) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %143 = "tosa.transpose"(%142, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %144 = "tosa.transpose_conv2d"(%143, %16, %121) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %145 = "tosa.transpose"(%144, %15) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %146 = "tosa.equal"(%58, %59) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %147 = "tosa.select"(%146, %145, %11) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %148 = "tosa.transpose"(%147, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %149 = tensor.empty() : tensor<256xf32>
    %150 = "tosa.transpose_conv2d"(%148, %17, %149) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x3x3x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %151 = tensor.empty() : tensor<1x56x56x256xf32>
    %152 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%55, %115, %56, %150 : tensor<1x56x56x256xf32>, tensor<2x2xf32>, tensor<1x28x28x256xf32>, tensor<1x28x28x256xf32>) outs(%151 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %196 = arith.cmpf oge, %in, %in_1 : f32
      %197 = arith.select %196, %in_2, %cst : f32
      %198 = arith.addf %out, %197 : f32
      linalg.yield %198 : f32
    } -> tensor<1x56x56x256xf32>
    %153 = "tosa.transpose"(%152, %15) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %154 = "tosa.equal"(%53, %54) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %155 = "tosa.select"(%154, %153, %11) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %156 = "tosa.transpose"(%155, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %157 = "tosa.transpose_conv2d"(%156, %18, %149) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %158 = "tosa.transpose"(%157, %15) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %159 = "tosa.equal"(%49, %50) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %160 = "tosa.select"(%159, %158, %11) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %161 = "tosa.transpose"(%160, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %162 = "tosa.transpose_conv2d"(%161, %18, %149) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %163 = "tosa.transpose"(%162, %15) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %164 = "tosa.equal"(%45, %46) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %165 = "tosa.select"(%164, %163, %11) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %166 = "tosa.transpose"(%165, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %167 = tensor.empty() : tensor<128xf32>
    %168 = "tosa.transpose_conv2d"(%166, %19, %167) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x3x3x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %169 = tensor.empty() : tensor<1x112x112x128xf32>
    %170 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%42, %115, %43, %168 : tensor<1x112x112x128xf32>, tensor<2x2xf32>, tensor<1x56x56x128xf32>, tensor<1x56x56x128xf32>) outs(%169 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %196 = arith.cmpf oge, %in, %in_1 : f32
      %197 = arith.select %196, %in_2, %cst : f32
      %198 = arith.addf %out, %197 : f32
      linalg.yield %198 : f32
    } -> tensor<1x112x112x128xf32>
    %171 = "tosa.transpose"(%170, %15) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    %172 = "tosa.equal"(%40, %41) : (tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xi1>
    %173 = "tosa.select"(%172, %171, %11) : (tensor<1x128x112x112xi1>, tensor<1x128x112x112xf32>, tensor<f32>) -> tensor<1x128x112x112xf32>
    %174 = "tosa.transpose"(%173, %14) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    %175 = "tosa.transpose_conv2d"(%174, %20, %167) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 112, 112, 128>, stride = array<i64: 1, 1>} : (tensor<1x112x112x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x112x112x128xf32>
    %176 = "tosa.transpose"(%175, %15) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    %177 = "tosa.equal"(%36, %37) : (tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xi1>
    %178 = "tosa.select"(%177, %176, %11) : (tensor<1x128x112x112xi1>, tensor<1x128x112x112xf32>, tensor<f32>) -> tensor<1x128x112x112xf32>
    %179 = "tosa.transpose"(%178, %14) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    %180 = tensor.empty() : tensor<64xf32>
    %181 = "tosa.transpose_conv2d"(%179, %21, %180) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 112, 112, 64>, stride = array<i64: 1, 1>} : (tensor<1x112x112x128xf32>, tensor<64x3x3x128xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %182 = tensor.empty() : tensor<1x224x224x64xf32>
    %183 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%33, %115, %34, %181 : tensor<1x224x224x64xf32>, tensor<2x2xf32>, tensor<1x112x112x64xf32>, tensor<1x112x112x64xf32>) outs(%182 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %196 = arith.cmpf oge, %in, %in_1 : f32
      %197 = arith.select %196, %in_2, %cst : f32
      %198 = arith.addf %out, %197 : f32
      linalg.yield %198 : f32
    } -> tensor<1x224x224x64xf32>
    %184 = "tosa.transpose"(%183, %15) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    %185 = "tosa.equal"(%31, %32) : (tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xi1>
    %186 = "tosa.select"(%185, %184, %11) : (tensor<1x64x224x224xi1>, tensor<1x64x224x224xf32>, tensor<f32>) -> tensor<1x64x224x224xf32>
    %187 = "tosa.transpose"(%186, %14) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    %188 = "tosa.transpose_conv2d"(%187, %22, %180) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 224, 224, 64>, stride = array<i64: 1, 1>} : (tensor<1x224x224x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x224x224x64xf32>
    %189 = "tosa.transpose"(%188, %15) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    %190 = "tosa.equal"(%27, %28) : (tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xi1>
    %191 = "tosa.select"(%190, %189, %11) : (tensor<1x64x224x224xi1>, tensor<1x64x224x224xf32>, tensor<f32>) -> tensor<1x64x224x224xf32>
    %192 = "tosa.transpose"(%191, %14) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    %193 = tensor.empty() : tensor<3xf32>
    %194 = "tosa.transpose_conv2d"(%192, %23, %193) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 1, 1>} : (tensor<1x224x224x64xf32>, tensor<3x3x3x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %195 = "tosa.transpose"(%194, %15) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %195 : tensor<1x3x224x224xf32>
  }
}

