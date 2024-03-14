module {
  func.func private @lstm(%arg0: tensor<1x56xf32>, %arg1: tensor<1x56xf32>, %arg2: tensor<1x14xf32>, %arg3: tensor<1x14xf32>, %arg4: tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<1x14xf32>) {
    %0 = "tosa.concat"(%arg4, %arg2, %arg4, %arg2) {axis = 1 : i64} : (tensor<1x14xf32>, tensor<1x14xf32>, tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x56xf32>
    %1 = "tosa.mul"(%0, %arg0) {shift = 0 : i32} : (tensor<1x56xf32>, tensor<1x56xf32>) -> tensor<1x56xf32>
    %2 = "tosa.add"(%1, %arg1) : (tensor<1x56xf32>, tensor<1x56xf32>) -> tensor<1x56xf32>
    %extracted_slice = tensor.extract_slice %2[0, 0] [1, 42] [1, 1] : tensor<1x56xf32> to tensor<1x42xf32>
    %3 = "tosa.sigmoid"(%extracted_slice) : (tensor<1x42xf32>) -> tensor<1x42xf32>
    %extracted_slice_0 = tensor.extract_slice %3[0, 0] [1, 14] [1, 1] : tensor<1x42xf32> to tensor<1x14xf32>
    %extracted_slice_1 = tensor.extract_slice %3[0, 14] [1, 14] [1, 1] : tensor<1x42xf32> to tensor<1x14xf32>
    %extracted_slice_2 = tensor.extract_slice %3[0, 28] [1, 14] [1, 1] : tensor<1x42xf32> to tensor<1x14xf32>
    %extracted_slice_3 = tensor.extract_slice %2[0, 42] [1, 14] [1, 1] : tensor<1x56xf32> to tensor<1x14xf32>
    %4 = "tosa.tanh"(%extracted_slice_3) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %5 = "tosa.mul"(%arg3, %extracted_slice_0) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %6 = "tosa.mul"(%extracted_slice_1, %4) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %7 = "tosa.add"(%5, %6) : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %8 = "tosa.tanh"(%7) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %9 = "tosa.mul"(%extracted_slice_2, %8) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    return %9, %7 : tensor<1x14xf32>, tensor<1x14xf32>
  }
  func.func private @predict(%arg0: tensor<4x56xf32>, %arg1: tensor<3x14xf32>, %arg2: tensor<4x14xf32>, %arg3: tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>) {
    %extracted_slice = tensor.extract_slice %arg1[0, 0] [1, 14] [1, 1] : tensor<3x14xf32> to tensor<1x14xf32>
    %0 = "tosa.mul"(%arg3, %extracted_slice) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %extracted_slice_0 = tensor.extract_slice %arg0[0, 0] [1, 56] [1, 1] : tensor<4x56xf32> to tensor<1x56xf32>
    %extracted_slice_1 = tensor.extract_slice %arg0[1, 0] [1, 56] [1, 1] : tensor<4x56xf32> to tensor<1x56xf32>
    %extracted_slice_2 = tensor.extract_slice %arg2[0, 0] [1, 14] [1, 1] : tensor<4x14xf32> to tensor<1x14xf32>
    %extracted_slice_3 = tensor.extract_slice %arg2[1, 0] [1, 14] [1, 1] : tensor<4x14xf32> to tensor<1x14xf32>
    %1:2 = call @lstm(%extracted_slice_0, %extracted_slice_1, %extracted_slice_2, %extracted_slice_3, %0) : (tensor<1x56xf32>, tensor<1x56xf32>, tensor<1x14xf32>, tensor<1x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<1x14xf32>)
    %extracted_slice_4 = tensor.extract_slice %arg0[2, 0] [1, 56] [1, 1] : tensor<4x56xf32> to tensor<1x56xf32>
    %extracted_slice_5 = tensor.extract_slice %arg0[3, 0] [1, 56] [1, 1] : tensor<4x56xf32> to tensor<1x56xf32>
    %extracted_slice_6 = tensor.extract_slice %arg2[2, 0] [1, 14] [1, 1] : tensor<4x14xf32> to tensor<1x14xf32>
    %extracted_slice_7 = tensor.extract_slice %arg2[3, 0] [1, 14] [1, 1] : tensor<4x14xf32> to tensor<1x14xf32>
    %2:2 = call @lstm(%extracted_slice_4, %extracted_slice_5, %extracted_slice_6, %extracted_slice_7, %1#0) : (tensor<1x56xf32>, tensor<1x56xf32>, tensor<1x14xf32>, tensor<1x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<1x14xf32>)
    %3 = "tosa.concat"(%1#0, %1#1, %2#0, %2#1) {axis = 0 : i64} : (tensor<1x14xf32>, tensor<1x14xf32>, tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<4x14xf32>
    %extracted_slice_8 = tensor.extract_slice %arg1[1, 0] [1, 14] [1, 1] : tensor<3x14xf32> to tensor<1x14xf32>
    %extracted_slice_9 = tensor.extract_slice %arg1[2, 0] [1, 14] [1, 1] : tensor<3x14xf32> to tensor<1x14xf32>
    %4 = "tosa.mul"(%2#0, %extracted_slice_8) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %5 = "tosa.add"(%4, %extracted_slice_9) : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    return %5, %3 : tensor<1x14xf32>, tensor<4x14xf32>
  }
  func.func @lstm_objective(%arg0: tensor<4x56xf32>, %arg1: tensor<3x14xf32>, %arg2: tensor<4x14xf32>, %arg3: tensor<32x14xf32>) -> tensor<f32> {
    %extracted_slice = tensor.extract_slice %arg3[0, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %0 = "tosa.const"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %1 = "tosa.const"() {value = dense<-0.00230414746> : tensor<f32>} : () -> tensor<f32>
    %2:2 = call @predict(%arg0, %arg1, %arg2, %extracted_slice) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %3 = "tosa.exp"(%2#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %4 = "tosa.reduce_sum"(%3) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %5 = "tosa.add"(%4, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %6 = "tosa.log"(%5) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %7 = "tosa.sub"(%2#0, %6) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_0 = tensor.extract_slice %arg3[1, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %8 = "tosa.mul"(%7, %extracted_slice_0) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %9 = "tosa.reduce_sum"(%8) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %10:2 = call @predict(%arg0, %arg1, %2#1, %extracted_slice_0) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %11 = "tosa.exp"(%10#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %12 = "tosa.reduce_sum"(%11) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %13 = "tosa.add"(%12, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %14 = "tosa.log"(%13) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %15 = "tosa.sub"(%10#0, %14) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_1 = tensor.extract_slice %arg3[2, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %16 = "tosa.mul"(%15, %extracted_slice_1) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %17 = "tosa.reduce_sum"(%16) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %18:2 = call @predict(%arg0, %arg1, %10#1, %extracted_slice_1) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %19 = "tosa.exp"(%18#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %20 = "tosa.reduce_sum"(%19) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %21 = "tosa.add"(%20, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %22 = "tosa.log"(%21) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %23 = "tosa.sub"(%18#0, %22) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_2 = tensor.extract_slice %arg3[3, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %24 = "tosa.mul"(%23, %extracted_slice_2) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %25 = "tosa.reduce_sum"(%24) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %26:2 = call @predict(%arg0, %arg1, %18#1, %extracted_slice_2) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %27 = "tosa.exp"(%26#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %28 = "tosa.reduce_sum"(%27) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %29 = "tosa.add"(%28, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %30 = "tosa.log"(%29) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %31 = "tosa.sub"(%26#0, %30) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_3 = tensor.extract_slice %arg3[4, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %32 = "tosa.mul"(%31, %extracted_slice_3) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %33 = "tosa.reduce_sum"(%32) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %34:2 = call @predict(%arg0, %arg1, %26#1, %extracted_slice_3) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %35 = "tosa.exp"(%34#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %36 = "tosa.reduce_sum"(%35) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %37 = "tosa.add"(%36, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %38 = "tosa.log"(%37) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %39 = "tosa.sub"(%34#0, %38) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_4 = tensor.extract_slice %arg3[5, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %40 = "tosa.mul"(%39, %extracted_slice_4) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %41 = "tosa.reduce_sum"(%40) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %42:2 = call @predict(%arg0, %arg1, %34#1, %extracted_slice_4) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %43 = "tosa.exp"(%42#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %44 = "tosa.reduce_sum"(%43) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %45 = "tosa.add"(%44, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %46 = "tosa.log"(%45) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %47 = "tosa.sub"(%42#0, %46) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_5 = tensor.extract_slice %arg3[6, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %48 = "tosa.mul"(%47, %extracted_slice_5) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %49 = "tosa.reduce_sum"(%48) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %50:2 = call @predict(%arg0, %arg1, %42#1, %extracted_slice_5) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %51 = "tosa.exp"(%50#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %52 = "tosa.reduce_sum"(%51) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %53 = "tosa.add"(%52, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %54 = "tosa.log"(%53) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %55 = "tosa.sub"(%50#0, %54) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_6 = tensor.extract_slice %arg3[7, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %56 = "tosa.mul"(%55, %extracted_slice_6) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %57 = "tosa.reduce_sum"(%56) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %58:2 = call @predict(%arg0, %arg1, %50#1, %extracted_slice_6) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %59 = "tosa.exp"(%58#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %60 = "tosa.reduce_sum"(%59) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %61 = "tosa.add"(%60, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %62 = "tosa.log"(%61) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %63 = "tosa.sub"(%58#0, %62) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_7 = tensor.extract_slice %arg3[8, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %64 = "tosa.mul"(%63, %extracted_slice_7) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %65 = "tosa.reduce_sum"(%64) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %66:2 = call @predict(%arg0, %arg1, %58#1, %extracted_slice_7) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %67 = "tosa.exp"(%66#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %68 = "tosa.reduce_sum"(%67) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %69 = "tosa.add"(%68, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %70 = "tosa.log"(%69) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %71 = "tosa.sub"(%66#0, %70) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_8 = tensor.extract_slice %arg3[9, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %72 = "tosa.mul"(%71, %extracted_slice_8) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %73 = "tosa.reduce_sum"(%72) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %74:2 = call @predict(%arg0, %arg1, %66#1, %extracted_slice_8) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %75 = "tosa.exp"(%74#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %76 = "tosa.reduce_sum"(%75) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %77 = "tosa.add"(%76, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %78 = "tosa.log"(%77) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %79 = "tosa.sub"(%74#0, %78) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_9 = tensor.extract_slice %arg3[10, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %80 = "tosa.mul"(%79, %extracted_slice_9) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %81 = "tosa.reduce_sum"(%80) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %82:2 = call @predict(%arg0, %arg1, %74#1, %extracted_slice_9) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %83 = "tosa.exp"(%82#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %84 = "tosa.reduce_sum"(%83) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %85 = "tosa.add"(%84, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %86 = "tosa.log"(%85) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %87 = "tosa.sub"(%82#0, %86) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_10 = tensor.extract_slice %arg3[11, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %88 = "tosa.mul"(%87, %extracted_slice_10) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %89 = "tosa.reduce_sum"(%88) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %90:2 = call @predict(%arg0, %arg1, %82#1, %extracted_slice_10) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %91 = "tosa.exp"(%90#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %92 = "tosa.reduce_sum"(%91) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %93 = "tosa.add"(%92, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %94 = "tosa.log"(%93) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %95 = "tosa.sub"(%90#0, %94) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_11 = tensor.extract_slice %arg3[12, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %96 = "tosa.mul"(%95, %extracted_slice_11) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %97 = "tosa.reduce_sum"(%96) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %98:2 = call @predict(%arg0, %arg1, %90#1, %extracted_slice_11) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %99 = "tosa.exp"(%98#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %100 = "tosa.reduce_sum"(%99) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %101 = "tosa.add"(%100, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %102 = "tosa.log"(%101) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %103 = "tosa.sub"(%98#0, %102) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_12 = tensor.extract_slice %arg3[13, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %104 = "tosa.mul"(%103, %extracted_slice_12) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %105 = "tosa.reduce_sum"(%104) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %106:2 = call @predict(%arg0, %arg1, %98#1, %extracted_slice_12) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %107 = "tosa.exp"(%106#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %108 = "tosa.reduce_sum"(%107) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %109 = "tosa.add"(%108, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %110 = "tosa.log"(%109) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %111 = "tosa.sub"(%106#0, %110) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_13 = tensor.extract_slice %arg3[14, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %112 = "tosa.mul"(%111, %extracted_slice_13) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %113 = "tosa.reduce_sum"(%112) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %114:2 = call @predict(%arg0, %arg1, %106#1, %extracted_slice_13) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %115 = "tosa.exp"(%114#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %116 = "tosa.reduce_sum"(%115) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %117 = "tosa.add"(%116, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %118 = "tosa.log"(%117) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %119 = "tosa.sub"(%114#0, %118) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_14 = tensor.extract_slice %arg3[15, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %120 = "tosa.mul"(%119, %extracted_slice_14) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %121 = "tosa.reduce_sum"(%120) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %122:2 = call @predict(%arg0, %arg1, %114#1, %extracted_slice_14) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %123 = "tosa.exp"(%122#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %124 = "tosa.reduce_sum"(%123) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %125 = "tosa.add"(%124, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %126 = "tosa.log"(%125) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %127 = "tosa.sub"(%122#0, %126) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_15 = tensor.extract_slice %arg3[16, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %128 = "tosa.mul"(%127, %extracted_slice_15) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %129 = "tosa.reduce_sum"(%128) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %130:2 = call @predict(%arg0, %arg1, %122#1, %extracted_slice_15) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %131 = "tosa.exp"(%130#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %132 = "tosa.reduce_sum"(%131) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %133 = "tosa.add"(%132, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %134 = "tosa.log"(%133) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %135 = "tosa.sub"(%130#0, %134) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_16 = tensor.extract_slice %arg3[17, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %136 = "tosa.mul"(%135, %extracted_slice_16) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %137 = "tosa.reduce_sum"(%136) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %138:2 = call @predict(%arg0, %arg1, %130#1, %extracted_slice_16) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %139 = "tosa.exp"(%138#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %140 = "tosa.reduce_sum"(%139) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %141 = "tosa.add"(%140, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %142 = "tosa.log"(%141) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %143 = "tosa.sub"(%138#0, %142) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_17 = tensor.extract_slice %arg3[18, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %144 = "tosa.mul"(%143, %extracted_slice_17) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %145 = "tosa.reduce_sum"(%144) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %146:2 = call @predict(%arg0, %arg1, %138#1, %extracted_slice_17) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %147 = "tosa.exp"(%146#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %148 = "tosa.reduce_sum"(%147) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %149 = "tosa.add"(%148, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %150 = "tosa.log"(%149) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %151 = "tosa.sub"(%146#0, %150) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_18 = tensor.extract_slice %arg3[19, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %152 = "tosa.mul"(%151, %extracted_slice_18) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %153 = "tosa.reduce_sum"(%152) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %154:2 = call @predict(%arg0, %arg1, %146#1, %extracted_slice_18) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %155 = "tosa.exp"(%154#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %156 = "tosa.reduce_sum"(%155) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %157 = "tosa.add"(%156, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %158 = "tosa.log"(%157) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %159 = "tosa.sub"(%154#0, %158) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_19 = tensor.extract_slice %arg3[20, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %160 = "tosa.mul"(%159, %extracted_slice_19) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %161 = "tosa.reduce_sum"(%160) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %162:2 = call @predict(%arg0, %arg1, %154#1, %extracted_slice_19) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %163 = "tosa.exp"(%162#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %164 = "tosa.reduce_sum"(%163) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %165 = "tosa.add"(%164, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %166 = "tosa.log"(%165) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %167 = "tosa.sub"(%162#0, %166) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_20 = tensor.extract_slice %arg3[21, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %168 = "tosa.mul"(%167, %extracted_slice_20) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %169 = "tosa.reduce_sum"(%168) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %170:2 = call @predict(%arg0, %arg1, %162#1, %extracted_slice_20) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %171 = "tosa.exp"(%170#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %172 = "tosa.reduce_sum"(%171) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %173 = "tosa.add"(%172, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %174 = "tosa.log"(%173) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %175 = "tosa.sub"(%170#0, %174) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_21 = tensor.extract_slice %arg3[22, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %176 = "tosa.mul"(%175, %extracted_slice_21) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %177 = "tosa.reduce_sum"(%176) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %178:2 = call @predict(%arg0, %arg1, %170#1, %extracted_slice_21) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %179 = "tosa.exp"(%178#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %180 = "tosa.reduce_sum"(%179) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %181 = "tosa.add"(%180, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %182 = "tosa.log"(%181) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %183 = "tosa.sub"(%178#0, %182) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_22 = tensor.extract_slice %arg3[23, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %184 = "tosa.mul"(%183, %extracted_slice_22) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %185 = "tosa.reduce_sum"(%184) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %186:2 = call @predict(%arg0, %arg1, %178#1, %extracted_slice_22) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %187 = "tosa.exp"(%186#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %188 = "tosa.reduce_sum"(%187) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %189 = "tosa.add"(%188, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %190 = "tosa.log"(%189) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %191 = "tosa.sub"(%186#0, %190) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_23 = tensor.extract_slice %arg3[24, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %192 = "tosa.mul"(%191, %extracted_slice_23) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %193 = "tosa.reduce_sum"(%192) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %194:2 = call @predict(%arg0, %arg1, %186#1, %extracted_slice_23) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %195 = "tosa.exp"(%194#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %196 = "tosa.reduce_sum"(%195) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %197 = "tosa.add"(%196, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %198 = "tosa.log"(%197) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %199 = "tosa.sub"(%194#0, %198) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_24 = tensor.extract_slice %arg3[25, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %200 = "tosa.mul"(%199, %extracted_slice_24) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %201 = "tosa.reduce_sum"(%200) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %202:2 = call @predict(%arg0, %arg1, %194#1, %extracted_slice_24) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %203 = "tosa.exp"(%202#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %204 = "tosa.reduce_sum"(%203) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %205 = "tosa.add"(%204, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %206 = "tosa.log"(%205) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %207 = "tosa.sub"(%202#0, %206) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_25 = tensor.extract_slice %arg3[26, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %208 = "tosa.mul"(%207, %extracted_slice_25) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %209 = "tosa.reduce_sum"(%208) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %210:2 = call @predict(%arg0, %arg1, %202#1, %extracted_slice_25) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %211 = "tosa.exp"(%210#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %212 = "tosa.reduce_sum"(%211) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %213 = "tosa.add"(%212, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %214 = "tosa.log"(%213) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %215 = "tosa.sub"(%210#0, %214) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_26 = tensor.extract_slice %arg3[27, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %216 = "tosa.mul"(%215, %extracted_slice_26) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %217 = "tosa.reduce_sum"(%216) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %218:2 = call @predict(%arg0, %arg1, %210#1, %extracted_slice_26) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %219 = "tosa.exp"(%218#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %220 = "tosa.reduce_sum"(%219) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %221 = "tosa.add"(%220, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %222 = "tosa.log"(%221) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %223 = "tosa.sub"(%218#0, %222) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_27 = tensor.extract_slice %arg3[28, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %224 = "tosa.mul"(%223, %extracted_slice_27) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %225 = "tosa.reduce_sum"(%224) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %226:2 = call @predict(%arg0, %arg1, %218#1, %extracted_slice_27) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %227 = "tosa.exp"(%226#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %228 = "tosa.reduce_sum"(%227) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %229 = "tosa.add"(%228, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %230 = "tosa.log"(%229) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %231 = "tosa.sub"(%226#0, %230) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_28 = tensor.extract_slice %arg3[29, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %232 = "tosa.mul"(%231, %extracted_slice_28) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %233 = "tosa.reduce_sum"(%232) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %234:2 = call @predict(%arg0, %arg1, %226#1, %extracted_slice_28) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %235 = "tosa.exp"(%234#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %236 = "tosa.reduce_sum"(%235) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %237 = "tosa.add"(%236, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %238 = "tosa.log"(%237) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %239 = "tosa.sub"(%234#0, %238) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_29 = tensor.extract_slice %arg3[30, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %240 = "tosa.mul"(%239, %extracted_slice_29) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %241 = "tosa.reduce_sum"(%240) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %242:2 = call @predict(%arg0, %arg1, %234#1, %extracted_slice_29) : (tensor<4x56xf32>, tensor<3x14xf32>, tensor<4x14xf32>, tensor<1x14xf32>) -> (tensor<1x14xf32>, tensor<4x14xf32>)
    %243 = "tosa.exp"(%242#0) : (tensor<1x14xf32>) -> tensor<1x14xf32>
    %244 = "tosa.reduce_sum"(%243) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %245 = "tosa.add"(%244, %0) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32>
    %246 = "tosa.log"(%245) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %247 = "tosa.sub"(%242#0, %246) : (tensor<1x14xf32>, tensor<1x1xf32>) -> tensor<1x14xf32>
    %extracted_slice_30 = tensor.extract_slice %arg3[31, 0] [1, 14] [1, 1] : tensor<32x14xf32> to tensor<1x14xf32>
    %248 = "tosa.mul"(%247, %extracted_slice_30) {shift = 0 : i32} : (tensor<1x14xf32>, tensor<1x14xf32>) -> tensor<1x14xf32>
    %249 = "tosa.reduce_sum"(%248) {axis = 1 : i64} : (tensor<1x14xf32>) -> tensor<1x1xf32>
    %250 = "tosa.add"(%9, %17) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %251 = "tosa.add"(%250, %25) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %252 = "tosa.add"(%251, %33) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %253 = "tosa.add"(%252, %41) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %254 = "tosa.add"(%253, %49) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %255 = "tosa.add"(%254, %57) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %256 = "tosa.add"(%255, %65) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %257 = "tosa.add"(%256, %73) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %258 = "tosa.add"(%257, %81) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %259 = "tosa.add"(%258, %89) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %260 = "tosa.add"(%259, %97) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %261 = "tosa.add"(%260, %105) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %262 = "tosa.add"(%261, %113) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %263 = "tosa.add"(%262, %121) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %264 = "tosa.add"(%263, %129) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %265 = "tosa.add"(%264, %137) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %266 = "tosa.add"(%265, %145) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %267 = "tosa.add"(%266, %153) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %268 = "tosa.add"(%267, %161) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %269 = "tosa.add"(%268, %169) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %270 = "tosa.add"(%269, %177) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %271 = "tosa.add"(%270, %185) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %272 = "tosa.add"(%271, %193) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %273 = "tosa.add"(%272, %201) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %274 = "tosa.add"(%273, %209) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %275 = "tosa.add"(%274, %217) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %276 = "tosa.add"(%275, %225) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %277 = "tosa.add"(%276, %233) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %278 = "tosa.add"(%277, %241) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %279 = "tosa.add"(%278, %249) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %collapsed = tensor.collapse_shape %279 [] : tensor<1x1xf32> into tensor<f32>
    %280 = "tosa.mul"(%collapsed, %1) {shift = 0 : i32} : (tensor<f32>, tensor<f32>) -> tensor<f32>
    return %280 : tensor<f32>
  }
}
