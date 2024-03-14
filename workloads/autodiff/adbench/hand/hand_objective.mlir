// nbones = 22
func.func @hand_objective(
  %params : tensor<26xf32>,
  %parents : tensor<22xi32>,
  %base_relatives : tensor<22x4x4xf32>,
  %inverse_base_absolutes : tensor<22x4x4xf32>,
  %base_positions : tensor<544x4xf32>,
  %weights : tensor<544x22xf32>,
  %mirror_factor : i1,
  %points : tensor<100x3xf32>,
  %correspondences : tensor<100xi32>
) -> tensor<100x3xf32> {
  %pose_params = call @to_pose_params(%params) : (tensor<26xf32>) -> tensor<25x3xf32>
  %vertex_positions = call @get_skinned_vertex_positions(
    %pose_params,
    %base_relatives,
    %parents,
    %inverse_base_absolutes,
    %base_positions,
    %weights,
    %mirror_factor
  ) : (tensor<25x3xf32>, tensor<22x4x4xf32>, tensor<22xi32>, tensor<22x4x4xf32>, tensor<544x4xf32>, tensor<544x22xf32>, i1) -> tensor<544x3xf32>
  %err = call @get_err(%points, %correspondences, %vertex_positions) : (tensor<100x3xf32>, tensor<100xi32>, tensor<544x3xf32>) -> tensor<100x3xf32>
  return %err : tensor<100x3xf32>
}

func.func private @to_pose_params(%theta : tensor<26xf32>) -> tensor<25x3xf32> {
  %reshaped = "tosa.reshape"(%theta) {new_shape = array<i64: 1, 26, 1>} : (tensor<26xf32>) -> tensor<1x26x1xf32>
  %ones = arith.constant dense<1.0> : tensor<1x3x1xf32>
  %idxs = arith.constant dense<[[0, 1, 2, 6, 7, 8, 15, 16, 18, 21, 27, 28, 30, 33, 39, 40, 42, 45, 51, 52, 54, 57, 63, 64, 66, 69, 3, 4, 5]]> : tensor<1x29xi32>
  %vals = "tosa.concat"(%reshaped, %ones) {axis = 1} : (tensor<1x26x1xf32>, tensor<1x3x1xf32>) -> tensor<1x29x1xf32>
  %emp = tensor.empty() : tensor<1x75x1xf32>
  %scattered = "tosa.scatter"(%emp, %idxs, %vals) : (tensor<1x75x1xf32>, tensor<1x29xi32>, tensor<1x29x1xf32>) -> tensor<1x75x1xf32>
  %collapsed = "tosa.reshape"(%scattered) {new_shape = array<i64: 25, 3>} : (tensor<1x75x1xf32>) -> tensor<25x3xf32>
  return %collapsed : tensor<25x3xf32>
}

