#map = affine_map<(d0, d1, d2, d3) -> (d0, d3, d2)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
module {
  ml_program.global private mutable @global1 : tensor<2x31x30xf32>
  ml_program.global private mutable @global0 : tensor<2x32x31xf32>
  func.func @matmul(%arg0: tensor<2x32x31xf32>, %arg1: tensor<2x31x30xf32>) -> tensor<2x32x30xf32> {
    ...
    %2 = linalg.batch_matmul ins(%arg0, %arg1 : tensor<2x32x31xf32>, tensor<2x31x30xf32>) outs(%1 : tensor<2x32x30xf32>) -> tensor<2x32x30xf32>
    ...
  }
  func.func private @matmul_vjp(%output_grad: tensor<2x32x30xf32>) -> (tensor<2x32x31xf32>, tensor<2x31x30xf32>) {
    %global1 = ml_program.global_load @global1 : tensor<2x31x30xf32>
    %global0 = ml_program.global_load @global0 : tensor<2x32x31xf32>
    ...
    %1 = linalg.batch_matmul 
            ins(%output_grad, %global1_transposed : tensor<2x32x30xf32>, tensor<2x30x31xf32>) 
            outs(%1 : tensor<2x32x31xf32>) -> tensor<2x32x31xf32>
    %3 = linalg.batch_matmul 
            ins(%global0_transposed, %output_grad : tensor<2x31x32xf32>, tensor<2x32x30xf32>) 
            outs(%2 : tensor<2x31x30xf32>) -> tensor<2x31x30xf32>
    return %1, %3 : tensor<2x32x31xf32>, tensor<2x31x30xf32>
  }
}

