// nabla-opt %s --vjp --nabla-inline --nabla-initialize-empty --canonicalize --cse

ml_program.global private mutable @fc0.weight : tensor<512x784xf32>
ml_program.global private mutable @fc1.weight : tensor<10x512xf32>

func.func private @predict(
  %image : tensor<28x28xf32>,
  %fc0.weight : tensor<512x784xf32>,
  %fc1.weight : tensor<10x512xf32>
) -> tensor<1x10xf32> {
  %flatten = "tosa.reshape"(%image) {new_shape = array<i64: 1, 784>} : (tensor<28x28xf32>) -> tensor<1x784xf32>

  %fc0.bias = arith.constant dense<0.0> : tensor<512xf32>
  %fc0 = "tosa.fully_connected"(%flatten, %fc0.weight, %fc0.bias) : (tensor<1x784xf32>, tensor<512x784xf32>, tensor<512xf32>) -> tensor<1x512xf32>
  %relued = "tosa.clamp"(%fc0) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512xf32>) -> tensor<1x512xf32>

  %fc1.bias = arith.constant dense<0.0> : tensor<10xf32>
  %fc1 = "tosa.fully_connected"(%relued, %fc1.weight, %fc1.bias) : (tensor<1x512xf32>, tensor<10x512xf32>, tensor<10xf32>) -> tensor<1x10xf32>

  // min-max normalization
  %min = "tosa.reduce_min"(%fc1) {axis = 1} : (tensor<1x10xf32>) -> tensor<1x1xf32>
  %max = "tosa.reduce_max"(%fc1) {axis = 1} : (tensor<1x10xf32>) -> tensor<1x1xf32>
  %fc1_minus_min = "tosa.sub"(%fc1, %min) : (tensor<1x10xf32>, tensor<1x1xf32>) -> tensor<1x10xf32>
  %max_minus_min = "tosa.sub"(%max, %min) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
  %max_minus_min.inv = "tosa.reciprocal"(%max_minus_min) : (tensor<1x1xf32>) -> tensor<1x1xf32>
  %norm = "tosa.mul"(%fc1_minus_min, %max_minus_min.inv) {shift = 0 : i32} : (tensor<1x10xf32>, tensor<1x1xf32>) -> tensor<1x10xf32>

  // softmax
  %exp = "tosa.exp"(%norm) : (tensor<1x10xf32>) -> tensor<1x10xf32>
  %sum = "tosa.reduce_sum"(%exp) {axis = 1} : (tensor<1x10xf32>) -> tensor<1x1xf32>
  %sum.reciprocal = "tosa.reciprocal"(%sum) : (tensor<1x1xf32>) -> tensor<1x1xf32>
  %softmax = "tosa.mul"(%exp, %sum.reciprocal) {shift = 0 : i32} : (tensor<1x10xf32>, tensor<1x1xf32>) -> tensor<1x10xf32>
  return %softmax : tensor<1x10xf32>
}

func.func @set_weights(%fc0.weight : tensor<512x784xf32>, %fc1.weight : tensor<10x512xf32>) {
  ml_program.global_store @fc0.weight = %fc0.weight : tensor<512x784xf32>
  ml_program.global_store @fc1.weight = %fc1.weight : tensor<10x512xf32>
  return
}

func.func @get_weights() -> (tensor<512x784xf32>, tensor<10x512xf32>) {
  %fc0.weight = ml_program.global_load @fc0.weight : tensor<512x784xf32>
  %fc1.weight = ml_program.global_load @fc1.weight : tensor<10x512xf32>
  return %fc0.weight, %fc1.weight : tensor<512x784xf32>, tensor<10x512xf32>
}

func.func private @l2loss(%predict : tensor<1x10xf32>, %target : tensor<1x10xf32>) -> tensor<1x10xf32> {
  %sub = "tosa.sub"(%predict, %target) : (tensor<1x10xf32>, tensor<1x10xf32>) -> tensor<1x10xf32>
  %square = "tosa.mul"(%sub, %sub) {shift = 0 : i32} : (tensor<1x10xf32>, tensor<1x10xf32>) -> tensor<1x10xf32>
  return %square : tensor<1x10xf32>
}

func.func @forward(%image : tensor<28x28xf32>) -> tensor<1x10xf32> {
  %fc0.weight, %fc1.weight = call @get_weights() : () -> (tensor<512x784xf32>, tensor<10x512xf32>)
  %predict = call @predict(%image, %fc0.weight, %fc1.weight) : (tensor<28x28xf32>, tensor<512x784xf32>, tensor<10x512xf32>) -> tensor<1x10xf32>
  return %predict : tensor<1x10xf32>
}