func.func private @get_skinned_vertex_positions(
  %pose_params : tensor<25x3xf32>,
  %base_relatives : tensor<22x4x4xf32>,
  %parents : tensor<22xi32>,
  %inverse_base_absolutes : tensor<22x4x4xf32>,
  %base_positions : tensor<544x4xf32>,
  %weights : tensor<544x22xf32>,
  %mirror_factor : i1
) -> tensor<544x3xf32> {
  %relatives = call @get_posed_relatives(%pose_params, %base_relatives) : (tensor<25x3xf32>, tensor<22x4x4xf32>) -> tensor<22x4x4xf32>
  %absolutes = call @relatives_to_absolutes(%base_relatives, %parents) : (tensor<22x4x4xf32>, tensor<22xi32>) -> tensor<22x4x4xf32>
  %transforms = "tosa.matmul"(%absolutes, %inverse_base_absolutes) : (tensor<22x4x4xf32>, tensor<22x4x4xf32>) -> tensor<22x4x4xf32>
  
  %perms_0_1 = "tosa.const"() {value = dense<[1, 0]> : tensor<2xi32>} : () -> tensor<2xi32>
  %base_positions_transposed = "tosa.transpose"(%base_positions, %perms_0_1) : (tensor<544x4xf32>, tensor<2xi32>) -> tensor<4x544xf32>
  %base_positions_transposed_emp = tensor.empty() : tensor<22x4x544xf32>
  %positions_untransposed = linalg.generic {
    indexing_maps = [
      affine_map<(i, j, k, l) -> (i, j, k)>,
      affine_map<(i, j, k, l) -> (k, l)>,
      affine_map<(i, j, k, l) -> (i, j, l)>
    ],
    iterator_types = ["parallel", "parallel", "reduction", "parallel"]
  } ins(%transforms, %base_positions_transposed : tensor<22x4x4xf32>, tensor<4x544xf32>) outs(%base_positions_transposed_emp : tensor<22x4x544xf32>) {
    ^payload(%lhs : f32, %rhs : f32, %out : f32):
      %prod = arith.mulf %lhs, %rhs : f32
      %sum = arith.addf %out, %prod : f32
      linalg.yield %sum : f32
  } -> tensor<22x4x544xf32>
  %perms_2_0_1 = "tosa.const"() {value = dense<[2, 0, 1]> : tensor<3xi32>} : () -> tensor<3xi32>
  %positions = "tosa.transpose"(%positions_untransposed, %perms_2_0_1) : (tensor<22x4x544xf32>, tensor<3xi32>) -> tensor<544x22x4xf32>

  %weights_reshaped = "tosa.reshape"(%weights) {new_shape = array<i64: 544, 22, 1>} : (tensor<544x22xf32>) -> tensor<544x22x1xf32>
  %positions_weights_prod = "tosa.mul"(%positions, %weights_reshaped) {shift = 0 : i32} : (tensor<544x22x4xf32>, tensor<544x22x1xf32>) -> tensor<544x22x4xf32>
  %positions_weights_prod_sum = "tosa.reduce_sum"(%positions_weights_prod) {axis = 1} : (tensor<544x22x4xf32>) -> tensor<544x1x4xf32>
  %positions2 = tensor.extract_slice %positions_weights_prod_sum [0, 0, 0] [544, 1, 3] [1, 1, 1] : tensor<544x1x4xf32> to tensor<544x3xf32>
  %positions3 = call @apply_global_transform(%pose_params, %positions2) : (tensor<25x3xf32>, tensor<544x3xf32>) -> tensor<544x3xf32>
  return %positions3 : tensor<544x3xf32>
}

func.func private @get_err(
  %points : tensor<100x3xf32>,
  %correspondences : tensor<100xi32>,
  %vertex_poistions : tensor<544x3xf32>
) -> tensor<100x3xf32> {
  %init = tensor.empty() : tensor<100x3xf32>
  %res = affine.for %i = 0 to 100 iter_args(%tensor = %init) -> tensor<100x3xf32> {
    %point = tensor.extract_slice %points [%i, 0] [1, 3] [1, 1] : tensor<100x3xf32> to tensor<3xf32>
    %correspondence = tensor.extract %correspondences[%i] : tensor<100xi32>
    %index = arith.index_cast %correspondence : i32 to index
    %vertex_position = tensor.extract_slice %vertex_poistions [%index, 0] [1, 3] [1, 1] : tensor<544x3xf32> to tensor<3xf32>
    %diff = "tosa.sub"(%point, %vertex_position) : (tensor<3xf32>, tensor<3xf32>) -> tensor<3xf32>
    %inserted = tensor.insert_slice %diff into %tensor [%i, 0] [1, 3] [1, 1] : tensor<3xf32> into tensor<100x3xf32>
    affine.yield %inserted : tensor<100x3xf32>
  }
  return %res : tensor<100x3xf32>
}

