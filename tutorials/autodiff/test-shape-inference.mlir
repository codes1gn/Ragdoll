module attributes {torch.debug_module_name = "AlexNet"} {
  func.func @forward(%arg0: tensor<1x224x224x3xf32>) -> tensor<1x27x27x64xf32> {
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64xf32>} : () -> tensor<64xf32>
    %4 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x11x11x3xf32>} : () -> tensor<64x11x11x3xf32>
    %16 = "tosa.transpose"(%arg0, %4) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %17 = "tosa.conv2d"(%16, %15, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 4, 4>} : (tensor<1x224x224x3xf32>, tensor<64x11x11x3xf32>, tensor<64xf32>) -> tensor<1x55x55x64xf32>
    %18 = "tosa.transpose"(%17, %5) : (tensor<1x55x55x64xf32>, tensor<4xi32>) -> tensor<1x55x55x64xf32>
    %19 = "tosa.clamp"(%18) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x55x55x64xf32>) -> tensor<1x55x55x64xf32>
    %20 = "tosa.transpose"(%19, %4) : (tensor<1x55x55x64xf32>, tensor<4xi32>) -> tensor<1x55x55x64xf32>
    %21 = "tosa.max_pool2d"(%20) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x55x55x64xf32>) -> tensor<1x27x27x64xf32>
    return %21 : tensor<1x27x27x64xf32>
  }
}