func.func @objective(%image : tensor<28x28xf32>, %fc0.weight : tensor<512x784xf32>, %fc1.weight : tensor<10x512xf32>, %target : tensor<1x10xf32>) -> tensor<1x10xf32> {
  %predict = call @predict(%image, %fc0.weight, %fc1.weight) : (tensor<28x28xf32>, tensor<512x784xf32>, tensor<10x512xf32>) -> tensor<1x10xf32>
  %loss = call @l2loss(%predict, %target) : (tensor<1x10xf32>, tensor<1x10xf32>) -> tensor<1x10xf32>
  return %loss : tensor<1x10xf32>
}

// func.func @train(%image : tensor<28x28xf32>, %target : tensor<1x10xf32>, %learning_rate : tensor<f32>) -> tensor<1x10xf32> {
//   %fc0.weight, %fc1.weight = call @get_weights() : () -> (tensor<512x784xf32>, tensor<10x512xf32>)
//   %loss = call @objective(%image, %fc0.weight, %fc1.weight, %target) : (tensor<28x28xf32>, tensor<512x784xf32>, tensor<10x512xf32>, tensor<1x10xf32>) -> tensor<1x10xf32>
//   %ones = arith.constant dense<1.0> : tensor<1x10xf32>
//   %image.grad, %fc0.weight.grad, %fc1.weight.grad, %target.grad = nabla.vjp @objective(%ones) <storeall> : (tensor<1x10xf32>) -> (tensor<28x28xf32>, tensor<512x784xf32>, tensor<10x512xf32>, tensor<1x10xf32>)
//   %fc0.weight.update = "tosa.mul"(%fc0.weight.grad, %learning_rate) {shift = 0 : i32} : (tensor<512x784xf32>, tensor<f32>) -> tensor<512x784xf32>
//   %fc1.weight.update = "tosa.mul"(%fc1.weight.grad, %learning_rate) {shift = 0 : i32} : (tensor<10x512xf32>, tensor<f32>) -> tensor<10x512xf32>
//   %fc0.weight.new = "tosa.sub"(%fc0.weight, %fc0.weight.update) : (tensor<512x784xf32>, tensor<512x784xf32>) -> tensor<512x784xf32>
//   %fc1.weight.new = "tosa.sub"(%fc1.weight, %fc1.weight.update) : (tensor<10x512xf32>, tensor<10x512xf32>) -> tensor<10x512xf32>
//   call @set_weights(%fc0.weight.new, %fc1.weight.new) : (tensor<512x784xf32>, tensor<10x512xf32>) -> ()
//   return %loss : tensor<1x10xf32>
// }

// func.func @train.stage.i(%image : tensor<28x28xf32>, %target : tensor<1x10xf32>) -> tensor<1x10xf32> {
//   %fc0.weight, %fc1.weight = call @get_weights() : () -> (tensor<512x784xf32>, tensor<10x512xf32>)
//   %loss = call @objective(%image, %fc0.weight, %fc1.weight, %target) : (tensor<28x28xf32>, tensor<512x784xf32>, tensor<10x512xf32>, tensor<1x10xf32>) -> tensor<1x10xf32>
//   return %loss : tensor<1x10xf32>
// }

// func.func @train.stage.ii(%learning_rate : tensor<f32>) {
//   %fc0.weight, %fc1.weight = call @get_weights() : () -> (tensor<512x784xf32>, tensor<10x512xf32>)
//   %ones = arith.constant dense<1.0> : tensor<1x10xf32>
//   %image.grad, %fc0.weight.grad, %fc1.weight.grad, %target.grad = nabla.vjp @objective(%ones) <storeall> : (tensor<1x10xf32>) -> (tensor<28x28xf32>, tensor<512x784xf32>, tensor<10x512xf32>, tensor<1x10xf32>)
//   %fc0.weight.update = "tosa.mul"(%fc0.weight.grad, %learning_rate) {shift = 0 : i32} : (tensor<512x784xf32>, tensor<f32>) -> tensor<512x784xf32>
//   %fc1.weight.update = "tosa.mul"(%fc1.weight.grad, %learning_rate) {shift = 0 : i32} : (tensor<10x512xf32>, tensor<f32>) -> tensor<10x512xf32>
//   %fc0.weight.new = "tosa.sub"(%fc0.weight, %fc0.weight.update) : (tensor<512x784xf32>, tensor<512x784xf32>) -> tensor<512x784xf32>
//   %fc1.weight.new = "tosa.sub"(%fc1.weight, %fc1.weight.update) : (tensor<10x512xf32>, tensor<10x512xf32>) -> tensor<10x512xf32>
//   call @set_weights(%fc0.weight.new, %fc1.weight.new) : (tensor<512x784xf32>, tensor<10x512xf32>) -> ()
//   return
// }
