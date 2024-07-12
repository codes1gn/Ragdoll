#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
module {
  ml_program.global private mutable @global0 : tensor<1x3x224x224xf32>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1000xf32>} : () -> tensor<1000xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x768x1000xf32>} : () -> tensor<1x768x1000xf32>
    %2 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x3072x768xf32>} : () -> tensor<1x3072x768xf32>
    %3 = "tosa.const"() {value = dense<3.000000e+00> : tensor<1x197x3072xf32>} : () -> tensor<1x197x3072xf32>
    %4 = "tosa.const"() {value = dense<4.471500e-02> : tensor<1x197x3072xf32>} : () -> tensor<1x197x3072xf32>
    %5 = "tosa.const"() {value = dense<1.57079637> : tensor<1x197x3072xf32>} : () -> tensor<1x197x3072xf32>
    %6 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x197x3072xf32>} : () -> tensor<1x197x3072xf32>
    %7 = "tosa.const"() {value = dense<1.000000e+00> : tensor<1x197x3072xf32>} : () -> tensor<1x197x3072xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<3072xf32>} : () -> tensor<3072xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x768x3072xf32>} : () -> tensor<1x768x3072xf32>
    %10 = "tosa.const"() {value = dense<6.400000e+01> : tensor<f32>} : () -> tensor<f32>
    %11 = "tosa.const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi64>} : () -> tensor<4xi64>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x768x768xf32>} : () -> tensor<1x768x768xf32>
    %13 = "tosa.const"() {value = dense<9.99999997E-7> : tensor<f32>} : () -> tensor<f32>
    %14 = "tosa.const"() {value = dense<0.00130208337> : tensor<f32>} : () -> tensor<f32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1x768xf32>} : () -> tensor<1x1x768xf32>
    %17 = "tosa.const"() {value = dense<[0, 2, 1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %18 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi64>} : () -> tensor<4xi64>
    %19 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi64>} : () -> tensor<4xi64>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<768xf32>} : () -> tensor<768xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<768x16x16x3xf32>} : () -> tensor<768x16x16x3xf32>
    ml_program.global_store @global0 = %arg0 : tensor<1x3x224x224xf32>
    %22 = "tosa.transpose"(%arg0, %19) : (tensor<1x3x224x224xf32>, tensor<4xi64>) -> tensor<1x224x224x3xf32>
    %23 = "tosa.conv2d"(%22, %21, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 16, 16>} : (tensor<1x224x224x3xf32>, tensor<768x16x16x3xf32>, tensor<768xf32>) -> tensor<1x14x14x768xf32>
    %24 = "tosa.transpose"(%23, %18) : (tensor<1x14x14x768xf32>, tensor<4xi64>) -> tensor<1x768x14x14xf32>
    %25 = "tosa.reshape"(%24) {new_shape = array<i64: 1, 768, 196>} : (tensor<1x768x14x14xf32>) -> tensor<1x768x196xf32>
    %26 = "tosa.transpose"(%25, %17) : (tensor<1x768x196xf32>, tensor<3xi64>) -> tensor<1x196x768xf32>
    %27 = tensor.empty() : tensor<1x197x768xf32>
    %inserted_slice = tensor.insert_slice %16 into %27[0, 0, 0] [1, 1, 768] [1, 1, 1] : tensor<1x1x768xf32> into tensor<1x197x768xf32>
    %inserted_slice_0 = tensor.insert_slice %26 into %inserted_slice[0, 1, 0] [1, 196, 768] [1, 1, 1] : tensor<1x196x768xf32> into tensor<1x197x768xf32>
    %28 = "tosa.add"(%inserted_slice_0, %15) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %29 = "tosa.reduce_sum"(%28) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %30 = "tosa.mul"(%29, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %31 = "tosa.sub"(%28, %30) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %32 = "tosa.mul"(%31, %31) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %33 = "tosa.reduce_sum"(%32) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %34 = "tosa.mul"(%33, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %35 = "tosa.add"(%34, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %36 = "tosa.rsqrt"(%35) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %37 = "tosa.mul"(%31, %36) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %38 = "tosa.mul"(%37, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %39 = "tosa.add"(%38, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %40 = "tosa.matmul"(%39, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %41 = "tosa.add"(%40, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %42 = "tosa.reshape"(%41) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %43 = "tosa.transpose"(%42, %11) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %44 = "tosa.reshape"(%43) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %45 = "tosa.transpose"(%44, %17) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %46 = "tosa.matmul"(%44, %45) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %47 = "tosa.rsqrt"(%10) : (tensor<f32>) -> tensor<f32>
    %48 = "tosa.mul"(%46, %47) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %49 = "tosa.exp"(%48) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %50 = "tosa.reduce_sum"(%49) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %51 = "tosa.reciprocal"(%50) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %52 = "tosa.mul"(%49, %51) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %53 = "tosa.matmul"(%52, %44) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %54 = "tosa.reshape"(%53) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %55 = "tosa.transpose"(%54, %11) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %56 = "tosa.reshape"(%55) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %57 = "tosa.matmul"(%56, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %58 = "tosa.add"(%57, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %59 = "tosa.add"(%58, %28) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %60 = "tosa.reduce_sum"(%59) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %61 = "tosa.mul"(%60, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %62 = "tosa.sub"(%59, %61) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %63 = "tosa.mul"(%62, %62) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %64 = "tosa.reduce_sum"(%63) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %65 = "tosa.mul"(%64, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %66 = "tosa.add"(%65, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %67 = "tosa.rsqrt"(%66) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %68 = "tosa.mul"(%62, %67) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %69 = "tosa.mul"(%68, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %70 = "tosa.add"(%69, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %71 = "tosa.matmul"(%70, %9) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %72 = "tosa.add"(%71, %8) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %73 = "tosa.mul"(%72, %6) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %74 = "tosa.rsqrt"(%5) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %75 = "tosa.pow"(%72, %3) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %76 = "tosa.mul"(%75, %4) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %77 = "tosa.add"(%72, %76) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %78 = "tosa.mul"(%74, %77) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %79 = "tosa.tanh"(%78) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %80 = "tosa.add"(%79, %7) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %81 = "tosa.mul"(%73, %80) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %82 = "tosa.matmul"(%81, %2) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %83 = "tosa.add"(%82, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %84 = "tosa.add"(%59, %83) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %85 = "tosa.reduce_sum"(%84) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %86 = "tosa.mul"(%85, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %87 = "tosa.sub"(%84, %86) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %88 = "tosa.mul"(%87, %87) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %89 = "tosa.reduce_sum"(%88) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %90 = "tosa.mul"(%89, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %91 = "tosa.add"(%90, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %92 = "tosa.rsqrt"(%91) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %93 = "tosa.mul"(%87, %92) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %94 = "tosa.mul"(%93, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %95 = "tosa.add"(%94, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %96 = "tosa.matmul"(%95, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %97 = "tosa.add"(%96, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %98 = "tosa.reshape"(%97) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %99 = "tosa.transpose"(%98, %11) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %100 = "tosa.reshape"(%99) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %101 = "tosa.transpose"(%100, %17) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %102 = "tosa.matmul"(%100, %101) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %103 = "tosa.mul"(%102, %47) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %104 = "tosa.exp"(%103) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %105 = "tosa.reduce_sum"(%104) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %106 = "tosa.reciprocal"(%105) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %107 = "tosa.mul"(%104, %106) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %108 = "tosa.matmul"(%107, %100) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %109 = "tosa.reshape"(%108) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %110 = "tosa.transpose"(%109, %11) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %111 = "tosa.reshape"(%110) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %112 = "tosa.matmul"(%111, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %113 = "tosa.add"(%112, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %114 = "tosa.add"(%113, %84) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %115 = "tosa.reduce_sum"(%114) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %116 = "tosa.mul"(%115, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %117 = "tosa.sub"(%114, %116) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %118 = "tosa.mul"(%117, %117) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %119 = "tosa.reduce_sum"(%118) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %120 = "tosa.mul"(%119, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %121 = "tosa.add"(%120, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %122 = "tosa.rsqrt"(%121) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %123 = "tosa.mul"(%117, %122) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %124 = "tosa.mul"(%123, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %125 = "tosa.add"(%124, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %126 = "tosa.matmul"(%125, %9) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %127 = "tosa.add"(%126, %8) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %128 = "tosa.mul"(%127, %6) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %129 = "tosa.pow"(%127, %3) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %130 = "tosa.mul"(%129, %4) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %131 = "tosa.add"(%127, %130) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %132 = "tosa.mul"(%74, %131) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %133 = "tosa.tanh"(%132) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %134 = "tosa.add"(%133, %7) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %135 = "tosa.mul"(%128, %134) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %136 = "tosa.matmul"(%135, %2) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %137 = "tosa.add"(%136, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %138 = "tosa.add"(%114, %137) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %139 = "tosa.reduce_sum"(%138) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %140 = "tosa.mul"(%139, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %141 = "tosa.sub"(%138, %140) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %142 = "tosa.mul"(%141, %141) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %143 = "tosa.reduce_sum"(%142) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %144 = "tosa.mul"(%143, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %145 = "tosa.add"(%144, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %146 = "tosa.rsqrt"(%145) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %147 = "tosa.mul"(%141, %146) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %148 = "tosa.mul"(%147, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %149 = "tosa.add"(%148, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %150 = "tosa.matmul"(%149, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %151 = "tosa.add"(%150, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %152 = "tosa.reshape"(%151) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %153 = "tosa.transpose"(%152, %11) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %154 = "tosa.reshape"(%153) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %155 = "tosa.transpose"(%154, %17) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %156 = "tosa.matmul"(%154, %155) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %157 = "tosa.mul"(%156, %47) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %158 = "tosa.exp"(%157) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %159 = "tosa.reduce_sum"(%158) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %160 = "tosa.reciprocal"(%159) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %161 = "tosa.mul"(%158, %160) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %162 = "tosa.matmul"(%161, %154) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %163 = "tosa.reshape"(%162) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %164 = "tosa.transpose"(%163, %11) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %165 = "tosa.reshape"(%164) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %166 = "tosa.matmul"(%165, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %167 = "tosa.add"(%166, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %168 = "tosa.add"(%167, %138) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %169 = "tosa.reduce_sum"(%168) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %170 = "tosa.mul"(%169, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %171 = "tosa.sub"(%168, %170) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %172 = "tosa.mul"(%171, %171) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %173 = "tosa.reduce_sum"(%172) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %174 = "tosa.mul"(%173, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %175 = "tosa.add"(%174, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %176 = "tosa.rsqrt"(%175) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %177 = "tosa.mul"(%171, %176) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %178 = "tosa.mul"(%177, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %179 = "tosa.add"(%178, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %180 = "tosa.matmul"(%179, %9) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %181 = "tosa.add"(%180, %8) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %182 = "tosa.mul"(%181, %6) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %183 = "tosa.pow"(%181, %3) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %184 = "tosa.mul"(%183, %4) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %185 = "tosa.add"(%181, %184) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %186 = "tosa.mul"(%74, %185) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %187 = "tosa.tanh"(%186) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %188 = "tosa.add"(%187, %7) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %189 = "tosa.mul"(%182, %188) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %190 = "tosa.matmul"(%189, %2) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %191 = "tosa.add"(%190, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %192 = "tosa.add"(%168, %191) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %193 = "tosa.reduce_sum"(%192) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %194 = "tosa.mul"(%193, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %195 = "tosa.sub"(%192, %194) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %196 = "tosa.mul"(%195, %195) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %197 = "tosa.reduce_sum"(%196) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %198 = "tosa.mul"(%197, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %199 = "tosa.add"(%198, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %200 = "tosa.rsqrt"(%199) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %201 = "tosa.mul"(%195, %200) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %202 = "tosa.mul"(%201, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %203 = "tosa.add"(%202, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %204 = "tosa.matmul"(%203, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %205 = "tosa.add"(%204, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %206 = "tosa.reshape"(%205) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %207 = "tosa.transpose"(%206, %11) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %208 = "tosa.reshape"(%207) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %209 = "tosa.transpose"(%208, %17) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %210 = "tosa.matmul"(%208, %209) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %211 = "tosa.mul"(%210, %47) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %212 = "tosa.exp"(%211) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %213 = "tosa.reduce_sum"(%212) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %214 = "tosa.reciprocal"(%213) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %215 = "tosa.mul"(%212, %214) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %216 = "tosa.matmul"(%215, %208) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %217 = "tosa.reshape"(%216) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %218 = "tosa.transpose"(%217, %11) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %219 = "tosa.reshape"(%218) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %220 = "tosa.matmul"(%219, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %221 = "tosa.add"(%220, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %222 = "tosa.add"(%221, %192) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %223 = "tosa.reduce_sum"(%222) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %224 = "tosa.mul"(%223, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %225 = "tosa.sub"(%222, %224) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %226 = "tosa.mul"(%225, %225) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %227 = "tosa.reduce_sum"(%226) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %228 = "tosa.mul"(%227, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %229 = "tosa.add"(%228, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %230 = "tosa.rsqrt"(%229) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %231 = "tosa.mul"(%225, %230) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %232 = "tosa.mul"(%231, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %233 = "tosa.add"(%232, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %234 = "tosa.matmul"(%233, %9) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %235 = "tosa.add"(%234, %8) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %236 = "tosa.mul"(%235, %6) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %237 = "tosa.pow"(%235, %3) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %238 = "tosa.mul"(%237, %4) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %239 = "tosa.add"(%235, %238) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %240 = "tosa.mul"(%74, %239) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %241 = "tosa.tanh"(%240) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %242 = "tosa.add"(%241, %7) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %243 = "tosa.mul"(%236, %242) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %244 = "tosa.matmul"(%243, %2) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %245 = "tosa.add"(%244, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %246 = "tosa.add"(%222, %245) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %247 = "tosa.reduce_sum"(%246) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %248 = "tosa.mul"(%247, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %249 = "tosa.sub"(%246, %248) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %250 = "tosa.mul"(%249, %249) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %251 = "tosa.reduce_sum"(%250) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %252 = "tosa.mul"(%251, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %253 = "tosa.add"(%252, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %254 = "tosa.rsqrt"(%253) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %255 = "tosa.mul"(%249, %254) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %256 = "tosa.mul"(%255, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %257 = "tosa.add"(%256, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %258 = "tosa.matmul"(%257, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %259 = "tosa.add"(%258, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %260 = "tosa.reshape"(%259) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %261 = "tosa.transpose"(%260, %11) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %262 = "tosa.reshape"(%261) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %263 = "tosa.transpose"(%262, %17) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %264 = "tosa.matmul"(%262, %263) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %265 = "tosa.mul"(%264, %47) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %266 = "tosa.exp"(%265) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %267 = "tosa.reduce_sum"(%266) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %268 = "tosa.reciprocal"(%267) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %269 = "tosa.mul"(%266, %268) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %270 = "tosa.matmul"(%269, %262) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %271 = "tosa.reshape"(%270) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %272 = "tosa.transpose"(%271, %11) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %273 = "tosa.reshape"(%272) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %274 = "tosa.matmul"(%273, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %275 = "tosa.add"(%274, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %276 = "tosa.add"(%275, %246) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %277 = "tosa.reduce_sum"(%276) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %278 = "tosa.mul"(%277, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %279 = "tosa.sub"(%276, %278) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %280 = "tosa.mul"(%279, %279) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %281 = "tosa.reduce_sum"(%280) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %282 = "tosa.mul"(%281, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %283 = "tosa.add"(%282, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %284 = "tosa.rsqrt"(%283) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %285 = "tosa.mul"(%279, %284) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %286 = "tosa.mul"(%285, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %287 = "tosa.add"(%286, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %288 = "tosa.matmul"(%287, %9) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %289 = "tosa.add"(%288, %8) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %290 = "tosa.mul"(%289, %6) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %291 = "tosa.pow"(%289, %3) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %292 = "tosa.mul"(%291, %4) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %293 = "tosa.add"(%289, %292) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %294 = "tosa.mul"(%74, %293) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %295 = "tosa.tanh"(%294) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %296 = "tosa.add"(%295, %7) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %297 = "tosa.mul"(%290, %296) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %298 = "tosa.matmul"(%297, %2) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %299 = "tosa.add"(%298, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %300 = "tosa.add"(%276, %299) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %301 = "tosa.reduce_sum"(%300) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %302 = "tosa.mul"(%301, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %303 = "tosa.sub"(%300, %302) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %304 = "tosa.mul"(%303, %303) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %305 = "tosa.reduce_sum"(%304) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %306 = "tosa.mul"(%305, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %307 = "tosa.add"(%306, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %308 = "tosa.rsqrt"(%307) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %309 = "tosa.mul"(%303, %308) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %310 = "tosa.mul"(%309, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %311 = "tosa.add"(%310, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %312 = "tosa.matmul"(%311, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %313 = "tosa.add"(%312, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %314 = "tosa.reshape"(%313) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %315 = "tosa.transpose"(%314, %11) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %316 = "tosa.reshape"(%315) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %317 = "tosa.transpose"(%316, %17) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %318 = "tosa.matmul"(%316, %317) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %319 = "tosa.mul"(%318, %47) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %320 = "tosa.exp"(%319) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %321 = "tosa.reduce_sum"(%320) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %322 = "tosa.reciprocal"(%321) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %323 = "tosa.mul"(%320, %322) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %324 = "tosa.matmul"(%323, %316) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %325 = "tosa.reshape"(%324) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %326 = "tosa.transpose"(%325, %11) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %327 = "tosa.reshape"(%326) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %328 = "tosa.matmul"(%327, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %329 = "tosa.add"(%328, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %330 = "tosa.add"(%329, %300) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %331 = "tosa.reduce_sum"(%330) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %332 = "tosa.mul"(%331, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %333 = "tosa.sub"(%330, %332) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %334 = "tosa.mul"(%333, %333) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %335 = "tosa.reduce_sum"(%334) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %336 = "tosa.mul"(%335, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %337 = "tosa.add"(%336, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %338 = "tosa.rsqrt"(%337) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %339 = "tosa.mul"(%333, %338) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %340 = "tosa.mul"(%339, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %341 = "tosa.add"(%340, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %342 = "tosa.matmul"(%341, %9) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %343 = "tosa.add"(%342, %8) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %344 = "tosa.mul"(%343, %6) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %345 = "tosa.pow"(%343, %3) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %346 = "tosa.mul"(%345, %4) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %347 = "tosa.add"(%343, %346) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %348 = "tosa.mul"(%74, %347) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %349 = "tosa.tanh"(%348) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %350 = "tosa.add"(%349, %7) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %351 = "tosa.mul"(%344, %350) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %352 = "tosa.matmul"(%351, %2) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %353 = "tosa.add"(%352, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %354 = "tosa.add"(%330, %353) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %355 = "tosa.reduce_sum"(%354) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %356 = "tosa.mul"(%355, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %357 = "tosa.sub"(%354, %356) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %358 = "tosa.mul"(%357, %357) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %359 = "tosa.reduce_sum"(%358) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %360 = "tosa.mul"(%359, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %361 = "tosa.add"(%360, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %362 = "tosa.rsqrt"(%361) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %363 = "tosa.mul"(%357, %362) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %364 = "tosa.mul"(%363, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %365 = "tosa.add"(%364, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %366 = "tosa.matmul"(%365, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %367 = "tosa.add"(%366, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %368 = "tosa.reshape"(%367) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %369 = "tosa.transpose"(%368, %11) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %370 = "tosa.reshape"(%369) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %371 = "tosa.transpose"(%370, %17) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %372 = "tosa.matmul"(%370, %371) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %373 = "tosa.mul"(%372, %47) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %374 = "tosa.exp"(%373) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %375 = "tosa.reduce_sum"(%374) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %376 = "tosa.reciprocal"(%375) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %377 = "tosa.mul"(%374, %376) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %378 = "tosa.matmul"(%377, %370) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %379 = "tosa.reshape"(%378) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %380 = "tosa.transpose"(%379, %11) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %381 = "tosa.reshape"(%380) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %382 = "tosa.matmul"(%381, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %383 = "tosa.add"(%382, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %384 = "tosa.add"(%383, %354) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %385 = "tosa.reduce_sum"(%384) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %386 = "tosa.mul"(%385, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %387 = "tosa.sub"(%384, %386) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %388 = "tosa.mul"(%387, %387) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %389 = "tosa.reduce_sum"(%388) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %390 = "tosa.mul"(%389, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %391 = "tosa.add"(%390, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %392 = "tosa.rsqrt"(%391) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %393 = "tosa.mul"(%387, %392) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %394 = "tosa.mul"(%393, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %395 = "tosa.add"(%394, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %396 = "tosa.matmul"(%395, %9) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %397 = "tosa.add"(%396, %8) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %398 = "tosa.mul"(%397, %6) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %399 = "tosa.pow"(%397, %3) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %400 = "tosa.mul"(%399, %4) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %401 = "tosa.add"(%397, %400) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %402 = "tosa.mul"(%74, %401) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %403 = "tosa.tanh"(%402) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %404 = "tosa.add"(%403, %7) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %405 = "tosa.mul"(%398, %404) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %406 = "tosa.matmul"(%405, %2) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %407 = "tosa.add"(%406, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %408 = "tosa.add"(%384, %407) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %409 = "tosa.reduce_sum"(%408) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %410 = "tosa.mul"(%409, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %411 = "tosa.sub"(%408, %410) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %412 = "tosa.mul"(%411, %411) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %413 = "tosa.reduce_sum"(%412) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %414 = "tosa.mul"(%413, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %415 = "tosa.add"(%414, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %416 = "tosa.rsqrt"(%415) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %417 = "tosa.mul"(%411, %416) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %418 = "tosa.mul"(%417, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %419 = "tosa.add"(%418, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %420 = "tosa.matmul"(%419, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %421 = "tosa.add"(%420, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %422 = "tosa.reshape"(%421) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %423 = "tosa.transpose"(%422, %11) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %424 = "tosa.reshape"(%423) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %425 = "tosa.transpose"(%424, %17) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %426 = "tosa.matmul"(%424, %425) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %427 = "tosa.mul"(%426, %47) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %428 = "tosa.exp"(%427) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %429 = "tosa.reduce_sum"(%428) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %430 = "tosa.reciprocal"(%429) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %431 = "tosa.mul"(%428, %430) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %432 = "tosa.matmul"(%431, %424) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %433 = "tosa.reshape"(%432) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %434 = "tosa.transpose"(%433, %11) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %435 = "tosa.reshape"(%434) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %436 = "tosa.matmul"(%435, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %437 = "tosa.add"(%436, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %438 = "tosa.add"(%437, %408) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %439 = "tosa.reduce_sum"(%438) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %440 = "tosa.mul"(%439, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %441 = "tosa.sub"(%438, %440) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %442 = "tosa.mul"(%441, %441) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %443 = "tosa.reduce_sum"(%442) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %444 = "tosa.mul"(%443, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %445 = "tosa.add"(%444, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %446 = "tosa.rsqrt"(%445) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %447 = "tosa.mul"(%441, %446) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %448 = "tosa.mul"(%447, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %449 = "tosa.add"(%448, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %450 = "tosa.matmul"(%449, %9) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %451 = "tosa.add"(%450, %8) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %452 = "tosa.mul"(%451, %6) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %453 = "tosa.pow"(%451, %3) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %454 = "tosa.mul"(%453, %4) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %455 = "tosa.add"(%451, %454) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %456 = "tosa.mul"(%74, %455) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %457 = "tosa.tanh"(%456) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %458 = "tosa.add"(%457, %7) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %459 = "tosa.mul"(%452, %458) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %460 = "tosa.matmul"(%459, %2) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %461 = "tosa.add"(%460, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %462 = "tosa.add"(%438, %461) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %463 = "tosa.reduce_sum"(%462) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %464 = "tosa.mul"(%463, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %465 = "tosa.sub"(%462, %464) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %466 = "tosa.mul"(%465, %465) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %467 = "tosa.reduce_sum"(%466) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %468 = "tosa.mul"(%467, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %469 = "tosa.add"(%468, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %470 = "tosa.rsqrt"(%469) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %471 = "tosa.mul"(%465, %470) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %472 = "tosa.mul"(%471, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %473 = "tosa.add"(%472, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %474 = "tosa.matmul"(%473, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %475 = "tosa.add"(%474, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %476 = "tosa.reshape"(%475) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %477 = "tosa.transpose"(%476, %11) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %478 = "tosa.reshape"(%477) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %479 = "tosa.transpose"(%478, %17) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %480 = "tosa.matmul"(%478, %479) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %481 = "tosa.mul"(%480, %47) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %482 = "tosa.exp"(%481) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %483 = "tosa.reduce_sum"(%482) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %484 = "tosa.reciprocal"(%483) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %485 = "tosa.mul"(%482, %484) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %486 = "tosa.matmul"(%485, %478) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %487 = "tosa.reshape"(%486) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %488 = "tosa.transpose"(%487, %11) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %489 = "tosa.reshape"(%488) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %490 = "tosa.matmul"(%489, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %491 = "tosa.add"(%490, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %492 = "tosa.add"(%491, %462) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %493 = "tosa.reduce_sum"(%492) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %494 = "tosa.mul"(%493, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %495 = "tosa.sub"(%492, %494) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %496 = "tosa.mul"(%495, %495) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %497 = "tosa.reduce_sum"(%496) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %498 = "tosa.mul"(%497, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %499 = "tosa.add"(%498, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %500 = "tosa.rsqrt"(%499) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %501 = "tosa.mul"(%495, %500) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %502 = "tosa.mul"(%501, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %503 = "tosa.add"(%502, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %504 = "tosa.matmul"(%503, %9) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %505 = "tosa.add"(%504, %8) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %506 = "tosa.mul"(%505, %6) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %507 = "tosa.pow"(%505, %3) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %508 = "tosa.mul"(%507, %4) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %509 = "tosa.add"(%505, %508) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %510 = "tosa.mul"(%74, %509) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %511 = "tosa.tanh"(%510) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %512 = "tosa.add"(%511, %7) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %513 = "tosa.mul"(%506, %512) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %514 = "tosa.matmul"(%513, %2) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %515 = "tosa.add"(%514, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %516 = "tosa.add"(%492, %515) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %517 = "tosa.reduce_sum"(%516) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %518 = "tosa.mul"(%517, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %519 = "tosa.sub"(%516, %518) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %520 = "tosa.mul"(%519, %519) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %521 = "tosa.reduce_sum"(%520) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %522 = "tosa.mul"(%521, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %523 = "tosa.add"(%522, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %524 = "tosa.rsqrt"(%523) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %525 = "tosa.mul"(%519, %524) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %526 = "tosa.mul"(%525, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %527 = "tosa.add"(%526, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %528 = "tosa.matmul"(%527, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %529 = "tosa.add"(%528, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %530 = "tosa.reshape"(%529) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %531 = "tosa.transpose"(%530, %11) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %532 = "tosa.reshape"(%531) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %533 = "tosa.transpose"(%532, %17) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %534 = "tosa.matmul"(%532, %533) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %535 = "tosa.mul"(%534, %47) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %536 = "tosa.exp"(%535) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %537 = "tosa.reduce_sum"(%536) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %538 = "tosa.reciprocal"(%537) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %539 = "tosa.mul"(%536, %538) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %540 = "tosa.matmul"(%539, %532) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %541 = "tosa.reshape"(%540) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %542 = "tosa.transpose"(%541, %11) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %543 = "tosa.reshape"(%542) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %544 = "tosa.matmul"(%543, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %545 = "tosa.add"(%544, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %546 = "tosa.add"(%545, %516) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %547 = "tosa.reduce_sum"(%546) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %548 = "tosa.mul"(%547, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %549 = "tosa.sub"(%546, %548) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %550 = "tosa.mul"(%549, %549) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %551 = "tosa.reduce_sum"(%550) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %552 = "tosa.mul"(%551, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %553 = "tosa.add"(%552, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %554 = "tosa.rsqrt"(%553) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %555 = "tosa.mul"(%549, %554) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %556 = "tosa.mul"(%555, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %557 = "tosa.add"(%556, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %558 = "tosa.matmul"(%557, %9) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %559 = "tosa.add"(%558, %8) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %560 = "tosa.mul"(%559, %6) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %561 = "tosa.pow"(%559, %3) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %562 = "tosa.mul"(%561, %4) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %563 = "tosa.add"(%559, %562) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %564 = "tosa.mul"(%74, %563) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %565 = "tosa.tanh"(%564) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %566 = "tosa.add"(%565, %7) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %567 = "tosa.mul"(%560, %566) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %568 = "tosa.matmul"(%567, %2) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %569 = "tosa.add"(%568, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %570 = "tosa.add"(%546, %569) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %571 = "tosa.reduce_sum"(%570) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %572 = "tosa.mul"(%571, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %573 = "tosa.sub"(%570, %572) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %574 = "tosa.mul"(%573, %573) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %575 = "tosa.reduce_sum"(%574) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %576 = "tosa.mul"(%575, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %577 = "tosa.add"(%576, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %578 = "tosa.rsqrt"(%577) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %579 = "tosa.mul"(%573, %578) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %580 = "tosa.mul"(%579, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %581 = "tosa.add"(%580, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %582 = "tosa.matmul"(%581, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %583 = "tosa.add"(%582, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %584 = "tosa.reshape"(%583) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %585 = "tosa.transpose"(%584, %11) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %586 = "tosa.reshape"(%585) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %587 = "tosa.transpose"(%586, %17) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %588 = "tosa.matmul"(%586, %587) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %589 = "tosa.mul"(%588, %47) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %590 = "tosa.exp"(%589) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %591 = "tosa.reduce_sum"(%590) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %592 = "tosa.reciprocal"(%591) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %593 = "tosa.mul"(%590, %592) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %594 = "tosa.matmul"(%593, %586) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %595 = "tosa.reshape"(%594) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %596 = "tosa.transpose"(%595, %11) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %597 = "tosa.reshape"(%596) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %598 = "tosa.matmul"(%597, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %599 = "tosa.add"(%598, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %600 = "tosa.add"(%599, %570) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %601 = "tosa.reduce_sum"(%600) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %602 = "tosa.mul"(%601, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %603 = "tosa.sub"(%600, %602) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %604 = "tosa.mul"(%603, %603) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %605 = "tosa.reduce_sum"(%604) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %606 = "tosa.mul"(%605, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %607 = "tosa.add"(%606, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %608 = "tosa.rsqrt"(%607) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %609 = "tosa.mul"(%603, %608) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %610 = "tosa.mul"(%609, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %611 = "tosa.add"(%610, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %612 = "tosa.matmul"(%611, %9) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %613 = "tosa.add"(%612, %8) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %614 = "tosa.mul"(%613, %6) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %615 = "tosa.pow"(%613, %3) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %616 = "tosa.mul"(%615, %4) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %617 = "tosa.add"(%613, %616) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %618 = "tosa.mul"(%74, %617) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %619 = "tosa.tanh"(%618) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %620 = "tosa.add"(%619, %7) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %621 = "tosa.mul"(%614, %620) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %622 = "tosa.matmul"(%621, %2) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %623 = "tosa.add"(%622, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %624 = "tosa.add"(%600, %623) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %625 = "tosa.reduce_sum"(%624) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %626 = "tosa.mul"(%625, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %627 = "tosa.sub"(%624, %626) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %628 = "tosa.mul"(%627, %627) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %629 = "tosa.reduce_sum"(%628) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %630 = "tosa.mul"(%629, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %631 = "tosa.add"(%630, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %632 = "tosa.rsqrt"(%631) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %633 = "tosa.mul"(%627, %632) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %634 = "tosa.mul"(%633, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %635 = "tosa.add"(%634, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %636 = "tosa.matmul"(%635, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %637 = "tosa.add"(%636, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %638 = "tosa.reshape"(%637) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %639 = "tosa.transpose"(%638, %11) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %640 = "tosa.reshape"(%639) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %641 = "tosa.transpose"(%640, %17) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %642 = "tosa.matmul"(%640, %641) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %643 = "tosa.mul"(%642, %47) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %644 = "tosa.exp"(%643) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %645 = "tosa.reduce_sum"(%644) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %646 = "tosa.reciprocal"(%645) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %647 = "tosa.mul"(%644, %646) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %648 = "tosa.matmul"(%647, %640) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %649 = "tosa.reshape"(%648) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %650 = "tosa.transpose"(%649, %11) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %651 = "tosa.reshape"(%650) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %652 = "tosa.matmul"(%651, %12) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %653 = "tosa.add"(%652, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %654 = "tosa.add"(%653, %624) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %655 = "tosa.reduce_sum"(%654) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %656 = "tosa.mul"(%655, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %657 = "tosa.sub"(%654, %656) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %658 = "tosa.mul"(%657, %657) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %659 = "tosa.reduce_sum"(%658) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %660 = "tosa.mul"(%659, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %661 = "tosa.add"(%660, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %662 = "tosa.rsqrt"(%661) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %663 = "tosa.mul"(%657, %662) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %664 = "tosa.mul"(%663, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %665 = "tosa.add"(%664, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %666 = "tosa.matmul"(%665, %9) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %667 = "tosa.add"(%666, %8) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %668 = "tosa.mul"(%667, %6) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %669 = "tosa.pow"(%667, %3) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %670 = "tosa.mul"(%669, %4) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %671 = "tosa.add"(%667, %670) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %672 = "tosa.mul"(%74, %671) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %673 = "tosa.tanh"(%672) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %674 = "tosa.add"(%673, %7) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %675 = "tosa.mul"(%668, %674) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %676 = "tosa.matmul"(%675, %2) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %677 = "tosa.add"(%676, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %678 = "tosa.add"(%654, %677) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %679 = "tosa.reduce_sum"(%678) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %680 = "tosa.mul"(%679, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %681 = "tosa.sub"(%678, %680) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %682 = "tosa.mul"(%681, %681) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %683 = "tosa.reduce_sum"(%682) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %684 = "tosa.mul"(%683, %14) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %685 = "tosa.add"(%684, %13) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %686 = "tosa.rsqrt"(%685) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %687 = "tosa.mul"(%681, %686) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %688 = "tosa.mul"(%687, %20) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %689 = "tosa.add"(%688, %20) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %extracted_slice = tensor.extract_slice %689[0, 0, 0] [1, 1, 768] [1, 1, 1] : tensor<1x197x768xf32> to tensor<1x1x768xf32>
    %690 = "tosa.matmul"(%extracted_slice, %1) : (tensor<1x1x768xf32>, tensor<1x768x1000xf32>) -> tensor<1x1x1000xf32>
    %691 = "tosa.add"(%690, %0) : (tensor<1x1x1000xf32>, tensor<1000xf32>) -> tensor<1x1x1000xf32>
    %692 = "tosa.reshape"(%691) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    return %692 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %0 = "tosa.const"() {value = dense<3.000000e+00> : tensor<1x197x3072xf32>} : () -> tensor<1x197x3072xf32>
    %1 = "tosa.const"() {value = dense<4.471500e-02> : tensor<1x197x3072xf32>} : () -> tensor<1x197x3072xf32>
    %2 = "tosa.const"() {value = dense<1.57079637> : tensor<1x197x3072xf32>} : () -> tensor<1x197x3072xf32>
    %3 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x197x3072xf32>} : () -> tensor<1x197x3072xf32>
    %4 = "tosa.const"() {value = dense<1.000000e+00> : tensor<1x197x3072xf32>} : () -> tensor<1x197x3072xf32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<3072xf32>} : () -> tensor<3072xf32>
    %6 = "tosa.const"() {value = dense<6.400000e+01> : tensor<f32>} : () -> tensor<f32>
    %7 = "tosa.const"() {value = dense<9.99999997E-7> : tensor<f32>} : () -> tensor<f32>
    %8 = "tosa.const"() {value = dense<0.00130208337> : tensor<f32>} : () -> tensor<f32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1x768xf32>} : () -> tensor<1x1x768xf32>
    %11 = "tosa.const"() {value = dense<7.777000e-02> : tensor<768xf32>} : () -> tensor<768xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<768x16x16x3xf32>} : () -> tensor<768x16x16x3xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000x768xf32>} : () -> tensor<1x1000x768xf32>
    %cst = arith.constant 0.000000e+00 : f32
    %14 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %15 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x768x3072xf32>} : () -> tensor<1x768x3072xf32>
    %17 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x3072x768xf32>} : () -> tensor<1x3072x768xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x768x768xf32>} : () -> tensor<1x768x768xf32>
    %20 = "tosa.const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi64>} : () -> tensor<4xi64>
    %21 = "tosa.const"() {value = dense<[0, 2, 1]> : tensor<3xi32>} : () -> tensor<3xi32>
    %22 = "tosa.const"() {value = dense<[0, 2, 1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %23 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi64>} : () -> tensor<4xi64>
    %24 = "tosa.const"() {value = dense<7.777000e-02> : tensor<3x16x16x768xf32>} : () -> tensor<3x16x16x768xf32>
    %25 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi64>} : () -> tensor<4xi64>
    %26 = ml_program.global_load @global0 : tensor<1x3x224x224xf32>
    %27 = "tosa.transpose"(%26, %23) : (tensor<1x3x224x224xf32>, tensor<4xi64>) -> tensor<1x224x224x3xf32>
    %28 = "tosa.conv2d"(%27, %12, %11) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 16, 16>} : (tensor<1x224x224x3xf32>, tensor<768x16x16x3xf32>, tensor<768xf32>) -> tensor<1x14x14x768xf32>
    %29 = "tosa.transpose"(%28, %25) : (tensor<1x14x14x768xf32>, tensor<4xi64>) -> tensor<1x768x14x14xf32>
    %30 = "tosa.reshape"(%29) {new_shape = array<i64: 1, 768, 196>} : (tensor<1x768x14x14xf32>) -> tensor<1x768x196xf32>
    %31 = "tosa.transpose"(%30, %22) : (tensor<1x768x196xf32>, tensor<3xi64>) -> tensor<1x196x768xf32>
    %32 = tensor.empty() : tensor<1x197x768xf32>
    %inserted_slice = tensor.insert_slice %10 into %32[0, 0, 0] [1, 1, 768] [1, 1, 1] : tensor<1x1x768xf32> into tensor<1x197x768xf32>
    %inserted_slice_0 = tensor.insert_slice %31 into %inserted_slice[0, 1, 0] [1, 196, 768] [1, 1, 1] : tensor<1x196x768xf32> into tensor<1x197x768xf32>
    %33 = "tosa.add"(%inserted_slice_0, %9) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %34 = "tosa.reduce_sum"(%33) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %35 = "tosa.mul"(%34, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %36 = "tosa.sub"(%33, %35) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %37 = "tosa.mul"(%36, %36) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %38 = "tosa.reduce_sum"(%37) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %39 = "tosa.mul"(%38, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %40 = "tosa.add"(%39, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %41 = "tosa.rsqrt"(%40) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %42 = "tosa.mul"(%36, %41) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %43 = "tosa.mul"(%42, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %44 = "tosa.add"(%43, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %45 = "tosa.matmul"(%44, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %46 = "tosa.add"(%45, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %47 = "tosa.reshape"(%46) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %48 = "tosa.transpose"(%47, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %49 = "tosa.reshape"(%48) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %50 = "tosa.transpose"(%49, %22) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %51 = "tosa.matmul"(%49, %50) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %52 = "tosa.rsqrt"(%6) : (tensor<f32>) -> tensor<f32>
    %53 = "tosa.mul"(%51, %52) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %54 = "tosa.exp"(%53) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %55 = "tosa.reduce_sum"(%54) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %56 = "tosa.reciprocal"(%55) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %57 = "tosa.mul"(%54, %56) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %58 = "tosa.matmul"(%57, %49) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %59 = "tosa.reshape"(%58) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %60 = "tosa.transpose"(%59, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %61 = "tosa.reshape"(%60) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %62 = "tosa.matmul"(%61, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %63 = "tosa.add"(%62, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %64 = "tosa.add"(%63, %33) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %65 = "tosa.reduce_sum"(%64) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %66 = "tosa.mul"(%65, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %67 = "tosa.sub"(%64, %66) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %68 = "tosa.mul"(%67, %67) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %69 = "tosa.reduce_sum"(%68) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %70 = "tosa.mul"(%69, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %71 = "tosa.add"(%70, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %72 = "tosa.rsqrt"(%71) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %73 = "tosa.mul"(%67, %72) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %74 = "tosa.mul"(%73, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %75 = "tosa.add"(%74, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %76 = "tosa.matmul"(%75, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %77 = "tosa.add"(%76, %5) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %78 = "tosa.mul"(%77, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %79 = "tosa.rsqrt"(%2) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %80 = "tosa.pow"(%77, %0) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %81 = "tosa.mul"(%80, %1) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %82 = "tosa.add"(%77, %81) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %83 = "tosa.mul"(%79, %82) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %84 = "tosa.tanh"(%83) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %85 = "tosa.add"(%84, %4) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %86 = "tosa.mul"(%78, %85) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %87 = "tosa.matmul"(%86, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %88 = "tosa.add"(%87, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %89 = "tosa.add"(%64, %88) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %90 = "tosa.reduce_sum"(%89) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %91 = "tosa.mul"(%90, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %92 = "tosa.sub"(%89, %91) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %93 = "tosa.mul"(%92, %92) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %94 = "tosa.reduce_sum"(%93) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %95 = "tosa.mul"(%94, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %96 = "tosa.add"(%95, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %97 = "tosa.rsqrt"(%96) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %98 = "tosa.mul"(%92, %97) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %99 = "tosa.mul"(%98, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %100 = "tosa.add"(%99, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %101 = "tosa.matmul"(%100, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %102 = "tosa.add"(%101, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %103 = "tosa.reshape"(%102) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %104 = "tosa.transpose"(%103, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %105 = "tosa.reshape"(%104) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %106 = "tosa.transpose"(%105, %22) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %107 = "tosa.matmul"(%105, %106) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %108 = "tosa.mul"(%107, %52) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %109 = "tosa.exp"(%108) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %110 = "tosa.reduce_sum"(%109) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %111 = "tosa.reciprocal"(%110) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %112 = "tosa.mul"(%109, %111) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %113 = "tosa.matmul"(%112, %105) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %114 = "tosa.reshape"(%113) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %115 = "tosa.transpose"(%114, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %116 = "tosa.reshape"(%115) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %117 = "tosa.matmul"(%116, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %118 = "tosa.add"(%117, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %119 = "tosa.add"(%118, %89) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %120 = "tosa.reduce_sum"(%119) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %121 = "tosa.mul"(%120, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %122 = "tosa.sub"(%119, %121) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %123 = "tosa.mul"(%122, %122) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %124 = "tosa.reduce_sum"(%123) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %125 = "tosa.mul"(%124, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %126 = "tosa.add"(%125, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %127 = "tosa.rsqrt"(%126) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %128 = "tosa.mul"(%122, %127) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %129 = "tosa.mul"(%128, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %130 = "tosa.add"(%129, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %131 = "tosa.matmul"(%130, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %132 = "tosa.add"(%131, %5) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %133 = "tosa.mul"(%132, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %134 = "tosa.pow"(%132, %0) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %135 = "tosa.mul"(%134, %1) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %136 = "tosa.add"(%132, %135) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %137 = "tosa.mul"(%79, %136) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %138 = "tosa.tanh"(%137) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %139 = "tosa.add"(%138, %4) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %140 = "tosa.mul"(%133, %139) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %141 = "tosa.matmul"(%140, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %142 = "tosa.add"(%141, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %143 = "tosa.add"(%119, %142) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %144 = "tosa.reduce_sum"(%143) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %145 = "tosa.mul"(%144, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %146 = "tosa.sub"(%143, %145) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %147 = "tosa.mul"(%146, %146) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %148 = "tosa.reduce_sum"(%147) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %149 = "tosa.mul"(%148, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %150 = "tosa.add"(%149, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %151 = "tosa.rsqrt"(%150) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %152 = "tosa.mul"(%146, %151) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %153 = "tosa.mul"(%152, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %154 = "tosa.add"(%153, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %155 = "tosa.matmul"(%154, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %156 = "tosa.add"(%155, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %157 = "tosa.reshape"(%156) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %158 = "tosa.transpose"(%157, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %159 = "tosa.reshape"(%158) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %160 = "tosa.transpose"(%159, %22) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %161 = "tosa.matmul"(%159, %160) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %162 = "tosa.mul"(%161, %52) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %163 = "tosa.exp"(%162) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %164 = "tosa.reduce_sum"(%163) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %165 = "tosa.reciprocal"(%164) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %166 = "tosa.mul"(%163, %165) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %167 = "tosa.matmul"(%166, %159) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %168 = "tosa.reshape"(%167) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %169 = "tosa.transpose"(%168, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %170 = "tosa.reshape"(%169) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %171 = "tosa.matmul"(%170, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %172 = "tosa.add"(%171, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %173 = "tosa.add"(%172, %143) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %174 = "tosa.reduce_sum"(%173) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %175 = "tosa.mul"(%174, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %176 = "tosa.sub"(%173, %175) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %177 = "tosa.mul"(%176, %176) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %178 = "tosa.reduce_sum"(%177) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %179 = "tosa.mul"(%178, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %180 = "tosa.add"(%179, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %181 = "tosa.rsqrt"(%180) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %182 = "tosa.mul"(%176, %181) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %183 = "tosa.mul"(%182, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %184 = "tosa.add"(%183, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %185 = "tosa.matmul"(%184, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %186 = "tosa.add"(%185, %5) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %187 = "tosa.mul"(%186, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %188 = "tosa.pow"(%186, %0) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %189 = "tosa.mul"(%188, %1) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %190 = "tosa.add"(%186, %189) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %191 = "tosa.mul"(%79, %190) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %192 = "tosa.tanh"(%191) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %193 = "tosa.add"(%192, %4) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %194 = "tosa.mul"(%187, %193) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %195 = "tosa.matmul"(%194, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %196 = "tosa.add"(%195, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %197 = "tosa.add"(%173, %196) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %198 = "tosa.reduce_sum"(%197) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %199 = "tosa.mul"(%198, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %200 = "tosa.sub"(%197, %199) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %201 = "tosa.mul"(%200, %200) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %202 = "tosa.reduce_sum"(%201) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %203 = "tosa.mul"(%202, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %204 = "tosa.add"(%203, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %205 = "tosa.rsqrt"(%204) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %206 = "tosa.mul"(%200, %205) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %207 = "tosa.mul"(%206, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %208 = "tosa.add"(%207, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %209 = "tosa.matmul"(%208, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %210 = "tosa.add"(%209, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %211 = "tosa.reshape"(%210) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %212 = "tosa.transpose"(%211, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %213 = "tosa.reshape"(%212) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %214 = "tosa.transpose"(%213, %22) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %215 = "tosa.matmul"(%213, %214) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %216 = "tosa.mul"(%215, %52) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %217 = "tosa.exp"(%216) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %218 = "tosa.reduce_sum"(%217) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %219 = "tosa.reciprocal"(%218) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %220 = "tosa.mul"(%217, %219) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %221 = "tosa.matmul"(%220, %213) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %222 = "tosa.reshape"(%221) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %223 = "tosa.transpose"(%222, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %224 = "tosa.reshape"(%223) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %225 = "tosa.matmul"(%224, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %226 = "tosa.add"(%225, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %227 = "tosa.add"(%226, %197) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %228 = "tosa.reduce_sum"(%227) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %229 = "tosa.mul"(%228, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %230 = "tosa.sub"(%227, %229) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %231 = "tosa.mul"(%230, %230) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %232 = "tosa.reduce_sum"(%231) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %233 = "tosa.mul"(%232, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %234 = "tosa.add"(%233, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %235 = "tosa.rsqrt"(%234) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %236 = "tosa.mul"(%230, %235) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %237 = "tosa.mul"(%236, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %238 = "tosa.add"(%237, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %239 = "tosa.matmul"(%238, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %240 = "tosa.add"(%239, %5) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %241 = "tosa.mul"(%240, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %242 = "tosa.pow"(%240, %0) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %243 = "tosa.mul"(%242, %1) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %244 = "tosa.add"(%240, %243) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %245 = "tosa.mul"(%79, %244) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %246 = "tosa.tanh"(%245) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %247 = "tosa.add"(%246, %4) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %248 = "tosa.mul"(%241, %247) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %249 = "tosa.matmul"(%248, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %250 = "tosa.add"(%249, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %251 = "tosa.add"(%227, %250) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %252 = "tosa.reduce_sum"(%251) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %253 = "tosa.mul"(%252, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %254 = "tosa.sub"(%251, %253) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %255 = "tosa.mul"(%254, %254) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %256 = "tosa.reduce_sum"(%255) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %257 = "tosa.mul"(%256, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %258 = "tosa.add"(%257, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %259 = "tosa.rsqrt"(%258) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %260 = "tosa.mul"(%254, %259) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %261 = "tosa.mul"(%260, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %262 = "tosa.add"(%261, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %263 = "tosa.matmul"(%262, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %264 = "tosa.add"(%263, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %265 = "tosa.reshape"(%264) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %266 = "tosa.transpose"(%265, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %267 = "tosa.reshape"(%266) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %268 = "tosa.transpose"(%267, %22) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %269 = "tosa.matmul"(%267, %268) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %270 = "tosa.mul"(%269, %52) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %271 = "tosa.exp"(%270) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %272 = "tosa.reduce_sum"(%271) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %273 = "tosa.reciprocal"(%272) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %274 = "tosa.mul"(%271, %273) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %275 = "tosa.matmul"(%274, %267) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %276 = "tosa.reshape"(%275) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %277 = "tosa.transpose"(%276, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %278 = "tosa.reshape"(%277) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %279 = "tosa.matmul"(%278, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %280 = "tosa.add"(%279, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %281 = "tosa.add"(%280, %251) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %282 = "tosa.reduce_sum"(%281) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %283 = "tosa.mul"(%282, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %284 = "tosa.sub"(%281, %283) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %285 = "tosa.mul"(%284, %284) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %286 = "tosa.reduce_sum"(%285) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %287 = "tosa.mul"(%286, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %288 = "tosa.add"(%287, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %289 = "tosa.rsqrt"(%288) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %290 = "tosa.mul"(%284, %289) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %291 = "tosa.mul"(%290, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %292 = "tosa.add"(%291, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %293 = "tosa.matmul"(%292, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %294 = "tosa.add"(%293, %5) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %295 = "tosa.mul"(%294, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %296 = "tosa.pow"(%294, %0) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %297 = "tosa.mul"(%296, %1) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %298 = "tosa.add"(%294, %297) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %299 = "tosa.mul"(%79, %298) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %300 = "tosa.tanh"(%299) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %301 = "tosa.add"(%300, %4) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %302 = "tosa.mul"(%295, %301) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %303 = "tosa.matmul"(%302, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %304 = "tosa.add"(%303, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %305 = "tosa.add"(%281, %304) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %306 = "tosa.reduce_sum"(%305) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %307 = "tosa.mul"(%306, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %308 = "tosa.sub"(%305, %307) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %309 = "tosa.mul"(%308, %308) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %310 = "tosa.reduce_sum"(%309) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %311 = "tosa.mul"(%310, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %312 = "tosa.add"(%311, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %313 = "tosa.rsqrt"(%312) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %314 = "tosa.mul"(%308, %313) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %315 = "tosa.mul"(%314, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %316 = "tosa.add"(%315, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %317 = "tosa.matmul"(%316, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %318 = "tosa.add"(%317, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %319 = "tosa.reshape"(%318) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %320 = "tosa.transpose"(%319, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %321 = "tosa.reshape"(%320) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %322 = "tosa.transpose"(%321, %22) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %323 = "tosa.matmul"(%321, %322) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %324 = "tosa.mul"(%323, %52) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %325 = "tosa.exp"(%324) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %326 = "tosa.reduce_sum"(%325) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %327 = "tosa.reciprocal"(%326) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %328 = "tosa.mul"(%325, %327) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %329 = "tosa.matmul"(%328, %321) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %330 = "tosa.reshape"(%329) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %331 = "tosa.transpose"(%330, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %332 = "tosa.reshape"(%331) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %333 = "tosa.matmul"(%332, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %334 = "tosa.add"(%333, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %335 = "tosa.add"(%334, %305) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %336 = "tosa.reduce_sum"(%335) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %337 = "tosa.mul"(%336, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %338 = "tosa.sub"(%335, %337) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %339 = "tosa.mul"(%338, %338) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %340 = "tosa.reduce_sum"(%339) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %341 = "tosa.mul"(%340, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %342 = "tosa.add"(%341, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %343 = "tosa.rsqrt"(%342) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %344 = "tosa.mul"(%338, %343) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %345 = "tosa.mul"(%344, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %346 = "tosa.add"(%345, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %347 = "tosa.matmul"(%346, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %348 = "tosa.add"(%347, %5) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %349 = "tosa.mul"(%348, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %350 = "tosa.pow"(%348, %0) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %351 = "tosa.mul"(%350, %1) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %352 = "tosa.add"(%348, %351) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %353 = "tosa.mul"(%79, %352) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %354 = "tosa.tanh"(%353) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %355 = "tosa.add"(%354, %4) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %356 = "tosa.mul"(%349, %355) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %357 = "tosa.matmul"(%356, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %358 = "tosa.add"(%357, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %359 = "tosa.add"(%335, %358) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %360 = "tosa.reduce_sum"(%359) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %361 = "tosa.mul"(%360, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %362 = "tosa.sub"(%359, %361) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %363 = "tosa.mul"(%362, %362) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %364 = "tosa.reduce_sum"(%363) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %365 = "tosa.mul"(%364, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %366 = "tosa.add"(%365, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %367 = "tosa.rsqrt"(%366) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %368 = "tosa.mul"(%362, %367) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %369 = "tosa.mul"(%368, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %370 = "tosa.add"(%369, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %371 = "tosa.matmul"(%370, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %372 = "tosa.add"(%371, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %373 = "tosa.reshape"(%372) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %374 = "tosa.transpose"(%373, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %375 = "tosa.reshape"(%374) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %376 = "tosa.transpose"(%375, %22) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %377 = "tosa.matmul"(%375, %376) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %378 = "tosa.mul"(%377, %52) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %379 = "tosa.exp"(%378) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %380 = "tosa.reduce_sum"(%379) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %381 = "tosa.reciprocal"(%380) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %382 = "tosa.mul"(%379, %381) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %383 = "tosa.matmul"(%382, %375) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %384 = "tosa.reshape"(%383) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %385 = "tosa.transpose"(%384, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %386 = "tosa.reshape"(%385) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %387 = "tosa.matmul"(%386, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %388 = "tosa.add"(%387, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %389 = "tosa.add"(%388, %359) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %390 = "tosa.reduce_sum"(%389) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %391 = "tosa.mul"(%390, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %392 = "tosa.sub"(%389, %391) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %393 = "tosa.mul"(%392, %392) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %394 = "tosa.reduce_sum"(%393) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %395 = "tosa.mul"(%394, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %396 = "tosa.add"(%395, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %397 = "tosa.rsqrt"(%396) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %398 = "tosa.mul"(%392, %397) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %399 = "tosa.mul"(%398, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %400 = "tosa.add"(%399, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %401 = "tosa.matmul"(%400, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %402 = "tosa.add"(%401, %5) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %403 = "tosa.mul"(%402, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %404 = "tosa.pow"(%402, %0) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %405 = "tosa.mul"(%404, %1) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %406 = "tosa.add"(%402, %405) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %407 = "tosa.mul"(%79, %406) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %408 = "tosa.tanh"(%407) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %409 = "tosa.add"(%408, %4) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %410 = "tosa.mul"(%403, %409) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %411 = "tosa.matmul"(%410, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %412 = "tosa.add"(%411, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %413 = "tosa.add"(%389, %412) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %414 = "tosa.reduce_sum"(%413) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %415 = "tosa.mul"(%414, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %416 = "tosa.sub"(%413, %415) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %417 = "tosa.mul"(%416, %416) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %418 = "tosa.reduce_sum"(%417) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %419 = "tosa.mul"(%418, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %420 = "tosa.add"(%419, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %421 = "tosa.rsqrt"(%420) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %422 = "tosa.mul"(%416, %421) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %423 = "tosa.mul"(%422, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %424 = "tosa.add"(%423, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %425 = "tosa.matmul"(%424, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %426 = "tosa.add"(%425, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %427 = "tosa.reshape"(%426) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %428 = "tosa.transpose"(%427, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %429 = "tosa.reshape"(%428) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %430 = "tosa.transpose"(%429, %22) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %431 = "tosa.matmul"(%429, %430) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %432 = "tosa.mul"(%431, %52) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %433 = "tosa.exp"(%432) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %434 = "tosa.reduce_sum"(%433) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %435 = "tosa.reciprocal"(%434) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %436 = "tosa.mul"(%433, %435) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %437 = "tosa.matmul"(%436, %429) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %438 = "tosa.reshape"(%437) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %439 = "tosa.transpose"(%438, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %440 = "tosa.reshape"(%439) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %441 = "tosa.matmul"(%440, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %442 = "tosa.add"(%441, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %443 = "tosa.add"(%442, %413) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %444 = "tosa.reduce_sum"(%443) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %445 = "tosa.mul"(%444, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %446 = "tosa.sub"(%443, %445) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %447 = "tosa.mul"(%446, %446) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %448 = "tosa.reduce_sum"(%447) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %449 = "tosa.mul"(%448, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %450 = "tosa.add"(%449, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %451 = "tosa.rsqrt"(%450) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %452 = "tosa.mul"(%446, %451) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %453 = "tosa.mul"(%452, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %454 = "tosa.add"(%453, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %455 = "tosa.matmul"(%454, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %456 = "tosa.add"(%455, %5) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %457 = "tosa.mul"(%456, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %458 = "tosa.pow"(%456, %0) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %459 = "tosa.mul"(%458, %1) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %460 = "tosa.add"(%456, %459) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %461 = "tosa.mul"(%79, %460) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %462 = "tosa.tanh"(%461) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %463 = "tosa.add"(%462, %4) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %464 = "tosa.mul"(%457, %463) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %465 = "tosa.matmul"(%464, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %466 = "tosa.add"(%465, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %467 = "tosa.add"(%443, %466) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %468 = "tosa.reduce_sum"(%467) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %469 = "tosa.mul"(%468, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %470 = "tosa.sub"(%467, %469) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %471 = "tosa.mul"(%470, %470) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %472 = "tosa.reduce_sum"(%471) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %473 = "tosa.mul"(%472, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %474 = "tosa.add"(%473, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %475 = "tosa.rsqrt"(%474) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %476 = "tosa.mul"(%470, %475) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %477 = "tosa.mul"(%476, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %478 = "tosa.add"(%477, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %479 = "tosa.matmul"(%478, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %480 = "tosa.add"(%479, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %481 = "tosa.reshape"(%480) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %482 = "tosa.transpose"(%481, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %483 = "tosa.reshape"(%482) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %484 = "tosa.transpose"(%483, %22) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %485 = "tosa.matmul"(%483, %484) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %486 = "tosa.mul"(%485, %52) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %487 = "tosa.exp"(%486) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %488 = "tosa.reduce_sum"(%487) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %489 = "tosa.reciprocal"(%488) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %490 = "tosa.mul"(%487, %489) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %491 = "tosa.matmul"(%490, %483) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %492 = "tosa.reshape"(%491) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %493 = "tosa.transpose"(%492, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %494 = "tosa.reshape"(%493) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %495 = "tosa.matmul"(%494, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %496 = "tosa.add"(%495, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %497 = "tosa.add"(%496, %467) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %498 = "tosa.reduce_sum"(%497) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %499 = "tosa.mul"(%498, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %500 = "tosa.sub"(%497, %499) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %501 = "tosa.mul"(%500, %500) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %502 = "tosa.reduce_sum"(%501) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %503 = "tosa.mul"(%502, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %504 = "tosa.add"(%503, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %505 = "tosa.rsqrt"(%504) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %506 = "tosa.mul"(%500, %505) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %507 = "tosa.mul"(%506, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %508 = "tosa.add"(%507, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %509 = "tosa.matmul"(%508, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %510 = "tosa.add"(%509, %5) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %511 = "tosa.mul"(%510, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %512 = "tosa.pow"(%510, %0) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %513 = "tosa.mul"(%512, %1) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %514 = "tosa.add"(%510, %513) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %515 = "tosa.mul"(%79, %514) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %516 = "tosa.tanh"(%515) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %517 = "tosa.add"(%516, %4) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %518 = "tosa.mul"(%511, %517) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %519 = "tosa.matmul"(%518, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %520 = "tosa.add"(%519, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %521 = "tosa.add"(%497, %520) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %522 = "tosa.reduce_sum"(%521) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %523 = "tosa.mul"(%522, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %524 = "tosa.sub"(%521, %523) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %525 = "tosa.mul"(%524, %524) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %526 = "tosa.reduce_sum"(%525) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %527 = "tosa.mul"(%526, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %528 = "tosa.add"(%527, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %529 = "tosa.rsqrt"(%528) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %530 = "tosa.mul"(%524, %529) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %531 = "tosa.mul"(%530, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %532 = "tosa.add"(%531, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %533 = "tosa.matmul"(%532, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %534 = "tosa.add"(%533, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %535 = "tosa.reshape"(%534) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %536 = "tosa.transpose"(%535, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %537 = "tosa.reshape"(%536) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %538 = "tosa.transpose"(%537, %22) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %539 = "tosa.matmul"(%537, %538) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %540 = "tosa.mul"(%539, %52) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %541 = "tosa.exp"(%540) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %542 = "tosa.reduce_sum"(%541) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %543 = "tosa.reciprocal"(%542) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %544 = "tosa.mul"(%541, %543) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %545 = "tosa.matmul"(%544, %537) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %546 = "tosa.reshape"(%545) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %547 = "tosa.transpose"(%546, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %548 = "tosa.reshape"(%547) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %549 = "tosa.matmul"(%548, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %550 = "tosa.add"(%549, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %551 = "tosa.add"(%550, %521) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %552 = "tosa.reduce_sum"(%551) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %553 = "tosa.mul"(%552, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %554 = "tosa.sub"(%551, %553) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %555 = "tosa.mul"(%554, %554) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %556 = "tosa.reduce_sum"(%555) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %557 = "tosa.mul"(%556, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %558 = "tosa.add"(%557, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %559 = "tosa.rsqrt"(%558) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %560 = "tosa.mul"(%554, %559) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %561 = "tosa.mul"(%560, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %562 = "tosa.add"(%561, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %563 = "tosa.matmul"(%562, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %564 = "tosa.add"(%563, %5) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %565 = "tosa.mul"(%564, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %566 = "tosa.pow"(%564, %0) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %567 = "tosa.mul"(%566, %1) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %568 = "tosa.add"(%564, %567) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %569 = "tosa.mul"(%79, %568) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %570 = "tosa.tanh"(%569) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %571 = "tosa.add"(%570, %4) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %572 = "tosa.mul"(%565, %571) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %573 = "tosa.matmul"(%572, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %574 = "tosa.add"(%573, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %575 = "tosa.add"(%551, %574) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %576 = "tosa.reduce_sum"(%575) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %577 = "tosa.mul"(%576, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %578 = "tosa.sub"(%575, %577) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %579 = "tosa.mul"(%578, %578) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %580 = "tosa.reduce_sum"(%579) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %581 = "tosa.mul"(%580, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %582 = "tosa.add"(%581, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %583 = "tosa.rsqrt"(%582) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %584 = "tosa.mul"(%578, %583) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %585 = "tosa.mul"(%584, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %586 = "tosa.add"(%585, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %587 = "tosa.matmul"(%586, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %588 = "tosa.add"(%587, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %589 = "tosa.reshape"(%588) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %590 = "tosa.transpose"(%589, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %591 = "tosa.reshape"(%590) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %592 = "tosa.transpose"(%591, %22) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %593 = "tosa.matmul"(%591, %592) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %594 = "tosa.mul"(%593, %52) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %595 = "tosa.exp"(%594) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %596 = "tosa.reduce_sum"(%595) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %597 = "tosa.reciprocal"(%596) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %598 = "tosa.mul"(%595, %597) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %599 = "tosa.matmul"(%598, %591) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %600 = "tosa.reshape"(%599) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %601 = "tosa.transpose"(%600, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %602 = "tosa.reshape"(%601) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %603 = "tosa.matmul"(%602, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %604 = "tosa.add"(%603, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %605 = "tosa.add"(%604, %575) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %606 = "tosa.reduce_sum"(%605) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %607 = "tosa.mul"(%606, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %608 = "tosa.sub"(%605, %607) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %609 = "tosa.mul"(%608, %608) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %610 = "tosa.reduce_sum"(%609) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %611 = "tosa.mul"(%610, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %612 = "tosa.add"(%611, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %613 = "tosa.rsqrt"(%612) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %614 = "tosa.mul"(%608, %613) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %615 = "tosa.mul"(%614, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %616 = "tosa.add"(%615, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %617 = "tosa.matmul"(%616, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %618 = "tosa.add"(%617, %5) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %619 = "tosa.mul"(%618, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %620 = "tosa.pow"(%618, %0) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %621 = "tosa.mul"(%620, %1) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %622 = "tosa.add"(%618, %621) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %623 = "tosa.mul"(%79, %622) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %624 = "tosa.tanh"(%623) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %625 = "tosa.add"(%624, %4) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %626 = "tosa.mul"(%619, %625) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %627 = "tosa.matmul"(%626, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %628 = "tosa.add"(%627, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %629 = "tosa.add"(%605, %628) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %630 = "tosa.reduce_sum"(%629) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %631 = "tosa.mul"(%630, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %632 = "tosa.sub"(%629, %631) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %633 = "tosa.mul"(%632, %632) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %634 = "tosa.reduce_sum"(%633) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %635 = "tosa.mul"(%634, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %636 = "tosa.add"(%635, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %637 = "tosa.rsqrt"(%636) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %638 = "tosa.mul"(%632, %637) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %639 = "tosa.mul"(%638, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %640 = "tosa.add"(%639, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %641 = "tosa.matmul"(%640, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %642 = "tosa.add"(%641, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %643 = "tosa.reshape"(%642) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %644 = "tosa.transpose"(%643, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %645 = "tosa.reshape"(%644) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %646 = "tosa.transpose"(%645, %22) : (tensor<12x197x64xf32>, tensor<3xi64>) -> tensor<12x64x197xf32>
    %647 = "tosa.matmul"(%645, %646) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %648 = "tosa.mul"(%647, %52) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<f32>) -> tensor<12x197x197xf32>
    %649 = "tosa.exp"(%648) : (tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %650 = "tosa.reduce_sum"(%649) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %651 = "tosa.reciprocal"(%650) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %652 = "tosa.mul"(%649, %651) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x1xf32>) -> tensor<12x197x197xf32>
    %653 = "tosa.matmul"(%652, %645) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %654 = "tosa.reshape"(%653) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %655 = "tosa.transpose"(%654, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %656 = "tosa.reshape"(%655) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %657 = "tosa.matmul"(%656, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %658 = "tosa.add"(%657, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %659 = "tosa.add"(%658, %629) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %660 = "tosa.reduce_sum"(%659) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %661 = "tosa.mul"(%660, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %662 = "tosa.sub"(%659, %661) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %663 = "tosa.mul"(%662, %662) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %664 = "tosa.reduce_sum"(%663) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %665 = "tosa.mul"(%664, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %666 = "tosa.add"(%665, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %667 = "tosa.rsqrt"(%666) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %668 = "tosa.mul"(%662, %667) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %669 = "tosa.mul"(%668, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %670 = "tosa.add"(%669, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %671 = "tosa.matmul"(%670, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %672 = "tosa.add"(%671, %5) : (tensor<1x197x3072xf32>, tensor<3072xf32>) -> tensor<1x197x3072xf32>
    %673 = "tosa.mul"(%672, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %674 = "tosa.pow"(%672, %0) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %675 = "tosa.mul"(%674, %1) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %676 = "tosa.add"(%672, %675) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %677 = "tosa.mul"(%79, %676) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %678 = "tosa.tanh"(%677) : (tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %679 = "tosa.add"(%678, %4) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %680 = "tosa.mul"(%673, %679) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %681 = "tosa.matmul"(%680, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %682 = "tosa.add"(%681, %11) : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %683 = "tosa.add"(%659, %682) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %684 = "tosa.reduce_sum"(%683) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %685 = "tosa.mul"(%684, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %686 = "tosa.sub"(%683, %685) : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %687 = "tosa.mul"(%686, %686) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %688 = "tosa.reduce_sum"(%687) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %689 = "tosa.mul"(%688, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %690 = "tosa.add"(%689, %7) : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %691 = "tosa.rsqrt"(%690) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %692 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %693 = "tosa.matmul"(%692, %13) : (tensor<1x1x1000xf32>, tensor<1x1000x768xf32>) -> tensor<1x1x768xf32>
    %694 = linalg.fill ins(%cst : f32) outs(%32 : tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %inserted_slice_1 = tensor.insert_slice %693 into %694[0, 0, 0] [1, 1, 768] [1, 1, 1] : tensor<1x1x768xf32> into tensor<1x197x768xf32>
    %695 = "tosa.mul"(%inserted_slice_1, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %696 = "tosa.mul"(%691, %695) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %697 = "tosa.mul"(%686, %695) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %698 = "tosa.pow"(%690, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %699 = "tosa.mul"(%698, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %700 = "tosa.mul"(%699, %697) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %701 = "tosa.reduce_sum"(%700) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %702 = "tosa.mul"(%701, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %703 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%702 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %704 = "tosa.mul"(%686, %703) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %705 = "tosa.add"(%696, %704) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %706 = "tosa.add"(%705, %704) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %707 = "tosa.negate"(%706) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %708 = "tosa.reduce_sum"(%707) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %709 = "tosa.mul"(%708, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %710 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%709 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %711 = "tosa.add"(%706, %710) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %712 = "tosa.matmul"(%711, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %713 = "tosa.mul"(%679, %712) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %714 = "tosa.mul"(%673, %712) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %715 = "tosa.mul"(%678, %678) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %716 = "tosa.sub"(%17, %715) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %717 = "tosa.mul"(%716, %714) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %718 = "tosa.mul"(%79, %717) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %719 = "tosa.sub"(%0, %17) : (tensor<1x197x3072xf32>, tensor<f32>) -> tensor<1x197x3072xf32>
    %720 = "tosa.pow"(%672, %719) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %721 = "tosa.mul"(%720, %0) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %722 = "tosa.add"(%718, %721) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %723 = "tosa.mul"(%713, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %724 = "tosa.add"(%722, %723) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %725 = "tosa.matmul"(%724, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %726 = "tosa.mul"(%725, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %727 = "tosa.mul"(%667, %726) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %728 = "tosa.mul"(%662, %726) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %729 = "tosa.pow"(%666, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %730 = "tosa.mul"(%729, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %731 = "tosa.mul"(%730, %728) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %732 = "tosa.reduce_sum"(%731) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %733 = "tosa.mul"(%732, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %734 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%733 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %735 = "tosa.mul"(%662, %734) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %736 = "tosa.add"(%727, %735) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %737 = "tosa.add"(%736, %735) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %738 = "tosa.add"(%711, %737) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %739 = "tosa.negate"(%737) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %740 = "tosa.reduce_sum"(%739) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %741 = "tosa.mul"(%740, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %742 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%741 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %743 = "tosa.add"(%738, %742) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %744 = "tosa.matmul"(%743, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %745 = "tosa.reshape"(%744) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %746 = "tosa.transpose"(%745, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %747 = "tosa.reshape"(%746) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %748 = "tosa.transpose"(%645, %21) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %749 = "tosa.matmul"(%747, %748) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %750 = "tosa.transpose"(%652, %21) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %751 = "tosa.matmul"(%750, %747) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %752 = "tosa.mul"(%651, %749) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %753 = "tosa.mul"(%649, %749) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %754 = "tosa.reduce_sum"(%753) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %755 = "tosa.mul"(%650, %650) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %756 = "tosa.negate"(%755) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %757 = "tosa.reciprocal"(%756) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %758 = "tosa.mul"(%757, %754) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %759 = tensor.empty() : tensor<12x197x197xf32>
    %760 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%758 : tensor<12x197x1xf32>) outs(%759 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %761 = "tosa.add"(%752, %760) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %762 = "tosa.mul"(%649, %761) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %763 = "tosa.mul"(%52, %762) {shift = 0 : i32} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %764 = "tosa.matmul"(%763, %645) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %765 = "tosa.matmul"(%748, %763) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %766 = "tosa.transpose"(%765, %22) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %767 = "tosa.reshape"(%751) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %768 = "tosa.transpose"(%767, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %769 = "tosa.reshape"(%768) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %770 = "tosa.matmul"(%769, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %771 = "tosa.reshape"(%766) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %772 = "tosa.transpose"(%771, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %773 = "tosa.reshape"(%772) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %774 = "tosa.matmul"(%773, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %775 = "tosa.add"(%770, %774) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %776 = "tosa.reshape"(%764) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %777 = "tosa.transpose"(%776, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %778 = "tosa.reshape"(%777) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %779 = "tosa.matmul"(%778, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %780 = "tosa.add"(%775, %779) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %781 = "tosa.mul"(%780, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %782 = "tosa.mul"(%637, %781) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %783 = "tosa.mul"(%632, %781) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %784 = "tosa.pow"(%636, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %785 = "tosa.mul"(%784, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %786 = "tosa.mul"(%785, %783) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %787 = "tosa.reduce_sum"(%786) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %788 = "tosa.mul"(%787, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %789 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%788 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %790 = "tosa.mul"(%632, %789) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %791 = "tosa.add"(%782, %790) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %792 = "tosa.add"(%791, %790) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %793 = "tosa.add"(%743, %792) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %794 = "tosa.negate"(%792) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %795 = "tosa.reduce_sum"(%794) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %796 = "tosa.mul"(%795, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %797 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%796 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %798 = "tosa.add"(%793, %797) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %799 = "tosa.matmul"(%798, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %800 = "tosa.mul"(%625, %799) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %801 = "tosa.mul"(%619, %799) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %802 = "tosa.mul"(%624, %624) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %803 = "tosa.sub"(%17, %802) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %804 = "tosa.mul"(%803, %801) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %805 = "tosa.mul"(%79, %804) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %806 = "tosa.pow"(%618, %719) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %807 = "tosa.mul"(%806, %0) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %808 = "tosa.add"(%805, %807) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %809 = "tosa.mul"(%800, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %810 = "tosa.add"(%808, %809) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %811 = "tosa.matmul"(%810, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %812 = "tosa.mul"(%811, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %813 = "tosa.mul"(%613, %812) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %814 = "tosa.mul"(%608, %812) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %815 = "tosa.pow"(%612, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %816 = "tosa.mul"(%815, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %817 = "tosa.mul"(%816, %814) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %818 = "tosa.reduce_sum"(%817) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %819 = "tosa.mul"(%818, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %820 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%819 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %821 = "tosa.mul"(%608, %820) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %822 = "tosa.add"(%813, %821) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %823 = "tosa.add"(%822, %821) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %824 = "tosa.add"(%798, %823) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %825 = "tosa.negate"(%823) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %826 = "tosa.reduce_sum"(%825) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %827 = "tosa.mul"(%826, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %828 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%827 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %829 = "tosa.add"(%824, %828) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %830 = "tosa.matmul"(%829, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %831 = "tosa.reshape"(%830) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %832 = "tosa.transpose"(%831, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %833 = "tosa.reshape"(%832) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %834 = "tosa.transpose"(%591, %21) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %835 = "tosa.matmul"(%833, %834) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %836 = "tosa.transpose"(%598, %21) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %837 = "tosa.matmul"(%836, %833) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %838 = "tosa.mul"(%597, %835) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %839 = "tosa.mul"(%595, %835) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %840 = "tosa.reduce_sum"(%839) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %841 = "tosa.mul"(%596, %596) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %842 = "tosa.negate"(%841) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %843 = "tosa.reciprocal"(%842) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %844 = "tosa.mul"(%843, %840) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %845 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%844 : tensor<12x197x1xf32>) outs(%759 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %846 = "tosa.add"(%838, %845) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %847 = "tosa.mul"(%595, %846) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %848 = "tosa.mul"(%52, %847) {shift = 0 : i32} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %849 = "tosa.matmul"(%848, %591) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %850 = "tosa.matmul"(%834, %848) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %851 = "tosa.transpose"(%850, %22) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %852 = "tosa.reshape"(%837) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %853 = "tosa.transpose"(%852, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %854 = "tosa.reshape"(%853) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %855 = "tosa.matmul"(%854, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %856 = "tosa.reshape"(%851) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %857 = "tosa.transpose"(%856, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %858 = "tosa.reshape"(%857) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %859 = "tosa.matmul"(%858, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %860 = "tosa.add"(%855, %859) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %861 = "tosa.reshape"(%849) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %862 = "tosa.transpose"(%861, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %863 = "tosa.reshape"(%862) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %864 = "tosa.matmul"(%863, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %865 = "tosa.add"(%860, %864) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %866 = "tosa.mul"(%865, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %867 = "tosa.mul"(%583, %866) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %868 = "tosa.mul"(%578, %866) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %869 = "tosa.pow"(%582, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %870 = "tosa.mul"(%869, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %871 = "tosa.mul"(%870, %868) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %872 = "tosa.reduce_sum"(%871) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %873 = "tosa.mul"(%872, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %874 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%873 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %875 = "tosa.mul"(%578, %874) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %876 = "tosa.add"(%867, %875) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %877 = "tosa.add"(%876, %875) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %878 = "tosa.add"(%829, %877) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %879 = "tosa.negate"(%877) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %880 = "tosa.reduce_sum"(%879) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %881 = "tosa.mul"(%880, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %882 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%881 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %883 = "tosa.add"(%878, %882) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %884 = "tosa.matmul"(%883, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %885 = "tosa.mul"(%571, %884) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %886 = "tosa.mul"(%565, %884) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %887 = "tosa.mul"(%570, %570) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %888 = "tosa.sub"(%17, %887) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %889 = "tosa.mul"(%888, %886) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %890 = "tosa.mul"(%79, %889) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %891 = "tosa.pow"(%564, %719) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %892 = "tosa.mul"(%891, %0) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %893 = "tosa.add"(%890, %892) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %894 = "tosa.mul"(%885, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %895 = "tosa.add"(%893, %894) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %896 = "tosa.matmul"(%895, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %897 = "tosa.mul"(%896, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %898 = "tosa.mul"(%559, %897) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %899 = "tosa.mul"(%554, %897) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %900 = "tosa.pow"(%558, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %901 = "tosa.mul"(%900, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %902 = "tosa.mul"(%901, %899) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %903 = "tosa.reduce_sum"(%902) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %904 = "tosa.mul"(%903, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %905 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%904 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %906 = "tosa.mul"(%554, %905) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %907 = "tosa.add"(%898, %906) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %908 = "tosa.add"(%907, %906) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %909 = "tosa.add"(%883, %908) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %910 = "tosa.negate"(%908) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %911 = "tosa.reduce_sum"(%910) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %912 = "tosa.mul"(%911, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %913 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%912 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %914 = "tosa.add"(%909, %913) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %915 = "tosa.matmul"(%914, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %916 = "tosa.reshape"(%915) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %917 = "tosa.transpose"(%916, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %918 = "tosa.reshape"(%917) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %919 = "tosa.transpose"(%537, %21) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %920 = "tosa.matmul"(%918, %919) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %921 = "tosa.transpose"(%544, %21) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %922 = "tosa.matmul"(%921, %918) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %923 = "tosa.mul"(%543, %920) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %924 = "tosa.mul"(%541, %920) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %925 = "tosa.reduce_sum"(%924) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %926 = "tosa.mul"(%542, %542) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %927 = "tosa.negate"(%926) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %928 = "tosa.reciprocal"(%927) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %929 = "tosa.mul"(%928, %925) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %930 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%929 : tensor<12x197x1xf32>) outs(%759 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %931 = "tosa.add"(%923, %930) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %932 = "tosa.mul"(%541, %931) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %933 = "tosa.mul"(%52, %932) {shift = 0 : i32} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %934 = "tosa.matmul"(%933, %537) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %935 = "tosa.matmul"(%919, %933) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %936 = "tosa.transpose"(%935, %22) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %937 = "tosa.reshape"(%922) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %938 = "tosa.transpose"(%937, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %939 = "tosa.reshape"(%938) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %940 = "tosa.matmul"(%939, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %941 = "tosa.reshape"(%936) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %942 = "tosa.transpose"(%941, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %943 = "tosa.reshape"(%942) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %944 = "tosa.matmul"(%943, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %945 = "tosa.add"(%940, %944) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %946 = "tosa.reshape"(%934) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %947 = "tosa.transpose"(%946, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %948 = "tosa.reshape"(%947) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %949 = "tosa.matmul"(%948, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %950 = "tosa.add"(%945, %949) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %951 = "tosa.mul"(%950, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %952 = "tosa.mul"(%529, %951) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %953 = "tosa.mul"(%524, %951) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %954 = "tosa.pow"(%528, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %955 = "tosa.mul"(%954, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %956 = "tosa.mul"(%955, %953) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %957 = "tosa.reduce_sum"(%956) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %958 = "tosa.mul"(%957, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %959 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%958 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %960 = "tosa.mul"(%524, %959) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %961 = "tosa.add"(%952, %960) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %962 = "tosa.add"(%961, %960) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %963 = "tosa.add"(%914, %962) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %964 = "tosa.negate"(%962) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %965 = "tosa.reduce_sum"(%964) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %966 = "tosa.mul"(%965, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %967 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%966 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %968 = "tosa.add"(%963, %967) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %969 = "tosa.matmul"(%968, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %970 = "tosa.mul"(%517, %969) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %971 = "tosa.mul"(%511, %969) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %972 = "tosa.mul"(%516, %516) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %973 = "tosa.sub"(%17, %972) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %974 = "tosa.mul"(%973, %971) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %975 = "tosa.mul"(%79, %974) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %976 = "tosa.pow"(%510, %719) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %977 = "tosa.mul"(%976, %0) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %978 = "tosa.add"(%975, %977) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %979 = "tosa.mul"(%970, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %980 = "tosa.add"(%978, %979) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %981 = "tosa.matmul"(%980, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %982 = "tosa.mul"(%981, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %983 = "tosa.mul"(%505, %982) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %984 = "tosa.mul"(%500, %982) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %985 = "tosa.pow"(%504, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %986 = "tosa.mul"(%985, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %987 = "tosa.mul"(%986, %984) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %988 = "tosa.reduce_sum"(%987) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %989 = "tosa.mul"(%988, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %990 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%989 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %991 = "tosa.mul"(%500, %990) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %992 = "tosa.add"(%983, %991) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %993 = "tosa.add"(%992, %991) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %994 = "tosa.add"(%968, %993) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %995 = "tosa.negate"(%993) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %996 = "tosa.reduce_sum"(%995) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %997 = "tosa.mul"(%996, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %998 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%997 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %999 = "tosa.add"(%994, %998) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1000 = "tosa.matmul"(%999, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1001 = "tosa.reshape"(%1000) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %1002 = "tosa.transpose"(%1001, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %1003 = "tosa.reshape"(%1002) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %1004 = "tosa.transpose"(%483, %21) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %1005 = "tosa.matmul"(%1003, %1004) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %1006 = "tosa.transpose"(%490, %21) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %1007 = "tosa.matmul"(%1006, %1003) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1008 = "tosa.mul"(%489, %1005) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1009 = "tosa.mul"(%487, %1005) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1010 = "tosa.reduce_sum"(%1009) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %1011 = "tosa.mul"(%488, %488) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1012 = "tosa.negate"(%1011) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1013 = "tosa.reciprocal"(%1012) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1014 = "tosa.mul"(%1013, %1010) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1015 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1014 : tensor<12x197x1xf32>) outs(%759 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %1016 = "tosa.add"(%1008, %1015) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1017 = "tosa.mul"(%487, %1016) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1018 = "tosa.mul"(%52, %1017) {shift = 0 : i32} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1019 = "tosa.matmul"(%1018, %483) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1020 = "tosa.matmul"(%1004, %1018) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %1021 = "tosa.transpose"(%1020, %22) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %1022 = "tosa.reshape"(%1007) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1023 = "tosa.transpose"(%1022, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1024 = "tosa.reshape"(%1023) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1025 = "tosa.matmul"(%1024, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1026 = "tosa.reshape"(%1021) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1027 = "tosa.transpose"(%1026, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1028 = "tosa.reshape"(%1027) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1029 = "tosa.matmul"(%1028, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1030 = "tosa.add"(%1025, %1029) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1031 = "tosa.reshape"(%1019) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1032 = "tosa.transpose"(%1031, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1033 = "tosa.reshape"(%1032) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1034 = "tosa.matmul"(%1033, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1035 = "tosa.add"(%1030, %1034) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1036 = "tosa.mul"(%1035, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %1037 = "tosa.mul"(%475, %1036) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1038 = "tosa.mul"(%470, %1036) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1039 = "tosa.pow"(%474, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1040 = "tosa.mul"(%1039, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1041 = "tosa.mul"(%1040, %1038) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1042 = "tosa.reduce_sum"(%1041) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1043 = "tosa.mul"(%1042, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1044 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1043 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1045 = "tosa.mul"(%470, %1044) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1046 = "tosa.add"(%1037, %1045) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1047 = "tosa.add"(%1046, %1045) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1048 = "tosa.add"(%999, %1047) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1049 = "tosa.negate"(%1047) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1050 = "tosa.reduce_sum"(%1049) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1051 = "tosa.mul"(%1050, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1052 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1051 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1053 = "tosa.add"(%1048, %1052) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1054 = "tosa.matmul"(%1053, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %1055 = "tosa.mul"(%463, %1054) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1056 = "tosa.mul"(%457, %1054) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1057 = "tosa.mul"(%462, %462) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1058 = "tosa.sub"(%17, %1057) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1059 = "tosa.mul"(%1058, %1056) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1060 = "tosa.mul"(%79, %1059) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1061 = "tosa.pow"(%456, %719) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1062 = "tosa.mul"(%1061, %0) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1063 = "tosa.add"(%1060, %1062) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1064 = "tosa.mul"(%1055, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1065 = "tosa.add"(%1063, %1064) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1066 = "tosa.matmul"(%1065, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %1067 = "tosa.mul"(%1066, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %1068 = "tosa.mul"(%451, %1067) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1069 = "tosa.mul"(%446, %1067) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1070 = "tosa.pow"(%450, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1071 = "tosa.mul"(%1070, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1072 = "tosa.mul"(%1071, %1069) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1073 = "tosa.reduce_sum"(%1072) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1074 = "tosa.mul"(%1073, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1075 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1074 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1076 = "tosa.mul"(%446, %1075) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1077 = "tosa.add"(%1068, %1076) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1078 = "tosa.add"(%1077, %1076) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1079 = "tosa.add"(%1053, %1078) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1080 = "tosa.negate"(%1078) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1081 = "tosa.reduce_sum"(%1080) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1082 = "tosa.mul"(%1081, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1083 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1082 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1084 = "tosa.add"(%1079, %1083) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1085 = "tosa.matmul"(%1084, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1086 = "tosa.reshape"(%1085) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %1087 = "tosa.transpose"(%1086, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %1088 = "tosa.reshape"(%1087) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %1089 = "tosa.transpose"(%429, %21) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %1090 = "tosa.matmul"(%1088, %1089) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %1091 = "tosa.transpose"(%436, %21) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %1092 = "tosa.matmul"(%1091, %1088) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1093 = "tosa.mul"(%435, %1090) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1094 = "tosa.mul"(%433, %1090) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1095 = "tosa.reduce_sum"(%1094) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %1096 = "tosa.mul"(%434, %434) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1097 = "tosa.negate"(%1096) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1098 = "tosa.reciprocal"(%1097) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1099 = "tosa.mul"(%1098, %1095) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1100 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1099 : tensor<12x197x1xf32>) outs(%759 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %1101 = "tosa.add"(%1093, %1100) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1102 = "tosa.mul"(%433, %1101) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1103 = "tosa.mul"(%52, %1102) {shift = 0 : i32} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1104 = "tosa.matmul"(%1103, %429) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1105 = "tosa.matmul"(%1089, %1103) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %1106 = "tosa.transpose"(%1105, %22) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %1107 = "tosa.reshape"(%1092) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1108 = "tosa.transpose"(%1107, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1109 = "tosa.reshape"(%1108) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1110 = "tosa.matmul"(%1109, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1111 = "tosa.reshape"(%1106) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1112 = "tosa.transpose"(%1111, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1113 = "tosa.reshape"(%1112) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1114 = "tosa.matmul"(%1113, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1115 = "tosa.add"(%1110, %1114) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1116 = "tosa.reshape"(%1104) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1117 = "tosa.transpose"(%1116, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1118 = "tosa.reshape"(%1117) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1119 = "tosa.matmul"(%1118, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1120 = "tosa.add"(%1115, %1119) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1121 = "tosa.mul"(%1120, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %1122 = "tosa.mul"(%421, %1121) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1123 = "tosa.mul"(%416, %1121) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1124 = "tosa.pow"(%420, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1125 = "tosa.mul"(%1124, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1126 = "tosa.mul"(%1125, %1123) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1127 = "tosa.reduce_sum"(%1126) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1128 = "tosa.mul"(%1127, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1129 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1128 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1130 = "tosa.mul"(%416, %1129) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1131 = "tosa.add"(%1122, %1130) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1132 = "tosa.add"(%1131, %1130) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1133 = "tosa.add"(%1084, %1132) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1134 = "tosa.negate"(%1132) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1135 = "tosa.reduce_sum"(%1134) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1136 = "tosa.mul"(%1135, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1137 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1136 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1138 = "tosa.add"(%1133, %1137) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1139 = "tosa.matmul"(%1138, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %1140 = "tosa.mul"(%409, %1139) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1141 = "tosa.mul"(%403, %1139) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1142 = "tosa.mul"(%408, %408) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1143 = "tosa.sub"(%17, %1142) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1144 = "tosa.mul"(%1143, %1141) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1145 = "tosa.mul"(%79, %1144) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1146 = "tosa.pow"(%402, %719) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1147 = "tosa.mul"(%1146, %0) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1148 = "tosa.add"(%1145, %1147) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1149 = "tosa.mul"(%1140, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1150 = "tosa.add"(%1148, %1149) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1151 = "tosa.matmul"(%1150, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %1152 = "tosa.mul"(%1151, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %1153 = "tosa.mul"(%397, %1152) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1154 = "tosa.mul"(%392, %1152) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1155 = "tosa.pow"(%396, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1156 = "tosa.mul"(%1155, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1157 = "tosa.mul"(%1156, %1154) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1158 = "tosa.reduce_sum"(%1157) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1159 = "tosa.mul"(%1158, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1160 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1159 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1161 = "tosa.mul"(%392, %1160) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1162 = "tosa.add"(%1153, %1161) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1163 = "tosa.add"(%1162, %1161) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1164 = "tosa.add"(%1138, %1163) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1165 = "tosa.negate"(%1163) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1166 = "tosa.reduce_sum"(%1165) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1167 = "tosa.mul"(%1166, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1168 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1167 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1169 = "tosa.add"(%1164, %1168) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1170 = "tosa.matmul"(%1169, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1171 = "tosa.reshape"(%1170) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %1172 = "tosa.transpose"(%1171, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %1173 = "tosa.reshape"(%1172) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %1174 = "tosa.transpose"(%375, %21) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %1175 = "tosa.matmul"(%1173, %1174) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %1176 = "tosa.transpose"(%382, %21) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %1177 = "tosa.matmul"(%1176, %1173) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1178 = "tosa.mul"(%381, %1175) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1179 = "tosa.mul"(%379, %1175) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1180 = "tosa.reduce_sum"(%1179) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %1181 = "tosa.mul"(%380, %380) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1182 = "tosa.negate"(%1181) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1183 = "tosa.reciprocal"(%1182) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1184 = "tosa.mul"(%1183, %1180) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1185 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1184 : tensor<12x197x1xf32>) outs(%759 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %1186 = "tosa.add"(%1178, %1185) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1187 = "tosa.mul"(%379, %1186) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1188 = "tosa.mul"(%52, %1187) {shift = 0 : i32} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1189 = "tosa.matmul"(%1188, %375) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1190 = "tosa.matmul"(%1174, %1188) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %1191 = "tosa.transpose"(%1190, %22) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %1192 = "tosa.reshape"(%1177) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1193 = "tosa.transpose"(%1192, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1194 = "tosa.reshape"(%1193) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1195 = "tosa.matmul"(%1194, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1196 = "tosa.reshape"(%1191) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1197 = "tosa.transpose"(%1196, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1198 = "tosa.reshape"(%1197) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1199 = "tosa.matmul"(%1198, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1200 = "tosa.add"(%1195, %1199) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1201 = "tosa.reshape"(%1189) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1202 = "tosa.transpose"(%1201, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1203 = "tosa.reshape"(%1202) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1204 = "tosa.matmul"(%1203, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1205 = "tosa.add"(%1200, %1204) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1206 = "tosa.mul"(%1205, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %1207 = "tosa.mul"(%367, %1206) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1208 = "tosa.mul"(%362, %1206) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1209 = "tosa.pow"(%366, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1210 = "tosa.mul"(%1209, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1211 = "tosa.mul"(%1210, %1208) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1212 = "tosa.reduce_sum"(%1211) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1213 = "tosa.mul"(%1212, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1214 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1213 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1215 = "tosa.mul"(%362, %1214) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1216 = "tosa.add"(%1207, %1215) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1217 = "tosa.add"(%1216, %1215) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1218 = "tosa.add"(%1169, %1217) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1219 = "tosa.negate"(%1217) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1220 = "tosa.reduce_sum"(%1219) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1221 = "tosa.mul"(%1220, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1222 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1221 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1223 = "tosa.add"(%1218, %1222) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1224 = "tosa.matmul"(%1223, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %1225 = "tosa.mul"(%355, %1224) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1226 = "tosa.mul"(%349, %1224) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1227 = "tosa.mul"(%354, %354) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1228 = "tosa.sub"(%17, %1227) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1229 = "tosa.mul"(%1228, %1226) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1230 = "tosa.mul"(%79, %1229) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1231 = "tosa.pow"(%348, %719) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1232 = "tosa.mul"(%1231, %0) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1233 = "tosa.add"(%1230, %1232) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1234 = "tosa.mul"(%1225, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1235 = "tosa.add"(%1233, %1234) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1236 = "tosa.matmul"(%1235, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %1237 = "tosa.mul"(%1236, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %1238 = "tosa.mul"(%343, %1237) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1239 = "tosa.mul"(%338, %1237) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1240 = "tosa.pow"(%342, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1241 = "tosa.mul"(%1240, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1242 = "tosa.mul"(%1241, %1239) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1243 = "tosa.reduce_sum"(%1242) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1244 = "tosa.mul"(%1243, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1245 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1244 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1246 = "tosa.mul"(%338, %1245) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1247 = "tosa.add"(%1238, %1246) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1248 = "tosa.add"(%1247, %1246) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1249 = "tosa.add"(%1223, %1248) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1250 = "tosa.negate"(%1248) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1251 = "tosa.reduce_sum"(%1250) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1252 = "tosa.mul"(%1251, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1253 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1252 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1254 = "tosa.add"(%1249, %1253) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1255 = "tosa.matmul"(%1254, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1256 = "tosa.reshape"(%1255) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %1257 = "tosa.transpose"(%1256, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %1258 = "tosa.reshape"(%1257) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %1259 = "tosa.transpose"(%321, %21) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %1260 = "tosa.matmul"(%1258, %1259) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %1261 = "tosa.transpose"(%328, %21) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %1262 = "tosa.matmul"(%1261, %1258) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1263 = "tosa.mul"(%327, %1260) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1264 = "tosa.mul"(%325, %1260) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1265 = "tosa.reduce_sum"(%1264) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %1266 = "tosa.mul"(%326, %326) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1267 = "tosa.negate"(%1266) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1268 = "tosa.reciprocal"(%1267) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1269 = "tosa.mul"(%1268, %1265) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1270 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1269 : tensor<12x197x1xf32>) outs(%759 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %1271 = "tosa.add"(%1263, %1270) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1272 = "tosa.mul"(%325, %1271) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1273 = "tosa.mul"(%52, %1272) {shift = 0 : i32} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1274 = "tosa.matmul"(%1273, %321) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1275 = "tosa.matmul"(%1259, %1273) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %1276 = "tosa.transpose"(%1275, %22) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %1277 = "tosa.reshape"(%1262) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1278 = "tosa.transpose"(%1277, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1279 = "tosa.reshape"(%1278) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1280 = "tosa.matmul"(%1279, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1281 = "tosa.reshape"(%1276) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1282 = "tosa.transpose"(%1281, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1283 = "tosa.reshape"(%1282) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1284 = "tosa.matmul"(%1283, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1285 = "tosa.add"(%1280, %1284) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1286 = "tosa.reshape"(%1274) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1287 = "tosa.transpose"(%1286, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1288 = "tosa.reshape"(%1287) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1289 = "tosa.matmul"(%1288, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1290 = "tosa.add"(%1285, %1289) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1291 = "tosa.mul"(%1290, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %1292 = "tosa.mul"(%313, %1291) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1293 = "tosa.mul"(%308, %1291) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1294 = "tosa.pow"(%312, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1295 = "tosa.mul"(%1294, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1296 = "tosa.mul"(%1295, %1293) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1297 = "tosa.reduce_sum"(%1296) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1298 = "tosa.mul"(%1297, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1299 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1298 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1300 = "tosa.mul"(%308, %1299) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1301 = "tosa.add"(%1292, %1300) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1302 = "tosa.add"(%1301, %1300) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1303 = "tosa.add"(%1254, %1302) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1304 = "tosa.negate"(%1302) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1305 = "tosa.reduce_sum"(%1304) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1306 = "tosa.mul"(%1305, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1307 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1306 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1308 = "tosa.add"(%1303, %1307) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1309 = "tosa.matmul"(%1308, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %1310 = "tosa.mul"(%301, %1309) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1311 = "tosa.mul"(%295, %1309) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1312 = "tosa.mul"(%300, %300) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1313 = "tosa.sub"(%17, %1312) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1314 = "tosa.mul"(%1313, %1311) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1315 = "tosa.mul"(%79, %1314) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1316 = "tosa.pow"(%294, %719) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1317 = "tosa.mul"(%1316, %0) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1318 = "tosa.add"(%1315, %1317) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1319 = "tosa.mul"(%1310, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1320 = "tosa.add"(%1318, %1319) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1321 = "tosa.matmul"(%1320, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %1322 = "tosa.mul"(%1321, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %1323 = "tosa.mul"(%289, %1322) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1324 = "tosa.mul"(%284, %1322) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1325 = "tosa.pow"(%288, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1326 = "tosa.mul"(%1325, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1327 = "tosa.mul"(%1326, %1324) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1328 = "tosa.reduce_sum"(%1327) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1329 = "tosa.mul"(%1328, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1330 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1329 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1331 = "tosa.mul"(%284, %1330) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1332 = "tosa.add"(%1323, %1331) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1333 = "tosa.add"(%1332, %1331) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1334 = "tosa.add"(%1308, %1333) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1335 = "tosa.negate"(%1333) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1336 = "tosa.reduce_sum"(%1335) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1337 = "tosa.mul"(%1336, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1338 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1337 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1339 = "tosa.add"(%1334, %1338) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1340 = "tosa.matmul"(%1339, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1341 = "tosa.reshape"(%1340) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %1342 = "tosa.transpose"(%1341, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %1343 = "tosa.reshape"(%1342) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %1344 = "tosa.transpose"(%267, %21) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %1345 = "tosa.matmul"(%1343, %1344) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %1346 = "tosa.transpose"(%274, %21) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %1347 = "tosa.matmul"(%1346, %1343) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1348 = "tosa.mul"(%273, %1345) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1349 = "tosa.mul"(%271, %1345) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1350 = "tosa.reduce_sum"(%1349) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %1351 = "tosa.mul"(%272, %272) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1352 = "tosa.negate"(%1351) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1353 = "tosa.reciprocal"(%1352) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1354 = "tosa.mul"(%1353, %1350) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1355 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1354 : tensor<12x197x1xf32>) outs(%759 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %1356 = "tosa.add"(%1348, %1355) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1357 = "tosa.mul"(%271, %1356) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1358 = "tosa.mul"(%52, %1357) {shift = 0 : i32} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1359 = "tosa.matmul"(%1358, %267) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1360 = "tosa.matmul"(%1344, %1358) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %1361 = "tosa.transpose"(%1360, %22) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %1362 = "tosa.reshape"(%1347) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1363 = "tosa.transpose"(%1362, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1364 = "tosa.reshape"(%1363) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1365 = "tosa.matmul"(%1364, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1366 = "tosa.reshape"(%1361) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1367 = "tosa.transpose"(%1366, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1368 = "tosa.reshape"(%1367) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1369 = "tosa.matmul"(%1368, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1370 = "tosa.add"(%1365, %1369) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1371 = "tosa.reshape"(%1359) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1372 = "tosa.transpose"(%1371, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1373 = "tosa.reshape"(%1372) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1374 = "tosa.matmul"(%1373, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1375 = "tosa.add"(%1370, %1374) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1376 = "tosa.mul"(%1375, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %1377 = "tosa.mul"(%259, %1376) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1378 = "tosa.mul"(%254, %1376) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1379 = "tosa.pow"(%258, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1380 = "tosa.mul"(%1379, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1381 = "tosa.mul"(%1380, %1378) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1382 = "tosa.reduce_sum"(%1381) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1383 = "tosa.mul"(%1382, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1384 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1383 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1385 = "tosa.mul"(%254, %1384) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1386 = "tosa.add"(%1377, %1385) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1387 = "tosa.add"(%1386, %1385) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1388 = "tosa.add"(%1339, %1387) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1389 = "tosa.negate"(%1387) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1390 = "tosa.reduce_sum"(%1389) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1391 = "tosa.mul"(%1390, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1392 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1391 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1393 = "tosa.add"(%1388, %1392) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1394 = "tosa.matmul"(%1393, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %1395 = "tosa.mul"(%247, %1394) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1396 = "tosa.mul"(%241, %1394) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1397 = "tosa.mul"(%246, %246) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1398 = "tosa.sub"(%17, %1397) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1399 = "tosa.mul"(%1398, %1396) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1400 = "tosa.mul"(%79, %1399) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1401 = "tosa.pow"(%240, %719) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1402 = "tosa.mul"(%1401, %0) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1403 = "tosa.add"(%1400, %1402) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1404 = "tosa.mul"(%1395, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1405 = "tosa.add"(%1403, %1404) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1406 = "tosa.matmul"(%1405, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %1407 = "tosa.mul"(%1406, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %1408 = "tosa.mul"(%235, %1407) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1409 = "tosa.mul"(%230, %1407) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1410 = "tosa.pow"(%234, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1411 = "tosa.mul"(%1410, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1412 = "tosa.mul"(%1411, %1409) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1413 = "tosa.reduce_sum"(%1412) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1414 = "tosa.mul"(%1413, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1415 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1414 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1416 = "tosa.mul"(%230, %1415) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1417 = "tosa.add"(%1408, %1416) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1418 = "tosa.add"(%1417, %1416) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1419 = "tosa.add"(%1393, %1418) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1420 = "tosa.negate"(%1418) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1421 = "tosa.reduce_sum"(%1420) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1422 = "tosa.mul"(%1421, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1423 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1422 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1424 = "tosa.add"(%1419, %1423) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1425 = "tosa.matmul"(%1424, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1426 = "tosa.reshape"(%1425) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %1427 = "tosa.transpose"(%1426, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %1428 = "tosa.reshape"(%1427) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %1429 = "tosa.transpose"(%213, %21) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %1430 = "tosa.matmul"(%1428, %1429) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %1431 = "tosa.transpose"(%220, %21) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %1432 = "tosa.matmul"(%1431, %1428) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1433 = "tosa.mul"(%219, %1430) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1434 = "tosa.mul"(%217, %1430) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1435 = "tosa.reduce_sum"(%1434) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %1436 = "tosa.mul"(%218, %218) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1437 = "tosa.negate"(%1436) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1438 = "tosa.reciprocal"(%1437) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1439 = "tosa.mul"(%1438, %1435) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1440 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1439 : tensor<12x197x1xf32>) outs(%759 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %1441 = "tosa.add"(%1433, %1440) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1442 = "tosa.mul"(%217, %1441) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1443 = "tosa.mul"(%52, %1442) {shift = 0 : i32} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1444 = "tosa.matmul"(%1443, %213) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1445 = "tosa.matmul"(%1429, %1443) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %1446 = "tosa.transpose"(%1445, %22) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %1447 = "tosa.reshape"(%1432) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1448 = "tosa.transpose"(%1447, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1449 = "tosa.reshape"(%1448) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1450 = "tosa.matmul"(%1449, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1451 = "tosa.reshape"(%1446) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1452 = "tosa.transpose"(%1451, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1453 = "tosa.reshape"(%1452) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1454 = "tosa.matmul"(%1453, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1455 = "tosa.add"(%1450, %1454) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1456 = "tosa.reshape"(%1444) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1457 = "tosa.transpose"(%1456, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1458 = "tosa.reshape"(%1457) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1459 = "tosa.matmul"(%1458, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1460 = "tosa.add"(%1455, %1459) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1461 = "tosa.mul"(%1460, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %1462 = "tosa.mul"(%205, %1461) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1463 = "tosa.mul"(%200, %1461) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1464 = "tosa.pow"(%204, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1465 = "tosa.mul"(%1464, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1466 = "tosa.mul"(%1465, %1463) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1467 = "tosa.reduce_sum"(%1466) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1468 = "tosa.mul"(%1467, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1469 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1468 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1470 = "tosa.mul"(%200, %1469) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1471 = "tosa.add"(%1462, %1470) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1472 = "tosa.add"(%1471, %1470) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1473 = "tosa.add"(%1424, %1472) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1474 = "tosa.negate"(%1472) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1475 = "tosa.reduce_sum"(%1474) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1476 = "tosa.mul"(%1475, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1477 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1476 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1478 = "tosa.add"(%1473, %1477) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1479 = "tosa.matmul"(%1478, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %1480 = "tosa.mul"(%193, %1479) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1481 = "tosa.mul"(%187, %1479) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1482 = "tosa.mul"(%192, %192) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1483 = "tosa.sub"(%17, %1482) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1484 = "tosa.mul"(%1483, %1481) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1485 = "tosa.mul"(%79, %1484) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1486 = "tosa.pow"(%186, %719) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1487 = "tosa.mul"(%1486, %0) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1488 = "tosa.add"(%1485, %1487) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1489 = "tosa.mul"(%1480, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1490 = "tosa.add"(%1488, %1489) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1491 = "tosa.matmul"(%1490, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %1492 = "tosa.mul"(%1491, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %1493 = "tosa.mul"(%181, %1492) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1494 = "tosa.mul"(%176, %1492) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1495 = "tosa.pow"(%180, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1496 = "tosa.mul"(%1495, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1497 = "tosa.mul"(%1496, %1494) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1498 = "tosa.reduce_sum"(%1497) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1499 = "tosa.mul"(%1498, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1500 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1499 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1501 = "tosa.mul"(%176, %1500) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1502 = "tosa.add"(%1493, %1501) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1503 = "tosa.add"(%1502, %1501) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1504 = "tosa.add"(%1478, %1503) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1505 = "tosa.negate"(%1503) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1506 = "tosa.reduce_sum"(%1505) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1507 = "tosa.mul"(%1506, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1508 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1507 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1509 = "tosa.add"(%1504, %1508) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1510 = "tosa.matmul"(%1509, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1511 = "tosa.reshape"(%1510) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %1512 = "tosa.transpose"(%1511, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %1513 = "tosa.reshape"(%1512) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %1514 = "tosa.transpose"(%159, %21) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %1515 = "tosa.matmul"(%1513, %1514) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %1516 = "tosa.transpose"(%166, %21) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %1517 = "tosa.matmul"(%1516, %1513) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1518 = "tosa.mul"(%165, %1515) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1519 = "tosa.mul"(%163, %1515) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1520 = "tosa.reduce_sum"(%1519) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %1521 = "tosa.mul"(%164, %164) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1522 = "tosa.negate"(%1521) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1523 = "tosa.reciprocal"(%1522) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1524 = "tosa.mul"(%1523, %1520) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1525 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1524 : tensor<12x197x1xf32>) outs(%759 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %1526 = "tosa.add"(%1518, %1525) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1527 = "tosa.mul"(%163, %1526) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1528 = "tosa.mul"(%52, %1527) {shift = 0 : i32} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1529 = "tosa.matmul"(%1528, %159) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1530 = "tosa.matmul"(%1514, %1528) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %1531 = "tosa.transpose"(%1530, %22) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %1532 = "tosa.reshape"(%1517) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1533 = "tosa.transpose"(%1532, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1534 = "tosa.reshape"(%1533) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1535 = "tosa.matmul"(%1534, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1536 = "tosa.reshape"(%1531) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1537 = "tosa.transpose"(%1536, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1538 = "tosa.reshape"(%1537) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1539 = "tosa.matmul"(%1538, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1540 = "tosa.add"(%1535, %1539) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1541 = "tosa.reshape"(%1529) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1542 = "tosa.transpose"(%1541, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1543 = "tosa.reshape"(%1542) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1544 = "tosa.matmul"(%1543, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1545 = "tosa.add"(%1540, %1544) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1546 = "tosa.mul"(%1545, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %1547 = "tosa.mul"(%151, %1546) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1548 = "tosa.mul"(%146, %1546) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1549 = "tosa.pow"(%150, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1550 = "tosa.mul"(%1549, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1551 = "tosa.mul"(%1550, %1548) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1552 = "tosa.reduce_sum"(%1551) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1553 = "tosa.mul"(%1552, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1554 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1553 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1555 = "tosa.mul"(%146, %1554) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1556 = "tosa.add"(%1547, %1555) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1557 = "tosa.add"(%1556, %1555) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1558 = "tosa.add"(%1509, %1557) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1559 = "tosa.negate"(%1557) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1560 = "tosa.reduce_sum"(%1559) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1561 = "tosa.mul"(%1560, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1562 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1561 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1563 = "tosa.add"(%1558, %1562) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1564 = "tosa.matmul"(%1563, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %1565 = "tosa.mul"(%139, %1564) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1566 = "tosa.mul"(%133, %1564) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1567 = "tosa.mul"(%138, %138) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1568 = "tosa.sub"(%17, %1567) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1569 = "tosa.mul"(%1568, %1566) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1570 = "tosa.mul"(%79, %1569) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1571 = "tosa.pow"(%132, %719) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1572 = "tosa.mul"(%1571, %0) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1573 = "tosa.add"(%1570, %1572) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1574 = "tosa.mul"(%1565, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1575 = "tosa.add"(%1573, %1574) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1576 = "tosa.matmul"(%1575, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %1577 = "tosa.mul"(%1576, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %1578 = "tosa.mul"(%127, %1577) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1579 = "tosa.mul"(%122, %1577) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1580 = "tosa.pow"(%126, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1581 = "tosa.mul"(%1580, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1582 = "tosa.mul"(%1581, %1579) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1583 = "tosa.reduce_sum"(%1582) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1584 = "tosa.mul"(%1583, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1585 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1584 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1586 = "tosa.mul"(%122, %1585) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1587 = "tosa.add"(%1578, %1586) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1588 = "tosa.add"(%1587, %1586) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1589 = "tosa.add"(%1563, %1588) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1590 = "tosa.negate"(%1588) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1591 = "tosa.reduce_sum"(%1590) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1592 = "tosa.mul"(%1591, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1593 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1592 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1594 = "tosa.add"(%1589, %1593) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1595 = "tosa.matmul"(%1594, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1596 = "tosa.reshape"(%1595) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %1597 = "tosa.transpose"(%1596, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %1598 = "tosa.reshape"(%1597) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %1599 = "tosa.transpose"(%105, %21) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %1600 = "tosa.matmul"(%1598, %1599) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %1601 = "tosa.transpose"(%112, %21) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %1602 = "tosa.matmul"(%1601, %1598) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1603 = "tosa.mul"(%111, %1600) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1604 = "tosa.mul"(%109, %1600) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1605 = "tosa.reduce_sum"(%1604) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %1606 = "tosa.mul"(%110, %110) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1607 = "tosa.negate"(%1606) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1608 = "tosa.reciprocal"(%1607) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1609 = "tosa.mul"(%1608, %1605) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1610 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1609 : tensor<12x197x1xf32>) outs(%759 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %1611 = "tosa.add"(%1603, %1610) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1612 = "tosa.mul"(%109, %1611) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1613 = "tosa.mul"(%52, %1612) {shift = 0 : i32} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1614 = "tosa.matmul"(%1613, %105) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1615 = "tosa.matmul"(%1599, %1613) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %1616 = "tosa.transpose"(%1615, %22) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %1617 = "tosa.reshape"(%1602) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1618 = "tosa.transpose"(%1617, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1619 = "tosa.reshape"(%1618) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1620 = "tosa.matmul"(%1619, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1621 = "tosa.reshape"(%1616) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1622 = "tosa.transpose"(%1621, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1623 = "tosa.reshape"(%1622) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1624 = "tosa.matmul"(%1623, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1625 = "tosa.add"(%1620, %1624) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1626 = "tosa.reshape"(%1614) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1627 = "tosa.transpose"(%1626, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1628 = "tosa.reshape"(%1627) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1629 = "tosa.matmul"(%1628, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1630 = "tosa.add"(%1625, %1629) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1631 = "tosa.mul"(%1630, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %1632 = "tosa.mul"(%97, %1631) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1633 = "tosa.mul"(%92, %1631) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1634 = "tosa.pow"(%96, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1635 = "tosa.mul"(%1634, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1636 = "tosa.mul"(%1635, %1633) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1637 = "tosa.reduce_sum"(%1636) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1638 = "tosa.mul"(%1637, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1639 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1638 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1640 = "tosa.mul"(%92, %1639) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1641 = "tosa.add"(%1632, %1640) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1642 = "tosa.add"(%1641, %1640) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1643 = "tosa.add"(%1594, %1642) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1644 = "tosa.negate"(%1642) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1645 = "tosa.reduce_sum"(%1644) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1646 = "tosa.mul"(%1645, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1647 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1646 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1648 = "tosa.add"(%1643, %1647) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1649 = "tosa.matmul"(%1648, %16) : (tensor<1x197x768xf32>, tensor<1x768x3072xf32>) -> tensor<1x197x3072xf32>
    %1650 = "tosa.mul"(%85, %1649) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1651 = "tosa.mul"(%78, %1649) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1652 = "tosa.mul"(%84, %84) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1653 = "tosa.sub"(%17, %1652) : (tensor<f32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1654 = "tosa.mul"(%1653, %1651) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1655 = "tosa.mul"(%79, %1654) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1656 = "tosa.pow"(%77, %719) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1657 = "tosa.mul"(%1656, %0) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1658 = "tosa.add"(%1655, %1657) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1659 = "tosa.mul"(%1650, %3) {shift = 0 : i32} : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1660 = "tosa.add"(%1658, %1659) : (tensor<1x197x3072xf32>, tensor<1x197x3072xf32>) -> tensor<1x197x3072xf32>
    %1661 = "tosa.matmul"(%1660, %18) : (tensor<1x197x3072xf32>, tensor<1x3072x768xf32>) -> tensor<1x197x768xf32>
    %1662 = "tosa.mul"(%1661, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %1663 = "tosa.mul"(%72, %1662) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1664 = "tosa.mul"(%67, %1662) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1665 = "tosa.pow"(%71, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1666 = "tosa.mul"(%1665, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1667 = "tosa.mul"(%1666, %1664) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1668 = "tosa.reduce_sum"(%1667) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1669 = "tosa.mul"(%1668, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1670 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1669 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1671 = "tosa.mul"(%67, %1670) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1672 = "tosa.add"(%1663, %1671) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1673 = "tosa.add"(%1672, %1671) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1674 = "tosa.add"(%1648, %1673) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1675 = "tosa.negate"(%1673) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1676 = "tosa.reduce_sum"(%1675) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1677 = "tosa.mul"(%1676, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1678 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1677 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1679 = "tosa.add"(%1674, %1678) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1680 = "tosa.matmul"(%1679, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1681 = "tosa.reshape"(%1680) {new_shape = array<i64: 1, 197, 12, 64>} : (tensor<1x197x768xf32>) -> tensor<1x197x12x64xf32>
    %1682 = "tosa.transpose"(%1681, %20) : (tensor<1x197x12x64xf32>, tensor<4xi64>) -> tensor<1x12x197x64xf32>
    %1683 = "tosa.reshape"(%1682) {new_shape = array<i64: 12, 197, 64>} : (tensor<1x12x197x64xf32>) -> tensor<12x197x64xf32>
    %1684 = "tosa.transpose"(%49, %21) : (tensor<12x197x64xf32>, tensor<3xi32>) -> tensor<12x64x197xf32>
    %1685 = "tosa.matmul"(%1683, %1684) : (tensor<12x197x64xf32>, tensor<12x64x197xf32>) -> tensor<12x197x197xf32>
    %1686 = "tosa.transpose"(%57, %21) : (tensor<12x197x197xf32>, tensor<3xi32>) -> tensor<12x197x197xf32>
    %1687 = "tosa.matmul"(%1686, %1683) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1688 = "tosa.mul"(%56, %1685) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1689 = "tosa.mul"(%54, %1685) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1690 = "tosa.reduce_sum"(%1689) {axis = 2 : i64} : (tensor<12x197x197xf32>) -> tensor<12x197x1xf32>
    %1691 = "tosa.mul"(%55, %55) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1692 = "tosa.negate"(%1691) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1693 = "tosa.reciprocal"(%1692) : (tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1694 = "tosa.mul"(%1693, %1690) {shift = 0 : i32} : (tensor<12x197x1xf32>, tensor<12x197x1xf32>) -> tensor<12x197x1xf32>
    %1695 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1694 : tensor<12x197x1xf32>) outs(%759 : tensor<12x197x197xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<12x197x197xf32>
    %1696 = "tosa.add"(%1688, %1695) : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1697 = "tosa.mul"(%54, %1696) {shift = 0 : i32} : (tensor<12x197x197xf32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1698 = "tosa.mul"(%52, %1697) {shift = 0 : i32} : (tensor<f32>, tensor<12x197x197xf32>) -> tensor<12x197x197xf32>
    %1699 = "tosa.matmul"(%1698, %49) : (tensor<12x197x197xf32>, tensor<12x197x64xf32>) -> tensor<12x197x64xf32>
    %1700 = "tosa.matmul"(%1684, %1698) : (tensor<12x64x197xf32>, tensor<12x197x197xf32>) -> tensor<12x64x197xf32>
    %1701 = "tosa.transpose"(%1700, %22) : (tensor<12x64x197xf32>, tensor<3xi64>) -> tensor<12x197x64xf32>
    %1702 = "tosa.reshape"(%1687) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1703 = "tosa.transpose"(%1702, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1704 = "tosa.reshape"(%1703) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1705 = "tosa.matmul"(%1704, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1706 = "tosa.reshape"(%1701) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1707 = "tosa.transpose"(%1706, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1708 = "tosa.reshape"(%1707) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1709 = "tosa.matmul"(%1708, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1710 = "tosa.add"(%1705, %1709) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1711 = "tosa.reshape"(%1699) {new_shape = array<i64: 1, 12, 197, 64>} : (tensor<12x197x64xf32>) -> tensor<1x12x197x64xf32>
    %1712 = "tosa.transpose"(%1711, %20) : (tensor<1x12x197x64xf32>, tensor<4xi64>) -> tensor<1x197x12x64xf32>
    %1713 = "tosa.reshape"(%1712) {new_shape = array<i64: 1, 197, 768>} : (tensor<1x197x12x64xf32>) -> tensor<1x197x768xf32>
    %1714 = "tosa.matmul"(%1713, %19) : (tensor<1x197x768xf32>, tensor<1x768x768xf32>) -> tensor<1x197x768xf32>
    %1715 = "tosa.add"(%1710, %1714) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1716 = "tosa.mul"(%1715, %11) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %1717 = "tosa.mul"(%41, %1716) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1718 = "tosa.mul"(%36, %1716) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1719 = "tosa.pow"(%40, %15) : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1720 = "tosa.mul"(%1719, %14) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %1721 = "tosa.mul"(%1720, %1718) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1722 = "tosa.reduce_sum"(%1721) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1723 = "tosa.mul"(%1722, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1724 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1723 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1725 = "tosa.mul"(%36, %1724) {shift = 0 : i32} : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1726 = "tosa.add"(%1717, %1725) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1727 = "tosa.add"(%1726, %1725) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1728 = "tosa.add"(%1679, %1727) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1729 = "tosa.negate"(%1727) : (tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %1730 = "tosa.reduce_sum"(%1729) {axis = 2 : i64} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %1731 = "tosa.mul"(%1730, %8) {shift = 0 : i32} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %1732 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction", "parallel"]} ins(%1731 : tensor<1x197x1xf32>) outs(%32 : tensor<1x197x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x197x768xf32>
    %1733 = "tosa.add"(%1728, %1732) : (tensor<1x197x768xf32>, tensor<1x197x768xf32>) -> tensor<1x197x768xf32>
    %extracted_slice = tensor.extract_slice %1733[0, 1, 0] [1, 196, 768] [1, 1, 1] : tensor<1x197x768xf32> to tensor<1x196x768xf32>
    %1734 = "tosa.transpose"(%extracted_slice, %22) : (tensor<1x196x768xf32>, tensor<3xi64>) -> tensor<1x768x196xf32>
    %1735 = "tosa.reshape"(%1734) {new_shape = array<i64: 1, 768, 14, 14>} : (tensor<1x768x196xf32>) -> tensor<1x768x14x14xf32>
    %1736 = "tosa.transpose"(%1735, %23) : (tensor<1x768x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x768xf32>
    %1737 = tensor.empty() : tensor<3xf32>
    %1738 = "tosa.transpose_conv2d"(%1736, %24, %1737) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 16, 16>} : (tensor<1x14x14x768xf32>, tensor<3x16x16x768xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %1739 = "tosa.transpose"(%1738, %25) : (tensor<1x224x224x3xf32>, tensor<4xi64>) -> tensor<1x3x224x224xf32>
    return %1739 : tensor<1x3x224x224xf32>
  }
}

