module {
  func.func @matmul(%arg0: tensor<8x512x1024xf32>, %arg1: tensor<8x1024x512xf32>) -> tensor<8x512x512xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = tensor.empty() : tensor<8x512x512xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<8x512x512xf32>) -> tensor<8x512x512xf32>
    %2 = linalg.batch_matmul ins(%arg0, %arg1 : tensor<8x512x1024xf32>, tensor<8x1024x512xf32>) outs(%1 : tensor<8x512x512xf32>) -> tensor<8x512x512xf32>
    return %2 : tensor<8x512x512xf32>
  }
}

