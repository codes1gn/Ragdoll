//module attributes {torch.debug_module_name = "autodiff-conv-fusion"} {
//  ml_program.global private mutable @global0(dense<1.000000e+00> : tensor<1x7x7x512xf32>) : tensor<1x7x7x512xf32>
//  ml_program.global private mutable @global1(dense<1.000000e+00> : tensor<1x7x7x512xf32>) : tensor<1x7x7x512xf32>
//  func.func @fuse_conv_pair(%arg0: tensor<1x7x7x512xf32>, %arg1: tensor<512x3x3x512xf32>, %arg2: tensor<512x3x3x512xf32>) -> () {
//    %cst_4 = arith.constant dense<0.000000e+00> : tensor<256xf32>
//    %cst_5 = arith.constant dense<0.000000e+00> : tensor<512xf32>
//    %9 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<512x3x3x512xf32>}> : () -> tensor<512x3x3x512xf32>
//    %10 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<512x3x3x512xf32>}> : () -> tensor<512x3x3x512xf32>
//    %36 = tosa.transpose_conv2d %arg0, %arg1, %cst_4 {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 2, 2>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<256xf32>) -> tensor<1x7x7x512xf32>
//    %37 = tosa.transpose_conv2d %arg0, %arg2, %cst_5 {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
//    ml_program.global_store @global0 = %36 : tensor<1x7x7x512xf32>
//    ml_program.global_store @global1 = %37 : tensor<1x7x7x512xf32>
//    return
//  }
//}

module attributes {torch.debug_module_name = "autodiff-conv-fusion"} {
  ml_program.global private mutable @global0(dense<1.000000e+00> : tensor<1x7x7x512xf32>) : tensor<1x7x7x512xf32>
  ml_program.global private mutable @global1(dense<1.000000e+00> : tensor<1x7x7x512xf32>) : tensor<1x7x7x512xf32>
  func.func @fuse_conv_pair(%arg0: tensor<1x7x7x512xf32>, %arg1: tensor<512x3x3x512xf32>, %arg2: tensor<512x3x3x512xf32>) -> tensor<1x7x7x512xf32> {
    %cst_4 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_5 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %9 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<512x3x3x512xf32>}> : () -> tensor<512x3x3x512xf32>
    %10 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<512x3x3x512xf32>}> : () -> tensor<512x3x3x512xf32>
    %36 = tosa.conv2d %arg0, %arg1, %cst_4 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %37 = tosa.conv2d %arg0, %arg2, %cst_5 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %38 = tosa.add %37, %36 : (tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    return %38 : tensor<1x7x7x512xf32>
  }
}
