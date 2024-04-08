module {
      func.func @matmul(%arg0: tensor<4x736x2944xf32>, %arg1: tensor<4x2944x736xf32>, %arg2: tensor<4x736x736xf32>) -> tensor<4x736x736xf32> {
        %cst = arith.constant 0.000000e+00 : f32
        %0 = tensor.empty() : tensor<4x736x736xf32>
        %10 = tensor.empty() : tensor<4x736x736xf32>
        %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<4x736x736xf32>) -> tensor<4x736x736xf32>
        %11 = linalg.fill ins(%cst : f32) outs(%10 : tensor<4x736x736xf32>) -> tensor<4x736x736xf32>
        %3 = linalg.batch_matmul ins(%arg0, %arg1 : tensor<4x736x2944xf32>, tensor<4x2944x736xf32>) outs(%1 : tensor<4x736x736xf32>) -> tensor<4x736x736xf32>
        %2 = linalg.batch_matmul ins(%3, %arg2 : tensor<4x736x736xf32>, tensor<4x736x736xf32>) outs(%11 : tensor<4x736x736xf32>) -> tensor<4x736x736xf32>
        return %2 : tensor<4x736x736xf32>
      }
    }