// FIXME: 计算结果不匹配
func.func private @get_posed_relatives(%pose_params : tensor<25x3xf32>, %base_relatives : tensor<22x4x4xf32>) -> tensor<22x4x4xf32> {
  %emp = tensor.empty() : tensor<22x4x4xf32>
  %rot_params = tensor.extract_slice %pose_params [3, 0] [22, 3] [1, 1] : tensor<25x3xf32> to tensor<22x3xf32>
  %relatives = affine.for %i = 0 to 22 step 1 iter_args(%tensor = %emp) -> tensor<22x4x4xf32> {
    %rot_param = tensor.extract_slice %rot_params [%i, 0] [1, 3] [1, 1] : tensor<22x3xf32> to tensor<3xf32>
    %base_relative = tensor.extract_slice %base_relatives [%i, 0, 0] [1, 4, 4] [1, 1, 1] : tensor<22x4x4xf32> to tensor<4x4xf32>
    %_, %inner_result = func.call @get_posed_relatives_inner(%rot_param, %base_relative) : (tensor<3xf32>, tensor<4x4xf32>) -> (tensor<3x3xf32>, tensor<4x4xf32>)
    %inserted = tensor.insert_slice %inner_result into %tensor [%i, 0, 0] [1, 4, 4] [1, 1, 1] : tensor<4x4xf32> into tensor<22x4x4xf32>
    affine.yield %inserted : tensor<22x4x4xf32>
  }
  return %relatives : tensor<22x4x4xf32>
}

func.func private @get_posed_relatives_inner(%rot_param : tensor<3xf32>, %base_relative : tensor<4x4xf32>) -> (tensor<3x3xf32>, tensor<4x4xf32>) {
  %emp = tensor.empty() : tensor<4x4xf32>
  %eye4 = "tosa.const"() {
    value = dense<[[1.0, 0.0, 0.0, 0.0], [0.0, 1.0, 0.0, 0.0], [0.0, 0.0, 1.0, 0.0], [0.0, 0.0, 0.0, 1.0]]> : tensor<4x4xf32>
  } : () -> tensor<4x4xf32>
  %r = call @euler_angles_to_rotation_matrix(%rot_param) : (tensor<3xf32>) -> tensor<3x3xf32>
  %tr = tensor.insert_slice %r into %eye4 [0, 0] [3, 3] [1, 1] : tensor<3x3xf32> into tensor<4x4xf32>
  %prod = linalg.matmul ins(%base_relative, %tr : tensor<4x4xf32>, tensor<4x4xf32>) outs(%emp : tensor<4x4xf32>) -> tensor<4x4xf32>
  return %r, %prod : tensor<3x3xf32>, tensor<4x4xf32>
}

func.func private @euler_angles_to_rotation_matrix(%xzy : tensor<3xf32>) -> tensor<3x3xf32> {
  %idx0 = arith.constant 0 : index
  %idx1 = arith.constant 1 : index
  %idx2 = arith.constant 2 : index
  %fp0 = arith.constant 0.0 : f32
  %fp1 = arith.constant 1.0 : f32
  %tx = tensor.extract %xzy[%idx0] : tensor<3xf32>
  %ty = tensor.extract %xzy[%idx2] : tensor<3xf32>
  %tz = tensor.extract %xzy[%idx1] : tensor<3xf32>
  %eye3 = "tosa.const"() {
    value = dense<[[1.0, 0.0, 0.0], [0.0, 1.0, 0.0], [0.0, 0.0, 1.0]]> : tensor<3x3xf32>
  } : () -> tensor<3x3xf32>
  
  %cos_tx = math.cos %tx : f32
  %sin_tx = math.sin %tx : f32
  %neg_sin_tx = arith.negf %sin_tx : f32
  %rx0 = tensor.insert %cos_tx into %eye3[%idx1, %idx1] : tensor<3x3xf32>
  %rx1 = tensor.insert %sin_tx into %rx0[%idx2, %idx1] : tensor<3x3xf32>
  %rx2 = tensor.insert %neg_sin_tx into %rx1[%idx1, %idx2] : tensor<3x3xf32>
  %rx = tensor.insert %cos_tx into %rx2[%idx2, %idx2] : tensor<3x3xf32>

  %cos_ty = math.cos %ty : f32
  %sin_ty = math.sin %ty : f32
  %neg_sin_ty = arith.negf %sin_ty : f32
  %ry0 = tensor.insert %cos_ty into %eye3[%idx0, %idx0] : tensor<3x3xf32>
  %ry1 = tensor.insert %sin_ty into %ry0[%idx2, %idx0] : tensor<3x3xf32>
  %ry2 = tensor.insert %neg_sin_ty into %ry1[%idx0, %idx2] : tensor<3x3xf32>
  %ry = tensor.insert %cos_ty into %ry2[%idx2, %idx2] : tensor<3x3xf32>

  %cos_tz = math.cos %tz : f32
  %sin_tz = math.sin %tz : f32
  %neg_sin_tz = arith.negf %sin_tz : f32
  %rz0 = tensor.insert %cos_tz into %eye3[%idx0, %idx0] : tensor<3x3xf32>
  %rz1 = tensor.insert %sin_tz into %rz0[%idx1, %idx0] : tensor<3x3xf32>
  %rz2 = tensor.insert %neg_sin_tz into %rz1[%idx0, %idx1] : tensor<3x3xf32>
  %rz = tensor.insert %cos_tz into %rz2[%idx1, %idx1] : tensor<3x3xf32>

  %emp = tensor.empty() : tensor<3x3xf32>
  %rzry = linalg.matmul ins(%rz, %ry : tensor<3x3xf32>, tensor<3x3xf32>) outs(%emp : tensor<3x3xf32>) -> tensor<3x3xf32>
  %prod = linalg.matmul ins(%rzry, %rx : tensor<3x3xf32>, tensor<3x3xf32>) outs(%emp : tensor<3x3xf32>) -> tensor<3x3xf32>
  return %prod : tensor<3x3xf32>
}

