func.func @max_pool2d(%input : tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32> {
  %result = "tosa.max_pool2d"(%input) {kernel = array<i64: 3, 3>, pad = array<i64: 1, 0, 1, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
  return %result : tensor<1x56x56x64xf32>
}
