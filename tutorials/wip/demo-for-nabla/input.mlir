this is mlir code snippets used for demonstrating in nabla paper

module {
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> (tensor<1x1000xf32>) {
    ...
    %40 = tosa.matmul %39, %9 : ...
    %41 = tosa.add %40, %1 : ... 
    %42 = tosa.reshape %41 {new_shape = ...} : ...
    %43 = tosa.transpose %42, %10 : ...
    %44 = tosa.reshape %43 {new_shape = array<i64: 12, 197, 64>} : ...
    %45 = tosa.transpose %44, %4 : ...
    %46 = tosa.matmul %44, %45 : ...
    %47 = tosa.rsqrt %11 : (tensor<f32>) -> tensor<f32>
    %48 = tosa.mul %46, %47 {shift = 0 : i8} : ...
    %49 = linalg.generic {...} ins(%48, %17, %34 : ...) outs(%35 : ...) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %out: f32):
      %50 = arith.mulf %in, %in_0, %cst : f32
      %51 = arith.mulf %in, %in_1, %cst : f32
      %52 = arith.addf %51, %35 : f32
      linalg.yield %52 : f32
    } -> tensor<1x224x224x64xf32>
    ...
  }
}


module {
  ...
  func.func private @forward_vjp(%arg0: tensor<1x1000xf32>, %arg1: tensor<1x224x224x3xf32>) -> tensor<1x224x224x3xf32> {
    ...
    %33 = tosa.reduce_sum %32 {axis = 2 : i32} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %34 = tosa.mul %33, %19 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %35 = tosa.add %34, %18 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %36 = tosa.rsqrt %35 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %37 = tosa.mul %31, %36 {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %38 = tosa.mul %37, %23 {shift = 0 : i8} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %39 = tosa.add %38, %23 : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %40 = tosa.matmul %39, %17 : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %41 = tosa.add %40, %23 : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %42 = tosa.reshape %41 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %43 = tosa.transpose %42, %16 : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %44 = tosa.reshape %43 {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %45 = tosa.transpose %44, %22 : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %46 = tosa.matmul %44, %45 : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %47 = tosa.rsqrt %15 : (tensor<f32>) -> tensor<f32>
    ...


module {
  func.func @backward(%arg0: tensor<1x1000xf32>) -> tensor<1x224x224x3xf32> {
    %input0 = ml_program.global_load @global_input0 : tensor<1x224x224x3xf32>
    %0 = call @forward_vjp(%arg0, %input0) : (tensor<1x1000xf32>, tensor<1x224x224x3xf32>) -> tensor<1x224x224x3xf32>
    return %0 : tensor<1x224x224x3xf32>
  }
  func.func private @forward_vjp(%arg0: tensor<1x1000xf32>, %arg1: tensor<1x224x224x3xf32>) -> tensor<1x224x224x3xf32> {
    %global2 = ml_program.global_load @global2 : tensor<1x197x768xf32>
    %23 = tosa.add %global2, %12 : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %global3 = ml_program.global_load @global3 : tensor<1x197x1xf32>
    %24 = tosa.mul %global3, %13 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %25 = tosa.sub %23, %24 : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %global4 = ml_program.global_load @global4 : tensor<1x197x1xf32>
    %26 = tosa.mul %global4, %13 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %27 = tosa.add %26, %14 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %28 = tosa.rsqrt %27 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %global5 = ml_program.global_load @global5 : tensor<1x197x768xf32>
    %29 = tosa.add %global5, %10 : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %30 = tosa.reshape %29 {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    ...






  func.func private @forward_vjp(%arg0: tensor<1x1000xf32>, %arg1: tensor<1x224x224x3xf32>) -> tensor<1x224x224x3xf32> {
    ...j
    %global2 = ml_program.global_load @global2 : tensor<1x197x768xf32>
    %20 = tosa.add %global2, %10 : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %global3 = ml_program.global_load @global3 : tensor<1x197x1xf32>
    %21 = tosa.mul %global3, %11 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %22 = tosa.sub %20, %21 : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %global4 = ml_program.global_load @global4 : tensor<1x197x1xf32>
    %23 = tosa.mul %global4, %11 {shift = 0 : i8} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %24 = tosa.add %23, %12 : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %25 = tosa.rsqrt %24 : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    ...
    %32 = linalg.generic {...} ins(%30 : tensor<12x197x64xf32>) outs(%31 : tensor<12x64x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x64x197xf32>
    %32 = linalg.generic {...} ins(%global1, %2 : tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) outs(%31 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %1761 = arith.mulf %in, %in_0 : f32
      %1762 = arith.addf %out, %1761 : f32
      linalg.yield %1762 : f32
    } -> tensor<1x197x768xf32>
    ...
