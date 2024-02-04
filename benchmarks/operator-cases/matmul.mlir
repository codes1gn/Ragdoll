module {
  func.func @matmul(%arg0: tensor<64x512x1024xf32>, %arg1: tensor<64x1024x512xf32>) -> tensor<64x512x512xf32> {
    %0 = "tosa.matmul"(%arg0, %arg1) : (tensor<64x512x1024xf32>, tensor<64x1024x512xf32>) -> tensor<64x512x512xf32>
    return %0 : tensor<64x512x512xf32>
  }
}
