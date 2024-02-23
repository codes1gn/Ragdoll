module {
  func.func @matmul(%arg0: tensor<1026x2556xf32>, %arg1: tensor<2556x1026xf32>) -> tensor<1026x1026xf32> {
    %c0 = arith.constant 0.0 : f32
    %0 = tensor.empty() : tensor<1026x1026xf32>
    %1 = linalg.fill ins(%c0 : f32) outs(%0 : tensor<1026x1026xf32>) -> tensor<1026x1026xf32>
    %2 = linalg.matmul ins(%arg0, %arg1 : tensor<1026x2556xf32>, tensor<2556x1026xf32>) outs(%1 : tensor<1026x1026xf32>) -> tensor<1026x1026xf32>
    return %2 : tensor<1026x1026xf32>
  }
}