func.func private @relatives_to_absolutes(%relatives : tensor<22x4x4xf32>, %parents : tensor<22xi32>) -> tensor<22x4x4xf32> {
  %init = tensor.empty() : tensor<22x4x4xf32>
  %emp = tensor.empty() : tensor<4x4xf32>
  %minus_one = arith.constant -1 : i32
  %absolutes = affine.for %i = 0 to 22 iter_args(%tensor = %init) -> tensor<22x4x4xf32> {
    %parent = tensor.extract %parents[%i] : tensor<22xi32>
    %cond = arith.cmpi eq, %parent, %minus_one : i32
    %relative = tensor.extract_slice %relatives [%i, 0, 0] [1, 4, 4] [1, 1, 1] : tensor<22x4x4xf32> to tensor<4x4xf32>
    %result = scf.if %cond -> tensor<22x4x4xf32> {
      %inserted = tensor.insert_slice %relative into %tensor [%i, 0, 0] [1, 4, 4] [1, 1, 1] : tensor<4x4xf32> into tensor<22x4x4xf32>
      scf.yield %inserted : tensor<22x4x4xf32>
    } else {
      %index = arith.index_cast %parent : i32 to index
      %absolute = tensor.extract_slice %tensor [%index, 0, 0] [1, 4, 4] [1, 1, 1] : tensor<22x4x4xf32> to tensor<4x4xf32>
      %prod = linalg.matmul ins(%absolute, %relative : tensor<4x4xf32>, tensor<4x4xf32>) outs(%emp : tensor<4x4xf32>) -> tensor<4x4xf32>
      %inserted = tensor.insert_slice %prod into %tensor [%i, 0, 0] [1, 4, 4] [1, 1, 1] : tensor<4x4xf32> into tensor<22x4x4xf32>
      scf.yield %inserted : tensor<22x4x4xf32>
    }
    affine.yield %result : tensor<22x4x4xf32>
  }
  return %absolutes : tensor<22x4x4xf32>
}

func.func private @get_positions2(%positions : tensor<544x22x4xf32>, %weights : tensor<544x22xf32>) -> tensor<544x3xf32> {
  %weights_reshaped = "tosa.reshape"(%weights) {new_shape = array<i64: 544, 22, 1>} : (tensor<544x22xf32>) -> tensor<544x22x1xf32>
  %positions_weights_prod = "tosa.mul"(%positions, %weights_reshaped) {shift = 0 : i32} : (tensor<544x22x4xf32>, tensor<544x22x1xf32>) -> tensor<544x22x4xf32>
  %positions_weights_prod_sum = "tosa.reduce_sum"(%positions_weights_prod) {axis = 1} : (tensor<544x22x4xf32>) -> tensor<544x1x4xf32>
  %positions_weights_prod_sum_slice = tensor.extract_slice %positions_weights_prod_sum [0, 0, 0] [544, 1, 3] [1, 1, 1] : tensor<544x1x4xf32> to tensor<544x3xf32>
  return %positions_weights_prod_sum_slice : tensor<544x3xf32>
}

