module attributes {torch.debug_module_name = "AlexNet"} {
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
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
    %16 = "tosa.transpose"(%arg0, %4) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %17 = "tosa.conv2d"(%16, %15, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 4, 4>} : (tensor<1x224x224x3xf32>, tensor<64x11x11x3xf32>, tensor<64xf32>) -> tensor<1x55x55x64xf32>
    %18 = "tosa.transpose"(%17, %5) : (tensor<1x55x55x64xf32>, tensor<4xi32>) -> tensor<1x64x55x55xf32>
    %19 = "tosa.clamp"(%18) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x55x55xf32>) -> tensor<1x64x55x55xf32>
    %20 = "tosa.transpose"(%19, %4) : (tensor<1x64x55x55xf32>, tensor<4xi32>) -> tensor<1x55x55x64xf32>
    %21 = "tosa.max_pool2d"(%20) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x55x55x64xf32>) -> tensor<1x27x27x64xf32>
    %22 = "tosa.conv2d"(%21, %14, %2) {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 1, 1>} : (tensor<1x27x27x64xf32>, tensor<192x5x5x64xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %23 = "tosa.transpose"(%22, %5) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    %24 = "tosa.clamp"(%23) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    %25 = "tosa.transpose"(%24, %4) : (tensor<1x192x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x192xf32>
    %26 = "tosa.max_pool2d"(%25) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x27x27x192xf32>) -> tensor<1x13x13x192xf32>
    %27 = "tosa.conv2d"(%26, %13, %1) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x13x13x192xf32>, tensor<384x3x3x192xf32>, tensor<384xf32>) -> tensor<1x13x13x384xf32>
    %28 = "tosa.transpose"(%27, %5) : (tensor<1x13x13x384xf32>, tensor<4xi32>) -> tensor<1x384x13x13xf32>
    %29 = "tosa.clamp"(%28) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x13x13xf32>) -> tensor<1x384x13x13xf32>
    %30 = "tosa.transpose"(%29, %4) : (tensor<1x384x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x384xf32>
    %31 = "tosa.conv2d"(%30, %12, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x13x13x384xf32>, tensor<256x3x3x384xf32>, tensor<256xf32>) -> tensor<1x13x13x256xf32>
    %32 = "tosa.transpose"(%31, %5) : (tensor<1x13x13x256xf32>, tensor<4xi32>) -> tensor<1x256x13x13xf32>
    %33 = "tosa.clamp"(%32) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    %34 = "tosa.transpose"(%33, %4) : (tensor<1x256x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x256xf32>
    %35 = "tosa.conv2d"(%34, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x13x13x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x13x13x256xf32>
    %36 = "tosa.transpose"(%35, %5) : (tensor<1x13x13x256xf32>, tensor<4xi32>) -> tensor<1x256x13x13xf32>
    %37 = "tosa.clamp"(%36) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    %38 = "tosa.transpose"(%37, %4) : (tensor<1x256x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x256xf32>
    %39 = "tosa.max_pool2d"(%38) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x13x13x256xf32>) -> tensor<1x6x6x256xf32>
    %40 = "tosa.transpose"(%39, %5) : (tensor<1x6x6x256xf32>, tensor<4xi32>) -> tensor<1x256x6x6xf32>
    %41 = "tosa.reshape"(%40) {new_shape = array<i64: 1, 1, 9216>} : (tensor<1x256x6x6xf32>) -> tensor<1x1x9216xf32>
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

