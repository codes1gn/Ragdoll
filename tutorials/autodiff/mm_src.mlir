module {
      func.func @matmul(%arg0: tensor<992x992xf32>, %arg1: tensor<992x992xf32>) -> tensor<992x992xf32> {
        %cst = arith.constant 0.000000e+00 : f32
        %0 = tensor.empty() : tensor<992x992xf32>
        %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<992x992xf32>) -> tensor<992x992xf32>
        %2 = linalg.matmul ins(%arg0, %arg1 : tensor<992x992xf32>, tensor<992x992xf32>) outs(%1 : tensor<992x992xf32>) -> tensor<992x992xf32>
        return %2 : tensor<992x992xf32>
      }
    }