func.func private @apply_global_transform(%pose_params : tensor<25x3xf32>, %positions : tensor<544x3xf32>) -> tensor<544x3xf32> {
  %pose_params_0 = tensor.extract_slice %pose_params [0, 0] [1, 3] [1, 1] : tensor<25x3xf32> to tensor<3xf32>
  %r = call @angle_axis_to_rotation_matrix(%pose_params_0) : (tensor<3xf32>) -> tensor<3x3xf32>
  %s = tensor.extract_slice %pose_params [1, 0] [1, 3] [1, 1] : tensor<25x3xf32> to tensor<3xf32>
  %t = tensor.extract_slice %pose_params [2, 0] [1, 3] [1, 1] : tensor<25x3xf32> to tensor<3xf32>
  %rsprod = "tosa.mul"(%r, %s) {shift = 0 : i32} : (tensor<3x3xf32>, tensor<3xf32>) -> tensor<3x3xf32>
  %perms = "tosa.const"() {value = dense<[1, 0]> : tensor<2xi32>} : () -> tensor<2xi32>
  %positions_transposed = "tosa.transpose"(%positions, %perms) : (tensor<544x3xf32>, tensor<2xi32>) -> tensor<3x544xf32>
  %emp = tensor.empty() : tensor<3x544xf32>
  %r_positions_matmul = linalg.matmul ins(%rsprod, %positions_transposed : tensor<3x3xf32>, tensor<3x544xf32>) outs(%emp : tensor<3x544xf32>) -> tensor<3x544xf32>
  %r_positions_matmul_transposed = "tosa.transpose"(%r_positions_matmul, %perms) : (tensor<3x544xf32>, tensor<2xi32>) -> tensor<544x3xf32>
  %sum = "tosa.add"(%r_positions_matmul_transposed, %t) : (tensor<544x3xf32>, tensor<3xf32>) -> tensor<544x3xf32>
  return %sum : tensor<544x3xf32>
}

