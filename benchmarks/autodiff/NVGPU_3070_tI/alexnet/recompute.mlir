#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "AlexNet"} {
  ml_program.global private mutable @global0 : tensor<1x3x224x224xf32>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x11x11x3xf32>} : () -> tensor<64x11x11x3xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x5x5x64xf32>} : () -> tensor<192x5x5x64xf32>
    %2 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x3x3x192xf32>} : () -> tensor<384x3x3x192xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x384xf32>} : () -> tensor<256x3x3x384xf32>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x9216x4096xf32>} : () -> tensor<1x9216x4096xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096xf32>} : () -> tensor<1x4096xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096x4096xf32>} : () -> tensor<1x4096x4096xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096x1000xf32>} : () -> tensor<1x4096x1000xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000xf32>} : () -> tensor<1x1000xf32>
    %10 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %11 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64xf32>} : () -> tensor<64xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192xf32>} : () -> tensor<192xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384xf32>} : () -> tensor<384xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256xf32>} : () -> tensor<256xf32>
    ml_program.global_store @global0 = %arg0 : tensor<1x3x224x224xf32>
    %16 = "tosa.transpose"(%arg0, %11) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %17 = "tosa.conv2d"(%16, %0, %12) {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 4, 4>} : (tensor<1x224x224x3xf32>, tensor<64x11x11x3xf32>, tensor<64xf32>) -> tensor<1x55x55x64xf32>
    %18 = "tosa.transpose"(%17, %10) : (tensor<1x55x55x64xf32>, tensor<4xi32>) -> tensor<1x64x55x55xf32>
    %19 = "tosa.clamp"(%18) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x55x55xf32>) -> tensor<1x64x55x55xf32>
    %20 = "tosa.transpose"(%19, %11) : (tensor<1x64x55x55xf32>, tensor<4xi32>) -> tensor<1x55x55x64xf32>
    %21 = "tosa.max_pool2d"(%20) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x55x55x64xf32>) -> tensor<1x27x27x64xf32>
    %22 = "tosa.conv2d"(%21, %1, %13) {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 1, 1>} : (tensor<1x27x27x64xf32>, tensor<192x5x5x64xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %23 = "tosa.transpose"(%22, %10) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    %24 = "tosa.clamp"(%23) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    %25 = "tosa.transpose"(%24, %11) : (tensor<1x192x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x192xf32>
    %26 = "tosa.max_pool2d"(%25) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x27x27x192xf32>) -> tensor<1x13x13x192xf32>
    %27 = "tosa.conv2d"(%26, %2, %14) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x13x13x192xf32>, tensor<384x3x3x192xf32>, tensor<384xf32>) -> tensor<1x13x13x384xf32>
    %28 = "tosa.transpose"(%27, %10) : (tensor<1x13x13x384xf32>, tensor<4xi32>) -> tensor<1x384x13x13xf32>
    %29 = "tosa.clamp"(%28) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x13x13xf32>) -> tensor<1x384x13x13xf32>
    %30 = "tosa.transpose"(%29, %11) : (tensor<1x384x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x384xf32>
    %31 = "tosa.conv2d"(%30, %3, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x13x13x384xf32>, tensor<256x3x3x384xf32>, tensor<256xf32>) -> tensor<1x13x13x256xf32>
    %32 = "tosa.transpose"(%31, %10) : (tensor<1x13x13x256xf32>, tensor<4xi32>) -> tensor<1x256x13x13xf32>
    %33 = "tosa.clamp"(%32) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    %34 = "tosa.transpose"(%33, %11) : (tensor<1x256x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x256xf32>
    %35 = "tosa.conv2d"(%34, %4, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x13x13x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x13x13x256xf32>
    %36 = "tosa.transpose"(%35, %10) : (tensor<1x13x13x256xf32>, tensor<4xi32>) -> tensor<1x256x13x13xf32>
    %37 = "tosa.clamp"(%36) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    %38 = "tosa.transpose"(%37, %11) : (tensor<1x256x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x256xf32>
    %39 = "tosa.max_pool2d"(%38) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x13x13x256xf32>) -> tensor<1x6x6x256xf32>
    %40 = "tosa.transpose"(%39, %10) : (tensor<1x6x6x256xf32>, tensor<4xi32>) -> tensor<1x256x6x6xf32>
    %41 = "tosa.reshape"(%40) {new_shape = array<i64: 1, 1, 9216>} : (tensor<1x256x6x6xf32>) -> tensor<1x1x9216xf32>
    %42 = "tosa.matmul"(%41, %5) : (tensor<1x1x9216xf32>, tensor<1x9216x4096xf32>) -> tensor<1x1x4096xf32>
    %43 = "tosa.reshape"(%42) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %44 = "tosa.add"(%43, %6) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %45 = "tosa.clamp"(%44) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %46 = "tosa.reshape"(%45) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %47 = "tosa.matmul"(%46, %7) : (tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) -> tensor<1x1x4096xf32>
    %48 = "tosa.reshape"(%47) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %49 = "tosa.add"(%48, %6) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %50 = "tosa.clamp"(%49) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %51 = "tosa.reshape"(%50) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %52 = "tosa.matmul"(%51, %8) : (tensor<1x1x4096xf32>, tensor<1x4096x1000xf32>) -> tensor<1x1x1000xf32>
    %53 = "tosa.reshape"(%52) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %54 = "tosa.add"(%53, %9) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %54 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x11x11x3xf32>} : () -> tensor<64x11x11x3xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x5x5x64xf32>} : () -> tensor<192x5x5x64xf32>
    %2 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x3x3x192xf32>} : () -> tensor<384x3x3x192xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x384xf32>} : () -> tensor<256x3x3x384xf32>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x9216x4096xf32>} : () -> tensor<1x9216x4096xf32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096xf32>} : () -> tensor<1x4096xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64xf32>} : () -> tensor<64xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192xf32>} : () -> tensor<192xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384xf32>} : () -> tensor<384xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256xf32>} : () -> tensor<256xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000x4096xf32>} : () -> tensor<1x1000x4096xf32>
    %11 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096x4096xf32>} : () -> tensor<1x4096x4096xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096x9216xf32>} : () -> tensor<1x4096x9216xf32>
    %14 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %cst = arith.constant 0.000000e+00 : f32
    %15 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x3x3x256xf32>} : () -> tensor<384x3x3x256xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x3x3x384xf32>} : () -> tensor<192x3x3x384xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x5x5x192xf32>} : () -> tensor<64x5x5x192xf32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<3x11x11x64xf32>} : () -> tensor<3x11x11x64xf32>
    %21 = ml_program.global_load @global0 : tensor<1x3x224x224xf32>
    %22 = "tosa.transpose"(%21, %14) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %23 = "tosa.conv2d"(%22, %0, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 4, 4>} : (tensor<1x224x224x3xf32>, tensor<64x11x11x3xf32>, tensor<64xf32>) -> tensor<1x55x55x64xf32>
    %24 = "tosa.transpose"(%23, %15) : (tensor<1x55x55x64xf32>, tensor<4xi32>) -> tensor<1x64x55x55xf32>
    %25 = "tosa.clamp"(%24) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x55x55xf32>) -> tensor<1x64x55x55xf32>
    %26 = "tosa.transpose"(%25, %14) : (tensor<1x64x55x55xf32>, tensor<4xi32>) -> tensor<1x55x55x64xf32>
    %27 = "tosa.max_pool2d"(%26) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x55x55x64xf32>) -> tensor<1x27x27x64xf32>
    %28 = "tosa.conv2d"(%27, %1, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 1, 1>} : (tensor<1x27x27x64xf32>, tensor<192x5x5x64xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %29 = "tosa.transpose"(%28, %15) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    %30 = "tosa.clamp"(%29) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    %31 = "tosa.transpose"(%30, %14) : (tensor<1x192x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x192xf32>
    %32 = "tosa.max_pool2d"(%31) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x27x27x192xf32>) -> tensor<1x13x13x192xf32>
    %33 = "tosa.conv2d"(%32, %2, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x13x13x192xf32>, tensor<384x3x3x192xf32>, tensor<384xf32>) -> tensor<1x13x13x384xf32>
    %34 = "tosa.transpose"(%33, %15) : (tensor<1x13x13x384xf32>, tensor<4xi32>) -> tensor<1x384x13x13xf32>
    %35 = "tosa.clamp"(%34) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x13x13xf32>) -> tensor<1x384x13x13xf32>
    %36 = "tosa.transpose"(%35, %14) : (tensor<1x384x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x384xf32>
    %37 = "tosa.conv2d"(%36, %3, %9) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x13x13x384xf32>, tensor<256x3x3x384xf32>, tensor<256xf32>) -> tensor<1x13x13x256xf32>
    %38 = "tosa.transpose"(%37, %15) : (tensor<1x13x13x256xf32>, tensor<4xi32>) -> tensor<1x256x13x13xf32>
    %39 = "tosa.clamp"(%38) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    %40 = "tosa.transpose"(%39, %14) : (tensor<1x256x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x256xf32>
    %41 = "tosa.conv2d"(%40, %16, %9) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x13x13x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x13x13x256xf32>
    %42 = "tosa.transpose"(%41, %15) : (tensor<1x13x13x256xf32>, tensor<4xi32>) -> tensor<1x256x13x13xf32>
    %43 = "tosa.clamp"(%42) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    %44 = "tosa.transpose"(%43, %14) : (tensor<1x256x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x256xf32>
    %45 = "tosa.max_pool2d"(%44) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x13x13x256xf32>) -> tensor<1x6x6x256xf32>
    %46 = "tosa.transpose"(%45, %15) : (tensor<1x6x6x256xf32>, tensor<4xi32>) -> tensor<1x256x6x6xf32>
    %47 = "tosa.reshape"(%46) {new_shape = array<i64: 1, 1, 9216>} : (tensor<1x256x6x6xf32>) -> tensor<1x1x9216xf32>
    %48 = "tosa.matmul"(%47, %4) : (tensor<1x1x9216xf32>, tensor<1x9216x4096xf32>) -> tensor<1x1x4096xf32>
    %49 = "tosa.reshape"(%48) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %50 = "tosa.add"(%49, %5) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %51 = "tosa.clamp"(%50) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %52 = "tosa.reshape"(%51) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %53 = "tosa.matmul"(%52, %12) : (tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) -> tensor<1x1x4096xf32>
    %54 = "tosa.reshape"(%53) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %55 = "tosa.add"(%54, %5) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %56 = "tosa.clamp"(%55) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %57 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %58 = "tosa.matmul"(%57, %10) : (tensor<1x1x1000xf32>, tensor<1x1000x4096xf32>) -> tensor<1x1x4096xf32>
    %59 = "tosa.reshape"(%58) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %60 = "tosa.equal"(%55, %56) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %61 = "tosa.select"(%60, %59, %11) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %62 = "tosa.reshape"(%61) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %63 = "tosa.matmul"(%62, %12) : (tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) -> tensor<1x1x4096xf32>
    %64 = "tosa.reshape"(%63) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %65 = "tosa.equal"(%50, %51) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %66 = "tosa.select"(%65, %64, %11) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %67 = "tosa.reshape"(%66) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %68 = "tosa.matmul"(%67, %13) : (tensor<1x1x4096xf32>, tensor<1x4096x9216xf32>) -> tensor<1x1x9216xf32>
    %69 = "tosa.reshape"(%68) {new_shape = array<i64: 1, 256, 6, 6>} : (tensor<1x1x9216xf32>) -> tensor<1x256x6x6xf32>
    %70 = "tosa.transpose"(%69, %14) : (tensor<1x256x6x6xf32>, tensor<4xi32>) -> tensor<1x6x6x256xf32>
    %71 = tensor.empty() : tensor<1x13x13x256xf32>
    %72 = tensor.empty() : tensor<3x3xf32>
    %73 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%44, %72, %45, %70 : tensor<1x13x13x256xf32>, tensor<3x3xf32>, tensor<1x6x6x256xf32>, tensor<1x6x6x256xf32>) outs(%71 : tensor<1x13x13x256xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %109 = arith.cmpf oge, %in, %in_1 : f32
      %110 = arith.select %109, %in_2, %cst : f32
      %111 = arith.addf %out, %110 : f32
      linalg.yield %111 : f32
    } -> tensor<1x13x13x256xf32>
    %74 = "tosa.transpose"(%73, %15) : (tensor<1x13x13x256xf32>, tensor<4xi32>) -> tensor<1x256x13x13xf32>
    %75 = "tosa.equal"(%42, %43) : (tensor<1x256x13x13xf32>, tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xi1>
    %76 = "tosa.select"(%75, %74, %11) : (tensor<1x256x13x13xi1>, tensor<1x256x13x13xf32>, tensor<f32>) -> tensor<1x256x13x13xf32>
    %77 = "tosa.transpose"(%76, %14) : (tensor<1x256x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x256xf32>
    %78 = tensor.empty() : tensor<256xf32>
    %79 = "tosa.transpose_conv2d"(%77, %16, %78) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 13, 13, 256>, stride = array<i64: 1, 1>} : (tensor<1x13x13x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x13x13x256xf32>
    %80 = "tosa.transpose"(%79, %15) : (tensor<1x13x13x256xf32>, tensor<4xi32>) -> tensor<1x256x13x13xf32>
    %81 = "tosa.equal"(%38, %39) : (tensor<1x256x13x13xf32>, tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xi1>
    %82 = "tosa.select"(%81, %80, %11) : (tensor<1x256x13x13xi1>, tensor<1x256x13x13xf32>, tensor<f32>) -> tensor<1x256x13x13xf32>
    %83 = "tosa.transpose"(%82, %14) : (tensor<1x256x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x256xf32>
    %84 = tensor.empty() : tensor<384xf32>
    %85 = "tosa.transpose_conv2d"(%83, %17, %84) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 13, 13, 384>, stride = array<i64: 1, 1>} : (tensor<1x13x13x256xf32>, tensor<384x3x3x256xf32>, tensor<384xf32>) -> tensor<1x13x13x384xf32>
    %86 = "tosa.transpose"(%85, %15) : (tensor<1x13x13x384xf32>, tensor<4xi32>) -> tensor<1x384x13x13xf32>
    %87 = "tosa.equal"(%34, %35) : (tensor<1x384x13x13xf32>, tensor<1x384x13x13xf32>) -> tensor<1x384x13x13xi1>
    %88 = "tosa.select"(%87, %86, %11) : (tensor<1x384x13x13xi1>, tensor<1x384x13x13xf32>, tensor<f32>) -> tensor<1x384x13x13xf32>
    %89 = "tosa.transpose"(%88, %14) : (tensor<1x384x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x384xf32>
    %90 = tensor.empty() : tensor<192xf32>
    %91 = "tosa.transpose_conv2d"(%89, %18, %90) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 13, 13, 192>, stride = array<i64: 1, 1>} : (tensor<1x13x13x384xf32>, tensor<192x3x3x384xf32>, tensor<192xf32>) -> tensor<1x13x13x192xf32>
    %92 = tensor.empty() : tensor<1x27x27x192xf32>
    %93 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%31, %72, %32, %91 : tensor<1x27x27x192xf32>, tensor<3x3xf32>, tensor<1x13x13x192xf32>, tensor<1x13x13x192xf32>) outs(%92 : tensor<1x27x27x192xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %109 = arith.cmpf oge, %in, %in_1 : f32
      %110 = arith.select %109, %in_2, %cst : f32
      %111 = arith.addf %out, %110 : f32
      linalg.yield %111 : f32
    } -> tensor<1x27x27x192xf32>
    %94 = "tosa.transpose"(%93, %15) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    %95 = "tosa.equal"(%29, %30) : (tensor<1x192x27x27xf32>, tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xi1>
    %96 = "tosa.select"(%95, %94, %11) : (tensor<1x192x27x27xi1>, tensor<1x192x27x27xf32>, tensor<f32>) -> tensor<1x192x27x27xf32>
    %97 = "tosa.transpose"(%96, %14) : (tensor<1x192x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x192xf32>
    %98 = tensor.empty() : tensor<64xf32>
    %99 = "tosa.transpose_conv2d"(%97, %19, %98) {out_pad = array<i64: -2, -2, -2, -2>, out_shape = array<i64: 1, 27, 27, 64>, stride = array<i64: 1, 1>} : (tensor<1x27x27x192xf32>, tensor<64x5x5x192xf32>, tensor<64xf32>) -> tensor<1x27x27x64xf32>
    %100 = tensor.empty() : tensor<1x55x55x64xf32>
    %101 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%26, %72, %27, %99 : tensor<1x55x55x64xf32>, tensor<3x3xf32>, tensor<1x27x27x64xf32>, tensor<1x27x27x64xf32>) outs(%100 : tensor<1x55x55x64xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %109 = arith.cmpf oge, %in, %in_1 : f32
      %110 = arith.select %109, %in_2, %cst : f32
      %111 = arith.addf %out, %110 : f32
      linalg.yield %111 : f32
    } -> tensor<1x55x55x64xf32>
    %102 = "tosa.transpose"(%101, %15) : (tensor<1x55x55x64xf32>, tensor<4xi32>) -> tensor<1x64x55x55xf32>
    %103 = "tosa.equal"(%24, %25) : (tensor<1x64x55x55xf32>, tensor<1x64x55x55xf32>) -> tensor<1x64x55x55xi1>
    %104 = "tosa.select"(%103, %102, %11) : (tensor<1x64x55x55xi1>, tensor<1x64x55x55xf32>, tensor<f32>) -> tensor<1x64x55x55xf32>
    %105 = "tosa.transpose"(%104, %14) : (tensor<1x64x55x55xf32>, tensor<4xi32>) -> tensor<1x55x55x64xf32>
    %106 = tensor.empty() : tensor<3xf32>
    %107 = "tosa.transpose_conv2d"(%105, %20, %106) {out_pad = array<i64: -2, -2, -2, -2>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 4, 4>} : (tensor<1x55x55x64xf32>, tensor<3x11x11x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %108 = "tosa.transpose"(%107, %15) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %108 : tensor<1x3x224x224xf32>
  }
}

