module attributes {torch.debug_module_name = "AlexNet"} {
  func.func @forward(%arg0: tensor<1x224x224x3xf32>) -> tensor<1x1000xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256xf32>} : () -> tensor<256xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384xf32>} : () -> tensor<384xf32>
    %2 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192xf32>} : () -> tensor<192xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64xf32>} : () -> tensor<64xf32>
    %4 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000xf32>} : () -> tensor<1x1000xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096x1000xf32>} : () -> tensor<1x4096x1000xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096x4096xf32>} : () -> tensor<1x4096x4096xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096xf32>} : () -> tensor<1x4096xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x9216x4096xf32>} : () -> tensor<1x9216x4096xf32>
    %11 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x384xf32>} : () -> tensor<256x3x3x384xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x3x3x192xf32>} : () -> tensor<384x3x3x192xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x5x5x64xf32>} : () -> tensor<192x5x5x64xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x11x11x3xf32>} : () -> tensor<64x11x11x3xf32>
    %17 = "tosa.conv2d"(%arg0, %15, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 4, 4>} : (tensor<1x224x224x3xf32>, tensor<64x11x11x3xf32>, tensor<64xf32>) -> tensor<1x55x55x64xf32>
    %19 = "tosa.clamp"(%17) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x55x55x64xf32>) -> tensor<1x55x55x64xf32>
    %21 = "tosa.max_pool2d"(%19) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x55x55x64xf32>) -> tensor<1x27x27x64xf32>
    %22 = "tosa.conv2d"(%21, %14, %2) {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 1, 1>} : (tensor<1x27x27x64xf32>, tensor<192x5x5x64xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %24 = "tosa.clamp"(%22) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x27x27x192xf32>) -> tensor<1x27x27x192xf32>
    %26 = "tosa.max_pool2d"(%24) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x27x27x192xf32>) -> tensor<1x13x13x192xf32>
    %27 = "tosa.conv2d"(%26, %13, %1) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x13x13x192xf32>, tensor<384x3x3x192xf32>, tensor<384xf32>) -> tensor<1x13x13x384xf32>
    %29 = "tosa.clamp"(%27) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x13x13x384xf32>) -> tensor<1x13x13x384xf32>
    %31 = "tosa.conv2d"(%29, %12, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x13x13x384xf32>, tensor<256x3x3x384xf32>, tensor<256xf32>) -> tensor<1x13x13x256xf32>
    %33 = "tosa.clamp"(%31) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x13x13x256xf32>) -> tensor<1x13x13x256xf32>
    %35 = "tosa.conv2d"(%33, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x13x13x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x13x13x256xf32>
    %37 = "tosa.clamp"(%35) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x13x13x256xf32>) -> tensor<1x13x13x256xf32>
    %39 = "tosa.max_pool2d"(%37) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x13x13x256xf32>) -> tensor<1x6x6x256xf32>
    %41 = "tosa.reshape"(%39) {new_shape = array<i64: 1, 1, 9216>} : (tensor<1x6x6x256xf32>) -> tensor<1x1x9216xf32>
    %42 = "tosa.matmul"(%41, %10) : (tensor<1x1x9216xf32>, tensor<1x9216x4096xf32>) -> tensor<1x1x4096xf32>
    %43 = "tosa.reshape"(%42) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %44 = "tosa.add"(%43, %9) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %45 = "tosa.clamp"(%44) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %46 = "tosa.reshape"(%45) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %47 = "tosa.matmul"(%46, %8) : (tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) -> tensor<1x1x4096xf32>
    %48 = "tosa.reshape"(%47) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %49 = "tosa.add"(%48, %9) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %50 = "tosa.clamp"(%49) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %51 = "tosa.reshape"(%50) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %52 = "tosa.matmul"(%51, %7) : (tensor<1x1x4096xf32>, tensor<1x4096x1000xf32>) -> tensor<1x1x1000xf32>
    %53 = "tosa.reshape"(%52) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %54 = "tosa.add"(%53, %6) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %54 : tensor<1x1000xf32>
  }
}