func.func private @angle_axis_to_rotation_matrix(%angle_axis : tensor<3xf32>) -> tensor<3x3xf32> {
  %angle_axis_square = "tosa.mul"(%angle_axis, %angle_axis) {shift = 0 : i32} : (tensor<3xf32>, tensor<3xf32>) -> tensor<3xf32>
  %n_nonrsqrt = "tosa.reduce_sum"(%angle_axis_square) {axis = 0} : (tensor<3xf32>) -> tensor<1xf32>
  %n_reciprocal = "tosa.rsqrt"(%n_nonrsqrt) : (tensor<1xf32>) -> tensor<1xf32>
  %n = "tosa.reciprocal"(%n_reciprocal) : (tensor<1xf32>) -> tensor<1xf32>
  %0 = arith.constant 0 : index
  %n_f32 = tensor.extract %n[%0] : tensor<1xf32>
  %eps = arith.constant 0.0001 : f32
  %cond = arith.cmpf olt, %n_f32, %eps : f32
  %res = scf.if %cond -> tensor<3x3xf32> {
    %eye = "tosa.const"() {
      value = dense<[[1.0, 0.0, 0.0], [0.0, 1.0, 0.0], [0.0, 0.0, 1.0]]> : tensor<3x3xf32>
    } : () -> tensor<3x3xf32>
    scf.yield %eye : tensor<3x3xf32>
  } else {
    %reciprocal = "tosa.reciprocal"(%n) : (tensor<1xf32>) -> tensor<1xf32>
    %norm = "tosa.mul"(%angle_axis, %reciprocal) {shift = 0 : i32} : (tensor<3xf32>, tensor<1xf32>) -> tensor<3xf32>

    %1 = arith.constant 1 : index
    %2 = arith.constant 2 : index
    %x = tensor.extract %norm[%0] : tensor<3xf32>
    %y = tensor.extract %norm[%1] : tensor<3xf32>
    %z = tensor.extract %norm[%2] : tensor<3xf32>
    %s = math.sin %n_f32 : f32
    %c = math.cos %n_f32 : f32

    %xx = arith.mulf %x, %x : f32
    %xy = arith.mulf %x, %y : f32
    %xz = arith.mulf %x, %z : f32
    %yy = arith.mulf %y, %y : f32
    %yz = arith.mulf %y, %z : f32
    %zz = arith.mulf %z, %z : f32
    %xs = arith.mulf %x, %s : f32
    %ys = arith.mulf %y, %s : f32
    %zs = arith.mulf %z, %s : f32

    %one = arith.constant 1.0 : f32
    %one_minus_c = arith.subf %one, %c : f32
    %one_minus_xx = arith.subf %one, %xx : f32
    %one_minus_yy = arith.subf %one, %yy : f32
    %one_minus_zz = arith.subf %one, %zz : f32
    
    // r[0, 0] = xx + c(1 - xx)
    %r00_0 = arith.mulf %one_minus_xx, %c : f32
    %r00 = arith.addf %xx, %r00_0 : f32

    // r[0, 1] = xy(1 - c) - zs
    %r01_0 = arith.mulf %xy, %one_minus_c : f32
    %r01 = arith.subf %r01_0, %zs : f32

    // r[0, 2] = xz(1 - c) + ys
    %r02_0 = arith.mulf %xz, %one_minus_c : f32
    %r02 = arith.addf %r02_0, %ys : f32

    // r[1, 0] = xy(1 - c) + zs
    %r10_0 = arith.mulf %xy, %one_minus_c : f32
    %r10 = arith.addf %r10_0, %zs : f32

    // r[1, 1] = yy + c(1 - yy)
    %r11_0 = arith.mulf %one_minus_yy, %c : f32
    %r11 = arith.addf %yy, %r11_0 : f32

    // r[1, 2] = yz(1 - c) - xs
    %r12_0 = arith.mulf %yz, %one_minus_c : f32
    %r12 = arith.subf %r12_0, %xs : f32

    // r[2, 0] = xz(1 - c) - ys
    %r20_0 = arith.mulf %xz, %one_minus_c : f32
    %r20 = arith.subf %r20_0, %ys : f32

    // r[2, 1] = yz(1 - c) + xs
    %r21_0 = arith.mulf %yz, %one_minus_c : f32
    %r21 = arith.addf %r21_0, %xs : f32

    // r[2, 2] = zz + c(1 - zz)
    %r22_0 = arith.mulf %one_minus_zz, %c : f32
    %r22 = arith.addf %zz, %r22_0 : f32

    
    %emp = tensor.empty() : tensor<3x3xf32>
    %inserted00 = tensor.insert %r00 into %emp[%0, %0] : tensor<3x3xf32>
    %inserted01 = tensor.insert %r01 into %inserted00[%0, %1] : tensor<3x3xf32>
    %inserted02 = tensor.insert %r02 into %inserted01[%0, %2] : tensor<3x3xf32>
    %inserted10 = tensor.insert %r10 into %inserted02[%1, %0] : tensor<3x3xf32>
    %inserted11 = tensor.insert %r11 into %inserted10[%1, %1] : tensor<3x3xf32>
    %inserted12 = tensor.insert %r12 into %inserted11[%1, %2] : tensor<3x3xf32>
    %inserted20 = tensor.insert %r20 into %inserted12[%2, %0] : tensor<3x3xf32>
    %inserted21 = tensor.insert %r21 into %inserted20[%2, %1] : tensor<3x3xf32>
    %r = tensor.insert %r22 into %inserted21[%2, %2] : tensor<3x3xf32>
    scf.yield %r : tensor<3x3xf32>
  }
  return %res : tensor<3x3xf32>
}
