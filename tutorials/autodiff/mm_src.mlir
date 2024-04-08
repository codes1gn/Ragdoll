module {
      func.func @matmul(%arg0: tensor<2x32x31xf32>, %arg1: tensor<2x31x30xf32>) -> tensor<2x32x30xf32> {
        %cst = arith.constant 0.000000e+00 : f32
        %0 = tensor.empty() : tensor<2x32x30xf32>
        %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<2x32x30xf32>) -> tensor<2x32x30xf32>
        %2 = linalg.batch_matmul ins(%arg0, %arg1 : tensor<2x32x31xf32>, tensor<2x31x30xf32>) outs(%1 : tensor<2x32x30xf32>) -> tensor<2x32x30xf32>
        return %2 : tensor<2x32x30xf32>
      }
    }