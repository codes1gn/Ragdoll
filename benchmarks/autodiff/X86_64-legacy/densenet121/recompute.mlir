#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 + d4, d2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
module {
  ml_program.global private mutable @global0 : tensor<1x3x224x224xf32>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense<0.000000e+00> : tensor<1x96x56x56xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1x128x56x56xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1x160x56x56xf32>
    %cst_2 = arith.constant dense<0.000000e+00> : tensor<1x192x56x56xf32>
    %cst_3 = arith.constant dense<0.000000e+00> : tensor<1x224x56x56xf32>
    %cst_4 = arith.constant dense<0.000000e+00> : tensor<1x256x56x56xf32>
    %cst_5 = arith.constant dense<0.000000e+00> : tensor<1x160x28x28xf32>
    %cst_6 = arith.constant dense<0.000000e+00> : tensor<1x192x28x28xf32>
    %cst_7 = arith.constant dense<0.000000e+00> : tensor<1x224x28x28xf32>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<1x256x28x28xf32>
    %cst_9 = arith.constant dense<0.000000e+00> : tensor<1x288x28x28xf32>
    %cst_10 = arith.constant dense<0.000000e+00> : tensor<1x320x28x28xf32>
    %cst_11 = arith.constant dense<0.000000e+00> : tensor<1x352x28x28xf32>
    %cst_12 = arith.constant dense<0.000000e+00> : tensor<1x384x28x28xf32>
    %cst_13 = arith.constant dense<0.000000e+00> : tensor<1x416x28x28xf32>
    %cst_14 = arith.constant dense<0.000000e+00> : tensor<1x448x28x28xf32>
    %cst_15 = arith.constant dense<0.000000e+00> : tensor<1x480x28x28xf32>
    %cst_16 = arith.constant dense<0.000000e+00> : tensor<1x512x28x28xf32>
    %cst_17 = arith.constant dense<0.000000e+00> : tensor<1x288x14x14xf32>
    %cst_18 = arith.constant dense<0.000000e+00> : tensor<1x320x14x14xf32>
    %cst_19 = arith.constant dense<0.000000e+00> : tensor<1x352x14x14xf32>
    %cst_20 = arith.constant dense<0.000000e+00> : tensor<1x384x14x14xf32>
    %cst_21 = arith.constant dense<0.000000e+00> : tensor<1x416x14x14xf32>
    %cst_22 = arith.constant dense<0.000000e+00> : tensor<1x448x14x14xf32>
    %cst_23 = arith.constant dense<0.000000e+00> : tensor<1x480x14x14xf32>
    %cst_24 = arith.constant dense<0.000000e+00> : tensor<1x512x14x14xf32>
    %cst_25 = arith.constant dense<0.000000e+00> : tensor<1x544x14x14xf32>
    %cst_26 = arith.constant dense<0.000000e+00> : tensor<1x576x14x14xf32>
    %cst_27 = arith.constant dense<0.000000e+00> : tensor<1x608x14x14xf32>
    %cst_28 = arith.constant dense<0.000000e+00> : tensor<1x640x14x14xf32>
    %cst_29 = arith.constant dense<0.000000e+00> : tensor<1x672x14x14xf32>
    %cst_30 = arith.constant dense<0.000000e+00> : tensor<1x704x14x14xf32>
    %cst_31 = arith.constant dense<0.000000e+00> : tensor<1x736x14x14xf32>
    %cst_32 = arith.constant dense<0.000000e+00> : tensor<1x768x14x14xf32>
    %cst_33 = arith.constant dense<0.000000e+00> : tensor<1x800x14x14xf32>
    %cst_34 = arith.constant dense<0.000000e+00> : tensor<1x832x14x14xf32>
    %cst_35 = arith.constant dense<0.000000e+00> : tensor<1x864x14x14xf32>
    %cst_36 = arith.constant dense<0.000000e+00> : tensor<1x896x14x14xf32>
    %cst_37 = arith.constant dense<0.000000e+00> : tensor<1x928x14x14xf32>
    %cst_38 = arith.constant dense<0.000000e+00> : tensor<1x960x14x14xf32>
    %cst_39 = arith.constant dense<0.000000e+00> : tensor<1x992x14x14xf32>
    %cst_40 = arith.constant dense<0.000000e+00> : tensor<1x1024x14x14xf32>
    %cst_41 = arith.constant dense<0.000000e+00> : tensor<1x544x7x7xf32>
    %cst_42 = arith.constant dense<0.000000e+00> : tensor<1x576x7x7xf32>
    %cst_43 = arith.constant dense<0.000000e+00> : tensor<1x608x7x7xf32>
    %cst_44 = arith.constant dense<0.000000e+00> : tensor<1x640x7x7xf32>
    %cst_45 = arith.constant dense<0.000000e+00> : tensor<1x672x7x7xf32>
    %cst_46 = arith.constant dense<0.000000e+00> : tensor<1x704x7x7xf32>
    %cst_47 = arith.constant dense<0.000000e+00> : tensor<1x736x7x7xf32>
    %cst_48 = arith.constant dense<0.000000e+00> : tensor<1x768x7x7xf32>
    %cst_49 = arith.constant dense<0.000000e+00> : tensor<1x800x7x7xf32>
    %cst_50 = arith.constant dense<0.000000e+00> : tensor<1x832x7x7xf32>
    %cst_51 = arith.constant dense<0.000000e+00> : tensor<1x864x7x7xf32>
    %cst_52 = arith.constant dense<0.000000e+00> : tensor<1x896x7x7xf32>
    %cst_53 = arith.constant dense<0.000000e+00> : tensor<1x928x7x7xf32>
    %cst_54 = arith.constant dense<0.000000e+00> : tensor<1x960x7x7xf32>
    %cst_55 = arith.constant dense<0.000000e+00> : tensor<1x992x7x7xf32>
    %cst_56 = arith.constant dense<0.000000e+00> : tensor<1x1024x7x7xf32>
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1000xf32>} : () -> tensor<1000xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1024x1000xf32>} : () -> tensor<1x1024x1000xf32>
    %2 = "tosa.const"() {value = dense<0.000000e+00> : tensor<512xf32>} : () -> tensor<512xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x1024xf32>} : () -> tensor<512x1x1x1024xf32>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1024x1x1xf32>} : () -> tensor<1x1024x1x1xf32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x992xf32>} : () -> tensor<128x1x1x992xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x992x1x1xf32>} : () -> tensor<1x992x1x1xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x960xf32>} : () -> tensor<128x1x1x960xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x960x1x1xf32>} : () -> tensor<1x960x1x1xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x928xf32>} : () -> tensor<128x1x1x928xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x928x1x1xf32>} : () -> tensor<1x928x1x1xf32>
    %11 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x896xf32>} : () -> tensor<128x1x1x896xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x896x1x1xf32>} : () -> tensor<1x896x1x1xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x864xf32>} : () -> tensor<128x1x1x864xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x864x1x1xf32>} : () -> tensor<1x864x1x1xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x832xf32>} : () -> tensor<128x1x1x832xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x832x1x1xf32>} : () -> tensor<1x832x1x1xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x800xf32>} : () -> tensor<128x1x1x800xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x800x1x1xf32>} : () -> tensor<1x800x1x1xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x768xf32>} : () -> tensor<128x1x1x768xf32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x768x1x1xf32>} : () -> tensor<1x768x1x1xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x736xf32>} : () -> tensor<128x1x1x736xf32>
    %22 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x736x1x1xf32>} : () -> tensor<1x736x1x1xf32>
    %23 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x704xf32>} : () -> tensor<128x1x1x704xf32>
    %24 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x704x1x1xf32>} : () -> tensor<1x704x1x1xf32>
    %25 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x672xf32>} : () -> tensor<128x1x1x672xf32>
    %26 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x672x1x1xf32>} : () -> tensor<1x672x1x1xf32>
    %27 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x640xf32>} : () -> tensor<128x1x1x640xf32>
    %28 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x640x1x1xf32>} : () -> tensor<1x640x1x1xf32>
    %29 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x608xf32>} : () -> tensor<128x1x1x608xf32>
    %30 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x608x1x1xf32>} : () -> tensor<1x608x1x1xf32>
    %31 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x576xf32>} : () -> tensor<128x1x1x576xf32>
    %32 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x576x1x1xf32>} : () -> tensor<1x576x1x1xf32>
    %33 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x544xf32>} : () -> tensor<128x1x1x544xf32>
    %34 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x544x1x1xf32>} : () -> tensor<1x544x1x1xf32>
    %35 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x512xf32>} : () -> tensor<128x1x1x512xf32>
    %36 = "tosa.const"() {value = dense<0.000000e+00> : tensor<256xf32>} : () -> tensor<256xf32>
    %37 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x512xf32>} : () -> tensor<256x1x1x512xf32>
    %38 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %39 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x480xf32>} : () -> tensor<128x1x1x480xf32>
    %40 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x480x1x1xf32>} : () -> tensor<1x480x1x1xf32>
    %41 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x448xf32>} : () -> tensor<128x1x1x448xf32>
    %42 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x448x1x1xf32>} : () -> tensor<1x448x1x1xf32>
    %43 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x416xf32>} : () -> tensor<128x1x1x416xf32>
    %44 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x416x1x1xf32>} : () -> tensor<1x416x1x1xf32>
    %45 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x384xf32>} : () -> tensor<128x1x1x384xf32>
    %46 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x384x1x1xf32>} : () -> tensor<1x384x1x1xf32>
    %47 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x352xf32>} : () -> tensor<128x1x1x352xf32>
    %48 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x352x1x1xf32>} : () -> tensor<1x352x1x1xf32>
    %49 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x320xf32>} : () -> tensor<128x1x1x320xf32>
    %50 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x320x1x1xf32>} : () -> tensor<1x320x1x1xf32>
    %51 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x288xf32>} : () -> tensor<128x1x1x288xf32>
    %52 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x288x1x1xf32>} : () -> tensor<1x288x1x1xf32>
    %53 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x256xf32>} : () -> tensor<128x1x1x256xf32>
    %54 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %55 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x224xf32>} : () -> tensor<128x1x1x224xf32>
    %56 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x224x1x1xf32>} : () -> tensor<1x224x1x1xf32>
    %57 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x192xf32>} : () -> tensor<128x1x1x192xf32>
    %58 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x192x1x1xf32>} : () -> tensor<1x192x1x1xf32>
    %59 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x160xf32>} : () -> tensor<128x1x1x160xf32>
    %60 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x160x1x1xf32>} : () -> tensor<1x160x1x1xf32>
    %61 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x128xf32>} : () -> tensor<128x1x1x128xf32>
    %62 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x96xf32>} : () -> tensor<128x1x1x96xf32>
    %63 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x96x1x1xf32>} : () -> tensor<1x96x1x1xf32>
    %64 = "tosa.const"() {value = dense<0.000000e+00> : tensor<32xf32>} : () -> tensor<32xf32>
    %65 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32x3x3x128xf32>} : () -> tensor<32x3x3x128xf32>
    %66 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %67 = "tosa.const"() {value = dense<0.000000e+00> : tensor<128xf32>} : () -> tensor<128xf32>
    %68 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x64xf32>} : () -> tensor<128x1x1x64xf32>
    %69 = "tosa.const"() {value = dense<9.99999974E-6> : tensor<f32>} : () -> tensor<f32>
    %70 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %71 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi64>} : () -> tensor<4xi64>
    %72 = "tosa.const"() {value = dense<0.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %73 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi64>} : () -> tensor<4xi64>
    %74 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x7x7x3xf32>} : () -> tensor<64x7x7x3xf32>
    ml_program.global_store @global0 = %arg0 : tensor<1x3x224x224xf32>
    %75 = "tosa.transpose"(%arg0, %73) : (tensor<1x3x224x224xf32>, tensor<4xi64>) -> tensor<1x224x224x3xf32>
    %76 = "tosa.conv2d"(%75, %74, %72) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %77 = "tosa.transpose"(%76, %71) : (tensor<1x112x112x64xf32>, tensor<4xi64>) -> tensor<1x64x112x112xf32>
    %78 = "tosa.sub"(%77, %70) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %79 = "tosa.add"(%70, %69) : (tensor<1x64x1x1xf32>, tensor<f32>) -> tensor<1x64x1x1xf32>
    %80 = "tosa.rsqrt"(%79) : (tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %81 = "tosa.mul"(%78, %80) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %82 = "tosa.mul"(%81, %70) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %83 = "tosa.add"(%82, %70) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %84 = "tosa.clamp"(%83) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %85 = "tosa.transpose"(%84, %73) : (tensor<1x64x112x112xf32>, tensor<4xi64>) -> tensor<1x112x112x64xf32>
    %86 = "tosa.max_pool2d"(%85) {kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    %87 = "tosa.transpose"(%86, %71) : (tensor<1x56x56x64xf32>, tensor<4xi64>) -> tensor<1x64x56x56xf32>
    %88 = "tosa.sub"(%87, %70) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %89 = "tosa.mul"(%88, %80) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %90 = "tosa.mul"(%89, %70) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %91 = "tosa.add"(%90, %70) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %92 = "tosa.clamp"(%91) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %93 = "tosa.transpose"(%92, %73) : (tensor<1x64x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x64xf32>
    %94 = "tosa.conv2d"(%93, %68, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<128x1x1x64xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %95 = "tosa.transpose"(%94, %71) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %96 = "tosa.sub"(%95, %66) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %97 = "tosa.add"(%66, %69) : (tensor<1x128x1x1xf32>, tensor<f32>) -> tensor<1x128x1x1xf32>
    %98 = "tosa.rsqrt"(%97) : (tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %99 = "tosa.mul"(%96, %98) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %100 = "tosa.mul"(%99, %66) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %101 = "tosa.add"(%100, %66) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %102 = "tosa.clamp"(%101) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %103 = "tosa.transpose"(%102, %73) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %104 = "tosa.conv2d"(%103, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %105 = "tosa.transpose"(%104, %71) : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice = tensor.insert_slice %87 into %cst[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x96x56x56xf32>
    %inserted_slice_57 = tensor.insert_slice %105 into %inserted_slice[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x96x56x56xf32>
    %106 = "tosa.sub"(%inserted_slice_57, %63) : (tensor<1x96x56x56xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x56x56xf32>
    %107 = "tosa.add"(%63, %69) : (tensor<1x96x1x1xf32>, tensor<f32>) -> tensor<1x96x1x1xf32>
    %108 = "tosa.rsqrt"(%107) : (tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %109 = "tosa.mul"(%106, %108) {shift = 0 : i32} : (tensor<1x96x56x56xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x56x56xf32>
    %110 = "tosa.mul"(%109, %63) {shift = 0 : i32} : (tensor<1x96x56x56xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x56x56xf32>
    %111 = "tosa.add"(%110, %63) : (tensor<1x96x56x56xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x56x56xf32>
    %112 = "tosa.clamp"(%111) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x56x56xf32>) -> tensor<1x96x56x56xf32>
    %113 = "tosa.transpose"(%112, %73) : (tensor<1x96x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x96xf32>
    %114 = "tosa.conv2d"(%113, %62, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x96xf32>, tensor<128x1x1x96xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %115 = "tosa.transpose"(%114, %71) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %116 = "tosa.sub"(%115, %66) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %117 = "tosa.mul"(%116, %98) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %118 = "tosa.mul"(%117, %66) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %119 = "tosa.add"(%118, %66) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %120 = "tosa.clamp"(%119) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %121 = "tosa.transpose"(%120, %73) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %122 = "tosa.conv2d"(%121, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %123 = "tosa.transpose"(%122, %71) : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice_58 = tensor.insert_slice %87 into %cst_0[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x128x56x56xf32>
    %inserted_slice_59 = tensor.insert_slice %105 into %inserted_slice_58[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x128x56x56xf32>
    %inserted_slice_60 = tensor.insert_slice %123 into %inserted_slice_59[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x128x56x56xf32>
    %124 = "tosa.sub"(%inserted_slice_60, %66) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %125 = "tosa.mul"(%124, %98) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %126 = "tosa.mul"(%125, %66) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %127 = "tosa.add"(%126, %66) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %128 = "tosa.clamp"(%127) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %129 = "tosa.transpose"(%128, %73) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %130 = "tosa.conv2d"(%129, %61, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x1x1x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %131 = "tosa.transpose"(%130, %71) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %132 = "tosa.sub"(%131, %66) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %133 = "tosa.mul"(%132, %98) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %134 = "tosa.mul"(%133, %66) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %135 = "tosa.add"(%134, %66) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %136 = "tosa.clamp"(%135) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %137 = "tosa.transpose"(%136, %73) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %138 = "tosa.conv2d"(%137, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %139 = "tosa.transpose"(%138, %71) : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice_61 = tensor.insert_slice %87 into %cst_1[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x160x56x56xf32>
    %inserted_slice_62 = tensor.insert_slice %105 into %inserted_slice_61[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x160x56x56xf32>
    %inserted_slice_63 = tensor.insert_slice %123 into %inserted_slice_62[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x160x56x56xf32>
    %inserted_slice_64 = tensor.insert_slice %139 into %inserted_slice_63[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x160x56x56xf32>
    %140 = "tosa.sub"(%inserted_slice_64, %60) : (tensor<1x160x56x56xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x56x56xf32>
    %141 = "tosa.add"(%60, %69) : (tensor<1x160x1x1xf32>, tensor<f32>) -> tensor<1x160x1x1xf32>
    %142 = "tosa.rsqrt"(%141) : (tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %143 = "tosa.mul"(%140, %142) {shift = 0 : i32} : (tensor<1x160x56x56xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x56x56xf32>
    %144 = "tosa.mul"(%143, %60) {shift = 0 : i32} : (tensor<1x160x56x56xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x56x56xf32>
    %145 = "tosa.add"(%144, %60) : (tensor<1x160x56x56xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x56x56xf32>
    %146 = "tosa.clamp"(%145) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x56x56xf32>) -> tensor<1x160x56x56xf32>
    %147 = "tosa.transpose"(%146, %73) : (tensor<1x160x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x160xf32>
    %148 = "tosa.conv2d"(%147, %59, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x160xf32>, tensor<128x1x1x160xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %149 = "tosa.transpose"(%148, %71) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %150 = "tosa.sub"(%149, %66) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %151 = "tosa.mul"(%150, %98) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %152 = "tosa.mul"(%151, %66) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %153 = "tosa.add"(%152, %66) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %154 = "tosa.clamp"(%153) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %155 = "tosa.transpose"(%154, %73) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %156 = "tosa.conv2d"(%155, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %157 = "tosa.transpose"(%156, %71) : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice_65 = tensor.insert_slice %87 into %cst_2[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x192x56x56xf32>
    %inserted_slice_66 = tensor.insert_slice %105 into %inserted_slice_65[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x192x56x56xf32>
    %inserted_slice_67 = tensor.insert_slice %123 into %inserted_slice_66[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x192x56x56xf32>
    %inserted_slice_68 = tensor.insert_slice %139 into %inserted_slice_67[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x192x56x56xf32>
    %inserted_slice_69 = tensor.insert_slice %157 into %inserted_slice_68[0, 160, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x192x56x56xf32>
    %158 = "tosa.sub"(%inserted_slice_69, %58) : (tensor<1x192x56x56xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x56x56xf32>
    %159 = "tosa.add"(%58, %69) : (tensor<1x192x1x1xf32>, tensor<f32>) -> tensor<1x192x1x1xf32>
    %160 = "tosa.rsqrt"(%159) : (tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %161 = "tosa.mul"(%158, %160) {shift = 0 : i32} : (tensor<1x192x56x56xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x56x56xf32>
    %162 = "tosa.mul"(%161, %58) {shift = 0 : i32} : (tensor<1x192x56x56xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x56x56xf32>
    %163 = "tosa.add"(%162, %58) : (tensor<1x192x56x56xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x56x56xf32>
    %164 = "tosa.clamp"(%163) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x56x56xf32>) -> tensor<1x192x56x56xf32>
    %165 = "tosa.transpose"(%164, %73) : (tensor<1x192x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x192xf32>
    %166 = "tosa.conv2d"(%165, %57, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x192xf32>, tensor<128x1x1x192xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %167 = "tosa.transpose"(%166, %71) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %168 = "tosa.sub"(%167, %66) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %169 = "tosa.mul"(%168, %98) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %170 = "tosa.mul"(%169, %66) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %171 = "tosa.add"(%170, %66) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %172 = "tosa.clamp"(%171) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %173 = "tosa.transpose"(%172, %73) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %174 = "tosa.conv2d"(%173, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %175 = "tosa.transpose"(%174, %71) : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice_70 = tensor.insert_slice %87 into %cst_3[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x224x56x56xf32>
    %inserted_slice_71 = tensor.insert_slice %105 into %inserted_slice_70[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x224x56x56xf32>
    %inserted_slice_72 = tensor.insert_slice %123 into %inserted_slice_71[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x224x56x56xf32>
    %inserted_slice_73 = tensor.insert_slice %139 into %inserted_slice_72[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x224x56x56xf32>
    %inserted_slice_74 = tensor.insert_slice %157 into %inserted_slice_73[0, 160, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x224x56x56xf32>
    %inserted_slice_75 = tensor.insert_slice %175 into %inserted_slice_74[0, 192, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x224x56x56xf32>
    %176 = "tosa.sub"(%inserted_slice_75, %56) : (tensor<1x224x56x56xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x56x56xf32>
    %177 = "tosa.add"(%56, %69) : (tensor<1x224x1x1xf32>, tensor<f32>) -> tensor<1x224x1x1xf32>
    %178 = "tosa.rsqrt"(%177) : (tensor<1x224x1x1xf32>) -> tensor<1x224x1x1xf32>
    %179 = "tosa.mul"(%176, %178) {shift = 0 : i32} : (tensor<1x224x56x56xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x56x56xf32>
    %180 = "tosa.mul"(%179, %56) {shift = 0 : i32} : (tensor<1x224x56x56xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x56x56xf32>
    %181 = "tosa.add"(%180, %56) : (tensor<1x224x56x56xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x56x56xf32>
    %182 = "tosa.clamp"(%181) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x224x56x56xf32>) -> tensor<1x224x56x56xf32>
    %183 = "tosa.transpose"(%182, %73) : (tensor<1x224x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x224xf32>
    %184 = "tosa.conv2d"(%183, %55, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x224xf32>, tensor<128x1x1x224xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %185 = "tosa.transpose"(%184, %71) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %186 = "tosa.sub"(%185, %66) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %187 = "tosa.mul"(%186, %98) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %188 = "tosa.mul"(%187, %66) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %189 = "tosa.add"(%188, %66) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %190 = "tosa.clamp"(%189) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %191 = "tosa.transpose"(%190, %73) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %192 = "tosa.conv2d"(%191, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %193 = "tosa.transpose"(%192, %71) : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice_76 = tensor.insert_slice %87 into %cst_4[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_77 = tensor.insert_slice %105 into %inserted_slice_76[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_78 = tensor.insert_slice %123 into %inserted_slice_77[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_79 = tensor.insert_slice %139 into %inserted_slice_78[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_80 = tensor.insert_slice %157 into %inserted_slice_79[0, 160, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_81 = tensor.insert_slice %175 into %inserted_slice_80[0, 192, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_82 = tensor.insert_slice %193 into %inserted_slice_81[0, 224, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %194 = "tosa.sub"(%inserted_slice_82, %54) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %195 = "tosa.add"(%54, %69) : (tensor<1x256x1x1xf32>, tensor<f32>) -> tensor<1x256x1x1xf32>
    %196 = "tosa.rsqrt"(%195) : (tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %197 = "tosa.mul"(%194, %196) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %198 = "tosa.mul"(%197, %54) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %199 = "tosa.add"(%198, %54) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %200 = "tosa.clamp"(%199) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %201 = "tosa.transpose"(%200, %73) : (tensor<1x256x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x256xf32>
    %202 = "tosa.conv2d"(%201, %53, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %203 = "tosa.avg_pool2d"(%202) {acc_type = f32, kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x128xf32>) -> tensor<1x28x28x128xf32>
    %204 = "tosa.transpose"(%203, %71) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %205 = "tosa.sub"(%204, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %206 = "tosa.mul"(%205, %98) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %207 = "tosa.mul"(%206, %66) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %208 = "tosa.add"(%207, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %209 = "tosa.clamp"(%208) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %210 = "tosa.transpose"(%209, %73) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %211 = "tosa.conv2d"(%210, %61, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x1x1x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %212 = "tosa.transpose"(%211, %71) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %213 = "tosa.sub"(%212, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %214 = "tosa.mul"(%213, %98) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %215 = "tosa.mul"(%214, %66) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %216 = "tosa.add"(%215, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %217 = "tosa.clamp"(%216) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %218 = "tosa.transpose"(%217, %73) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %219 = "tosa.conv2d"(%218, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %220 = "tosa.transpose"(%219, %71) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_83 = tensor.insert_slice %204 into %cst_5[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x160x28x28xf32>
    %inserted_slice_84 = tensor.insert_slice %220 into %inserted_slice_83[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x160x28x28xf32>
    %221 = "tosa.sub"(%inserted_slice_84, %60) : (tensor<1x160x28x28xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x28x28xf32>
    %222 = "tosa.mul"(%221, %142) {shift = 0 : i32} : (tensor<1x160x28x28xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x28x28xf32>
    %223 = "tosa.mul"(%222, %60) {shift = 0 : i32} : (tensor<1x160x28x28xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x28x28xf32>
    %224 = "tosa.add"(%223, %60) : (tensor<1x160x28x28xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x28x28xf32>
    %225 = "tosa.clamp"(%224) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x28x28xf32>) -> tensor<1x160x28x28xf32>
    %226 = "tosa.transpose"(%225, %73) : (tensor<1x160x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x160xf32>
    %227 = "tosa.conv2d"(%226, %59, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x160xf32>, tensor<128x1x1x160xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %228 = "tosa.transpose"(%227, %71) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %229 = "tosa.sub"(%228, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %230 = "tosa.mul"(%229, %98) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %231 = "tosa.mul"(%230, %66) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %232 = "tosa.add"(%231, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %233 = "tosa.clamp"(%232) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %234 = "tosa.transpose"(%233, %73) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %235 = "tosa.conv2d"(%234, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %236 = "tosa.transpose"(%235, %71) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_85 = tensor.insert_slice %204 into %cst_6[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x192x28x28xf32>
    %inserted_slice_86 = tensor.insert_slice %220 into %inserted_slice_85[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x192x28x28xf32>
    %inserted_slice_87 = tensor.insert_slice %236 into %inserted_slice_86[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x192x28x28xf32>
    %237 = "tosa.sub"(%inserted_slice_87, %58) : (tensor<1x192x28x28xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x28x28xf32>
    %238 = "tosa.mul"(%237, %160) {shift = 0 : i32} : (tensor<1x192x28x28xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x28x28xf32>
    %239 = "tosa.mul"(%238, %58) {shift = 0 : i32} : (tensor<1x192x28x28xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x28x28xf32>
    %240 = "tosa.add"(%239, %58) : (tensor<1x192x28x28xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x28x28xf32>
    %241 = "tosa.clamp"(%240) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x28x28xf32>) -> tensor<1x192x28x28xf32>
    %242 = "tosa.transpose"(%241, %73) : (tensor<1x192x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x192xf32>
    %243 = "tosa.conv2d"(%242, %57, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x192xf32>, tensor<128x1x1x192xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %244 = "tosa.transpose"(%243, %71) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %245 = "tosa.sub"(%244, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %246 = "tosa.mul"(%245, %98) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %247 = "tosa.mul"(%246, %66) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %248 = "tosa.add"(%247, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %249 = "tosa.clamp"(%248) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %250 = "tosa.transpose"(%249, %73) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %251 = "tosa.conv2d"(%250, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %252 = "tosa.transpose"(%251, %71) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_88 = tensor.insert_slice %204 into %cst_7[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x224x28x28xf32>
    %inserted_slice_89 = tensor.insert_slice %220 into %inserted_slice_88[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x224x28x28xf32>
    %inserted_slice_90 = tensor.insert_slice %236 into %inserted_slice_89[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x224x28x28xf32>
    %inserted_slice_91 = tensor.insert_slice %252 into %inserted_slice_90[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x224x28x28xf32>
    %253 = "tosa.sub"(%inserted_slice_91, %56) : (tensor<1x224x28x28xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x28x28xf32>
    %254 = "tosa.mul"(%253, %178) {shift = 0 : i32} : (tensor<1x224x28x28xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x28x28xf32>
    %255 = "tosa.mul"(%254, %56) {shift = 0 : i32} : (tensor<1x224x28x28xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x28x28xf32>
    %256 = "tosa.add"(%255, %56) : (tensor<1x224x28x28xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x28x28xf32>
    %257 = "tosa.clamp"(%256) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x224x28x28xf32>) -> tensor<1x224x28x28xf32>
    %258 = "tosa.transpose"(%257, %73) : (tensor<1x224x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x224xf32>
    %259 = "tosa.conv2d"(%258, %55, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x224xf32>, tensor<128x1x1x224xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %260 = "tosa.transpose"(%259, %71) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %261 = "tosa.sub"(%260, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %262 = "tosa.mul"(%261, %98) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %263 = "tosa.mul"(%262, %66) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %264 = "tosa.add"(%263, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %265 = "tosa.clamp"(%264) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %266 = "tosa.transpose"(%265, %73) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %267 = "tosa.conv2d"(%266, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %268 = "tosa.transpose"(%267, %71) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_92 = tensor.insert_slice %204 into %cst_8[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x256x28x28xf32>
    %inserted_slice_93 = tensor.insert_slice %220 into %inserted_slice_92[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x256x28x28xf32>
    %inserted_slice_94 = tensor.insert_slice %236 into %inserted_slice_93[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x256x28x28xf32>
    %inserted_slice_95 = tensor.insert_slice %252 into %inserted_slice_94[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x256x28x28xf32>
    %inserted_slice_96 = tensor.insert_slice %268 into %inserted_slice_95[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x256x28x28xf32>
    %269 = "tosa.sub"(%inserted_slice_96, %54) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %270 = "tosa.mul"(%269, %196) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %271 = "tosa.mul"(%270, %54) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %272 = "tosa.add"(%271, %54) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %273 = "tosa.clamp"(%272) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %274 = "tosa.transpose"(%273, %73) : (tensor<1x256x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x256xf32>
    %275 = "tosa.conv2d"(%274, %53, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %276 = "tosa.transpose"(%275, %71) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %277 = "tosa.sub"(%276, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %278 = "tosa.mul"(%277, %98) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %279 = "tosa.mul"(%278, %66) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %280 = "tosa.add"(%279, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %281 = "tosa.clamp"(%280) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %282 = "tosa.transpose"(%281, %73) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %283 = "tosa.conv2d"(%282, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %284 = "tosa.transpose"(%283, %71) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_97 = tensor.insert_slice %204 into %cst_9[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x288x28x28xf32>
    %inserted_slice_98 = tensor.insert_slice %220 into %inserted_slice_97[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x288x28x28xf32>
    %inserted_slice_99 = tensor.insert_slice %236 into %inserted_slice_98[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x288x28x28xf32>
    %inserted_slice_100 = tensor.insert_slice %252 into %inserted_slice_99[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x288x28x28xf32>
    %inserted_slice_101 = tensor.insert_slice %268 into %inserted_slice_100[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x288x28x28xf32>
    %inserted_slice_102 = tensor.insert_slice %284 into %inserted_slice_101[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x288x28x28xf32>
    %285 = "tosa.sub"(%inserted_slice_102, %52) : (tensor<1x288x28x28xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x28x28xf32>
    %286 = "tosa.add"(%52, %69) : (tensor<1x288x1x1xf32>, tensor<f32>) -> tensor<1x288x1x1xf32>
    %287 = "tosa.rsqrt"(%286) : (tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %288 = "tosa.mul"(%285, %287) {shift = 0 : i32} : (tensor<1x288x28x28xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x28x28xf32>
    %289 = "tosa.mul"(%288, %52) {shift = 0 : i32} : (tensor<1x288x28x28xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x28x28xf32>
    %290 = "tosa.add"(%289, %52) : (tensor<1x288x28x28xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x28x28xf32>
    %291 = "tosa.clamp"(%290) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x288x28x28xf32>) -> tensor<1x288x28x28xf32>
    %292 = "tosa.transpose"(%291, %73) : (tensor<1x288x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x288xf32>
    %293 = "tosa.conv2d"(%292, %51, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x288xf32>, tensor<128x1x1x288xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %294 = "tosa.transpose"(%293, %71) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %295 = "tosa.sub"(%294, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %296 = "tosa.mul"(%295, %98) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %297 = "tosa.mul"(%296, %66) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %298 = "tosa.add"(%297, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %299 = "tosa.clamp"(%298) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %300 = "tosa.transpose"(%299, %73) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %301 = "tosa.conv2d"(%300, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %302 = "tosa.transpose"(%301, %71) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_103 = tensor.insert_slice %204 into %cst_10[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_104 = tensor.insert_slice %220 into %inserted_slice_103[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_105 = tensor.insert_slice %236 into %inserted_slice_104[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_106 = tensor.insert_slice %252 into %inserted_slice_105[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_107 = tensor.insert_slice %268 into %inserted_slice_106[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_108 = tensor.insert_slice %284 into %inserted_slice_107[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_109 = tensor.insert_slice %302 into %inserted_slice_108[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %303 = "tosa.sub"(%inserted_slice_109, %50) : (tensor<1x320x28x28xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x28x28xf32>
    %304 = "tosa.add"(%50, %69) : (tensor<1x320x1x1xf32>, tensor<f32>) -> tensor<1x320x1x1xf32>
    %305 = "tosa.rsqrt"(%304) : (tensor<1x320x1x1xf32>) -> tensor<1x320x1x1xf32>
    %306 = "tosa.mul"(%303, %305) {shift = 0 : i32} : (tensor<1x320x28x28xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x28x28xf32>
    %307 = "tosa.mul"(%306, %50) {shift = 0 : i32} : (tensor<1x320x28x28xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x28x28xf32>
    %308 = "tosa.add"(%307, %50) : (tensor<1x320x28x28xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x28x28xf32>
    %309 = "tosa.clamp"(%308) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x320x28x28xf32>) -> tensor<1x320x28x28xf32>
    %310 = "tosa.transpose"(%309, %73) : (tensor<1x320x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x320xf32>
    %311 = "tosa.conv2d"(%310, %49, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x320xf32>, tensor<128x1x1x320xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %312 = "tosa.transpose"(%311, %71) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %313 = "tosa.sub"(%312, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %314 = "tosa.mul"(%313, %98) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %315 = "tosa.mul"(%314, %66) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %316 = "tosa.add"(%315, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %317 = "tosa.clamp"(%316) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %318 = "tosa.transpose"(%317, %73) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %319 = "tosa.conv2d"(%318, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %320 = "tosa.transpose"(%319, %71) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_110 = tensor.insert_slice %204 into %cst_11[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_111 = tensor.insert_slice %220 into %inserted_slice_110[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_112 = tensor.insert_slice %236 into %inserted_slice_111[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_113 = tensor.insert_slice %252 into %inserted_slice_112[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_114 = tensor.insert_slice %268 into %inserted_slice_113[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_115 = tensor.insert_slice %284 into %inserted_slice_114[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_116 = tensor.insert_slice %302 into %inserted_slice_115[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_117 = tensor.insert_slice %320 into %inserted_slice_116[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %321 = "tosa.sub"(%inserted_slice_117, %48) : (tensor<1x352x28x28xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x28x28xf32>
    %322 = "tosa.add"(%48, %69) : (tensor<1x352x1x1xf32>, tensor<f32>) -> tensor<1x352x1x1xf32>
    %323 = "tosa.rsqrt"(%322) : (tensor<1x352x1x1xf32>) -> tensor<1x352x1x1xf32>
    %324 = "tosa.mul"(%321, %323) {shift = 0 : i32} : (tensor<1x352x28x28xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x28x28xf32>
    %325 = "tosa.mul"(%324, %48) {shift = 0 : i32} : (tensor<1x352x28x28xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x28x28xf32>
    %326 = "tosa.add"(%325, %48) : (tensor<1x352x28x28xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x28x28xf32>
    %327 = "tosa.clamp"(%326) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x352x28x28xf32>) -> tensor<1x352x28x28xf32>
    %328 = "tosa.transpose"(%327, %73) : (tensor<1x352x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x352xf32>
    %329 = "tosa.conv2d"(%328, %47, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x352xf32>, tensor<128x1x1x352xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %330 = "tosa.transpose"(%329, %71) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %331 = "tosa.sub"(%330, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %332 = "tosa.mul"(%331, %98) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %333 = "tosa.mul"(%332, %66) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %334 = "tosa.add"(%333, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %335 = "tosa.clamp"(%334) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %336 = "tosa.transpose"(%335, %73) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %337 = "tosa.conv2d"(%336, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %338 = "tosa.transpose"(%337, %71) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_118 = tensor.insert_slice %204 into %cst_12[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_119 = tensor.insert_slice %220 into %inserted_slice_118[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_120 = tensor.insert_slice %236 into %inserted_slice_119[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_121 = tensor.insert_slice %252 into %inserted_slice_120[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_122 = tensor.insert_slice %268 into %inserted_slice_121[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_123 = tensor.insert_slice %284 into %inserted_slice_122[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_124 = tensor.insert_slice %302 into %inserted_slice_123[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_125 = tensor.insert_slice %320 into %inserted_slice_124[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_126 = tensor.insert_slice %338 into %inserted_slice_125[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %339 = "tosa.sub"(%inserted_slice_126, %46) : (tensor<1x384x28x28xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x28x28xf32>
    %340 = "tosa.add"(%46, %69) : (tensor<1x384x1x1xf32>, tensor<f32>) -> tensor<1x384x1x1xf32>
    %341 = "tosa.rsqrt"(%340) : (tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %342 = "tosa.mul"(%339, %341) {shift = 0 : i32} : (tensor<1x384x28x28xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x28x28xf32>
    %343 = "tosa.mul"(%342, %46) {shift = 0 : i32} : (tensor<1x384x28x28xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x28x28xf32>
    %344 = "tosa.add"(%343, %46) : (tensor<1x384x28x28xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x28x28xf32>
    %345 = "tosa.clamp"(%344) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x28x28xf32>) -> tensor<1x384x28x28xf32>
    %346 = "tosa.transpose"(%345, %73) : (tensor<1x384x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x384xf32>
    %347 = "tosa.conv2d"(%346, %45, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x384xf32>, tensor<128x1x1x384xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %348 = "tosa.transpose"(%347, %71) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %349 = "tosa.sub"(%348, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %350 = "tosa.mul"(%349, %98) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %351 = "tosa.mul"(%350, %66) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %352 = "tosa.add"(%351, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %353 = "tosa.clamp"(%352) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %354 = "tosa.transpose"(%353, %73) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %355 = "tosa.conv2d"(%354, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %356 = "tosa.transpose"(%355, %71) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_127 = tensor.insert_slice %204 into %cst_13[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_128 = tensor.insert_slice %220 into %inserted_slice_127[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_129 = tensor.insert_slice %236 into %inserted_slice_128[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_130 = tensor.insert_slice %252 into %inserted_slice_129[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_131 = tensor.insert_slice %268 into %inserted_slice_130[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_132 = tensor.insert_slice %284 into %inserted_slice_131[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_133 = tensor.insert_slice %302 into %inserted_slice_132[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_134 = tensor.insert_slice %320 into %inserted_slice_133[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_135 = tensor.insert_slice %338 into %inserted_slice_134[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_136 = tensor.insert_slice %356 into %inserted_slice_135[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %357 = "tosa.sub"(%inserted_slice_136, %44) : (tensor<1x416x28x28xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x28x28xf32>
    %358 = "tosa.add"(%44, %69) : (tensor<1x416x1x1xf32>, tensor<f32>) -> tensor<1x416x1x1xf32>
    %359 = "tosa.rsqrt"(%358) : (tensor<1x416x1x1xf32>) -> tensor<1x416x1x1xf32>
    %360 = "tosa.mul"(%357, %359) {shift = 0 : i32} : (tensor<1x416x28x28xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x28x28xf32>
    %361 = "tosa.mul"(%360, %44) {shift = 0 : i32} : (tensor<1x416x28x28xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x28x28xf32>
    %362 = "tosa.add"(%361, %44) : (tensor<1x416x28x28xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x28x28xf32>
    %363 = "tosa.clamp"(%362) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x416x28x28xf32>) -> tensor<1x416x28x28xf32>
    %364 = "tosa.transpose"(%363, %73) : (tensor<1x416x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x416xf32>
    %365 = "tosa.conv2d"(%364, %43, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x416xf32>, tensor<128x1x1x416xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %366 = "tosa.transpose"(%365, %71) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %367 = "tosa.sub"(%366, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %368 = "tosa.mul"(%367, %98) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %369 = "tosa.mul"(%368, %66) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %370 = "tosa.add"(%369, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %371 = "tosa.clamp"(%370) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %372 = "tosa.transpose"(%371, %73) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %373 = "tosa.conv2d"(%372, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %374 = "tosa.transpose"(%373, %71) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_137 = tensor.insert_slice %204 into %cst_14[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_138 = tensor.insert_slice %220 into %inserted_slice_137[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_139 = tensor.insert_slice %236 into %inserted_slice_138[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_140 = tensor.insert_slice %252 into %inserted_slice_139[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_141 = tensor.insert_slice %268 into %inserted_slice_140[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_142 = tensor.insert_slice %284 into %inserted_slice_141[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_143 = tensor.insert_slice %302 into %inserted_slice_142[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_144 = tensor.insert_slice %320 into %inserted_slice_143[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_145 = tensor.insert_slice %338 into %inserted_slice_144[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_146 = tensor.insert_slice %356 into %inserted_slice_145[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_147 = tensor.insert_slice %374 into %inserted_slice_146[0, 416, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %375 = "tosa.sub"(%inserted_slice_147, %42) : (tensor<1x448x28x28xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x28x28xf32>
    %376 = "tosa.add"(%42, %69) : (tensor<1x448x1x1xf32>, tensor<f32>) -> tensor<1x448x1x1xf32>
    %377 = "tosa.rsqrt"(%376) : (tensor<1x448x1x1xf32>) -> tensor<1x448x1x1xf32>
    %378 = "tosa.mul"(%375, %377) {shift = 0 : i32} : (tensor<1x448x28x28xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x28x28xf32>
    %379 = "tosa.mul"(%378, %42) {shift = 0 : i32} : (tensor<1x448x28x28xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x28x28xf32>
    %380 = "tosa.add"(%379, %42) : (tensor<1x448x28x28xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x28x28xf32>
    %381 = "tosa.clamp"(%380) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x448x28x28xf32>) -> tensor<1x448x28x28xf32>
    %382 = "tosa.transpose"(%381, %73) : (tensor<1x448x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x448xf32>
    %383 = "tosa.conv2d"(%382, %41, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x448xf32>, tensor<128x1x1x448xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %384 = "tosa.transpose"(%383, %71) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %385 = "tosa.sub"(%384, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %386 = "tosa.mul"(%385, %98) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %387 = "tosa.mul"(%386, %66) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %388 = "tosa.add"(%387, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %389 = "tosa.clamp"(%388) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %390 = "tosa.transpose"(%389, %73) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %391 = "tosa.conv2d"(%390, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %392 = "tosa.transpose"(%391, %71) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_148 = tensor.insert_slice %204 into %cst_15[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_149 = tensor.insert_slice %220 into %inserted_slice_148[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_150 = tensor.insert_slice %236 into %inserted_slice_149[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_151 = tensor.insert_slice %252 into %inserted_slice_150[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_152 = tensor.insert_slice %268 into %inserted_slice_151[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_153 = tensor.insert_slice %284 into %inserted_slice_152[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_154 = tensor.insert_slice %302 into %inserted_slice_153[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_155 = tensor.insert_slice %320 into %inserted_slice_154[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_156 = tensor.insert_slice %338 into %inserted_slice_155[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_157 = tensor.insert_slice %356 into %inserted_slice_156[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_158 = tensor.insert_slice %374 into %inserted_slice_157[0, 416, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_159 = tensor.insert_slice %392 into %inserted_slice_158[0, 448, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %393 = "tosa.sub"(%inserted_slice_159, %40) : (tensor<1x480x28x28xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x28x28xf32>
    %394 = "tosa.add"(%40, %69) : (tensor<1x480x1x1xf32>, tensor<f32>) -> tensor<1x480x1x1xf32>
    %395 = "tosa.rsqrt"(%394) : (tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %396 = "tosa.mul"(%393, %395) {shift = 0 : i32} : (tensor<1x480x28x28xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x28x28xf32>
    %397 = "tosa.mul"(%396, %40) {shift = 0 : i32} : (tensor<1x480x28x28xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x28x28xf32>
    %398 = "tosa.add"(%397, %40) : (tensor<1x480x28x28xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x28x28xf32>
    %399 = "tosa.clamp"(%398) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x480x28x28xf32>) -> tensor<1x480x28x28xf32>
    %400 = "tosa.transpose"(%399, %73) : (tensor<1x480x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x480xf32>
    %401 = "tosa.conv2d"(%400, %39, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x480xf32>, tensor<128x1x1x480xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %402 = "tosa.transpose"(%401, %71) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %403 = "tosa.sub"(%402, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %404 = "tosa.mul"(%403, %98) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %405 = "tosa.mul"(%404, %66) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %406 = "tosa.add"(%405, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %407 = "tosa.clamp"(%406) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %408 = "tosa.transpose"(%407, %73) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %409 = "tosa.conv2d"(%408, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %410 = "tosa.transpose"(%409, %71) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_160 = tensor.insert_slice %204 into %cst_16[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_161 = tensor.insert_slice %220 into %inserted_slice_160[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_162 = tensor.insert_slice %236 into %inserted_slice_161[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_163 = tensor.insert_slice %252 into %inserted_slice_162[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_164 = tensor.insert_slice %268 into %inserted_slice_163[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_165 = tensor.insert_slice %284 into %inserted_slice_164[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_166 = tensor.insert_slice %302 into %inserted_slice_165[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_167 = tensor.insert_slice %320 into %inserted_slice_166[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_168 = tensor.insert_slice %338 into %inserted_slice_167[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_169 = tensor.insert_slice %356 into %inserted_slice_168[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_170 = tensor.insert_slice %374 into %inserted_slice_169[0, 416, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_171 = tensor.insert_slice %392 into %inserted_slice_170[0, 448, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_172 = tensor.insert_slice %410 into %inserted_slice_171[0, 480, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %411 = "tosa.sub"(%inserted_slice_172, %38) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %412 = "tosa.add"(%38, %69) : (tensor<1x512x1x1xf32>, tensor<f32>) -> tensor<1x512x1x1xf32>
    %413 = "tosa.rsqrt"(%412) : (tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %414 = "tosa.mul"(%411, %413) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %415 = "tosa.mul"(%414, %38) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %416 = "tosa.add"(%415, %38) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %417 = "tosa.clamp"(%416) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %418 = "tosa.transpose"(%417, %73) : (tensor<1x512x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x512xf32>
    %419 = "tosa.conv2d"(%418, %37, %36) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %420 = "tosa.avg_pool2d"(%419) {acc_type = f32, kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x256xf32>) -> tensor<1x14x14x256xf32>
    %421 = "tosa.transpose"(%420, %71) : (tensor<1x14x14x256xf32>, tensor<4xi64>) -> tensor<1x256x14x14xf32>
    %422 = "tosa.sub"(%421, %54) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %423 = "tosa.mul"(%422, %196) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %424 = "tosa.mul"(%423, %54) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %425 = "tosa.add"(%424, %54) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %426 = "tosa.clamp"(%425) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %427 = "tosa.transpose"(%426, %73) : (tensor<1x256x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x256xf32>
    %428 = "tosa.conv2d"(%427, %53, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %429 = "tosa.transpose"(%428, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %430 = "tosa.sub"(%429, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %431 = "tosa.mul"(%430, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %432 = "tosa.mul"(%431, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %433 = "tosa.add"(%432, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %434 = "tosa.clamp"(%433) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %435 = "tosa.transpose"(%434, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %436 = "tosa.conv2d"(%435, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %437 = "tosa.transpose"(%436, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_173 = tensor.insert_slice %421 into %cst_17[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x288x14x14xf32>
    %inserted_slice_174 = tensor.insert_slice %437 into %inserted_slice_173[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x288x14x14xf32>
    %438 = "tosa.sub"(%inserted_slice_174, %52) : (tensor<1x288x14x14xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x14x14xf32>
    %439 = "tosa.mul"(%438, %287) {shift = 0 : i32} : (tensor<1x288x14x14xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x14x14xf32>
    %440 = "tosa.mul"(%439, %52) {shift = 0 : i32} : (tensor<1x288x14x14xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x14x14xf32>
    %441 = "tosa.add"(%440, %52) : (tensor<1x288x14x14xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x14x14xf32>
    %442 = "tosa.clamp"(%441) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x288x14x14xf32>) -> tensor<1x288x14x14xf32>
    %443 = "tosa.transpose"(%442, %73) : (tensor<1x288x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x288xf32>
    %444 = "tosa.conv2d"(%443, %51, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x288xf32>, tensor<128x1x1x288xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %445 = "tosa.transpose"(%444, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %446 = "tosa.sub"(%445, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %447 = "tosa.mul"(%446, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %448 = "tosa.mul"(%447, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %449 = "tosa.add"(%448, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %450 = "tosa.clamp"(%449) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %451 = "tosa.transpose"(%450, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %452 = "tosa.conv2d"(%451, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %453 = "tosa.transpose"(%452, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_175 = tensor.insert_slice %421 into %cst_18[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x320x14x14xf32>
    %inserted_slice_176 = tensor.insert_slice %437 into %inserted_slice_175[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x320x14x14xf32>
    %inserted_slice_177 = tensor.insert_slice %453 into %inserted_slice_176[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x320x14x14xf32>
    %454 = "tosa.sub"(%inserted_slice_177, %50) : (tensor<1x320x14x14xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x14x14xf32>
    %455 = "tosa.mul"(%454, %305) {shift = 0 : i32} : (tensor<1x320x14x14xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x14x14xf32>
    %456 = "tosa.mul"(%455, %50) {shift = 0 : i32} : (tensor<1x320x14x14xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x14x14xf32>
    %457 = "tosa.add"(%456, %50) : (tensor<1x320x14x14xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x14x14xf32>
    %458 = "tosa.clamp"(%457) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x320x14x14xf32>) -> tensor<1x320x14x14xf32>
    %459 = "tosa.transpose"(%458, %73) : (tensor<1x320x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x320xf32>
    %460 = "tosa.conv2d"(%459, %49, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x320xf32>, tensor<128x1x1x320xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %461 = "tosa.transpose"(%460, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %462 = "tosa.sub"(%461, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %463 = "tosa.mul"(%462, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %464 = "tosa.mul"(%463, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %465 = "tosa.add"(%464, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %466 = "tosa.clamp"(%465) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %467 = "tosa.transpose"(%466, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %468 = "tosa.conv2d"(%467, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %469 = "tosa.transpose"(%468, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_178 = tensor.insert_slice %421 into %cst_19[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x352x14x14xf32>
    %inserted_slice_179 = tensor.insert_slice %437 into %inserted_slice_178[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x352x14x14xf32>
    %inserted_slice_180 = tensor.insert_slice %453 into %inserted_slice_179[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x352x14x14xf32>
    %inserted_slice_181 = tensor.insert_slice %469 into %inserted_slice_180[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x352x14x14xf32>
    %470 = "tosa.sub"(%inserted_slice_181, %48) : (tensor<1x352x14x14xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x14x14xf32>
    %471 = "tosa.mul"(%470, %323) {shift = 0 : i32} : (tensor<1x352x14x14xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x14x14xf32>
    %472 = "tosa.mul"(%471, %48) {shift = 0 : i32} : (tensor<1x352x14x14xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x14x14xf32>
    %473 = "tosa.add"(%472, %48) : (tensor<1x352x14x14xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x14x14xf32>
    %474 = "tosa.clamp"(%473) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x352x14x14xf32>) -> tensor<1x352x14x14xf32>
    %475 = "tosa.transpose"(%474, %73) : (tensor<1x352x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x352xf32>
    %476 = "tosa.conv2d"(%475, %47, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x352xf32>, tensor<128x1x1x352xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %477 = "tosa.transpose"(%476, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %478 = "tosa.sub"(%477, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %479 = "tosa.mul"(%478, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %480 = "tosa.mul"(%479, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %481 = "tosa.add"(%480, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %482 = "tosa.clamp"(%481) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %483 = "tosa.transpose"(%482, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %484 = "tosa.conv2d"(%483, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %485 = "tosa.transpose"(%484, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_182 = tensor.insert_slice %421 into %cst_20[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x384x14x14xf32>
    %inserted_slice_183 = tensor.insert_slice %437 into %inserted_slice_182[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x384x14x14xf32>
    %inserted_slice_184 = tensor.insert_slice %453 into %inserted_slice_183[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x384x14x14xf32>
    %inserted_slice_185 = tensor.insert_slice %469 into %inserted_slice_184[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x384x14x14xf32>
    %inserted_slice_186 = tensor.insert_slice %485 into %inserted_slice_185[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x384x14x14xf32>
    %486 = "tosa.sub"(%inserted_slice_186, %46) : (tensor<1x384x14x14xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x14x14xf32>
    %487 = "tosa.mul"(%486, %341) {shift = 0 : i32} : (tensor<1x384x14x14xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x14x14xf32>
    %488 = "tosa.mul"(%487, %46) {shift = 0 : i32} : (tensor<1x384x14x14xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x14x14xf32>
    %489 = "tosa.add"(%488, %46) : (tensor<1x384x14x14xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x14x14xf32>
    %490 = "tosa.clamp"(%489) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x14x14xf32>) -> tensor<1x384x14x14xf32>
    %491 = "tosa.transpose"(%490, %73) : (tensor<1x384x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x384xf32>
    %492 = "tosa.conv2d"(%491, %45, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x384xf32>, tensor<128x1x1x384xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %493 = "tosa.transpose"(%492, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %494 = "tosa.sub"(%493, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %495 = "tosa.mul"(%494, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %496 = "tosa.mul"(%495, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %497 = "tosa.add"(%496, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %498 = "tosa.clamp"(%497) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %499 = "tosa.transpose"(%498, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %500 = "tosa.conv2d"(%499, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %501 = "tosa.transpose"(%500, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_187 = tensor.insert_slice %421 into %cst_21[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x416x14x14xf32>
    %inserted_slice_188 = tensor.insert_slice %437 into %inserted_slice_187[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x416x14x14xf32>
    %inserted_slice_189 = tensor.insert_slice %453 into %inserted_slice_188[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x416x14x14xf32>
    %inserted_slice_190 = tensor.insert_slice %469 into %inserted_slice_189[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x416x14x14xf32>
    %inserted_slice_191 = tensor.insert_slice %485 into %inserted_slice_190[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x416x14x14xf32>
    %inserted_slice_192 = tensor.insert_slice %501 into %inserted_slice_191[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x416x14x14xf32>
    %502 = "tosa.sub"(%inserted_slice_192, %44) : (tensor<1x416x14x14xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x14x14xf32>
    %503 = "tosa.mul"(%502, %359) {shift = 0 : i32} : (tensor<1x416x14x14xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x14x14xf32>
    %504 = "tosa.mul"(%503, %44) {shift = 0 : i32} : (tensor<1x416x14x14xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x14x14xf32>
    %505 = "tosa.add"(%504, %44) : (tensor<1x416x14x14xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x14x14xf32>
    %506 = "tosa.clamp"(%505) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x416x14x14xf32>) -> tensor<1x416x14x14xf32>
    %507 = "tosa.transpose"(%506, %73) : (tensor<1x416x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x416xf32>
    %508 = "tosa.conv2d"(%507, %43, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x416xf32>, tensor<128x1x1x416xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %509 = "tosa.transpose"(%508, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %510 = "tosa.sub"(%509, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %511 = "tosa.mul"(%510, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %512 = "tosa.mul"(%511, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %513 = "tosa.add"(%512, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %514 = "tosa.clamp"(%513) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %515 = "tosa.transpose"(%514, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %516 = "tosa.conv2d"(%515, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %517 = "tosa.transpose"(%516, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_193 = tensor.insert_slice %421 into %cst_22[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_194 = tensor.insert_slice %437 into %inserted_slice_193[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_195 = tensor.insert_slice %453 into %inserted_slice_194[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_196 = tensor.insert_slice %469 into %inserted_slice_195[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_197 = tensor.insert_slice %485 into %inserted_slice_196[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_198 = tensor.insert_slice %501 into %inserted_slice_197[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_199 = tensor.insert_slice %517 into %inserted_slice_198[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %518 = "tosa.sub"(%inserted_slice_199, %42) : (tensor<1x448x14x14xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x14x14xf32>
    %519 = "tosa.mul"(%518, %377) {shift = 0 : i32} : (tensor<1x448x14x14xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x14x14xf32>
    %520 = "tosa.mul"(%519, %42) {shift = 0 : i32} : (tensor<1x448x14x14xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x14x14xf32>
    %521 = "tosa.add"(%520, %42) : (tensor<1x448x14x14xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x14x14xf32>
    %522 = "tosa.clamp"(%521) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x448x14x14xf32>) -> tensor<1x448x14x14xf32>
    %523 = "tosa.transpose"(%522, %73) : (tensor<1x448x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x448xf32>
    %524 = "tosa.conv2d"(%523, %41, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x448xf32>, tensor<128x1x1x448xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %525 = "tosa.transpose"(%524, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %526 = "tosa.sub"(%525, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %527 = "tosa.mul"(%526, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %528 = "tosa.mul"(%527, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %529 = "tosa.add"(%528, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %530 = "tosa.clamp"(%529) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %531 = "tosa.transpose"(%530, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %532 = "tosa.conv2d"(%531, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %533 = "tosa.transpose"(%532, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_200 = tensor.insert_slice %421 into %cst_23[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_201 = tensor.insert_slice %437 into %inserted_slice_200[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_202 = tensor.insert_slice %453 into %inserted_slice_201[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_203 = tensor.insert_slice %469 into %inserted_slice_202[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_204 = tensor.insert_slice %485 into %inserted_slice_203[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_205 = tensor.insert_slice %501 into %inserted_slice_204[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_206 = tensor.insert_slice %517 into %inserted_slice_205[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_207 = tensor.insert_slice %533 into %inserted_slice_206[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %534 = "tosa.sub"(%inserted_slice_207, %40) : (tensor<1x480x14x14xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x14x14xf32>
    %535 = "tosa.mul"(%534, %395) {shift = 0 : i32} : (tensor<1x480x14x14xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x14x14xf32>
    %536 = "tosa.mul"(%535, %40) {shift = 0 : i32} : (tensor<1x480x14x14xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x14x14xf32>
    %537 = "tosa.add"(%536, %40) : (tensor<1x480x14x14xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x14x14xf32>
    %538 = "tosa.clamp"(%537) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x480x14x14xf32>) -> tensor<1x480x14x14xf32>
    %539 = "tosa.transpose"(%538, %73) : (tensor<1x480x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x480xf32>
    %540 = "tosa.conv2d"(%539, %39, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x480xf32>, tensor<128x1x1x480xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %541 = "tosa.transpose"(%540, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %542 = "tosa.sub"(%541, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %543 = "tosa.mul"(%542, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %544 = "tosa.mul"(%543, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %545 = "tosa.add"(%544, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %546 = "tosa.clamp"(%545) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %547 = "tosa.transpose"(%546, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %548 = "tosa.conv2d"(%547, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %549 = "tosa.transpose"(%548, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_208 = tensor.insert_slice %421 into %cst_24[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_209 = tensor.insert_slice %437 into %inserted_slice_208[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_210 = tensor.insert_slice %453 into %inserted_slice_209[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_211 = tensor.insert_slice %469 into %inserted_slice_210[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_212 = tensor.insert_slice %485 into %inserted_slice_211[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_213 = tensor.insert_slice %501 into %inserted_slice_212[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_214 = tensor.insert_slice %517 into %inserted_slice_213[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_215 = tensor.insert_slice %533 into %inserted_slice_214[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_216 = tensor.insert_slice %549 into %inserted_slice_215[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %550 = "tosa.sub"(%inserted_slice_216, %38) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %551 = "tosa.mul"(%550, %413) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %552 = "tosa.mul"(%551, %38) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %553 = "tosa.add"(%552, %38) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %554 = "tosa.clamp"(%553) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %555 = "tosa.transpose"(%554, %73) : (tensor<1x512x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x512xf32>
    %556 = "tosa.conv2d"(%555, %35, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %557 = "tosa.transpose"(%556, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %558 = "tosa.sub"(%557, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %559 = "tosa.mul"(%558, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %560 = "tosa.mul"(%559, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %561 = "tosa.add"(%560, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %562 = "tosa.clamp"(%561) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %563 = "tosa.transpose"(%562, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %564 = "tosa.conv2d"(%563, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %565 = "tosa.transpose"(%564, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_217 = tensor.insert_slice %421 into %cst_25[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_218 = tensor.insert_slice %437 into %inserted_slice_217[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_219 = tensor.insert_slice %453 into %inserted_slice_218[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_220 = tensor.insert_slice %469 into %inserted_slice_219[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_221 = tensor.insert_slice %485 into %inserted_slice_220[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_222 = tensor.insert_slice %501 into %inserted_slice_221[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_223 = tensor.insert_slice %517 into %inserted_slice_222[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_224 = tensor.insert_slice %533 into %inserted_slice_223[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_225 = tensor.insert_slice %549 into %inserted_slice_224[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_226 = tensor.insert_slice %565 into %inserted_slice_225[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %566 = "tosa.sub"(%inserted_slice_226, %34) : (tensor<1x544x14x14xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x14x14xf32>
    %567 = "tosa.add"(%34, %69) : (tensor<1x544x1x1xf32>, tensor<f32>) -> tensor<1x544x1x1xf32>
    %568 = "tosa.rsqrt"(%567) : (tensor<1x544x1x1xf32>) -> tensor<1x544x1x1xf32>
    %569 = "tosa.mul"(%566, %568) {shift = 0 : i32} : (tensor<1x544x14x14xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x14x14xf32>
    %570 = "tosa.mul"(%569, %34) {shift = 0 : i32} : (tensor<1x544x14x14xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x14x14xf32>
    %571 = "tosa.add"(%570, %34) : (tensor<1x544x14x14xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x14x14xf32>
    %572 = "tosa.clamp"(%571) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x544x14x14xf32>) -> tensor<1x544x14x14xf32>
    %573 = "tosa.transpose"(%572, %73) : (tensor<1x544x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x544xf32>
    %574 = "tosa.conv2d"(%573, %33, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x544xf32>, tensor<128x1x1x544xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %575 = "tosa.transpose"(%574, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %576 = "tosa.sub"(%575, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %577 = "tosa.mul"(%576, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %578 = "tosa.mul"(%577, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %579 = "tosa.add"(%578, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %580 = "tosa.clamp"(%579) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %581 = "tosa.transpose"(%580, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %582 = "tosa.conv2d"(%581, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %583 = "tosa.transpose"(%582, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_227 = tensor.insert_slice %421 into %cst_26[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_228 = tensor.insert_slice %437 into %inserted_slice_227[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_229 = tensor.insert_slice %453 into %inserted_slice_228[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_230 = tensor.insert_slice %469 into %inserted_slice_229[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_231 = tensor.insert_slice %485 into %inserted_slice_230[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_232 = tensor.insert_slice %501 into %inserted_slice_231[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_233 = tensor.insert_slice %517 into %inserted_slice_232[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_234 = tensor.insert_slice %533 into %inserted_slice_233[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_235 = tensor.insert_slice %549 into %inserted_slice_234[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_236 = tensor.insert_slice %565 into %inserted_slice_235[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_237 = tensor.insert_slice %583 into %inserted_slice_236[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %584 = "tosa.sub"(%inserted_slice_237, %32) : (tensor<1x576x14x14xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x14x14xf32>
    %585 = "tosa.add"(%32, %69) : (tensor<1x576x1x1xf32>, tensor<f32>) -> tensor<1x576x1x1xf32>
    %586 = "tosa.rsqrt"(%585) : (tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %587 = "tosa.mul"(%584, %586) {shift = 0 : i32} : (tensor<1x576x14x14xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x14x14xf32>
    %588 = "tosa.mul"(%587, %32) {shift = 0 : i32} : (tensor<1x576x14x14xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x14x14xf32>
    %589 = "tosa.add"(%588, %32) : (tensor<1x576x14x14xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x14x14xf32>
    %590 = "tosa.clamp"(%589) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x576x14x14xf32>) -> tensor<1x576x14x14xf32>
    %591 = "tosa.transpose"(%590, %73) : (tensor<1x576x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x576xf32>
    %592 = "tosa.conv2d"(%591, %31, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x576xf32>, tensor<128x1x1x576xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %593 = "tosa.transpose"(%592, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %594 = "tosa.sub"(%593, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %595 = "tosa.mul"(%594, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %596 = "tosa.mul"(%595, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %597 = "tosa.add"(%596, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %598 = "tosa.clamp"(%597) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %599 = "tosa.transpose"(%598, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %600 = "tosa.conv2d"(%599, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %601 = "tosa.transpose"(%600, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_238 = tensor.insert_slice %421 into %cst_27[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_239 = tensor.insert_slice %437 into %inserted_slice_238[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_240 = tensor.insert_slice %453 into %inserted_slice_239[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_241 = tensor.insert_slice %469 into %inserted_slice_240[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_242 = tensor.insert_slice %485 into %inserted_slice_241[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_243 = tensor.insert_slice %501 into %inserted_slice_242[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_244 = tensor.insert_slice %517 into %inserted_slice_243[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_245 = tensor.insert_slice %533 into %inserted_slice_244[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_246 = tensor.insert_slice %549 into %inserted_slice_245[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_247 = tensor.insert_slice %565 into %inserted_slice_246[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_248 = tensor.insert_slice %583 into %inserted_slice_247[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_249 = tensor.insert_slice %601 into %inserted_slice_248[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %602 = "tosa.sub"(%inserted_slice_249, %30) : (tensor<1x608x14x14xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x14x14xf32>
    %603 = "tosa.add"(%30, %69) : (tensor<1x608x1x1xf32>, tensor<f32>) -> tensor<1x608x1x1xf32>
    %604 = "tosa.rsqrt"(%603) : (tensor<1x608x1x1xf32>) -> tensor<1x608x1x1xf32>
    %605 = "tosa.mul"(%602, %604) {shift = 0 : i32} : (tensor<1x608x14x14xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x14x14xf32>
    %606 = "tosa.mul"(%605, %30) {shift = 0 : i32} : (tensor<1x608x14x14xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x14x14xf32>
    %607 = "tosa.add"(%606, %30) : (tensor<1x608x14x14xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x14x14xf32>
    %608 = "tosa.clamp"(%607) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x608x14x14xf32>) -> tensor<1x608x14x14xf32>
    %609 = "tosa.transpose"(%608, %73) : (tensor<1x608x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x608xf32>
    %610 = "tosa.conv2d"(%609, %29, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x608xf32>, tensor<128x1x1x608xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %611 = "tosa.transpose"(%610, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %612 = "tosa.sub"(%611, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %613 = "tosa.mul"(%612, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %614 = "tosa.mul"(%613, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %615 = "tosa.add"(%614, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %616 = "tosa.clamp"(%615) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %617 = "tosa.transpose"(%616, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %618 = "tosa.conv2d"(%617, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %619 = "tosa.transpose"(%618, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_250 = tensor.insert_slice %421 into %cst_28[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_251 = tensor.insert_slice %437 into %inserted_slice_250[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_252 = tensor.insert_slice %453 into %inserted_slice_251[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_253 = tensor.insert_slice %469 into %inserted_slice_252[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_254 = tensor.insert_slice %485 into %inserted_slice_253[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_255 = tensor.insert_slice %501 into %inserted_slice_254[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_256 = tensor.insert_slice %517 into %inserted_slice_255[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_257 = tensor.insert_slice %533 into %inserted_slice_256[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_258 = tensor.insert_slice %549 into %inserted_slice_257[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_259 = tensor.insert_slice %565 into %inserted_slice_258[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_260 = tensor.insert_slice %583 into %inserted_slice_259[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_261 = tensor.insert_slice %601 into %inserted_slice_260[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_262 = tensor.insert_slice %619 into %inserted_slice_261[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %620 = "tosa.sub"(%inserted_slice_262, %28) : (tensor<1x640x14x14xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x14x14xf32>
    %621 = "tosa.add"(%28, %69) : (tensor<1x640x1x1xf32>, tensor<f32>) -> tensor<1x640x1x1xf32>
    %622 = "tosa.rsqrt"(%621) : (tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    %623 = "tosa.mul"(%620, %622) {shift = 0 : i32} : (tensor<1x640x14x14xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x14x14xf32>
    %624 = "tosa.mul"(%623, %28) {shift = 0 : i32} : (tensor<1x640x14x14xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x14x14xf32>
    %625 = "tosa.add"(%624, %28) : (tensor<1x640x14x14xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x14x14xf32>
    %626 = "tosa.clamp"(%625) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x640x14x14xf32>) -> tensor<1x640x14x14xf32>
    %627 = "tosa.transpose"(%626, %73) : (tensor<1x640x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x640xf32>
    %628 = "tosa.conv2d"(%627, %27, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x640xf32>, tensor<128x1x1x640xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %629 = "tosa.transpose"(%628, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %630 = "tosa.sub"(%629, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %631 = "tosa.mul"(%630, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %632 = "tosa.mul"(%631, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %633 = "tosa.add"(%632, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %634 = "tosa.clamp"(%633) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %635 = "tosa.transpose"(%634, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %636 = "tosa.conv2d"(%635, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %637 = "tosa.transpose"(%636, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_263 = tensor.insert_slice %421 into %cst_29[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_264 = tensor.insert_slice %437 into %inserted_slice_263[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_265 = tensor.insert_slice %453 into %inserted_slice_264[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_266 = tensor.insert_slice %469 into %inserted_slice_265[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_267 = tensor.insert_slice %485 into %inserted_slice_266[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_268 = tensor.insert_slice %501 into %inserted_slice_267[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_269 = tensor.insert_slice %517 into %inserted_slice_268[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_270 = tensor.insert_slice %533 into %inserted_slice_269[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_271 = tensor.insert_slice %549 into %inserted_slice_270[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_272 = tensor.insert_slice %565 into %inserted_slice_271[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_273 = tensor.insert_slice %583 into %inserted_slice_272[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_274 = tensor.insert_slice %601 into %inserted_slice_273[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_275 = tensor.insert_slice %619 into %inserted_slice_274[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_276 = tensor.insert_slice %637 into %inserted_slice_275[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %638 = "tosa.sub"(%inserted_slice_276, %26) : (tensor<1x672x14x14xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x14x14xf32>
    %639 = "tosa.add"(%26, %69) : (tensor<1x672x1x1xf32>, tensor<f32>) -> tensor<1x672x1x1xf32>
    %640 = "tosa.rsqrt"(%639) : (tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %641 = "tosa.mul"(%638, %640) {shift = 0 : i32} : (tensor<1x672x14x14xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x14x14xf32>
    %642 = "tosa.mul"(%641, %26) {shift = 0 : i32} : (tensor<1x672x14x14xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x14x14xf32>
    %643 = "tosa.add"(%642, %26) : (tensor<1x672x14x14xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x14x14xf32>
    %644 = "tosa.clamp"(%643) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x672x14x14xf32>) -> tensor<1x672x14x14xf32>
    %645 = "tosa.transpose"(%644, %73) : (tensor<1x672x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x672xf32>
    %646 = "tosa.conv2d"(%645, %25, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x672xf32>, tensor<128x1x1x672xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %647 = "tosa.transpose"(%646, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %648 = "tosa.sub"(%647, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %649 = "tosa.mul"(%648, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %650 = "tosa.mul"(%649, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %651 = "tosa.add"(%650, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %652 = "tosa.clamp"(%651) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %653 = "tosa.transpose"(%652, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %654 = "tosa.conv2d"(%653, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %655 = "tosa.transpose"(%654, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_277 = tensor.insert_slice %421 into %cst_30[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_278 = tensor.insert_slice %437 into %inserted_slice_277[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_279 = tensor.insert_slice %453 into %inserted_slice_278[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_280 = tensor.insert_slice %469 into %inserted_slice_279[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_281 = tensor.insert_slice %485 into %inserted_slice_280[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_282 = tensor.insert_slice %501 into %inserted_slice_281[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_283 = tensor.insert_slice %517 into %inserted_slice_282[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_284 = tensor.insert_slice %533 into %inserted_slice_283[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_285 = tensor.insert_slice %549 into %inserted_slice_284[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_286 = tensor.insert_slice %565 into %inserted_slice_285[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_287 = tensor.insert_slice %583 into %inserted_slice_286[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_288 = tensor.insert_slice %601 into %inserted_slice_287[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_289 = tensor.insert_slice %619 into %inserted_slice_288[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_290 = tensor.insert_slice %637 into %inserted_slice_289[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_291 = tensor.insert_slice %655 into %inserted_slice_290[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %656 = "tosa.sub"(%inserted_slice_291, %24) : (tensor<1x704x14x14xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x14x14xf32>
    %657 = "tosa.add"(%24, %69) : (tensor<1x704x1x1xf32>, tensor<f32>) -> tensor<1x704x1x1xf32>
    %658 = "tosa.rsqrt"(%657) : (tensor<1x704x1x1xf32>) -> tensor<1x704x1x1xf32>
    %659 = "tosa.mul"(%656, %658) {shift = 0 : i32} : (tensor<1x704x14x14xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x14x14xf32>
    %660 = "tosa.mul"(%659, %24) {shift = 0 : i32} : (tensor<1x704x14x14xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x14x14xf32>
    %661 = "tosa.add"(%660, %24) : (tensor<1x704x14x14xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x14x14xf32>
    %662 = "tosa.clamp"(%661) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x704x14x14xf32>) -> tensor<1x704x14x14xf32>
    %663 = "tosa.transpose"(%662, %73) : (tensor<1x704x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x704xf32>
    %664 = "tosa.conv2d"(%663, %23, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x704xf32>, tensor<128x1x1x704xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %665 = "tosa.transpose"(%664, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %666 = "tosa.sub"(%665, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %667 = "tosa.mul"(%666, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %668 = "tosa.mul"(%667, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %669 = "tosa.add"(%668, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %670 = "tosa.clamp"(%669) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %671 = "tosa.transpose"(%670, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %672 = "tosa.conv2d"(%671, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %673 = "tosa.transpose"(%672, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_292 = tensor.insert_slice %421 into %cst_31[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_293 = tensor.insert_slice %437 into %inserted_slice_292[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_294 = tensor.insert_slice %453 into %inserted_slice_293[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_295 = tensor.insert_slice %469 into %inserted_slice_294[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_296 = tensor.insert_slice %485 into %inserted_slice_295[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_297 = tensor.insert_slice %501 into %inserted_slice_296[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_298 = tensor.insert_slice %517 into %inserted_slice_297[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_299 = tensor.insert_slice %533 into %inserted_slice_298[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_300 = tensor.insert_slice %549 into %inserted_slice_299[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_301 = tensor.insert_slice %565 into %inserted_slice_300[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_302 = tensor.insert_slice %583 into %inserted_slice_301[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_303 = tensor.insert_slice %601 into %inserted_slice_302[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_304 = tensor.insert_slice %619 into %inserted_slice_303[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_305 = tensor.insert_slice %637 into %inserted_slice_304[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_306 = tensor.insert_slice %655 into %inserted_slice_305[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_307 = tensor.insert_slice %673 into %inserted_slice_306[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %674 = "tosa.sub"(%inserted_slice_307, %22) : (tensor<1x736x14x14xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x14x14xf32>
    %675 = "tosa.add"(%22, %69) : (tensor<1x736x1x1xf32>, tensor<f32>) -> tensor<1x736x1x1xf32>
    %676 = "tosa.rsqrt"(%675) : (tensor<1x736x1x1xf32>) -> tensor<1x736x1x1xf32>
    %677 = "tosa.mul"(%674, %676) {shift = 0 : i32} : (tensor<1x736x14x14xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x14x14xf32>
    %678 = "tosa.mul"(%677, %22) {shift = 0 : i32} : (tensor<1x736x14x14xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x14x14xf32>
    %679 = "tosa.add"(%678, %22) : (tensor<1x736x14x14xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x14x14xf32>
    %680 = "tosa.clamp"(%679) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x736x14x14xf32>) -> tensor<1x736x14x14xf32>
    %681 = "tosa.transpose"(%680, %73) : (tensor<1x736x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x736xf32>
    %682 = "tosa.conv2d"(%681, %21, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x736xf32>, tensor<128x1x1x736xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %683 = "tosa.transpose"(%682, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %684 = "tosa.sub"(%683, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %685 = "tosa.mul"(%684, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %686 = "tosa.mul"(%685, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %687 = "tosa.add"(%686, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %688 = "tosa.clamp"(%687) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %689 = "tosa.transpose"(%688, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %690 = "tosa.conv2d"(%689, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %691 = "tosa.transpose"(%690, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_308 = tensor.insert_slice %421 into %cst_32[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_309 = tensor.insert_slice %437 into %inserted_slice_308[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_310 = tensor.insert_slice %453 into %inserted_slice_309[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_311 = tensor.insert_slice %469 into %inserted_slice_310[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_312 = tensor.insert_slice %485 into %inserted_slice_311[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_313 = tensor.insert_slice %501 into %inserted_slice_312[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_314 = tensor.insert_slice %517 into %inserted_slice_313[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_315 = tensor.insert_slice %533 into %inserted_slice_314[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_316 = tensor.insert_slice %549 into %inserted_slice_315[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_317 = tensor.insert_slice %565 into %inserted_slice_316[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_318 = tensor.insert_slice %583 into %inserted_slice_317[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_319 = tensor.insert_slice %601 into %inserted_slice_318[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_320 = tensor.insert_slice %619 into %inserted_slice_319[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_321 = tensor.insert_slice %637 into %inserted_slice_320[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_322 = tensor.insert_slice %655 into %inserted_slice_321[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_323 = tensor.insert_slice %673 into %inserted_slice_322[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_324 = tensor.insert_slice %691 into %inserted_slice_323[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %692 = "tosa.sub"(%inserted_slice_324, %20) : (tensor<1x768x14x14xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x14x14xf32>
    %693 = "tosa.add"(%20, %69) : (tensor<1x768x1x1xf32>, tensor<f32>) -> tensor<1x768x1x1xf32>
    %694 = "tosa.rsqrt"(%693) : (tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %695 = "tosa.mul"(%692, %694) {shift = 0 : i32} : (tensor<1x768x14x14xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x14x14xf32>
    %696 = "tosa.mul"(%695, %20) {shift = 0 : i32} : (tensor<1x768x14x14xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x14x14xf32>
    %697 = "tosa.add"(%696, %20) : (tensor<1x768x14x14xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x14x14xf32>
    %698 = "tosa.clamp"(%697) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %699 = "tosa.transpose"(%698, %73) : (tensor<1x768x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x768xf32>
    %700 = "tosa.conv2d"(%699, %19, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x768xf32>, tensor<128x1x1x768xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %701 = "tosa.transpose"(%700, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %702 = "tosa.sub"(%701, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %703 = "tosa.mul"(%702, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %704 = "tosa.mul"(%703, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %705 = "tosa.add"(%704, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %706 = "tosa.clamp"(%705) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %707 = "tosa.transpose"(%706, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %708 = "tosa.conv2d"(%707, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %709 = "tosa.transpose"(%708, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_325 = tensor.insert_slice %421 into %cst_33[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_326 = tensor.insert_slice %437 into %inserted_slice_325[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_327 = tensor.insert_slice %453 into %inserted_slice_326[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_328 = tensor.insert_slice %469 into %inserted_slice_327[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_329 = tensor.insert_slice %485 into %inserted_slice_328[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_330 = tensor.insert_slice %501 into %inserted_slice_329[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_331 = tensor.insert_slice %517 into %inserted_slice_330[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_332 = tensor.insert_slice %533 into %inserted_slice_331[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_333 = tensor.insert_slice %549 into %inserted_slice_332[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_334 = tensor.insert_slice %565 into %inserted_slice_333[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_335 = tensor.insert_slice %583 into %inserted_slice_334[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_336 = tensor.insert_slice %601 into %inserted_slice_335[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_337 = tensor.insert_slice %619 into %inserted_slice_336[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_338 = tensor.insert_slice %637 into %inserted_slice_337[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_339 = tensor.insert_slice %655 into %inserted_slice_338[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_340 = tensor.insert_slice %673 into %inserted_slice_339[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_341 = tensor.insert_slice %691 into %inserted_slice_340[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_342 = tensor.insert_slice %709 into %inserted_slice_341[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %710 = "tosa.sub"(%inserted_slice_342, %18) : (tensor<1x800x14x14xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x14x14xf32>
    %711 = "tosa.add"(%18, %69) : (tensor<1x800x1x1xf32>, tensor<f32>) -> tensor<1x800x1x1xf32>
    %712 = "tosa.rsqrt"(%711) : (tensor<1x800x1x1xf32>) -> tensor<1x800x1x1xf32>
    %713 = "tosa.mul"(%710, %712) {shift = 0 : i32} : (tensor<1x800x14x14xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x14x14xf32>
    %714 = "tosa.mul"(%713, %18) {shift = 0 : i32} : (tensor<1x800x14x14xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x14x14xf32>
    %715 = "tosa.add"(%714, %18) : (tensor<1x800x14x14xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x14x14xf32>
    %716 = "tosa.clamp"(%715) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x800x14x14xf32>) -> tensor<1x800x14x14xf32>
    %717 = "tosa.transpose"(%716, %73) : (tensor<1x800x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x800xf32>
    %718 = "tosa.conv2d"(%717, %17, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x800xf32>, tensor<128x1x1x800xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %719 = "tosa.transpose"(%718, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %720 = "tosa.sub"(%719, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %721 = "tosa.mul"(%720, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %722 = "tosa.mul"(%721, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %723 = "tosa.add"(%722, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %724 = "tosa.clamp"(%723) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %725 = "tosa.transpose"(%724, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %726 = "tosa.conv2d"(%725, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %727 = "tosa.transpose"(%726, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_343 = tensor.insert_slice %421 into %cst_34[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_344 = tensor.insert_slice %437 into %inserted_slice_343[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_345 = tensor.insert_slice %453 into %inserted_slice_344[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_346 = tensor.insert_slice %469 into %inserted_slice_345[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_347 = tensor.insert_slice %485 into %inserted_slice_346[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_348 = tensor.insert_slice %501 into %inserted_slice_347[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_349 = tensor.insert_slice %517 into %inserted_slice_348[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_350 = tensor.insert_slice %533 into %inserted_slice_349[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_351 = tensor.insert_slice %549 into %inserted_slice_350[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_352 = tensor.insert_slice %565 into %inserted_slice_351[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_353 = tensor.insert_slice %583 into %inserted_slice_352[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_354 = tensor.insert_slice %601 into %inserted_slice_353[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_355 = tensor.insert_slice %619 into %inserted_slice_354[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_356 = tensor.insert_slice %637 into %inserted_slice_355[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_357 = tensor.insert_slice %655 into %inserted_slice_356[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_358 = tensor.insert_slice %673 into %inserted_slice_357[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_359 = tensor.insert_slice %691 into %inserted_slice_358[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_360 = tensor.insert_slice %709 into %inserted_slice_359[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_361 = tensor.insert_slice %727 into %inserted_slice_360[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %728 = "tosa.sub"(%inserted_slice_361, %16) : (tensor<1x832x14x14xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x14x14xf32>
    %729 = "tosa.add"(%16, %69) : (tensor<1x832x1x1xf32>, tensor<f32>) -> tensor<1x832x1x1xf32>
    %730 = "tosa.rsqrt"(%729) : (tensor<1x832x1x1xf32>) -> tensor<1x832x1x1xf32>
    %731 = "tosa.mul"(%728, %730) {shift = 0 : i32} : (tensor<1x832x14x14xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x14x14xf32>
    %732 = "tosa.mul"(%731, %16) {shift = 0 : i32} : (tensor<1x832x14x14xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x14x14xf32>
    %733 = "tosa.add"(%732, %16) : (tensor<1x832x14x14xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x14x14xf32>
    %734 = "tosa.clamp"(%733) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x832x14x14xf32>) -> tensor<1x832x14x14xf32>
    %735 = "tosa.transpose"(%734, %73) : (tensor<1x832x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x832xf32>
    %736 = "tosa.conv2d"(%735, %15, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x832xf32>, tensor<128x1x1x832xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %737 = "tosa.transpose"(%736, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %738 = "tosa.sub"(%737, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %739 = "tosa.mul"(%738, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %740 = "tosa.mul"(%739, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %741 = "tosa.add"(%740, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %742 = "tosa.clamp"(%741) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %743 = "tosa.transpose"(%742, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %744 = "tosa.conv2d"(%743, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %745 = "tosa.transpose"(%744, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_362 = tensor.insert_slice %421 into %cst_35[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_363 = tensor.insert_slice %437 into %inserted_slice_362[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_364 = tensor.insert_slice %453 into %inserted_slice_363[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_365 = tensor.insert_slice %469 into %inserted_slice_364[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_366 = tensor.insert_slice %485 into %inserted_slice_365[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_367 = tensor.insert_slice %501 into %inserted_slice_366[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_368 = tensor.insert_slice %517 into %inserted_slice_367[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_369 = tensor.insert_slice %533 into %inserted_slice_368[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_370 = tensor.insert_slice %549 into %inserted_slice_369[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_371 = tensor.insert_slice %565 into %inserted_slice_370[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_372 = tensor.insert_slice %583 into %inserted_slice_371[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_373 = tensor.insert_slice %601 into %inserted_slice_372[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_374 = tensor.insert_slice %619 into %inserted_slice_373[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_375 = tensor.insert_slice %637 into %inserted_slice_374[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_376 = tensor.insert_slice %655 into %inserted_slice_375[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_377 = tensor.insert_slice %673 into %inserted_slice_376[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_378 = tensor.insert_slice %691 into %inserted_slice_377[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_379 = tensor.insert_slice %709 into %inserted_slice_378[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_380 = tensor.insert_slice %727 into %inserted_slice_379[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_381 = tensor.insert_slice %745 into %inserted_slice_380[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %746 = "tosa.sub"(%inserted_slice_381, %14) : (tensor<1x864x14x14xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x14x14xf32>
    %747 = "tosa.add"(%14, %69) : (tensor<1x864x1x1xf32>, tensor<f32>) -> tensor<1x864x1x1xf32>
    %748 = "tosa.rsqrt"(%747) : (tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    %749 = "tosa.mul"(%746, %748) {shift = 0 : i32} : (tensor<1x864x14x14xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x14x14xf32>
    %750 = "tosa.mul"(%749, %14) {shift = 0 : i32} : (tensor<1x864x14x14xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x14x14xf32>
    %751 = "tosa.add"(%750, %14) : (tensor<1x864x14x14xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x14x14xf32>
    %752 = "tosa.clamp"(%751) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x864x14x14xf32>) -> tensor<1x864x14x14xf32>
    %753 = "tosa.transpose"(%752, %73) : (tensor<1x864x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x864xf32>
    %754 = "tosa.conv2d"(%753, %13, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x864xf32>, tensor<128x1x1x864xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %755 = "tosa.transpose"(%754, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %756 = "tosa.sub"(%755, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %757 = "tosa.mul"(%756, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %758 = "tosa.mul"(%757, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %759 = "tosa.add"(%758, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %760 = "tosa.clamp"(%759) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %761 = "tosa.transpose"(%760, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %762 = "tosa.conv2d"(%761, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %763 = "tosa.transpose"(%762, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_382 = tensor.insert_slice %421 into %cst_36[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_383 = tensor.insert_slice %437 into %inserted_slice_382[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_384 = tensor.insert_slice %453 into %inserted_slice_383[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_385 = tensor.insert_slice %469 into %inserted_slice_384[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_386 = tensor.insert_slice %485 into %inserted_slice_385[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_387 = tensor.insert_slice %501 into %inserted_slice_386[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_388 = tensor.insert_slice %517 into %inserted_slice_387[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_389 = tensor.insert_slice %533 into %inserted_slice_388[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_390 = tensor.insert_slice %549 into %inserted_slice_389[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_391 = tensor.insert_slice %565 into %inserted_slice_390[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_392 = tensor.insert_slice %583 into %inserted_slice_391[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_393 = tensor.insert_slice %601 into %inserted_slice_392[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_394 = tensor.insert_slice %619 into %inserted_slice_393[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_395 = tensor.insert_slice %637 into %inserted_slice_394[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_396 = tensor.insert_slice %655 into %inserted_slice_395[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_397 = tensor.insert_slice %673 into %inserted_slice_396[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_398 = tensor.insert_slice %691 into %inserted_slice_397[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_399 = tensor.insert_slice %709 into %inserted_slice_398[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_400 = tensor.insert_slice %727 into %inserted_slice_399[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_401 = tensor.insert_slice %745 into %inserted_slice_400[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_402 = tensor.insert_slice %763 into %inserted_slice_401[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %764 = "tosa.sub"(%inserted_slice_402, %12) : (tensor<1x896x14x14xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x14x14xf32>
    %765 = "tosa.add"(%12, %69) : (tensor<1x896x1x1xf32>, tensor<f32>) -> tensor<1x896x1x1xf32>
    %766 = "tosa.rsqrt"(%765) : (tensor<1x896x1x1xf32>) -> tensor<1x896x1x1xf32>
    %767 = "tosa.mul"(%764, %766) {shift = 0 : i32} : (tensor<1x896x14x14xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x14x14xf32>
    %768 = "tosa.mul"(%767, %12) {shift = 0 : i32} : (tensor<1x896x14x14xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x14x14xf32>
    %769 = "tosa.add"(%768, %12) : (tensor<1x896x14x14xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x14x14xf32>
    %770 = "tosa.clamp"(%769) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x896x14x14xf32>) -> tensor<1x896x14x14xf32>
    %771 = "tosa.transpose"(%770, %73) : (tensor<1x896x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x896xf32>
    %772 = "tosa.conv2d"(%771, %11, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x896xf32>, tensor<128x1x1x896xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %773 = "tosa.transpose"(%772, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %774 = "tosa.sub"(%773, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %775 = "tosa.mul"(%774, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %776 = "tosa.mul"(%775, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %777 = "tosa.add"(%776, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %778 = "tosa.clamp"(%777) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %779 = "tosa.transpose"(%778, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %780 = "tosa.conv2d"(%779, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %781 = "tosa.transpose"(%780, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_403 = tensor.insert_slice %421 into %cst_37[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_404 = tensor.insert_slice %437 into %inserted_slice_403[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_405 = tensor.insert_slice %453 into %inserted_slice_404[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_406 = tensor.insert_slice %469 into %inserted_slice_405[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_407 = tensor.insert_slice %485 into %inserted_slice_406[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_408 = tensor.insert_slice %501 into %inserted_slice_407[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_409 = tensor.insert_slice %517 into %inserted_slice_408[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_410 = tensor.insert_slice %533 into %inserted_slice_409[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_411 = tensor.insert_slice %549 into %inserted_slice_410[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_412 = tensor.insert_slice %565 into %inserted_slice_411[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_413 = tensor.insert_slice %583 into %inserted_slice_412[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_414 = tensor.insert_slice %601 into %inserted_slice_413[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_415 = tensor.insert_slice %619 into %inserted_slice_414[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_416 = tensor.insert_slice %637 into %inserted_slice_415[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_417 = tensor.insert_slice %655 into %inserted_slice_416[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_418 = tensor.insert_slice %673 into %inserted_slice_417[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_419 = tensor.insert_slice %691 into %inserted_slice_418[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_420 = tensor.insert_slice %709 into %inserted_slice_419[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_421 = tensor.insert_slice %727 into %inserted_slice_420[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_422 = tensor.insert_slice %745 into %inserted_slice_421[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_423 = tensor.insert_slice %763 into %inserted_slice_422[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_424 = tensor.insert_slice %781 into %inserted_slice_423[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %782 = "tosa.sub"(%inserted_slice_424, %10) : (tensor<1x928x14x14xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x14x14xf32>
    %783 = "tosa.add"(%10, %69) : (tensor<1x928x1x1xf32>, tensor<f32>) -> tensor<1x928x1x1xf32>
    %784 = "tosa.rsqrt"(%783) : (tensor<1x928x1x1xf32>) -> tensor<1x928x1x1xf32>
    %785 = "tosa.mul"(%782, %784) {shift = 0 : i32} : (tensor<1x928x14x14xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x14x14xf32>
    %786 = "tosa.mul"(%785, %10) {shift = 0 : i32} : (tensor<1x928x14x14xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x14x14xf32>
    %787 = "tosa.add"(%786, %10) : (tensor<1x928x14x14xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x14x14xf32>
    %788 = "tosa.clamp"(%787) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x928x14x14xf32>) -> tensor<1x928x14x14xf32>
    %789 = "tosa.transpose"(%788, %73) : (tensor<1x928x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x928xf32>
    %790 = "tosa.conv2d"(%789, %9, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x928xf32>, tensor<128x1x1x928xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %791 = "tosa.transpose"(%790, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %792 = "tosa.sub"(%791, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %793 = "tosa.mul"(%792, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %794 = "tosa.mul"(%793, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %795 = "tosa.add"(%794, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %796 = "tosa.clamp"(%795) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %797 = "tosa.transpose"(%796, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %798 = "tosa.conv2d"(%797, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %799 = "tosa.transpose"(%798, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_425 = tensor.insert_slice %421 into %cst_38[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_426 = tensor.insert_slice %437 into %inserted_slice_425[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_427 = tensor.insert_slice %453 into %inserted_slice_426[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_428 = tensor.insert_slice %469 into %inserted_slice_427[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_429 = tensor.insert_slice %485 into %inserted_slice_428[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_430 = tensor.insert_slice %501 into %inserted_slice_429[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_431 = tensor.insert_slice %517 into %inserted_slice_430[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_432 = tensor.insert_slice %533 into %inserted_slice_431[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_433 = tensor.insert_slice %549 into %inserted_slice_432[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_434 = tensor.insert_slice %565 into %inserted_slice_433[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_435 = tensor.insert_slice %583 into %inserted_slice_434[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_436 = tensor.insert_slice %601 into %inserted_slice_435[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_437 = tensor.insert_slice %619 into %inserted_slice_436[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_438 = tensor.insert_slice %637 into %inserted_slice_437[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_439 = tensor.insert_slice %655 into %inserted_slice_438[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_440 = tensor.insert_slice %673 into %inserted_slice_439[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_441 = tensor.insert_slice %691 into %inserted_slice_440[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_442 = tensor.insert_slice %709 into %inserted_slice_441[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_443 = tensor.insert_slice %727 into %inserted_slice_442[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_444 = tensor.insert_slice %745 into %inserted_slice_443[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_445 = tensor.insert_slice %763 into %inserted_slice_444[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_446 = tensor.insert_slice %781 into %inserted_slice_445[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_447 = tensor.insert_slice %799 into %inserted_slice_446[0, 928, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %800 = "tosa.sub"(%inserted_slice_447, %8) : (tensor<1x960x14x14xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x14x14xf32>
    %801 = "tosa.add"(%8, %69) : (tensor<1x960x1x1xf32>, tensor<f32>) -> tensor<1x960x1x1xf32>
    %802 = "tosa.rsqrt"(%801) : (tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %803 = "tosa.mul"(%800, %802) {shift = 0 : i32} : (tensor<1x960x14x14xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x14x14xf32>
    %804 = "tosa.mul"(%803, %8) {shift = 0 : i32} : (tensor<1x960x14x14xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x14x14xf32>
    %805 = "tosa.add"(%804, %8) : (tensor<1x960x14x14xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x14x14xf32>
    %806 = "tosa.clamp"(%805) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    %807 = "tosa.transpose"(%806, %73) : (tensor<1x960x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x960xf32>
    %808 = "tosa.conv2d"(%807, %7, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x960xf32>, tensor<128x1x1x960xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %809 = "tosa.transpose"(%808, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %810 = "tosa.sub"(%809, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %811 = "tosa.mul"(%810, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %812 = "tosa.mul"(%811, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %813 = "tosa.add"(%812, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %814 = "tosa.clamp"(%813) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %815 = "tosa.transpose"(%814, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %816 = "tosa.conv2d"(%815, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %817 = "tosa.transpose"(%816, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_448 = tensor.insert_slice %421 into %cst_39[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_449 = tensor.insert_slice %437 into %inserted_slice_448[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_450 = tensor.insert_slice %453 into %inserted_slice_449[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_451 = tensor.insert_slice %469 into %inserted_slice_450[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_452 = tensor.insert_slice %485 into %inserted_slice_451[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_453 = tensor.insert_slice %501 into %inserted_slice_452[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_454 = tensor.insert_slice %517 into %inserted_slice_453[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_455 = tensor.insert_slice %533 into %inserted_slice_454[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_456 = tensor.insert_slice %549 into %inserted_slice_455[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_457 = tensor.insert_slice %565 into %inserted_slice_456[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_458 = tensor.insert_slice %583 into %inserted_slice_457[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_459 = tensor.insert_slice %601 into %inserted_slice_458[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_460 = tensor.insert_slice %619 into %inserted_slice_459[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_461 = tensor.insert_slice %637 into %inserted_slice_460[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_462 = tensor.insert_slice %655 into %inserted_slice_461[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_463 = tensor.insert_slice %673 into %inserted_slice_462[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_464 = tensor.insert_slice %691 into %inserted_slice_463[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_465 = tensor.insert_slice %709 into %inserted_slice_464[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_466 = tensor.insert_slice %727 into %inserted_slice_465[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_467 = tensor.insert_slice %745 into %inserted_slice_466[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_468 = tensor.insert_slice %763 into %inserted_slice_467[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_469 = tensor.insert_slice %781 into %inserted_slice_468[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_470 = tensor.insert_slice %799 into %inserted_slice_469[0, 928, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_471 = tensor.insert_slice %817 into %inserted_slice_470[0, 960, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %818 = "tosa.sub"(%inserted_slice_471, %6) : (tensor<1x992x14x14xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x14x14xf32>
    %819 = "tosa.add"(%6, %69) : (tensor<1x992x1x1xf32>, tensor<f32>) -> tensor<1x992x1x1xf32>
    %820 = "tosa.rsqrt"(%819) : (tensor<1x992x1x1xf32>) -> tensor<1x992x1x1xf32>
    %821 = "tosa.mul"(%818, %820) {shift = 0 : i32} : (tensor<1x992x14x14xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x14x14xf32>
    %822 = "tosa.mul"(%821, %6) {shift = 0 : i32} : (tensor<1x992x14x14xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x14x14xf32>
    %823 = "tosa.add"(%822, %6) : (tensor<1x992x14x14xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x14x14xf32>
    %824 = "tosa.clamp"(%823) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x992x14x14xf32>) -> tensor<1x992x14x14xf32>
    %825 = "tosa.transpose"(%824, %73) : (tensor<1x992x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x992xf32>
    %826 = "tosa.conv2d"(%825, %5, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x992xf32>, tensor<128x1x1x992xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %827 = "tosa.transpose"(%826, %71) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %828 = "tosa.sub"(%827, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %829 = "tosa.mul"(%828, %98) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %830 = "tosa.mul"(%829, %66) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %831 = "tosa.add"(%830, %66) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %832 = "tosa.clamp"(%831) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %833 = "tosa.transpose"(%832, %73) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %834 = "tosa.conv2d"(%833, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %835 = "tosa.transpose"(%834, %71) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_472 = tensor.insert_slice %421 into %cst_40[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_473 = tensor.insert_slice %437 into %inserted_slice_472[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_474 = tensor.insert_slice %453 into %inserted_slice_473[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_475 = tensor.insert_slice %469 into %inserted_slice_474[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_476 = tensor.insert_slice %485 into %inserted_slice_475[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_477 = tensor.insert_slice %501 into %inserted_slice_476[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_478 = tensor.insert_slice %517 into %inserted_slice_477[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_479 = tensor.insert_slice %533 into %inserted_slice_478[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_480 = tensor.insert_slice %549 into %inserted_slice_479[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_481 = tensor.insert_slice %565 into %inserted_slice_480[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_482 = tensor.insert_slice %583 into %inserted_slice_481[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_483 = tensor.insert_slice %601 into %inserted_slice_482[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_484 = tensor.insert_slice %619 into %inserted_slice_483[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_485 = tensor.insert_slice %637 into %inserted_slice_484[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_486 = tensor.insert_slice %655 into %inserted_slice_485[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_487 = tensor.insert_slice %673 into %inserted_slice_486[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_488 = tensor.insert_slice %691 into %inserted_slice_487[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_489 = tensor.insert_slice %709 into %inserted_slice_488[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_490 = tensor.insert_slice %727 into %inserted_slice_489[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_491 = tensor.insert_slice %745 into %inserted_slice_490[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_492 = tensor.insert_slice %763 into %inserted_slice_491[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_493 = tensor.insert_slice %781 into %inserted_slice_492[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_494 = tensor.insert_slice %799 into %inserted_slice_493[0, 928, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_495 = tensor.insert_slice %817 into %inserted_slice_494[0, 960, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_496 = tensor.insert_slice %835 into %inserted_slice_495[0, 992, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %836 = "tosa.sub"(%inserted_slice_496, %4) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %837 = "tosa.add"(%4, %69) : (tensor<1x1024x1x1xf32>, tensor<f32>) -> tensor<1x1024x1x1xf32>
    %838 = "tosa.rsqrt"(%837) : (tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %839 = "tosa.mul"(%836, %838) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %840 = "tosa.mul"(%839, %4) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %841 = "tosa.add"(%840, %4) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %842 = "tosa.clamp"(%841) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %843 = "tosa.transpose"(%842, %73) : (tensor<1x1024x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x1024xf32>
    %844 = "tosa.conv2d"(%843, %3, %2) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %845 = "tosa.avg_pool2d"(%844) {acc_type = f32, kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>) -> tensor<1x7x7x512xf32>
    %846 = "tosa.transpose"(%845, %71) : (tensor<1x7x7x512xf32>, tensor<4xi64>) -> tensor<1x512x7x7xf32>
    %847 = "tosa.sub"(%846, %38) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %848 = "tosa.mul"(%847, %413) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %849 = "tosa.mul"(%848, %38) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %850 = "tosa.add"(%849, %38) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %851 = "tosa.clamp"(%850) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %852 = "tosa.transpose"(%851, %73) : (tensor<1x512x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x512xf32>
    %853 = "tosa.conv2d"(%852, %35, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %854 = "tosa.transpose"(%853, %71) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %855 = "tosa.sub"(%854, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %856 = "tosa.mul"(%855, %98) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %857 = "tosa.mul"(%856, %66) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %858 = "tosa.add"(%857, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %859 = "tosa.clamp"(%858) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %860 = "tosa.transpose"(%859, %73) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %861 = "tosa.conv2d"(%860, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %862 = "tosa.transpose"(%861, %71) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_497 = tensor.insert_slice %846 into %cst_41[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x544x7x7xf32>
    %inserted_slice_498 = tensor.insert_slice %862 into %inserted_slice_497[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x544x7x7xf32>
    %863 = "tosa.sub"(%inserted_slice_498, %34) : (tensor<1x544x7x7xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x7x7xf32>
    %864 = "tosa.mul"(%863, %568) {shift = 0 : i32} : (tensor<1x544x7x7xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x7x7xf32>
    %865 = "tosa.mul"(%864, %34) {shift = 0 : i32} : (tensor<1x544x7x7xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x7x7xf32>
    %866 = "tosa.add"(%865, %34) : (tensor<1x544x7x7xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x7x7xf32>
    %867 = "tosa.clamp"(%866) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x544x7x7xf32>) -> tensor<1x544x7x7xf32>
    %868 = "tosa.transpose"(%867, %73) : (tensor<1x544x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x544xf32>
    %869 = "tosa.conv2d"(%868, %33, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x544xf32>, tensor<128x1x1x544xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %870 = "tosa.transpose"(%869, %71) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %871 = "tosa.sub"(%870, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %872 = "tosa.mul"(%871, %98) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %873 = "tosa.mul"(%872, %66) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %874 = "tosa.add"(%873, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %875 = "tosa.clamp"(%874) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %876 = "tosa.transpose"(%875, %73) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %877 = "tosa.conv2d"(%876, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %878 = "tosa.transpose"(%877, %71) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_499 = tensor.insert_slice %846 into %cst_42[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x576x7x7xf32>
    %inserted_slice_500 = tensor.insert_slice %862 into %inserted_slice_499[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x576x7x7xf32>
    %inserted_slice_501 = tensor.insert_slice %878 into %inserted_slice_500[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x576x7x7xf32>
    %879 = "tosa.sub"(%inserted_slice_501, %32) : (tensor<1x576x7x7xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x7x7xf32>
    %880 = "tosa.mul"(%879, %586) {shift = 0 : i32} : (tensor<1x576x7x7xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x7x7xf32>
    %881 = "tosa.mul"(%880, %32) {shift = 0 : i32} : (tensor<1x576x7x7xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x7x7xf32>
    %882 = "tosa.add"(%881, %32) : (tensor<1x576x7x7xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x7x7xf32>
    %883 = "tosa.clamp"(%882) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x576x7x7xf32>) -> tensor<1x576x7x7xf32>
    %884 = "tosa.transpose"(%883, %73) : (tensor<1x576x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x576xf32>
    %885 = "tosa.conv2d"(%884, %31, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x576xf32>, tensor<128x1x1x576xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %886 = "tosa.transpose"(%885, %71) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %887 = "tosa.sub"(%886, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %888 = "tosa.mul"(%887, %98) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %889 = "tosa.mul"(%888, %66) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %890 = "tosa.add"(%889, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %891 = "tosa.clamp"(%890) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %892 = "tosa.transpose"(%891, %73) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %893 = "tosa.conv2d"(%892, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %894 = "tosa.transpose"(%893, %71) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_502 = tensor.insert_slice %846 into %cst_43[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x608x7x7xf32>
    %inserted_slice_503 = tensor.insert_slice %862 into %inserted_slice_502[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x608x7x7xf32>
    %inserted_slice_504 = tensor.insert_slice %878 into %inserted_slice_503[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x608x7x7xf32>
    %inserted_slice_505 = tensor.insert_slice %894 into %inserted_slice_504[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x608x7x7xf32>
    %895 = "tosa.sub"(%inserted_slice_505, %30) : (tensor<1x608x7x7xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x7x7xf32>
    %896 = "tosa.mul"(%895, %604) {shift = 0 : i32} : (tensor<1x608x7x7xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x7x7xf32>
    %897 = "tosa.mul"(%896, %30) {shift = 0 : i32} : (tensor<1x608x7x7xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x7x7xf32>
    %898 = "tosa.add"(%897, %30) : (tensor<1x608x7x7xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x7x7xf32>
    %899 = "tosa.clamp"(%898) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x608x7x7xf32>) -> tensor<1x608x7x7xf32>
    %900 = "tosa.transpose"(%899, %73) : (tensor<1x608x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x608xf32>
    %901 = "tosa.conv2d"(%900, %29, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x608xf32>, tensor<128x1x1x608xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %902 = "tosa.transpose"(%901, %71) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %903 = "tosa.sub"(%902, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %904 = "tosa.mul"(%903, %98) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %905 = "tosa.mul"(%904, %66) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %906 = "tosa.add"(%905, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %907 = "tosa.clamp"(%906) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %908 = "tosa.transpose"(%907, %73) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %909 = "tosa.conv2d"(%908, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %910 = "tosa.transpose"(%909, %71) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_506 = tensor.insert_slice %846 into %cst_44[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x640x7x7xf32>
    %inserted_slice_507 = tensor.insert_slice %862 into %inserted_slice_506[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x640x7x7xf32>
    %inserted_slice_508 = tensor.insert_slice %878 into %inserted_slice_507[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x640x7x7xf32>
    %inserted_slice_509 = tensor.insert_slice %894 into %inserted_slice_508[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x640x7x7xf32>
    %inserted_slice_510 = tensor.insert_slice %910 into %inserted_slice_509[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x640x7x7xf32>
    %911 = "tosa.sub"(%inserted_slice_510, %28) : (tensor<1x640x7x7xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x7x7xf32>
    %912 = "tosa.mul"(%911, %622) {shift = 0 : i32} : (tensor<1x640x7x7xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x7x7xf32>
    %913 = "tosa.mul"(%912, %28) {shift = 0 : i32} : (tensor<1x640x7x7xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x7x7xf32>
    %914 = "tosa.add"(%913, %28) : (tensor<1x640x7x7xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x7x7xf32>
    %915 = "tosa.clamp"(%914) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x640x7x7xf32>) -> tensor<1x640x7x7xf32>
    %916 = "tosa.transpose"(%915, %73) : (tensor<1x640x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x640xf32>
    %917 = "tosa.conv2d"(%916, %27, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x640xf32>, tensor<128x1x1x640xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %918 = "tosa.transpose"(%917, %71) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %919 = "tosa.sub"(%918, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %920 = "tosa.mul"(%919, %98) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %921 = "tosa.mul"(%920, %66) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %922 = "tosa.add"(%921, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %923 = "tosa.clamp"(%922) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %924 = "tosa.transpose"(%923, %73) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %925 = "tosa.conv2d"(%924, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %926 = "tosa.transpose"(%925, %71) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_511 = tensor.insert_slice %846 into %cst_45[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x672x7x7xf32>
    %inserted_slice_512 = tensor.insert_slice %862 into %inserted_slice_511[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x672x7x7xf32>
    %inserted_slice_513 = tensor.insert_slice %878 into %inserted_slice_512[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x672x7x7xf32>
    %inserted_slice_514 = tensor.insert_slice %894 into %inserted_slice_513[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x672x7x7xf32>
    %inserted_slice_515 = tensor.insert_slice %910 into %inserted_slice_514[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x672x7x7xf32>
    %inserted_slice_516 = tensor.insert_slice %926 into %inserted_slice_515[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x672x7x7xf32>
    %927 = "tosa.sub"(%inserted_slice_516, %26) : (tensor<1x672x7x7xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x7x7xf32>
    %928 = "tosa.mul"(%927, %640) {shift = 0 : i32} : (tensor<1x672x7x7xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x7x7xf32>
    %929 = "tosa.mul"(%928, %26) {shift = 0 : i32} : (tensor<1x672x7x7xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x7x7xf32>
    %930 = "tosa.add"(%929, %26) : (tensor<1x672x7x7xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x7x7xf32>
    %931 = "tosa.clamp"(%930) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x672x7x7xf32>) -> tensor<1x672x7x7xf32>
    %932 = "tosa.transpose"(%931, %73) : (tensor<1x672x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x672xf32>
    %933 = "tosa.conv2d"(%932, %25, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x672xf32>, tensor<128x1x1x672xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %934 = "tosa.transpose"(%933, %71) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %935 = "tosa.sub"(%934, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %936 = "tosa.mul"(%935, %98) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %937 = "tosa.mul"(%936, %66) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %938 = "tosa.add"(%937, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %939 = "tosa.clamp"(%938) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %940 = "tosa.transpose"(%939, %73) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %941 = "tosa.conv2d"(%940, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %942 = "tosa.transpose"(%941, %71) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_517 = tensor.insert_slice %846 into %cst_46[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_518 = tensor.insert_slice %862 into %inserted_slice_517[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_519 = tensor.insert_slice %878 into %inserted_slice_518[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_520 = tensor.insert_slice %894 into %inserted_slice_519[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_521 = tensor.insert_slice %910 into %inserted_slice_520[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_522 = tensor.insert_slice %926 into %inserted_slice_521[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_523 = tensor.insert_slice %942 into %inserted_slice_522[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %943 = "tosa.sub"(%inserted_slice_523, %24) : (tensor<1x704x7x7xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x7x7xf32>
    %944 = "tosa.mul"(%943, %658) {shift = 0 : i32} : (tensor<1x704x7x7xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x7x7xf32>
    %945 = "tosa.mul"(%944, %24) {shift = 0 : i32} : (tensor<1x704x7x7xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x7x7xf32>
    %946 = "tosa.add"(%945, %24) : (tensor<1x704x7x7xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x7x7xf32>
    %947 = "tosa.clamp"(%946) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x704x7x7xf32>) -> tensor<1x704x7x7xf32>
    %948 = "tosa.transpose"(%947, %73) : (tensor<1x704x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x704xf32>
    %949 = "tosa.conv2d"(%948, %23, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x704xf32>, tensor<128x1x1x704xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %950 = "tosa.transpose"(%949, %71) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %951 = "tosa.sub"(%950, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %952 = "tosa.mul"(%951, %98) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %953 = "tosa.mul"(%952, %66) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %954 = "tosa.add"(%953, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %955 = "tosa.clamp"(%954) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %956 = "tosa.transpose"(%955, %73) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %957 = "tosa.conv2d"(%956, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %958 = "tosa.transpose"(%957, %71) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_524 = tensor.insert_slice %846 into %cst_47[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_525 = tensor.insert_slice %862 into %inserted_slice_524[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_526 = tensor.insert_slice %878 into %inserted_slice_525[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_527 = tensor.insert_slice %894 into %inserted_slice_526[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_528 = tensor.insert_slice %910 into %inserted_slice_527[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_529 = tensor.insert_slice %926 into %inserted_slice_528[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_530 = tensor.insert_slice %942 into %inserted_slice_529[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_531 = tensor.insert_slice %958 into %inserted_slice_530[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %959 = "tosa.sub"(%inserted_slice_531, %22) : (tensor<1x736x7x7xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x7x7xf32>
    %960 = "tosa.mul"(%959, %676) {shift = 0 : i32} : (tensor<1x736x7x7xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x7x7xf32>
    %961 = "tosa.mul"(%960, %22) {shift = 0 : i32} : (tensor<1x736x7x7xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x7x7xf32>
    %962 = "tosa.add"(%961, %22) : (tensor<1x736x7x7xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x7x7xf32>
    %963 = "tosa.clamp"(%962) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x736x7x7xf32>) -> tensor<1x736x7x7xf32>
    %964 = "tosa.transpose"(%963, %73) : (tensor<1x736x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x736xf32>
    %965 = "tosa.conv2d"(%964, %21, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x736xf32>, tensor<128x1x1x736xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %966 = "tosa.transpose"(%965, %71) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %967 = "tosa.sub"(%966, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %968 = "tosa.mul"(%967, %98) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %969 = "tosa.mul"(%968, %66) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %970 = "tosa.add"(%969, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %971 = "tosa.clamp"(%970) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %972 = "tosa.transpose"(%971, %73) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %973 = "tosa.conv2d"(%972, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %974 = "tosa.transpose"(%973, %71) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_532 = tensor.insert_slice %846 into %cst_48[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_533 = tensor.insert_slice %862 into %inserted_slice_532[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_534 = tensor.insert_slice %878 into %inserted_slice_533[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_535 = tensor.insert_slice %894 into %inserted_slice_534[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_536 = tensor.insert_slice %910 into %inserted_slice_535[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_537 = tensor.insert_slice %926 into %inserted_slice_536[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_538 = tensor.insert_slice %942 into %inserted_slice_537[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_539 = tensor.insert_slice %958 into %inserted_slice_538[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_540 = tensor.insert_slice %974 into %inserted_slice_539[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %975 = "tosa.sub"(%inserted_slice_540, %20) : (tensor<1x768x7x7xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x7x7xf32>
    %976 = "tosa.mul"(%975, %694) {shift = 0 : i32} : (tensor<1x768x7x7xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x7x7xf32>
    %977 = "tosa.mul"(%976, %20) {shift = 0 : i32} : (tensor<1x768x7x7xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x7x7xf32>
    %978 = "tosa.add"(%977, %20) : (tensor<1x768x7x7xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x7x7xf32>
    %979 = "tosa.clamp"(%978) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x768x7x7xf32>) -> tensor<1x768x7x7xf32>
    %980 = "tosa.transpose"(%979, %73) : (tensor<1x768x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x768xf32>
    %981 = "tosa.conv2d"(%980, %19, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x768xf32>, tensor<128x1x1x768xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %982 = "tosa.transpose"(%981, %71) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %983 = "tosa.sub"(%982, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %984 = "tosa.mul"(%983, %98) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %985 = "tosa.mul"(%984, %66) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %986 = "tosa.add"(%985, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %987 = "tosa.clamp"(%986) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %988 = "tosa.transpose"(%987, %73) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %989 = "tosa.conv2d"(%988, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %990 = "tosa.transpose"(%989, %71) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_541 = tensor.insert_slice %846 into %cst_49[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_542 = tensor.insert_slice %862 into %inserted_slice_541[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_543 = tensor.insert_slice %878 into %inserted_slice_542[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_544 = tensor.insert_slice %894 into %inserted_slice_543[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_545 = tensor.insert_slice %910 into %inserted_slice_544[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_546 = tensor.insert_slice %926 into %inserted_slice_545[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_547 = tensor.insert_slice %942 into %inserted_slice_546[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_548 = tensor.insert_slice %958 into %inserted_slice_547[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_549 = tensor.insert_slice %974 into %inserted_slice_548[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_550 = tensor.insert_slice %990 into %inserted_slice_549[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %991 = "tosa.sub"(%inserted_slice_550, %18) : (tensor<1x800x7x7xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x7x7xf32>
    %992 = "tosa.mul"(%991, %712) {shift = 0 : i32} : (tensor<1x800x7x7xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x7x7xf32>
    %993 = "tosa.mul"(%992, %18) {shift = 0 : i32} : (tensor<1x800x7x7xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x7x7xf32>
    %994 = "tosa.add"(%993, %18) : (tensor<1x800x7x7xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x7x7xf32>
    %995 = "tosa.clamp"(%994) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x800x7x7xf32>) -> tensor<1x800x7x7xf32>
    %996 = "tosa.transpose"(%995, %73) : (tensor<1x800x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x800xf32>
    %997 = "tosa.conv2d"(%996, %17, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x800xf32>, tensor<128x1x1x800xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %998 = "tosa.transpose"(%997, %71) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %999 = "tosa.sub"(%998, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1000 = "tosa.mul"(%999, %98) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1001 = "tosa.mul"(%1000, %66) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1002 = "tosa.add"(%1001, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1003 = "tosa.clamp"(%1002) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1004 = "tosa.transpose"(%1003, %73) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1005 = "tosa.conv2d"(%1004, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1006 = "tosa.transpose"(%1005, %71) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_551 = tensor.insert_slice %846 into %cst_50[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_552 = tensor.insert_slice %862 into %inserted_slice_551[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_553 = tensor.insert_slice %878 into %inserted_slice_552[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_554 = tensor.insert_slice %894 into %inserted_slice_553[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_555 = tensor.insert_slice %910 into %inserted_slice_554[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_556 = tensor.insert_slice %926 into %inserted_slice_555[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_557 = tensor.insert_slice %942 into %inserted_slice_556[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_558 = tensor.insert_slice %958 into %inserted_slice_557[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_559 = tensor.insert_slice %974 into %inserted_slice_558[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_560 = tensor.insert_slice %990 into %inserted_slice_559[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_561 = tensor.insert_slice %1006 into %inserted_slice_560[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %1007 = "tosa.sub"(%inserted_slice_561, %16) : (tensor<1x832x7x7xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x7x7xf32>
    %1008 = "tosa.mul"(%1007, %730) {shift = 0 : i32} : (tensor<1x832x7x7xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x7x7xf32>
    %1009 = "tosa.mul"(%1008, %16) {shift = 0 : i32} : (tensor<1x832x7x7xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x7x7xf32>
    %1010 = "tosa.add"(%1009, %16) : (tensor<1x832x7x7xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x7x7xf32>
    %1011 = "tosa.clamp"(%1010) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x832x7x7xf32>) -> tensor<1x832x7x7xf32>
    %1012 = "tosa.transpose"(%1011, %73) : (tensor<1x832x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x832xf32>
    %1013 = "tosa.conv2d"(%1012, %15, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x832xf32>, tensor<128x1x1x832xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1014 = "tosa.transpose"(%1013, %71) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1015 = "tosa.sub"(%1014, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1016 = "tosa.mul"(%1015, %98) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1017 = "tosa.mul"(%1016, %66) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1018 = "tosa.add"(%1017, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1019 = "tosa.clamp"(%1018) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1020 = "tosa.transpose"(%1019, %73) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1021 = "tosa.conv2d"(%1020, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1022 = "tosa.transpose"(%1021, %71) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_562 = tensor.insert_slice %846 into %cst_51[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_563 = tensor.insert_slice %862 into %inserted_slice_562[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_564 = tensor.insert_slice %878 into %inserted_slice_563[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_565 = tensor.insert_slice %894 into %inserted_slice_564[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_566 = tensor.insert_slice %910 into %inserted_slice_565[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_567 = tensor.insert_slice %926 into %inserted_slice_566[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_568 = tensor.insert_slice %942 into %inserted_slice_567[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_569 = tensor.insert_slice %958 into %inserted_slice_568[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_570 = tensor.insert_slice %974 into %inserted_slice_569[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_571 = tensor.insert_slice %990 into %inserted_slice_570[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_572 = tensor.insert_slice %1006 into %inserted_slice_571[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_573 = tensor.insert_slice %1022 into %inserted_slice_572[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %1023 = "tosa.sub"(%inserted_slice_573, %14) : (tensor<1x864x7x7xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x7x7xf32>
    %1024 = "tosa.mul"(%1023, %748) {shift = 0 : i32} : (tensor<1x864x7x7xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x7x7xf32>
    %1025 = "tosa.mul"(%1024, %14) {shift = 0 : i32} : (tensor<1x864x7x7xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x7x7xf32>
    %1026 = "tosa.add"(%1025, %14) : (tensor<1x864x7x7xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x7x7xf32>
    %1027 = "tosa.clamp"(%1026) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x864x7x7xf32>) -> tensor<1x864x7x7xf32>
    %1028 = "tosa.transpose"(%1027, %73) : (tensor<1x864x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x864xf32>
    %1029 = "tosa.conv2d"(%1028, %13, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x864xf32>, tensor<128x1x1x864xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1030 = "tosa.transpose"(%1029, %71) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1031 = "tosa.sub"(%1030, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1032 = "tosa.mul"(%1031, %98) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1033 = "tosa.mul"(%1032, %66) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1034 = "tosa.add"(%1033, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1035 = "tosa.clamp"(%1034) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1036 = "tosa.transpose"(%1035, %73) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1037 = "tosa.conv2d"(%1036, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1038 = "tosa.transpose"(%1037, %71) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_574 = tensor.insert_slice %846 into %cst_52[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_575 = tensor.insert_slice %862 into %inserted_slice_574[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_576 = tensor.insert_slice %878 into %inserted_slice_575[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_577 = tensor.insert_slice %894 into %inserted_slice_576[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_578 = tensor.insert_slice %910 into %inserted_slice_577[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_579 = tensor.insert_slice %926 into %inserted_slice_578[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_580 = tensor.insert_slice %942 into %inserted_slice_579[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_581 = tensor.insert_slice %958 into %inserted_slice_580[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_582 = tensor.insert_slice %974 into %inserted_slice_581[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_583 = tensor.insert_slice %990 into %inserted_slice_582[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_584 = tensor.insert_slice %1006 into %inserted_slice_583[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_585 = tensor.insert_slice %1022 into %inserted_slice_584[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_586 = tensor.insert_slice %1038 into %inserted_slice_585[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %1039 = "tosa.sub"(%inserted_slice_586, %12) : (tensor<1x896x7x7xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x7x7xf32>
    %1040 = "tosa.mul"(%1039, %766) {shift = 0 : i32} : (tensor<1x896x7x7xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x7x7xf32>
    %1041 = "tosa.mul"(%1040, %12) {shift = 0 : i32} : (tensor<1x896x7x7xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x7x7xf32>
    %1042 = "tosa.add"(%1041, %12) : (tensor<1x896x7x7xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x7x7xf32>
    %1043 = "tosa.clamp"(%1042) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x896x7x7xf32>) -> tensor<1x896x7x7xf32>
    %1044 = "tosa.transpose"(%1043, %73) : (tensor<1x896x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x896xf32>
    %1045 = "tosa.conv2d"(%1044, %11, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x896xf32>, tensor<128x1x1x896xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1046 = "tosa.transpose"(%1045, %71) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1047 = "tosa.sub"(%1046, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1048 = "tosa.mul"(%1047, %98) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1049 = "tosa.mul"(%1048, %66) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1050 = "tosa.add"(%1049, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1051 = "tosa.clamp"(%1050) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1052 = "tosa.transpose"(%1051, %73) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1053 = "tosa.conv2d"(%1052, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1054 = "tosa.transpose"(%1053, %71) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_587 = tensor.insert_slice %846 into %cst_53[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_588 = tensor.insert_slice %862 into %inserted_slice_587[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_589 = tensor.insert_slice %878 into %inserted_slice_588[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_590 = tensor.insert_slice %894 into %inserted_slice_589[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_591 = tensor.insert_slice %910 into %inserted_slice_590[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_592 = tensor.insert_slice %926 into %inserted_slice_591[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_593 = tensor.insert_slice %942 into %inserted_slice_592[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_594 = tensor.insert_slice %958 into %inserted_slice_593[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_595 = tensor.insert_slice %974 into %inserted_slice_594[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_596 = tensor.insert_slice %990 into %inserted_slice_595[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_597 = tensor.insert_slice %1006 into %inserted_slice_596[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_598 = tensor.insert_slice %1022 into %inserted_slice_597[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_599 = tensor.insert_slice %1038 into %inserted_slice_598[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_600 = tensor.insert_slice %1054 into %inserted_slice_599[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %1055 = "tosa.sub"(%inserted_slice_600, %10) : (tensor<1x928x7x7xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x7x7xf32>
    %1056 = "tosa.mul"(%1055, %784) {shift = 0 : i32} : (tensor<1x928x7x7xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x7x7xf32>
    %1057 = "tosa.mul"(%1056, %10) {shift = 0 : i32} : (tensor<1x928x7x7xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x7x7xf32>
    %1058 = "tosa.add"(%1057, %10) : (tensor<1x928x7x7xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x7x7xf32>
    %1059 = "tosa.clamp"(%1058) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x928x7x7xf32>) -> tensor<1x928x7x7xf32>
    %1060 = "tosa.transpose"(%1059, %73) : (tensor<1x928x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x928xf32>
    %1061 = "tosa.conv2d"(%1060, %9, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x928xf32>, tensor<128x1x1x928xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1062 = "tosa.transpose"(%1061, %71) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1063 = "tosa.sub"(%1062, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1064 = "tosa.mul"(%1063, %98) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1065 = "tosa.mul"(%1064, %66) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1066 = "tosa.add"(%1065, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1067 = "tosa.clamp"(%1066) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1068 = "tosa.transpose"(%1067, %73) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1069 = "tosa.conv2d"(%1068, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1070 = "tosa.transpose"(%1069, %71) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_601 = tensor.insert_slice %846 into %cst_54[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_602 = tensor.insert_slice %862 into %inserted_slice_601[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_603 = tensor.insert_slice %878 into %inserted_slice_602[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_604 = tensor.insert_slice %894 into %inserted_slice_603[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_605 = tensor.insert_slice %910 into %inserted_slice_604[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_606 = tensor.insert_slice %926 into %inserted_slice_605[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_607 = tensor.insert_slice %942 into %inserted_slice_606[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_608 = tensor.insert_slice %958 into %inserted_slice_607[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_609 = tensor.insert_slice %974 into %inserted_slice_608[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_610 = tensor.insert_slice %990 into %inserted_slice_609[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_611 = tensor.insert_slice %1006 into %inserted_slice_610[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_612 = tensor.insert_slice %1022 into %inserted_slice_611[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_613 = tensor.insert_slice %1038 into %inserted_slice_612[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_614 = tensor.insert_slice %1054 into %inserted_slice_613[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_615 = tensor.insert_slice %1070 into %inserted_slice_614[0, 928, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %1071 = "tosa.sub"(%inserted_slice_615, %8) : (tensor<1x960x7x7xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x7x7xf32>
    %1072 = "tosa.mul"(%1071, %802) {shift = 0 : i32} : (tensor<1x960x7x7xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x7x7xf32>
    %1073 = "tosa.mul"(%1072, %8) {shift = 0 : i32} : (tensor<1x960x7x7xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x7x7xf32>
    %1074 = "tosa.add"(%1073, %8) : (tensor<1x960x7x7xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x7x7xf32>
    %1075 = "tosa.clamp"(%1074) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x960x7x7xf32>) -> tensor<1x960x7x7xf32>
    %1076 = "tosa.transpose"(%1075, %73) : (tensor<1x960x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x960xf32>
    %1077 = "tosa.conv2d"(%1076, %7, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x960xf32>, tensor<128x1x1x960xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1078 = "tosa.transpose"(%1077, %71) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1079 = "tosa.sub"(%1078, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1080 = "tosa.mul"(%1079, %98) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1081 = "tosa.mul"(%1080, %66) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1082 = "tosa.add"(%1081, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1083 = "tosa.clamp"(%1082) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1084 = "tosa.transpose"(%1083, %73) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1085 = "tosa.conv2d"(%1084, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1086 = "tosa.transpose"(%1085, %71) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_616 = tensor.insert_slice %846 into %cst_55[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_617 = tensor.insert_slice %862 into %inserted_slice_616[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_618 = tensor.insert_slice %878 into %inserted_slice_617[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_619 = tensor.insert_slice %894 into %inserted_slice_618[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_620 = tensor.insert_slice %910 into %inserted_slice_619[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_621 = tensor.insert_slice %926 into %inserted_slice_620[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_622 = tensor.insert_slice %942 into %inserted_slice_621[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_623 = tensor.insert_slice %958 into %inserted_slice_622[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_624 = tensor.insert_slice %974 into %inserted_slice_623[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_625 = tensor.insert_slice %990 into %inserted_slice_624[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_626 = tensor.insert_slice %1006 into %inserted_slice_625[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_627 = tensor.insert_slice %1022 into %inserted_slice_626[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_628 = tensor.insert_slice %1038 into %inserted_slice_627[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_629 = tensor.insert_slice %1054 into %inserted_slice_628[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_630 = tensor.insert_slice %1070 into %inserted_slice_629[0, 928, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_631 = tensor.insert_slice %1086 into %inserted_slice_630[0, 960, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %1087 = "tosa.sub"(%inserted_slice_631, %6) : (tensor<1x992x7x7xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x7x7xf32>
    %1088 = "tosa.mul"(%1087, %820) {shift = 0 : i32} : (tensor<1x992x7x7xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x7x7xf32>
    %1089 = "tosa.mul"(%1088, %6) {shift = 0 : i32} : (tensor<1x992x7x7xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x7x7xf32>
    %1090 = "tosa.add"(%1089, %6) : (tensor<1x992x7x7xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x7x7xf32>
    %1091 = "tosa.clamp"(%1090) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x992x7x7xf32>) -> tensor<1x992x7x7xf32>
    %1092 = "tosa.transpose"(%1091, %73) : (tensor<1x992x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x992xf32>
    %1093 = "tosa.conv2d"(%1092, %5, %67) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x992xf32>, tensor<128x1x1x992xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1094 = "tosa.transpose"(%1093, %71) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1095 = "tosa.sub"(%1094, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1096 = "tosa.mul"(%1095, %98) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1097 = "tosa.mul"(%1096, %66) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1098 = "tosa.add"(%1097, %66) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1099 = "tosa.clamp"(%1098) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1100 = "tosa.transpose"(%1099, %73) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1101 = "tosa.conv2d"(%1100, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1102 = "tosa.transpose"(%1101, %71) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_632 = tensor.insert_slice %846 into %cst_56[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_633 = tensor.insert_slice %862 into %inserted_slice_632[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_634 = tensor.insert_slice %878 into %inserted_slice_633[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_635 = tensor.insert_slice %894 into %inserted_slice_634[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_636 = tensor.insert_slice %910 into %inserted_slice_635[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_637 = tensor.insert_slice %926 into %inserted_slice_636[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_638 = tensor.insert_slice %942 into %inserted_slice_637[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_639 = tensor.insert_slice %958 into %inserted_slice_638[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_640 = tensor.insert_slice %974 into %inserted_slice_639[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_641 = tensor.insert_slice %990 into %inserted_slice_640[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_642 = tensor.insert_slice %1006 into %inserted_slice_641[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_643 = tensor.insert_slice %1022 into %inserted_slice_642[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_644 = tensor.insert_slice %1038 into %inserted_slice_643[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_645 = tensor.insert_slice %1054 into %inserted_slice_644[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_646 = tensor.insert_slice %1070 into %inserted_slice_645[0, 928, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_647 = tensor.insert_slice %1086 into %inserted_slice_646[0, 960, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_648 = tensor.insert_slice %1102 into %inserted_slice_647[0, 992, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %1103 = "tosa.sub"(%inserted_slice_648, %4) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %1104 = "tosa.mul"(%1103, %838) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %1105 = "tosa.mul"(%1104, %4) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %1106 = "tosa.add"(%1105, %4) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %1107 = "tosa.clamp"(%1106) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %1108 = "tosa.transpose"(%1107, %73) : (tensor<1x1024x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x1024xf32>
    %1109 = "tosa.avg_pool2d"(%1108) {acc_type = f32, kernel = array<i64: 7, 7>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>) -> tensor<1x1x1x1024xf32>
    %1110 = "tosa.reshape"(%1109) {new_shape = array<i64: 1, 1, 1024>} : (tensor<1x1x1x1024xf32>) -> tensor<1x1x1024xf32>
    %1111 = "tosa.matmul"(%1110, %1) : (tensor<1x1x1024xf32>, tensor<1x1024x1000xf32>) -> tensor<1x1x1000xf32>
    %1112 = "tosa.add"(%1111, %0) : (tensor<1x1x1000xf32>, tensor<1000xf32>) -> tensor<1x1x1000xf32>
    %1113 = "tosa.reshape"(%1112) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    return %1113 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %cst = arith.constant dense<0.000000e+00> : tensor<1x96x56x56xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1x128x56x56xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1x160x56x56xf32>
    %cst_2 = arith.constant dense<0.000000e+00> : tensor<1x192x56x56xf32>
    %cst_3 = arith.constant dense<0.000000e+00> : tensor<1x224x56x56xf32>
    %cst_4 = arith.constant dense<0.000000e+00> : tensor<1x256x56x56xf32>
    %cst_5 = arith.constant dense<0.000000e+00> : tensor<1x160x28x28xf32>
    %cst_6 = arith.constant dense<0.000000e+00> : tensor<1x192x28x28xf32>
    %cst_7 = arith.constant dense<0.000000e+00> : tensor<1x224x28x28xf32>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<1x256x28x28xf32>
    %cst_9 = arith.constant dense<0.000000e+00> : tensor<1x288x28x28xf32>
    %cst_10 = arith.constant dense<0.000000e+00> : tensor<1x320x28x28xf32>
    %cst_11 = arith.constant dense<0.000000e+00> : tensor<1x352x28x28xf32>
    %cst_12 = arith.constant dense<0.000000e+00> : tensor<1x384x28x28xf32>
    %cst_13 = arith.constant dense<0.000000e+00> : tensor<1x416x28x28xf32>
    %cst_14 = arith.constant dense<0.000000e+00> : tensor<1x448x28x28xf32>
    %cst_15 = arith.constant dense<0.000000e+00> : tensor<1x480x28x28xf32>
    %cst_16 = arith.constant dense<0.000000e+00> : tensor<1x512x28x28xf32>
    %cst_17 = arith.constant dense<0.000000e+00> : tensor<1x288x14x14xf32>
    %cst_18 = arith.constant dense<0.000000e+00> : tensor<1x320x14x14xf32>
    %cst_19 = arith.constant dense<0.000000e+00> : tensor<1x352x14x14xf32>
    %cst_20 = arith.constant dense<0.000000e+00> : tensor<1x384x14x14xf32>
    %cst_21 = arith.constant dense<0.000000e+00> : tensor<1x416x14x14xf32>
    %cst_22 = arith.constant dense<0.000000e+00> : tensor<1x448x14x14xf32>
    %cst_23 = arith.constant dense<0.000000e+00> : tensor<1x480x14x14xf32>
    %cst_24 = arith.constant dense<0.000000e+00> : tensor<1x512x14x14xf32>
    %cst_25 = arith.constant dense<0.000000e+00> : tensor<1x544x14x14xf32>
    %cst_26 = arith.constant dense<0.000000e+00> : tensor<1x576x14x14xf32>
    %cst_27 = arith.constant dense<0.000000e+00> : tensor<1x608x14x14xf32>
    %cst_28 = arith.constant dense<0.000000e+00> : tensor<1x640x14x14xf32>
    %cst_29 = arith.constant dense<0.000000e+00> : tensor<1x672x14x14xf32>
    %cst_30 = arith.constant dense<0.000000e+00> : tensor<1x704x14x14xf32>
    %cst_31 = arith.constant dense<0.000000e+00> : tensor<1x736x14x14xf32>
    %cst_32 = arith.constant dense<0.000000e+00> : tensor<1x768x14x14xf32>
    %cst_33 = arith.constant dense<0.000000e+00> : tensor<1x800x14x14xf32>
    %cst_34 = arith.constant dense<0.000000e+00> : tensor<1x832x14x14xf32>
    %cst_35 = arith.constant dense<0.000000e+00> : tensor<1x864x14x14xf32>
    %cst_36 = arith.constant dense<0.000000e+00> : tensor<1x896x14x14xf32>
    %cst_37 = arith.constant dense<0.000000e+00> : tensor<1x928x14x14xf32>
    %cst_38 = arith.constant dense<0.000000e+00> : tensor<1x960x14x14xf32>
    %cst_39 = arith.constant dense<0.000000e+00> : tensor<1x992x14x14xf32>
    %cst_40 = arith.constant dense<0.000000e+00> : tensor<1x1024x14x14xf32>
    %cst_41 = arith.constant dense<0.000000e+00> : tensor<1x544x7x7xf32>
    %cst_42 = arith.constant dense<0.000000e+00> : tensor<1x576x7x7xf32>
    %cst_43 = arith.constant dense<0.000000e+00> : tensor<1x608x7x7xf32>
    %cst_44 = arith.constant dense<0.000000e+00> : tensor<1x640x7x7xf32>
    %cst_45 = arith.constant dense<0.000000e+00> : tensor<1x672x7x7xf32>
    %cst_46 = arith.constant dense<0.000000e+00> : tensor<1x704x7x7xf32>
    %cst_47 = arith.constant dense<0.000000e+00> : tensor<1x736x7x7xf32>
    %cst_48 = arith.constant dense<0.000000e+00> : tensor<1x768x7x7xf32>
    %cst_49 = arith.constant dense<0.000000e+00> : tensor<1x800x7x7xf32>
    %cst_50 = arith.constant dense<0.000000e+00> : tensor<1x832x7x7xf32>
    %cst_51 = arith.constant dense<0.000000e+00> : tensor<1x864x7x7xf32>
    %cst_52 = arith.constant dense<0.000000e+00> : tensor<1x896x7x7xf32>
    %cst_53 = arith.constant dense<0.000000e+00> : tensor<1x928x7x7xf32>
    %cst_54 = arith.constant dense<0.000000e+00> : tensor<1x960x7x7xf32>
    %cst_55 = arith.constant dense<0.000000e+00> : tensor<1x992x7x7xf32>
    %cst_56 = arith.constant dense<0.000000e+00> : tensor<1x1024x7x7xf32>
    %cst_57 = arith.constant dense<0.000000e+00> : tensor<1x7x7x1024xf32>
    %cst_58 = arith.constant dense<0.000000e+00> : tensor<7x7xf32>
    %cst_59 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_60 = arith.constant dense<0.000000e+00> : tensor<992xf32>
    %cst_61 = arith.constant dense<0.000000e+00> : tensor<960xf32>
    %cst_62 = arith.constant dense<0.000000e+00> : tensor<928xf32>
    %cst_63 = arith.constant dense<0.000000e+00> : tensor<896xf32>
    %cst_64 = arith.constant dense<0.000000e+00> : tensor<864xf32>
    %cst_65 = arith.constant dense<0.000000e+00> : tensor<832xf32>
    %cst_66 = arith.constant dense<0.000000e+00> : tensor<800xf32>
    %cst_67 = arith.constant dense<0.000000e+00> : tensor<768xf32>
    %cst_68 = arith.constant dense<0.000000e+00> : tensor<736xf32>
    %cst_69 = arith.constant dense<0.000000e+00> : tensor<704xf32>
    %cst_70 = arith.constant dense<0.000000e+00> : tensor<672xf32>
    %cst_71 = arith.constant dense<0.000000e+00> : tensor<640xf32>
    %cst_72 = arith.constant dense<0.000000e+00> : tensor<608xf32>
    %cst_73 = arith.constant dense<0.000000e+00> : tensor<576xf32>
    %cst_74 = arith.constant dense<0.000000e+00> : tensor<544xf32>
    %cst_75 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_76 = arith.constant dense<0.000000e+00> : tensor<1x14x14x512xf32>
    %cst_77 = arith.constant dense<0.000000e+00> : tensor<2x2xf32>
    %cst_78 = arith.constant dense<0.000000e+00> : tensor<1024xf32>
    %cst_79 = arith.constant dense<0.000000e+00> : tensor<480xf32>
    %cst_80 = arith.constant dense<0.000000e+00> : tensor<448xf32>
    %cst_81 = arith.constant dense<0.000000e+00> : tensor<416xf32>
    %cst_82 = arith.constant dense<0.000000e+00> : tensor<384xf32>
    %cst_83 = arith.constant dense<0.000000e+00> : tensor<352xf32>
    %cst_84 = arith.constant dense<0.000000e+00> : tensor<320xf32>
    %cst_85 = arith.constant dense<0.000000e+00> : tensor<288xf32>
    %cst_86 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_87 = arith.constant dense<0.000000e+00> : tensor<1x28x28x256xf32>
    %cst_88 = arith.constant dense<0.000000e+00> : tensor<224xf32>
    %cst_89 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_90 = arith.constant dense<0.000000e+00> : tensor<160xf32>
    %cst_91 = arith.constant dense<0.000000e+00> : tensor<1x56x56x128xf32>
    %cst_92 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_93 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_94 = arith.constant dense<0.000000e+00> : tensor<1x114x114x64xf32>
    %cst_95 = arith.constant dense<0.000000e+00> : tensor<3x3xf32>
    %cst_96 = arith.constant dense<0.000000e+00> : tensor<3xf32>
    %0 = "tosa.const"() {value = dense<0.000000e+00> : tensor<512xf32>} : () -> tensor<512xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x1024xf32>} : () -> tensor<512x1x1x1024xf32>
    %2 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1024x1x1xf32>} : () -> tensor<1x1024x1x1xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x992xf32>} : () -> tensor<128x1x1x992xf32>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x992x1x1xf32>} : () -> tensor<1x992x1x1xf32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x960xf32>} : () -> tensor<128x1x1x960xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x960x1x1xf32>} : () -> tensor<1x960x1x1xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x928xf32>} : () -> tensor<128x1x1x928xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x928x1x1xf32>} : () -> tensor<1x928x1x1xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x896xf32>} : () -> tensor<128x1x1x896xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x896x1x1xf32>} : () -> tensor<1x896x1x1xf32>
    %11 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x864xf32>} : () -> tensor<128x1x1x864xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x864x1x1xf32>} : () -> tensor<1x864x1x1xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x832xf32>} : () -> tensor<128x1x1x832xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x832x1x1xf32>} : () -> tensor<1x832x1x1xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x800xf32>} : () -> tensor<128x1x1x800xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x800x1x1xf32>} : () -> tensor<1x800x1x1xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x768xf32>} : () -> tensor<128x1x1x768xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x768x1x1xf32>} : () -> tensor<1x768x1x1xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x736xf32>} : () -> tensor<128x1x1x736xf32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x736x1x1xf32>} : () -> tensor<1x736x1x1xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x704xf32>} : () -> tensor<128x1x1x704xf32>
    %22 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x704x1x1xf32>} : () -> tensor<1x704x1x1xf32>
    %23 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x672xf32>} : () -> tensor<128x1x1x672xf32>
    %24 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x672x1x1xf32>} : () -> tensor<1x672x1x1xf32>
    %25 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x640xf32>} : () -> tensor<128x1x1x640xf32>
    %26 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x640x1x1xf32>} : () -> tensor<1x640x1x1xf32>
    %27 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x608xf32>} : () -> tensor<128x1x1x608xf32>
    %28 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x608x1x1xf32>} : () -> tensor<1x608x1x1xf32>
    %29 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x576xf32>} : () -> tensor<128x1x1x576xf32>
    %30 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x576x1x1xf32>} : () -> tensor<1x576x1x1xf32>
    %31 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x544xf32>} : () -> tensor<128x1x1x544xf32>
    %32 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x544x1x1xf32>} : () -> tensor<1x544x1x1xf32>
    %33 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x512xf32>} : () -> tensor<128x1x1x512xf32>
    %34 = "tosa.const"() {value = dense<0.000000e+00> : tensor<256xf32>} : () -> tensor<256xf32>
    %35 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x512xf32>} : () -> tensor<256x1x1x512xf32>
    %36 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %37 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x480xf32>} : () -> tensor<128x1x1x480xf32>
    %38 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x480x1x1xf32>} : () -> tensor<1x480x1x1xf32>
    %39 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x448xf32>} : () -> tensor<128x1x1x448xf32>
    %40 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x448x1x1xf32>} : () -> tensor<1x448x1x1xf32>
    %41 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x416xf32>} : () -> tensor<128x1x1x416xf32>
    %42 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x416x1x1xf32>} : () -> tensor<1x416x1x1xf32>
    %43 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x384xf32>} : () -> tensor<128x1x1x384xf32>
    %44 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x384x1x1xf32>} : () -> tensor<1x384x1x1xf32>
    %45 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x352xf32>} : () -> tensor<128x1x1x352xf32>
    %46 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x352x1x1xf32>} : () -> tensor<1x352x1x1xf32>
    %47 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x320xf32>} : () -> tensor<128x1x1x320xf32>
    %48 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x320x1x1xf32>} : () -> tensor<1x320x1x1xf32>
    %49 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x288xf32>} : () -> tensor<128x1x1x288xf32>
    %50 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x288x1x1xf32>} : () -> tensor<1x288x1x1xf32>
    %51 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x256xf32>} : () -> tensor<128x1x1x256xf32>
    %52 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %53 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x224xf32>} : () -> tensor<128x1x1x224xf32>
    %54 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x224x1x1xf32>} : () -> tensor<1x224x1x1xf32>
    %55 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x192xf32>} : () -> tensor<128x1x1x192xf32>
    %56 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x192x1x1xf32>} : () -> tensor<1x192x1x1xf32>
    %57 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x160xf32>} : () -> tensor<128x1x1x160xf32>
    %58 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x160x1x1xf32>} : () -> tensor<1x160x1x1xf32>
    %59 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x96xf32>} : () -> tensor<128x1x1x96xf32>
    %60 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x96x1x1xf32>} : () -> tensor<1x96x1x1xf32>
    %61 = "tosa.const"() {value = dense<0.000000e+00> : tensor<32xf32>} : () -> tensor<32xf32>
    %62 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32x3x3x128xf32>} : () -> tensor<32x3x3x128xf32>
    %63 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %64 = "tosa.const"() {value = dense<0.000000e+00> : tensor<128xf32>} : () -> tensor<128xf32>
    %65 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x64xf32>} : () -> tensor<128x1x1x64xf32>
    %66 = "tosa.const"() {value = dense<9.99999974E-6> : tensor<f32>} : () -> tensor<f32>
    %67 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %68 = "tosa.const"() {value = dense<0.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %69 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x7x7x3xf32>} : () -> tensor<64x7x7x3xf32>
    %70 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000x1024xf32>} : () -> tensor<1x1000x1024xf32>
    %71 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi64>} : () -> tensor<4xi64>
    %cst_97 = arith.constant 0.0204081628 : f32
    %72 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi64>} : () -> tensor<4xi64>
    %73 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %74 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x32xf32>} : () -> tensor<128x3x3x32xf32>
    %75 = "tosa.const"() {value = dense<7.777000e-02> : tensor<992x1x1x128xf32>} : () -> tensor<992x1x1x128xf32>
    %76 = "tosa.const"() {value = dense<7.777000e-02> : tensor<960x1x1x128xf32>} : () -> tensor<960x1x1x128xf32>
    %77 = "tosa.const"() {value = dense<7.777000e-02> : tensor<928x1x1x128xf32>} : () -> tensor<928x1x1x128xf32>
    %78 = "tosa.const"() {value = dense<7.777000e-02> : tensor<896x1x1x128xf32>} : () -> tensor<896x1x1x128xf32>
    %79 = "tosa.const"() {value = dense<7.777000e-02> : tensor<864x1x1x128xf32>} : () -> tensor<864x1x1x128xf32>
    %80 = "tosa.const"() {value = dense<7.777000e-02> : tensor<832x1x1x128xf32>} : () -> tensor<832x1x1x128xf32>
    %81 = "tosa.const"() {value = dense<7.777000e-02> : tensor<800x1x1x128xf32>} : () -> tensor<800x1x1x128xf32>
    %82 = "tosa.const"() {value = dense<7.777000e-02> : tensor<768x1x1x128xf32>} : () -> tensor<768x1x1x128xf32>
    %83 = "tosa.const"() {value = dense<7.777000e-02> : tensor<736x1x1x128xf32>} : () -> tensor<736x1x1x128xf32>
    %84 = "tosa.const"() {value = dense<7.777000e-02> : tensor<704x1x1x128xf32>} : () -> tensor<704x1x1x128xf32>
    %85 = "tosa.const"() {value = dense<7.777000e-02> : tensor<672x1x1x128xf32>} : () -> tensor<672x1x1x128xf32>
    %86 = "tosa.const"() {value = dense<7.777000e-02> : tensor<640x1x1x128xf32>} : () -> tensor<640x1x1x128xf32>
    %87 = "tosa.const"() {value = dense<7.777000e-02> : tensor<608x1x1x128xf32>} : () -> tensor<608x1x1x128xf32>
    %88 = "tosa.const"() {value = dense<7.777000e-02> : tensor<576x1x1x128xf32>} : () -> tensor<576x1x1x128xf32>
    %89 = "tosa.const"() {value = dense<7.777000e-02> : tensor<544x1x1x128xf32>} : () -> tensor<544x1x1x128xf32>
    %90 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x128xf32>} : () -> tensor<512x1x1x128xf32>
    %cst_98 = arith.constant 2.500000e-01 : f32
    %91 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x512xf32>} : () -> tensor<1024x1x1x512xf32>
    %92 = "tosa.const"() {value = dense<7.777000e-02> : tensor<480x1x1x128xf32>} : () -> tensor<480x1x1x128xf32>
    %93 = "tosa.const"() {value = dense<7.777000e-02> : tensor<448x1x1x128xf32>} : () -> tensor<448x1x1x128xf32>
    %94 = "tosa.const"() {value = dense<7.777000e-02> : tensor<416x1x1x128xf32>} : () -> tensor<416x1x1x128xf32>
    %95 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x1x1x128xf32>} : () -> tensor<384x1x1x128xf32>
    %96 = "tosa.const"() {value = dense<7.777000e-02> : tensor<352x1x1x128xf32>} : () -> tensor<352x1x1x128xf32>
    %97 = "tosa.const"() {value = dense<7.777000e-02> : tensor<320x1x1x128xf32>} : () -> tensor<320x1x1x128xf32>
    %98 = "tosa.const"() {value = dense<7.777000e-02> : tensor<288x1x1x128xf32>} : () -> tensor<288x1x1x128xf32>
    %99 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x128xf32>} : () -> tensor<256x1x1x128xf32>
    %100 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x256xf32>} : () -> tensor<512x1x1x256xf32>
    %101 = "tosa.const"() {value = dense<7.777000e-02> : tensor<224x1x1x128xf32>} : () -> tensor<224x1x1x128xf32>
    %102 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x1x128xf32>} : () -> tensor<192x1x1x128xf32>
    %103 = "tosa.const"() {value = dense<7.777000e-02> : tensor<160x1x1x128xf32>} : () -> tensor<160x1x1x128xf32>
    %104 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x128xf32>} : () -> tensor<128x1x1x128xf32>
    %105 = "tosa.const"() {value = dense<7.777000e-02> : tensor<96x1x1x128xf32>} : () -> tensor<96x1x1x128xf32>
    %106 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x128xf32>} : () -> tensor<64x1x1x128xf32>
    %cst_99 = arith.constant -3.40282347E+38 : f32
    %cst_100 = arith.constant 0.000000e+00 : f32
    %107 = "tosa.const"() {value = dense<7.777000e-02> : tensor<3x7x7x64xf32>} : () -> tensor<3x7x7x64xf32>
    %108 = ml_program.global_load @global0 : tensor<1x3x224x224xf32>
    %109 = "tosa.transpose"(%108, %71) : (tensor<1x3x224x224xf32>, tensor<4xi64>) -> tensor<1x224x224x3xf32>
    %110 = "tosa.conv2d"(%109, %69, %68) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %111 = "tosa.transpose"(%110, %72) : (tensor<1x112x112x64xf32>, tensor<4xi64>) -> tensor<1x64x112x112xf32>
    %112 = "tosa.sub"(%111, %67) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %113 = "tosa.add"(%67, %66) : (tensor<1x64x1x1xf32>, tensor<f32>) -> tensor<1x64x1x1xf32>
    %114 = "tosa.rsqrt"(%113) : (tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %115 = "tosa.mul"(%112, %114) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %116 = "tosa.mul"(%115, %67) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %117 = "tosa.add"(%116, %67) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %118 = "tosa.clamp"(%117) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %119 = "tosa.transpose"(%118, %71) : (tensor<1x64x112x112xf32>, tensor<4xi64>) -> tensor<1x112x112x64xf32>
    %120 = "tosa.max_pool2d"(%119) {kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    %121 = "tosa.transpose"(%120, %72) : (tensor<1x56x56x64xf32>, tensor<4xi64>) -> tensor<1x64x56x56xf32>
    %122 = "tosa.sub"(%121, %67) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %123 = "tosa.mul"(%122, %114) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %124 = "tosa.mul"(%123, %67) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %125 = "tosa.add"(%124, %67) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %126 = "tosa.clamp"(%125) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %127 = "tosa.transpose"(%126, %71) : (tensor<1x64x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x64xf32>
    %128 = "tosa.conv2d"(%127, %65, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<128x1x1x64xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %129 = "tosa.transpose"(%128, %72) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %130 = "tosa.sub"(%129, %63) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %131 = "tosa.add"(%63, %66) : (tensor<1x128x1x1xf32>, tensor<f32>) -> tensor<1x128x1x1xf32>
    %132 = "tosa.rsqrt"(%131) : (tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %133 = "tosa.mul"(%130, %132) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %134 = "tosa.mul"(%133, %63) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %135 = "tosa.add"(%134, %63) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %136 = "tosa.clamp"(%135) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %137 = "tosa.transpose"(%136, %71) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %138 = "tosa.conv2d"(%137, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %139 = "tosa.transpose"(%138, %72) : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice = tensor.insert_slice %121 into %cst[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x96x56x56xf32>
    %inserted_slice_101 = tensor.insert_slice %139 into %inserted_slice[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x96x56x56xf32>
    %140 = "tosa.sub"(%inserted_slice_101, %60) : (tensor<1x96x56x56xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x56x56xf32>
    %141 = "tosa.add"(%60, %66) : (tensor<1x96x1x1xf32>, tensor<f32>) -> tensor<1x96x1x1xf32>
    %142 = "tosa.rsqrt"(%141) : (tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %143 = "tosa.mul"(%140, %142) {shift = 0 : i32} : (tensor<1x96x56x56xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x56x56xf32>
    %144 = "tosa.mul"(%143, %60) {shift = 0 : i32} : (tensor<1x96x56x56xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x56x56xf32>
    %145 = "tosa.add"(%144, %60) : (tensor<1x96x56x56xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x56x56xf32>
    %146 = "tosa.clamp"(%145) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x56x56xf32>) -> tensor<1x96x56x56xf32>
    %147 = "tosa.transpose"(%146, %71) : (tensor<1x96x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x96xf32>
    %148 = "tosa.conv2d"(%147, %59, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x96xf32>, tensor<128x1x1x96xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %149 = "tosa.transpose"(%148, %72) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %150 = "tosa.sub"(%149, %63) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %151 = "tosa.mul"(%150, %132) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %152 = "tosa.mul"(%151, %63) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %153 = "tosa.add"(%152, %63) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %154 = "tosa.clamp"(%153) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %155 = "tosa.transpose"(%154, %71) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %156 = "tosa.conv2d"(%155, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %157 = "tosa.transpose"(%156, %72) : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice_102 = tensor.insert_slice %121 into %cst_0[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x128x56x56xf32>
    %inserted_slice_103 = tensor.insert_slice %139 into %inserted_slice_102[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x128x56x56xf32>
    %inserted_slice_104 = tensor.insert_slice %157 into %inserted_slice_103[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x128x56x56xf32>
    %158 = "tosa.sub"(%inserted_slice_104, %63) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %159 = "tosa.mul"(%158, %132) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %160 = "tosa.mul"(%159, %63) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %161 = "tosa.add"(%160, %63) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %162 = "tosa.clamp"(%161) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %163 = "tosa.transpose"(%162, %71) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %164 = "tosa.conv2d"(%163, %104, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x1x1x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %165 = "tosa.transpose"(%164, %72) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %166 = "tosa.sub"(%165, %63) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %167 = "tosa.mul"(%166, %132) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %168 = "tosa.mul"(%167, %63) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %169 = "tosa.add"(%168, %63) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %170 = "tosa.clamp"(%169) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %171 = "tosa.transpose"(%170, %71) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %172 = "tosa.conv2d"(%171, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %173 = "tosa.transpose"(%172, %72) : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice_105 = tensor.insert_slice %121 into %cst_1[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x160x56x56xf32>
    %inserted_slice_106 = tensor.insert_slice %139 into %inserted_slice_105[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x160x56x56xf32>
    %inserted_slice_107 = tensor.insert_slice %157 into %inserted_slice_106[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x160x56x56xf32>
    %inserted_slice_108 = tensor.insert_slice %173 into %inserted_slice_107[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x160x56x56xf32>
    %174 = "tosa.sub"(%inserted_slice_108, %58) : (tensor<1x160x56x56xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x56x56xf32>
    %175 = "tosa.add"(%58, %66) : (tensor<1x160x1x1xf32>, tensor<f32>) -> tensor<1x160x1x1xf32>
    %176 = "tosa.rsqrt"(%175) : (tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %177 = "tosa.mul"(%174, %176) {shift = 0 : i32} : (tensor<1x160x56x56xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x56x56xf32>
    %178 = "tosa.mul"(%177, %58) {shift = 0 : i32} : (tensor<1x160x56x56xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x56x56xf32>
    %179 = "tosa.add"(%178, %58) : (tensor<1x160x56x56xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x56x56xf32>
    %180 = "tosa.clamp"(%179) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x56x56xf32>) -> tensor<1x160x56x56xf32>
    %181 = "tosa.transpose"(%180, %71) : (tensor<1x160x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x160xf32>
    %182 = "tosa.conv2d"(%181, %57, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x160xf32>, tensor<128x1x1x160xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %183 = "tosa.transpose"(%182, %72) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %184 = "tosa.sub"(%183, %63) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %185 = "tosa.mul"(%184, %132) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %186 = "tosa.mul"(%185, %63) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %187 = "tosa.add"(%186, %63) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %188 = "tosa.clamp"(%187) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %189 = "tosa.transpose"(%188, %71) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %190 = "tosa.conv2d"(%189, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %191 = "tosa.transpose"(%190, %72) : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice_109 = tensor.insert_slice %121 into %cst_2[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x192x56x56xf32>
    %inserted_slice_110 = tensor.insert_slice %139 into %inserted_slice_109[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x192x56x56xf32>
    %inserted_slice_111 = tensor.insert_slice %157 into %inserted_slice_110[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x192x56x56xf32>
    %inserted_slice_112 = tensor.insert_slice %173 into %inserted_slice_111[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x192x56x56xf32>
    %inserted_slice_113 = tensor.insert_slice %191 into %inserted_slice_112[0, 160, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x192x56x56xf32>
    %192 = "tosa.sub"(%inserted_slice_113, %56) : (tensor<1x192x56x56xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x56x56xf32>
    %193 = "tosa.add"(%56, %66) : (tensor<1x192x1x1xf32>, tensor<f32>) -> tensor<1x192x1x1xf32>
    %194 = "tosa.rsqrt"(%193) : (tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %195 = "tosa.mul"(%192, %194) {shift = 0 : i32} : (tensor<1x192x56x56xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x56x56xf32>
    %196 = "tosa.mul"(%195, %56) {shift = 0 : i32} : (tensor<1x192x56x56xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x56x56xf32>
    %197 = "tosa.add"(%196, %56) : (tensor<1x192x56x56xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x56x56xf32>
    %198 = "tosa.clamp"(%197) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x56x56xf32>) -> tensor<1x192x56x56xf32>
    %199 = "tosa.transpose"(%198, %71) : (tensor<1x192x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x192xf32>
    %200 = "tosa.conv2d"(%199, %55, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x192xf32>, tensor<128x1x1x192xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %201 = "tosa.transpose"(%200, %72) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %202 = "tosa.sub"(%201, %63) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %203 = "tosa.mul"(%202, %132) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %204 = "tosa.mul"(%203, %63) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %205 = "tosa.add"(%204, %63) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %206 = "tosa.clamp"(%205) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %207 = "tosa.transpose"(%206, %71) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %208 = "tosa.conv2d"(%207, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %209 = "tosa.transpose"(%208, %72) : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice_114 = tensor.insert_slice %121 into %cst_3[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x224x56x56xf32>
    %inserted_slice_115 = tensor.insert_slice %139 into %inserted_slice_114[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x224x56x56xf32>
    %inserted_slice_116 = tensor.insert_slice %157 into %inserted_slice_115[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x224x56x56xf32>
    %inserted_slice_117 = tensor.insert_slice %173 into %inserted_slice_116[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x224x56x56xf32>
    %inserted_slice_118 = tensor.insert_slice %191 into %inserted_slice_117[0, 160, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x224x56x56xf32>
    %inserted_slice_119 = tensor.insert_slice %209 into %inserted_slice_118[0, 192, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x224x56x56xf32>
    %210 = "tosa.sub"(%inserted_slice_119, %54) : (tensor<1x224x56x56xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x56x56xf32>
    %211 = "tosa.add"(%54, %66) : (tensor<1x224x1x1xf32>, tensor<f32>) -> tensor<1x224x1x1xf32>
    %212 = "tosa.rsqrt"(%211) : (tensor<1x224x1x1xf32>) -> tensor<1x224x1x1xf32>
    %213 = "tosa.mul"(%210, %212) {shift = 0 : i32} : (tensor<1x224x56x56xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x56x56xf32>
    %214 = "tosa.mul"(%213, %54) {shift = 0 : i32} : (tensor<1x224x56x56xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x56x56xf32>
    %215 = "tosa.add"(%214, %54) : (tensor<1x224x56x56xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x56x56xf32>
    %216 = "tosa.clamp"(%215) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x224x56x56xf32>) -> tensor<1x224x56x56xf32>
    %217 = "tosa.transpose"(%216, %71) : (tensor<1x224x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x224xf32>
    %218 = "tosa.conv2d"(%217, %53, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x224xf32>, tensor<128x1x1x224xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %219 = "tosa.transpose"(%218, %72) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %220 = "tosa.sub"(%219, %63) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %221 = "tosa.mul"(%220, %132) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %222 = "tosa.mul"(%221, %63) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %223 = "tosa.add"(%222, %63) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %224 = "tosa.clamp"(%223) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %225 = "tosa.transpose"(%224, %71) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %226 = "tosa.conv2d"(%225, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x56x56x32xf32>
    %227 = "tosa.transpose"(%226, %72) : (tensor<1x56x56x32xf32>, tensor<4xi64>) -> tensor<1x32x56x56xf32>
    %inserted_slice_120 = tensor.insert_slice %121 into %cst_4[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x64x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_121 = tensor.insert_slice %139 into %inserted_slice_120[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_122 = tensor.insert_slice %157 into %inserted_slice_121[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_123 = tensor.insert_slice %173 into %inserted_slice_122[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_124 = tensor.insert_slice %191 into %inserted_slice_123[0, 160, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_125 = tensor.insert_slice %209 into %inserted_slice_124[0, 192, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %inserted_slice_126 = tensor.insert_slice %227 into %inserted_slice_125[0, 224, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x32x56x56xf32> into tensor<1x256x56x56xf32>
    %228 = "tosa.sub"(%inserted_slice_126, %52) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %229 = "tosa.add"(%52, %66) : (tensor<1x256x1x1xf32>, tensor<f32>) -> tensor<1x256x1x1xf32>
    %230 = "tosa.rsqrt"(%229) : (tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %231 = "tosa.mul"(%228, %230) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %232 = "tosa.mul"(%231, %52) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %233 = "tosa.add"(%232, %52) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %234 = "tosa.clamp"(%233) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %235 = "tosa.transpose"(%234, %71) : (tensor<1x256x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x256xf32>
    %236 = "tosa.conv2d"(%235, %51, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %237 = "tosa.avg_pool2d"(%236) {acc_type = f32, kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x128xf32>) -> tensor<1x28x28x128xf32>
    %238 = "tosa.transpose"(%237, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %239 = "tosa.sub"(%238, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %240 = "tosa.mul"(%239, %132) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %241 = "tosa.mul"(%240, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %242 = "tosa.add"(%241, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %243 = "tosa.clamp"(%242) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %244 = "tosa.transpose"(%243, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %245 = "tosa.conv2d"(%244, %104, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x1x1x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %246 = "tosa.transpose"(%245, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %247 = "tosa.sub"(%246, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %248 = "tosa.mul"(%247, %132) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %249 = "tosa.mul"(%248, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %250 = "tosa.add"(%249, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %251 = "tosa.clamp"(%250) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %252 = "tosa.transpose"(%251, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %253 = "tosa.conv2d"(%252, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %254 = "tosa.transpose"(%253, %72) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_127 = tensor.insert_slice %238 into %cst_5[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x160x28x28xf32>
    %inserted_slice_128 = tensor.insert_slice %254 into %inserted_slice_127[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x160x28x28xf32>
    %255 = "tosa.sub"(%inserted_slice_128, %58) : (tensor<1x160x28x28xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x28x28xf32>
    %256 = "tosa.mul"(%255, %176) {shift = 0 : i32} : (tensor<1x160x28x28xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x28x28xf32>
    %257 = "tosa.mul"(%256, %58) {shift = 0 : i32} : (tensor<1x160x28x28xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x28x28xf32>
    %258 = "tosa.add"(%257, %58) : (tensor<1x160x28x28xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x28x28xf32>
    %259 = "tosa.clamp"(%258) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x28x28xf32>) -> tensor<1x160x28x28xf32>
    %260 = "tosa.transpose"(%259, %71) : (tensor<1x160x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x160xf32>
    %261 = "tosa.conv2d"(%260, %57, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x160xf32>, tensor<128x1x1x160xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %262 = "tosa.transpose"(%261, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %263 = "tosa.sub"(%262, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %264 = "tosa.mul"(%263, %132) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %265 = "tosa.mul"(%264, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %266 = "tosa.add"(%265, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %267 = "tosa.clamp"(%266) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %268 = "tosa.transpose"(%267, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %269 = "tosa.conv2d"(%268, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %270 = "tosa.transpose"(%269, %72) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_129 = tensor.insert_slice %238 into %cst_6[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x192x28x28xf32>
    %inserted_slice_130 = tensor.insert_slice %254 into %inserted_slice_129[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x192x28x28xf32>
    %inserted_slice_131 = tensor.insert_slice %270 into %inserted_slice_130[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x192x28x28xf32>
    %271 = "tosa.sub"(%inserted_slice_131, %56) : (tensor<1x192x28x28xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x28x28xf32>
    %272 = "tosa.mul"(%271, %194) {shift = 0 : i32} : (tensor<1x192x28x28xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x28x28xf32>
    %273 = "tosa.mul"(%272, %56) {shift = 0 : i32} : (tensor<1x192x28x28xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x28x28xf32>
    %274 = "tosa.add"(%273, %56) : (tensor<1x192x28x28xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x28x28xf32>
    %275 = "tosa.clamp"(%274) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x28x28xf32>) -> tensor<1x192x28x28xf32>
    %276 = "tosa.transpose"(%275, %71) : (tensor<1x192x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x192xf32>
    %277 = "tosa.conv2d"(%276, %55, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x192xf32>, tensor<128x1x1x192xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %278 = "tosa.transpose"(%277, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %279 = "tosa.sub"(%278, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %280 = "tosa.mul"(%279, %132) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %281 = "tosa.mul"(%280, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %282 = "tosa.add"(%281, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %283 = "tosa.clamp"(%282) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %284 = "tosa.transpose"(%283, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %285 = "tosa.conv2d"(%284, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %286 = "tosa.transpose"(%285, %72) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_132 = tensor.insert_slice %238 into %cst_7[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x224x28x28xf32>
    %inserted_slice_133 = tensor.insert_slice %254 into %inserted_slice_132[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x224x28x28xf32>
    %inserted_slice_134 = tensor.insert_slice %270 into %inserted_slice_133[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x224x28x28xf32>
    %inserted_slice_135 = tensor.insert_slice %286 into %inserted_slice_134[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x224x28x28xf32>
    %287 = "tosa.sub"(%inserted_slice_135, %54) : (tensor<1x224x28x28xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x28x28xf32>
    %288 = "tosa.mul"(%287, %212) {shift = 0 : i32} : (tensor<1x224x28x28xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x28x28xf32>
    %289 = "tosa.mul"(%288, %54) {shift = 0 : i32} : (tensor<1x224x28x28xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x28x28xf32>
    %290 = "tosa.add"(%289, %54) : (tensor<1x224x28x28xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x28x28xf32>
    %291 = "tosa.clamp"(%290) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x224x28x28xf32>) -> tensor<1x224x28x28xf32>
    %292 = "tosa.transpose"(%291, %71) : (tensor<1x224x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x224xf32>
    %293 = "tosa.conv2d"(%292, %53, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x224xf32>, tensor<128x1x1x224xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %294 = "tosa.transpose"(%293, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %295 = "tosa.sub"(%294, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %296 = "tosa.mul"(%295, %132) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %297 = "tosa.mul"(%296, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %298 = "tosa.add"(%297, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %299 = "tosa.clamp"(%298) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %300 = "tosa.transpose"(%299, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %301 = "tosa.conv2d"(%300, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %302 = "tosa.transpose"(%301, %72) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_136 = tensor.insert_slice %238 into %cst_8[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x256x28x28xf32>
    %inserted_slice_137 = tensor.insert_slice %254 into %inserted_slice_136[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x256x28x28xf32>
    %inserted_slice_138 = tensor.insert_slice %270 into %inserted_slice_137[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x256x28x28xf32>
    %inserted_slice_139 = tensor.insert_slice %286 into %inserted_slice_138[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x256x28x28xf32>
    %inserted_slice_140 = tensor.insert_slice %302 into %inserted_slice_139[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x256x28x28xf32>
    %303 = "tosa.sub"(%inserted_slice_140, %52) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %304 = "tosa.mul"(%303, %230) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %305 = "tosa.mul"(%304, %52) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %306 = "tosa.add"(%305, %52) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %307 = "tosa.clamp"(%306) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %308 = "tosa.transpose"(%307, %71) : (tensor<1x256x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x256xf32>
    %309 = "tosa.conv2d"(%308, %51, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %310 = "tosa.transpose"(%309, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %311 = "tosa.sub"(%310, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %312 = "tosa.mul"(%311, %132) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %313 = "tosa.mul"(%312, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %314 = "tosa.add"(%313, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %315 = "tosa.clamp"(%314) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %316 = "tosa.transpose"(%315, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %317 = "tosa.conv2d"(%316, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %318 = "tosa.transpose"(%317, %72) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_141 = tensor.insert_slice %238 into %cst_9[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x288x28x28xf32>
    %inserted_slice_142 = tensor.insert_slice %254 into %inserted_slice_141[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x288x28x28xf32>
    %inserted_slice_143 = tensor.insert_slice %270 into %inserted_slice_142[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x288x28x28xf32>
    %inserted_slice_144 = tensor.insert_slice %286 into %inserted_slice_143[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x288x28x28xf32>
    %inserted_slice_145 = tensor.insert_slice %302 into %inserted_slice_144[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x288x28x28xf32>
    %inserted_slice_146 = tensor.insert_slice %318 into %inserted_slice_145[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x288x28x28xf32>
    %319 = "tosa.sub"(%inserted_slice_146, %50) : (tensor<1x288x28x28xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x28x28xf32>
    %320 = "tosa.add"(%50, %66) : (tensor<1x288x1x1xf32>, tensor<f32>) -> tensor<1x288x1x1xf32>
    %321 = "tosa.rsqrt"(%320) : (tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %322 = "tosa.mul"(%319, %321) {shift = 0 : i32} : (tensor<1x288x28x28xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x28x28xf32>
    %323 = "tosa.mul"(%322, %50) {shift = 0 : i32} : (tensor<1x288x28x28xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x28x28xf32>
    %324 = "tosa.add"(%323, %50) : (tensor<1x288x28x28xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x28x28xf32>
    %325 = "tosa.clamp"(%324) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x288x28x28xf32>) -> tensor<1x288x28x28xf32>
    %326 = "tosa.transpose"(%325, %71) : (tensor<1x288x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x288xf32>
    %327 = "tosa.conv2d"(%326, %49, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x288xf32>, tensor<128x1x1x288xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %328 = "tosa.transpose"(%327, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %329 = "tosa.sub"(%328, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %330 = "tosa.mul"(%329, %132) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %331 = "tosa.mul"(%330, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %332 = "tosa.add"(%331, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %333 = "tosa.clamp"(%332) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %334 = "tosa.transpose"(%333, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %335 = "tosa.conv2d"(%334, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %336 = "tosa.transpose"(%335, %72) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_147 = tensor.insert_slice %238 into %cst_10[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_148 = tensor.insert_slice %254 into %inserted_slice_147[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_149 = tensor.insert_slice %270 into %inserted_slice_148[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_150 = tensor.insert_slice %286 into %inserted_slice_149[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_151 = tensor.insert_slice %302 into %inserted_slice_150[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_152 = tensor.insert_slice %318 into %inserted_slice_151[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %inserted_slice_153 = tensor.insert_slice %336 into %inserted_slice_152[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x320x28x28xf32>
    %337 = "tosa.sub"(%inserted_slice_153, %48) : (tensor<1x320x28x28xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x28x28xf32>
    %338 = "tosa.add"(%48, %66) : (tensor<1x320x1x1xf32>, tensor<f32>) -> tensor<1x320x1x1xf32>
    %339 = "tosa.rsqrt"(%338) : (tensor<1x320x1x1xf32>) -> tensor<1x320x1x1xf32>
    %340 = "tosa.mul"(%337, %339) {shift = 0 : i32} : (tensor<1x320x28x28xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x28x28xf32>
    %341 = "tosa.mul"(%340, %48) {shift = 0 : i32} : (tensor<1x320x28x28xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x28x28xf32>
    %342 = "tosa.add"(%341, %48) : (tensor<1x320x28x28xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x28x28xf32>
    %343 = "tosa.clamp"(%342) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x320x28x28xf32>) -> tensor<1x320x28x28xf32>
    %344 = "tosa.transpose"(%343, %71) : (tensor<1x320x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x320xf32>
    %345 = "tosa.conv2d"(%344, %47, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x320xf32>, tensor<128x1x1x320xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %346 = "tosa.transpose"(%345, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %347 = "tosa.sub"(%346, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %348 = "tosa.mul"(%347, %132) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %349 = "tosa.mul"(%348, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %350 = "tosa.add"(%349, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %351 = "tosa.clamp"(%350) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %352 = "tosa.transpose"(%351, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %353 = "tosa.conv2d"(%352, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %354 = "tosa.transpose"(%353, %72) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_154 = tensor.insert_slice %238 into %cst_11[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_155 = tensor.insert_slice %254 into %inserted_slice_154[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_156 = tensor.insert_slice %270 into %inserted_slice_155[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_157 = tensor.insert_slice %286 into %inserted_slice_156[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_158 = tensor.insert_slice %302 into %inserted_slice_157[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_159 = tensor.insert_slice %318 into %inserted_slice_158[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_160 = tensor.insert_slice %336 into %inserted_slice_159[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %inserted_slice_161 = tensor.insert_slice %354 into %inserted_slice_160[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x352x28x28xf32>
    %355 = "tosa.sub"(%inserted_slice_161, %46) : (tensor<1x352x28x28xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x28x28xf32>
    %356 = "tosa.add"(%46, %66) : (tensor<1x352x1x1xf32>, tensor<f32>) -> tensor<1x352x1x1xf32>
    %357 = "tosa.rsqrt"(%356) : (tensor<1x352x1x1xf32>) -> tensor<1x352x1x1xf32>
    %358 = "tosa.mul"(%355, %357) {shift = 0 : i32} : (tensor<1x352x28x28xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x28x28xf32>
    %359 = "tosa.mul"(%358, %46) {shift = 0 : i32} : (tensor<1x352x28x28xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x28x28xf32>
    %360 = "tosa.add"(%359, %46) : (tensor<1x352x28x28xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x28x28xf32>
    %361 = "tosa.clamp"(%360) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x352x28x28xf32>) -> tensor<1x352x28x28xf32>
    %362 = "tosa.transpose"(%361, %71) : (tensor<1x352x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x352xf32>
    %363 = "tosa.conv2d"(%362, %45, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x352xf32>, tensor<128x1x1x352xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %364 = "tosa.transpose"(%363, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %365 = "tosa.sub"(%364, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %366 = "tosa.mul"(%365, %132) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %367 = "tosa.mul"(%366, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %368 = "tosa.add"(%367, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %369 = "tosa.clamp"(%368) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %370 = "tosa.transpose"(%369, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %371 = "tosa.conv2d"(%370, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %372 = "tosa.transpose"(%371, %72) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_162 = tensor.insert_slice %238 into %cst_12[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_163 = tensor.insert_slice %254 into %inserted_slice_162[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_164 = tensor.insert_slice %270 into %inserted_slice_163[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_165 = tensor.insert_slice %286 into %inserted_slice_164[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_166 = tensor.insert_slice %302 into %inserted_slice_165[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_167 = tensor.insert_slice %318 into %inserted_slice_166[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_168 = tensor.insert_slice %336 into %inserted_slice_167[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_169 = tensor.insert_slice %354 into %inserted_slice_168[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %inserted_slice_170 = tensor.insert_slice %372 into %inserted_slice_169[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x384x28x28xf32>
    %373 = "tosa.sub"(%inserted_slice_170, %44) : (tensor<1x384x28x28xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x28x28xf32>
    %374 = "tosa.add"(%44, %66) : (tensor<1x384x1x1xf32>, tensor<f32>) -> tensor<1x384x1x1xf32>
    %375 = "tosa.rsqrt"(%374) : (tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %376 = "tosa.mul"(%373, %375) {shift = 0 : i32} : (tensor<1x384x28x28xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x28x28xf32>
    %377 = "tosa.mul"(%376, %44) {shift = 0 : i32} : (tensor<1x384x28x28xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x28x28xf32>
    %378 = "tosa.add"(%377, %44) : (tensor<1x384x28x28xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x28x28xf32>
    %379 = "tosa.clamp"(%378) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x28x28xf32>) -> tensor<1x384x28x28xf32>
    %380 = "tosa.transpose"(%379, %71) : (tensor<1x384x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x384xf32>
    %381 = "tosa.conv2d"(%380, %43, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x384xf32>, tensor<128x1x1x384xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %382 = "tosa.transpose"(%381, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %383 = "tosa.sub"(%382, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %384 = "tosa.mul"(%383, %132) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %385 = "tosa.mul"(%384, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %386 = "tosa.add"(%385, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %387 = "tosa.clamp"(%386) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %388 = "tosa.transpose"(%387, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %389 = "tosa.conv2d"(%388, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %390 = "tosa.transpose"(%389, %72) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_171 = tensor.insert_slice %238 into %cst_13[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_172 = tensor.insert_slice %254 into %inserted_slice_171[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_173 = tensor.insert_slice %270 into %inserted_slice_172[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_174 = tensor.insert_slice %286 into %inserted_slice_173[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_175 = tensor.insert_slice %302 into %inserted_slice_174[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_176 = tensor.insert_slice %318 into %inserted_slice_175[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_177 = tensor.insert_slice %336 into %inserted_slice_176[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_178 = tensor.insert_slice %354 into %inserted_slice_177[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_179 = tensor.insert_slice %372 into %inserted_slice_178[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %inserted_slice_180 = tensor.insert_slice %390 into %inserted_slice_179[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x416x28x28xf32>
    %391 = "tosa.sub"(%inserted_slice_180, %42) : (tensor<1x416x28x28xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x28x28xf32>
    %392 = "tosa.add"(%42, %66) : (tensor<1x416x1x1xf32>, tensor<f32>) -> tensor<1x416x1x1xf32>
    %393 = "tosa.rsqrt"(%392) : (tensor<1x416x1x1xf32>) -> tensor<1x416x1x1xf32>
    %394 = "tosa.mul"(%391, %393) {shift = 0 : i32} : (tensor<1x416x28x28xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x28x28xf32>
    %395 = "tosa.mul"(%394, %42) {shift = 0 : i32} : (tensor<1x416x28x28xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x28x28xf32>
    %396 = "tosa.add"(%395, %42) : (tensor<1x416x28x28xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x28x28xf32>
    %397 = "tosa.clamp"(%396) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x416x28x28xf32>) -> tensor<1x416x28x28xf32>
    %398 = "tosa.transpose"(%397, %71) : (tensor<1x416x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x416xf32>
    %399 = "tosa.conv2d"(%398, %41, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x416xf32>, tensor<128x1x1x416xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %400 = "tosa.transpose"(%399, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %401 = "tosa.sub"(%400, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %402 = "tosa.mul"(%401, %132) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %403 = "tosa.mul"(%402, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %404 = "tosa.add"(%403, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %405 = "tosa.clamp"(%404) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %406 = "tosa.transpose"(%405, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %407 = "tosa.conv2d"(%406, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %408 = "tosa.transpose"(%407, %72) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_181 = tensor.insert_slice %238 into %cst_14[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_182 = tensor.insert_slice %254 into %inserted_slice_181[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_183 = tensor.insert_slice %270 into %inserted_slice_182[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_184 = tensor.insert_slice %286 into %inserted_slice_183[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_185 = tensor.insert_slice %302 into %inserted_slice_184[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_186 = tensor.insert_slice %318 into %inserted_slice_185[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_187 = tensor.insert_slice %336 into %inserted_slice_186[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_188 = tensor.insert_slice %354 into %inserted_slice_187[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_189 = tensor.insert_slice %372 into %inserted_slice_188[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_190 = tensor.insert_slice %390 into %inserted_slice_189[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %inserted_slice_191 = tensor.insert_slice %408 into %inserted_slice_190[0, 416, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x448x28x28xf32>
    %409 = "tosa.sub"(%inserted_slice_191, %40) : (tensor<1x448x28x28xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x28x28xf32>
    %410 = "tosa.add"(%40, %66) : (tensor<1x448x1x1xf32>, tensor<f32>) -> tensor<1x448x1x1xf32>
    %411 = "tosa.rsqrt"(%410) : (tensor<1x448x1x1xf32>) -> tensor<1x448x1x1xf32>
    %412 = "tosa.mul"(%409, %411) {shift = 0 : i32} : (tensor<1x448x28x28xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x28x28xf32>
    %413 = "tosa.mul"(%412, %40) {shift = 0 : i32} : (tensor<1x448x28x28xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x28x28xf32>
    %414 = "tosa.add"(%413, %40) : (tensor<1x448x28x28xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x28x28xf32>
    %415 = "tosa.clamp"(%414) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x448x28x28xf32>) -> tensor<1x448x28x28xf32>
    %416 = "tosa.transpose"(%415, %71) : (tensor<1x448x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x448xf32>
    %417 = "tosa.conv2d"(%416, %39, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x448xf32>, tensor<128x1x1x448xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %418 = "tosa.transpose"(%417, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %419 = "tosa.sub"(%418, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %420 = "tosa.mul"(%419, %132) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %421 = "tosa.mul"(%420, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %422 = "tosa.add"(%421, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %423 = "tosa.clamp"(%422) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %424 = "tosa.transpose"(%423, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %425 = "tosa.conv2d"(%424, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %426 = "tosa.transpose"(%425, %72) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_192 = tensor.insert_slice %238 into %cst_15[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_193 = tensor.insert_slice %254 into %inserted_slice_192[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_194 = tensor.insert_slice %270 into %inserted_slice_193[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_195 = tensor.insert_slice %286 into %inserted_slice_194[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_196 = tensor.insert_slice %302 into %inserted_slice_195[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_197 = tensor.insert_slice %318 into %inserted_slice_196[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_198 = tensor.insert_slice %336 into %inserted_slice_197[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_199 = tensor.insert_slice %354 into %inserted_slice_198[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_200 = tensor.insert_slice %372 into %inserted_slice_199[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_201 = tensor.insert_slice %390 into %inserted_slice_200[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_202 = tensor.insert_slice %408 into %inserted_slice_201[0, 416, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %inserted_slice_203 = tensor.insert_slice %426 into %inserted_slice_202[0, 448, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x480x28x28xf32>
    %427 = "tosa.sub"(%inserted_slice_203, %38) : (tensor<1x480x28x28xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x28x28xf32>
    %428 = "tosa.add"(%38, %66) : (tensor<1x480x1x1xf32>, tensor<f32>) -> tensor<1x480x1x1xf32>
    %429 = "tosa.rsqrt"(%428) : (tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %430 = "tosa.mul"(%427, %429) {shift = 0 : i32} : (tensor<1x480x28x28xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x28x28xf32>
    %431 = "tosa.mul"(%430, %38) {shift = 0 : i32} : (tensor<1x480x28x28xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x28x28xf32>
    %432 = "tosa.add"(%431, %38) : (tensor<1x480x28x28xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x28x28xf32>
    %433 = "tosa.clamp"(%432) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x480x28x28xf32>) -> tensor<1x480x28x28xf32>
    %434 = "tosa.transpose"(%433, %71) : (tensor<1x480x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x480xf32>
    %435 = "tosa.conv2d"(%434, %37, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x480xf32>, tensor<128x1x1x480xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %436 = "tosa.transpose"(%435, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %437 = "tosa.sub"(%436, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %438 = "tosa.mul"(%437, %132) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %439 = "tosa.mul"(%438, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %440 = "tosa.add"(%439, %63) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %441 = "tosa.clamp"(%440) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %442 = "tosa.transpose"(%441, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %443 = "tosa.conv2d"(%442, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x28x28x32xf32>
    %444 = "tosa.transpose"(%443, %72) : (tensor<1x28x28x32xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %inserted_slice_204 = tensor.insert_slice %238 into %cst_16[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x128x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_205 = tensor.insert_slice %254 into %inserted_slice_204[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_206 = tensor.insert_slice %270 into %inserted_slice_205[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_207 = tensor.insert_slice %286 into %inserted_slice_206[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_208 = tensor.insert_slice %302 into %inserted_slice_207[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_209 = tensor.insert_slice %318 into %inserted_slice_208[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_210 = tensor.insert_slice %336 into %inserted_slice_209[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_211 = tensor.insert_slice %354 into %inserted_slice_210[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_212 = tensor.insert_slice %372 into %inserted_slice_211[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_213 = tensor.insert_slice %390 into %inserted_slice_212[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_214 = tensor.insert_slice %408 into %inserted_slice_213[0, 416, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_215 = tensor.insert_slice %426 into %inserted_slice_214[0, 448, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %inserted_slice_216 = tensor.insert_slice %444 into %inserted_slice_215[0, 480, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x32x28x28xf32> into tensor<1x512x28x28xf32>
    %445 = "tosa.sub"(%inserted_slice_216, %36) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %446 = "tosa.add"(%36, %66) : (tensor<1x512x1x1xf32>, tensor<f32>) -> tensor<1x512x1x1xf32>
    %447 = "tosa.rsqrt"(%446) : (tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %448 = "tosa.mul"(%445, %447) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %449 = "tosa.mul"(%448, %36) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %450 = "tosa.add"(%449, %36) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %451 = "tosa.clamp"(%450) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %452 = "tosa.transpose"(%451, %71) : (tensor<1x512x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x512xf32>
    %453 = "tosa.conv2d"(%452, %35, %34) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %454 = "tosa.avg_pool2d"(%453) {acc_type = f32, kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x256xf32>) -> tensor<1x14x14x256xf32>
    %455 = "tosa.transpose"(%454, %72) : (tensor<1x14x14x256xf32>, tensor<4xi64>) -> tensor<1x256x14x14xf32>
    %456 = "tosa.sub"(%455, %52) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %457 = "tosa.mul"(%456, %230) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %458 = "tosa.mul"(%457, %52) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %459 = "tosa.add"(%458, %52) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %460 = "tosa.clamp"(%459) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %461 = "tosa.transpose"(%460, %71) : (tensor<1x256x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x256xf32>
    %462 = "tosa.conv2d"(%461, %51, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %463 = "tosa.transpose"(%462, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %464 = "tosa.sub"(%463, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %465 = "tosa.mul"(%464, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %466 = "tosa.mul"(%465, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %467 = "tosa.add"(%466, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %468 = "tosa.clamp"(%467) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %469 = "tosa.transpose"(%468, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %470 = "tosa.conv2d"(%469, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %471 = "tosa.transpose"(%470, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_217 = tensor.insert_slice %455 into %cst_17[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x288x14x14xf32>
    %inserted_slice_218 = tensor.insert_slice %471 into %inserted_slice_217[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x288x14x14xf32>
    %472 = "tosa.sub"(%inserted_slice_218, %50) : (tensor<1x288x14x14xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x14x14xf32>
    %473 = "tosa.mul"(%472, %321) {shift = 0 : i32} : (tensor<1x288x14x14xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x14x14xf32>
    %474 = "tosa.mul"(%473, %50) {shift = 0 : i32} : (tensor<1x288x14x14xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x14x14xf32>
    %475 = "tosa.add"(%474, %50) : (tensor<1x288x14x14xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x14x14xf32>
    %476 = "tosa.clamp"(%475) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x288x14x14xf32>) -> tensor<1x288x14x14xf32>
    %477 = "tosa.transpose"(%476, %71) : (tensor<1x288x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x288xf32>
    %478 = "tosa.conv2d"(%477, %49, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x288xf32>, tensor<128x1x1x288xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %479 = "tosa.transpose"(%478, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %480 = "tosa.sub"(%479, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %481 = "tosa.mul"(%480, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %482 = "tosa.mul"(%481, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %483 = "tosa.add"(%482, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %484 = "tosa.clamp"(%483) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %485 = "tosa.transpose"(%484, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %486 = "tosa.conv2d"(%485, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %487 = "tosa.transpose"(%486, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_219 = tensor.insert_slice %455 into %cst_18[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x320x14x14xf32>
    %inserted_slice_220 = tensor.insert_slice %471 into %inserted_slice_219[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x320x14x14xf32>
    %inserted_slice_221 = tensor.insert_slice %487 into %inserted_slice_220[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x320x14x14xf32>
    %488 = "tosa.sub"(%inserted_slice_221, %48) : (tensor<1x320x14x14xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x14x14xf32>
    %489 = "tosa.mul"(%488, %339) {shift = 0 : i32} : (tensor<1x320x14x14xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x14x14xf32>
    %490 = "tosa.mul"(%489, %48) {shift = 0 : i32} : (tensor<1x320x14x14xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x14x14xf32>
    %491 = "tosa.add"(%490, %48) : (tensor<1x320x14x14xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x14x14xf32>
    %492 = "tosa.clamp"(%491) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x320x14x14xf32>) -> tensor<1x320x14x14xf32>
    %493 = "tosa.transpose"(%492, %71) : (tensor<1x320x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x320xf32>
    %494 = "tosa.conv2d"(%493, %47, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x320xf32>, tensor<128x1x1x320xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %495 = "tosa.transpose"(%494, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %496 = "tosa.sub"(%495, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %497 = "tosa.mul"(%496, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %498 = "tosa.mul"(%497, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %499 = "tosa.add"(%498, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %500 = "tosa.clamp"(%499) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %501 = "tosa.transpose"(%500, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %502 = "tosa.conv2d"(%501, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %503 = "tosa.transpose"(%502, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_222 = tensor.insert_slice %455 into %cst_19[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x352x14x14xf32>
    %inserted_slice_223 = tensor.insert_slice %471 into %inserted_slice_222[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x352x14x14xf32>
    %inserted_slice_224 = tensor.insert_slice %487 into %inserted_slice_223[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x352x14x14xf32>
    %inserted_slice_225 = tensor.insert_slice %503 into %inserted_slice_224[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x352x14x14xf32>
    %504 = "tosa.sub"(%inserted_slice_225, %46) : (tensor<1x352x14x14xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x14x14xf32>
    %505 = "tosa.mul"(%504, %357) {shift = 0 : i32} : (tensor<1x352x14x14xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x14x14xf32>
    %506 = "tosa.mul"(%505, %46) {shift = 0 : i32} : (tensor<1x352x14x14xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x14x14xf32>
    %507 = "tosa.add"(%506, %46) : (tensor<1x352x14x14xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x14x14xf32>
    %508 = "tosa.clamp"(%507) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x352x14x14xf32>) -> tensor<1x352x14x14xf32>
    %509 = "tosa.transpose"(%508, %71) : (tensor<1x352x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x352xf32>
    %510 = "tosa.conv2d"(%509, %45, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x352xf32>, tensor<128x1x1x352xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %511 = "tosa.transpose"(%510, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %512 = "tosa.sub"(%511, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %513 = "tosa.mul"(%512, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %514 = "tosa.mul"(%513, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %515 = "tosa.add"(%514, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %516 = "tosa.clamp"(%515) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %517 = "tosa.transpose"(%516, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %518 = "tosa.conv2d"(%517, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %519 = "tosa.transpose"(%518, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_226 = tensor.insert_slice %455 into %cst_20[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x384x14x14xf32>
    %inserted_slice_227 = tensor.insert_slice %471 into %inserted_slice_226[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x384x14x14xf32>
    %inserted_slice_228 = tensor.insert_slice %487 into %inserted_slice_227[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x384x14x14xf32>
    %inserted_slice_229 = tensor.insert_slice %503 into %inserted_slice_228[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x384x14x14xf32>
    %inserted_slice_230 = tensor.insert_slice %519 into %inserted_slice_229[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x384x14x14xf32>
    %520 = "tosa.sub"(%inserted_slice_230, %44) : (tensor<1x384x14x14xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x14x14xf32>
    %521 = "tosa.mul"(%520, %375) {shift = 0 : i32} : (tensor<1x384x14x14xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x14x14xf32>
    %522 = "tosa.mul"(%521, %44) {shift = 0 : i32} : (tensor<1x384x14x14xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x14x14xf32>
    %523 = "tosa.add"(%522, %44) : (tensor<1x384x14x14xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x14x14xf32>
    %524 = "tosa.clamp"(%523) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x14x14xf32>) -> tensor<1x384x14x14xf32>
    %525 = "tosa.transpose"(%524, %71) : (tensor<1x384x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x384xf32>
    %526 = "tosa.conv2d"(%525, %43, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x384xf32>, tensor<128x1x1x384xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %527 = "tosa.transpose"(%526, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %528 = "tosa.sub"(%527, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %529 = "tosa.mul"(%528, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %530 = "tosa.mul"(%529, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %531 = "tosa.add"(%530, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %532 = "tosa.clamp"(%531) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %533 = "tosa.transpose"(%532, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %534 = "tosa.conv2d"(%533, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %535 = "tosa.transpose"(%534, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_231 = tensor.insert_slice %455 into %cst_21[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x416x14x14xf32>
    %inserted_slice_232 = tensor.insert_slice %471 into %inserted_slice_231[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x416x14x14xf32>
    %inserted_slice_233 = tensor.insert_slice %487 into %inserted_slice_232[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x416x14x14xf32>
    %inserted_slice_234 = tensor.insert_slice %503 into %inserted_slice_233[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x416x14x14xf32>
    %inserted_slice_235 = tensor.insert_slice %519 into %inserted_slice_234[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x416x14x14xf32>
    %inserted_slice_236 = tensor.insert_slice %535 into %inserted_slice_235[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x416x14x14xf32>
    %536 = "tosa.sub"(%inserted_slice_236, %42) : (tensor<1x416x14x14xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x14x14xf32>
    %537 = "tosa.mul"(%536, %393) {shift = 0 : i32} : (tensor<1x416x14x14xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x14x14xf32>
    %538 = "tosa.mul"(%537, %42) {shift = 0 : i32} : (tensor<1x416x14x14xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x14x14xf32>
    %539 = "tosa.add"(%538, %42) : (tensor<1x416x14x14xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x14x14xf32>
    %540 = "tosa.clamp"(%539) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x416x14x14xf32>) -> tensor<1x416x14x14xf32>
    %541 = "tosa.transpose"(%540, %71) : (tensor<1x416x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x416xf32>
    %542 = "tosa.conv2d"(%541, %41, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x416xf32>, tensor<128x1x1x416xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %543 = "tosa.transpose"(%542, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %544 = "tosa.sub"(%543, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %545 = "tosa.mul"(%544, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %546 = "tosa.mul"(%545, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %547 = "tosa.add"(%546, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %548 = "tosa.clamp"(%547) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %549 = "tosa.transpose"(%548, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %550 = "tosa.conv2d"(%549, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %551 = "tosa.transpose"(%550, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_237 = tensor.insert_slice %455 into %cst_22[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_238 = tensor.insert_slice %471 into %inserted_slice_237[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_239 = tensor.insert_slice %487 into %inserted_slice_238[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_240 = tensor.insert_slice %503 into %inserted_slice_239[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_241 = tensor.insert_slice %519 into %inserted_slice_240[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_242 = tensor.insert_slice %535 into %inserted_slice_241[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %inserted_slice_243 = tensor.insert_slice %551 into %inserted_slice_242[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x448x14x14xf32>
    %552 = "tosa.sub"(%inserted_slice_243, %40) : (tensor<1x448x14x14xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x14x14xf32>
    %553 = "tosa.mul"(%552, %411) {shift = 0 : i32} : (tensor<1x448x14x14xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x14x14xf32>
    %554 = "tosa.mul"(%553, %40) {shift = 0 : i32} : (tensor<1x448x14x14xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x14x14xf32>
    %555 = "tosa.add"(%554, %40) : (tensor<1x448x14x14xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x14x14xf32>
    %556 = "tosa.clamp"(%555) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x448x14x14xf32>) -> tensor<1x448x14x14xf32>
    %557 = "tosa.transpose"(%556, %71) : (tensor<1x448x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x448xf32>
    %558 = "tosa.conv2d"(%557, %39, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x448xf32>, tensor<128x1x1x448xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %559 = "tosa.transpose"(%558, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %560 = "tosa.sub"(%559, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %561 = "tosa.mul"(%560, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %562 = "tosa.mul"(%561, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %563 = "tosa.add"(%562, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %564 = "tosa.clamp"(%563) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %565 = "tosa.transpose"(%564, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %566 = "tosa.conv2d"(%565, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %567 = "tosa.transpose"(%566, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_244 = tensor.insert_slice %455 into %cst_23[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_245 = tensor.insert_slice %471 into %inserted_slice_244[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_246 = tensor.insert_slice %487 into %inserted_slice_245[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_247 = tensor.insert_slice %503 into %inserted_slice_246[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_248 = tensor.insert_slice %519 into %inserted_slice_247[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_249 = tensor.insert_slice %535 into %inserted_slice_248[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_250 = tensor.insert_slice %551 into %inserted_slice_249[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %inserted_slice_251 = tensor.insert_slice %567 into %inserted_slice_250[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x480x14x14xf32>
    %568 = "tosa.sub"(%inserted_slice_251, %38) : (tensor<1x480x14x14xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x14x14xf32>
    %569 = "tosa.mul"(%568, %429) {shift = 0 : i32} : (tensor<1x480x14x14xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x14x14xf32>
    %570 = "tosa.mul"(%569, %38) {shift = 0 : i32} : (tensor<1x480x14x14xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x14x14xf32>
    %571 = "tosa.add"(%570, %38) : (tensor<1x480x14x14xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x14x14xf32>
    %572 = "tosa.clamp"(%571) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x480x14x14xf32>) -> tensor<1x480x14x14xf32>
    %573 = "tosa.transpose"(%572, %71) : (tensor<1x480x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x480xf32>
    %574 = "tosa.conv2d"(%573, %37, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x480xf32>, tensor<128x1x1x480xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %575 = "tosa.transpose"(%574, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %576 = "tosa.sub"(%575, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %577 = "tosa.mul"(%576, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %578 = "tosa.mul"(%577, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %579 = "tosa.add"(%578, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %580 = "tosa.clamp"(%579) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %581 = "tosa.transpose"(%580, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %582 = "tosa.conv2d"(%581, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %583 = "tosa.transpose"(%582, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_252 = tensor.insert_slice %455 into %cst_24[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_253 = tensor.insert_slice %471 into %inserted_slice_252[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_254 = tensor.insert_slice %487 into %inserted_slice_253[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_255 = tensor.insert_slice %503 into %inserted_slice_254[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_256 = tensor.insert_slice %519 into %inserted_slice_255[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_257 = tensor.insert_slice %535 into %inserted_slice_256[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_258 = tensor.insert_slice %551 into %inserted_slice_257[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_259 = tensor.insert_slice %567 into %inserted_slice_258[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %inserted_slice_260 = tensor.insert_slice %583 into %inserted_slice_259[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x512x14x14xf32>
    %584 = "tosa.sub"(%inserted_slice_260, %36) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %585 = "tosa.mul"(%584, %447) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %586 = "tosa.mul"(%585, %36) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %587 = "tosa.add"(%586, %36) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %588 = "tosa.clamp"(%587) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %589 = "tosa.transpose"(%588, %71) : (tensor<1x512x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x512xf32>
    %590 = "tosa.conv2d"(%589, %33, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %591 = "tosa.transpose"(%590, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %592 = "tosa.sub"(%591, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %593 = "tosa.mul"(%592, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %594 = "tosa.mul"(%593, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %595 = "tosa.add"(%594, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %596 = "tosa.clamp"(%595) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %597 = "tosa.transpose"(%596, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %598 = "tosa.conv2d"(%597, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %599 = "tosa.transpose"(%598, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_261 = tensor.insert_slice %455 into %cst_25[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_262 = tensor.insert_slice %471 into %inserted_slice_261[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_263 = tensor.insert_slice %487 into %inserted_slice_262[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_264 = tensor.insert_slice %503 into %inserted_slice_263[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_265 = tensor.insert_slice %519 into %inserted_slice_264[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_266 = tensor.insert_slice %535 into %inserted_slice_265[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_267 = tensor.insert_slice %551 into %inserted_slice_266[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_268 = tensor.insert_slice %567 into %inserted_slice_267[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_269 = tensor.insert_slice %583 into %inserted_slice_268[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %inserted_slice_270 = tensor.insert_slice %599 into %inserted_slice_269[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x544x14x14xf32>
    %600 = "tosa.sub"(%inserted_slice_270, %32) : (tensor<1x544x14x14xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x14x14xf32>
    %601 = "tosa.add"(%32, %66) : (tensor<1x544x1x1xf32>, tensor<f32>) -> tensor<1x544x1x1xf32>
    %602 = "tosa.rsqrt"(%601) : (tensor<1x544x1x1xf32>) -> tensor<1x544x1x1xf32>
    %603 = "tosa.mul"(%600, %602) {shift = 0 : i32} : (tensor<1x544x14x14xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x14x14xf32>
    %604 = "tosa.mul"(%603, %32) {shift = 0 : i32} : (tensor<1x544x14x14xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x14x14xf32>
    %605 = "tosa.add"(%604, %32) : (tensor<1x544x14x14xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x14x14xf32>
    %606 = "tosa.clamp"(%605) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x544x14x14xf32>) -> tensor<1x544x14x14xf32>
    %607 = "tosa.transpose"(%606, %71) : (tensor<1x544x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x544xf32>
    %608 = "tosa.conv2d"(%607, %31, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x544xf32>, tensor<128x1x1x544xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %609 = "tosa.transpose"(%608, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %610 = "tosa.sub"(%609, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %611 = "tosa.mul"(%610, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %612 = "tosa.mul"(%611, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %613 = "tosa.add"(%612, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %614 = "tosa.clamp"(%613) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %615 = "tosa.transpose"(%614, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %616 = "tosa.conv2d"(%615, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %617 = "tosa.transpose"(%616, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_271 = tensor.insert_slice %455 into %cst_26[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_272 = tensor.insert_slice %471 into %inserted_slice_271[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_273 = tensor.insert_slice %487 into %inserted_slice_272[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_274 = tensor.insert_slice %503 into %inserted_slice_273[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_275 = tensor.insert_slice %519 into %inserted_slice_274[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_276 = tensor.insert_slice %535 into %inserted_slice_275[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_277 = tensor.insert_slice %551 into %inserted_slice_276[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_278 = tensor.insert_slice %567 into %inserted_slice_277[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_279 = tensor.insert_slice %583 into %inserted_slice_278[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_280 = tensor.insert_slice %599 into %inserted_slice_279[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %inserted_slice_281 = tensor.insert_slice %617 into %inserted_slice_280[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x576x14x14xf32>
    %618 = "tosa.sub"(%inserted_slice_281, %30) : (tensor<1x576x14x14xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x14x14xf32>
    %619 = "tosa.add"(%30, %66) : (tensor<1x576x1x1xf32>, tensor<f32>) -> tensor<1x576x1x1xf32>
    %620 = "tosa.rsqrt"(%619) : (tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %621 = "tosa.mul"(%618, %620) {shift = 0 : i32} : (tensor<1x576x14x14xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x14x14xf32>
    %622 = "tosa.mul"(%621, %30) {shift = 0 : i32} : (tensor<1x576x14x14xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x14x14xf32>
    %623 = "tosa.add"(%622, %30) : (tensor<1x576x14x14xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x14x14xf32>
    %624 = "tosa.clamp"(%623) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x576x14x14xf32>) -> tensor<1x576x14x14xf32>
    %625 = "tosa.transpose"(%624, %71) : (tensor<1x576x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x576xf32>
    %626 = "tosa.conv2d"(%625, %29, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x576xf32>, tensor<128x1x1x576xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %627 = "tosa.transpose"(%626, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %628 = "tosa.sub"(%627, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %629 = "tosa.mul"(%628, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %630 = "tosa.mul"(%629, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %631 = "tosa.add"(%630, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %632 = "tosa.clamp"(%631) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %633 = "tosa.transpose"(%632, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %634 = "tosa.conv2d"(%633, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %635 = "tosa.transpose"(%634, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_282 = tensor.insert_slice %455 into %cst_27[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_283 = tensor.insert_slice %471 into %inserted_slice_282[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_284 = tensor.insert_slice %487 into %inserted_slice_283[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_285 = tensor.insert_slice %503 into %inserted_slice_284[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_286 = tensor.insert_slice %519 into %inserted_slice_285[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_287 = tensor.insert_slice %535 into %inserted_slice_286[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_288 = tensor.insert_slice %551 into %inserted_slice_287[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_289 = tensor.insert_slice %567 into %inserted_slice_288[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_290 = tensor.insert_slice %583 into %inserted_slice_289[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_291 = tensor.insert_slice %599 into %inserted_slice_290[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_292 = tensor.insert_slice %617 into %inserted_slice_291[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %inserted_slice_293 = tensor.insert_slice %635 into %inserted_slice_292[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x608x14x14xf32>
    %636 = "tosa.sub"(%inserted_slice_293, %28) : (tensor<1x608x14x14xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x14x14xf32>
    %637 = "tosa.add"(%28, %66) : (tensor<1x608x1x1xf32>, tensor<f32>) -> tensor<1x608x1x1xf32>
    %638 = "tosa.rsqrt"(%637) : (tensor<1x608x1x1xf32>) -> tensor<1x608x1x1xf32>
    %639 = "tosa.mul"(%636, %638) {shift = 0 : i32} : (tensor<1x608x14x14xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x14x14xf32>
    %640 = "tosa.mul"(%639, %28) {shift = 0 : i32} : (tensor<1x608x14x14xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x14x14xf32>
    %641 = "tosa.add"(%640, %28) : (tensor<1x608x14x14xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x14x14xf32>
    %642 = "tosa.clamp"(%641) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x608x14x14xf32>) -> tensor<1x608x14x14xf32>
    %643 = "tosa.transpose"(%642, %71) : (tensor<1x608x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x608xf32>
    %644 = "tosa.conv2d"(%643, %27, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x608xf32>, tensor<128x1x1x608xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %645 = "tosa.transpose"(%644, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %646 = "tosa.sub"(%645, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %647 = "tosa.mul"(%646, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %648 = "tosa.mul"(%647, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %649 = "tosa.add"(%648, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %650 = "tosa.clamp"(%649) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %651 = "tosa.transpose"(%650, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %652 = "tosa.conv2d"(%651, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %653 = "tosa.transpose"(%652, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_294 = tensor.insert_slice %455 into %cst_28[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_295 = tensor.insert_slice %471 into %inserted_slice_294[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_296 = tensor.insert_slice %487 into %inserted_slice_295[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_297 = tensor.insert_slice %503 into %inserted_slice_296[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_298 = tensor.insert_slice %519 into %inserted_slice_297[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_299 = tensor.insert_slice %535 into %inserted_slice_298[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_300 = tensor.insert_slice %551 into %inserted_slice_299[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_301 = tensor.insert_slice %567 into %inserted_slice_300[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_302 = tensor.insert_slice %583 into %inserted_slice_301[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_303 = tensor.insert_slice %599 into %inserted_slice_302[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_304 = tensor.insert_slice %617 into %inserted_slice_303[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_305 = tensor.insert_slice %635 into %inserted_slice_304[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %inserted_slice_306 = tensor.insert_slice %653 into %inserted_slice_305[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x640x14x14xf32>
    %654 = "tosa.sub"(%inserted_slice_306, %26) : (tensor<1x640x14x14xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x14x14xf32>
    %655 = "tosa.add"(%26, %66) : (tensor<1x640x1x1xf32>, tensor<f32>) -> tensor<1x640x1x1xf32>
    %656 = "tosa.rsqrt"(%655) : (tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    %657 = "tosa.mul"(%654, %656) {shift = 0 : i32} : (tensor<1x640x14x14xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x14x14xf32>
    %658 = "tosa.mul"(%657, %26) {shift = 0 : i32} : (tensor<1x640x14x14xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x14x14xf32>
    %659 = "tosa.add"(%658, %26) : (tensor<1x640x14x14xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x14x14xf32>
    %660 = "tosa.clamp"(%659) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x640x14x14xf32>) -> tensor<1x640x14x14xf32>
    %661 = "tosa.transpose"(%660, %71) : (tensor<1x640x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x640xf32>
    %662 = "tosa.conv2d"(%661, %25, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x640xf32>, tensor<128x1x1x640xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %663 = "tosa.transpose"(%662, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %664 = "tosa.sub"(%663, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %665 = "tosa.mul"(%664, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %666 = "tosa.mul"(%665, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %667 = "tosa.add"(%666, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %668 = "tosa.clamp"(%667) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %669 = "tosa.transpose"(%668, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %670 = "tosa.conv2d"(%669, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %671 = "tosa.transpose"(%670, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_307 = tensor.insert_slice %455 into %cst_29[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_308 = tensor.insert_slice %471 into %inserted_slice_307[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_309 = tensor.insert_slice %487 into %inserted_slice_308[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_310 = tensor.insert_slice %503 into %inserted_slice_309[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_311 = tensor.insert_slice %519 into %inserted_slice_310[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_312 = tensor.insert_slice %535 into %inserted_slice_311[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_313 = tensor.insert_slice %551 into %inserted_slice_312[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_314 = tensor.insert_slice %567 into %inserted_slice_313[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_315 = tensor.insert_slice %583 into %inserted_slice_314[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_316 = tensor.insert_slice %599 into %inserted_slice_315[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_317 = tensor.insert_slice %617 into %inserted_slice_316[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_318 = tensor.insert_slice %635 into %inserted_slice_317[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_319 = tensor.insert_slice %653 into %inserted_slice_318[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %inserted_slice_320 = tensor.insert_slice %671 into %inserted_slice_319[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x672x14x14xf32>
    %672 = "tosa.sub"(%inserted_slice_320, %24) : (tensor<1x672x14x14xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x14x14xf32>
    %673 = "tosa.add"(%24, %66) : (tensor<1x672x1x1xf32>, tensor<f32>) -> tensor<1x672x1x1xf32>
    %674 = "tosa.rsqrt"(%673) : (tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %675 = "tosa.mul"(%672, %674) {shift = 0 : i32} : (tensor<1x672x14x14xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x14x14xf32>
    %676 = "tosa.mul"(%675, %24) {shift = 0 : i32} : (tensor<1x672x14x14xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x14x14xf32>
    %677 = "tosa.add"(%676, %24) : (tensor<1x672x14x14xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x14x14xf32>
    %678 = "tosa.clamp"(%677) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x672x14x14xf32>) -> tensor<1x672x14x14xf32>
    %679 = "tosa.transpose"(%678, %71) : (tensor<1x672x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x672xf32>
    %680 = "tosa.conv2d"(%679, %23, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x672xf32>, tensor<128x1x1x672xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %681 = "tosa.transpose"(%680, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %682 = "tosa.sub"(%681, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %683 = "tosa.mul"(%682, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %684 = "tosa.mul"(%683, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %685 = "tosa.add"(%684, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %686 = "tosa.clamp"(%685) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %687 = "tosa.transpose"(%686, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %688 = "tosa.conv2d"(%687, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %689 = "tosa.transpose"(%688, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_321 = tensor.insert_slice %455 into %cst_30[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_322 = tensor.insert_slice %471 into %inserted_slice_321[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_323 = tensor.insert_slice %487 into %inserted_slice_322[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_324 = tensor.insert_slice %503 into %inserted_slice_323[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_325 = tensor.insert_slice %519 into %inserted_slice_324[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_326 = tensor.insert_slice %535 into %inserted_slice_325[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_327 = tensor.insert_slice %551 into %inserted_slice_326[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_328 = tensor.insert_slice %567 into %inserted_slice_327[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_329 = tensor.insert_slice %583 into %inserted_slice_328[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_330 = tensor.insert_slice %599 into %inserted_slice_329[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_331 = tensor.insert_slice %617 into %inserted_slice_330[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_332 = tensor.insert_slice %635 into %inserted_slice_331[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_333 = tensor.insert_slice %653 into %inserted_slice_332[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_334 = tensor.insert_slice %671 into %inserted_slice_333[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %inserted_slice_335 = tensor.insert_slice %689 into %inserted_slice_334[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x704x14x14xf32>
    %690 = "tosa.sub"(%inserted_slice_335, %22) : (tensor<1x704x14x14xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x14x14xf32>
    %691 = "tosa.add"(%22, %66) : (tensor<1x704x1x1xf32>, tensor<f32>) -> tensor<1x704x1x1xf32>
    %692 = "tosa.rsqrt"(%691) : (tensor<1x704x1x1xf32>) -> tensor<1x704x1x1xf32>
    %693 = "tosa.mul"(%690, %692) {shift = 0 : i32} : (tensor<1x704x14x14xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x14x14xf32>
    %694 = "tosa.mul"(%693, %22) {shift = 0 : i32} : (tensor<1x704x14x14xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x14x14xf32>
    %695 = "tosa.add"(%694, %22) : (tensor<1x704x14x14xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x14x14xf32>
    %696 = "tosa.clamp"(%695) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x704x14x14xf32>) -> tensor<1x704x14x14xf32>
    %697 = "tosa.transpose"(%696, %71) : (tensor<1x704x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x704xf32>
    %698 = "tosa.conv2d"(%697, %21, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x704xf32>, tensor<128x1x1x704xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %699 = "tosa.transpose"(%698, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %700 = "tosa.sub"(%699, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %701 = "tosa.mul"(%700, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %702 = "tosa.mul"(%701, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %703 = "tosa.add"(%702, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %704 = "tosa.clamp"(%703) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %705 = "tosa.transpose"(%704, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %706 = "tosa.conv2d"(%705, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %707 = "tosa.transpose"(%706, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_336 = tensor.insert_slice %455 into %cst_31[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_337 = tensor.insert_slice %471 into %inserted_slice_336[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_338 = tensor.insert_slice %487 into %inserted_slice_337[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_339 = tensor.insert_slice %503 into %inserted_slice_338[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_340 = tensor.insert_slice %519 into %inserted_slice_339[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_341 = tensor.insert_slice %535 into %inserted_slice_340[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_342 = tensor.insert_slice %551 into %inserted_slice_341[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_343 = tensor.insert_slice %567 into %inserted_slice_342[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_344 = tensor.insert_slice %583 into %inserted_slice_343[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_345 = tensor.insert_slice %599 into %inserted_slice_344[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_346 = tensor.insert_slice %617 into %inserted_slice_345[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_347 = tensor.insert_slice %635 into %inserted_slice_346[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_348 = tensor.insert_slice %653 into %inserted_slice_347[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_349 = tensor.insert_slice %671 into %inserted_slice_348[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_350 = tensor.insert_slice %689 into %inserted_slice_349[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %inserted_slice_351 = tensor.insert_slice %707 into %inserted_slice_350[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x736x14x14xf32>
    %708 = "tosa.sub"(%inserted_slice_351, %20) : (tensor<1x736x14x14xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x14x14xf32>
    %709 = "tosa.add"(%20, %66) : (tensor<1x736x1x1xf32>, tensor<f32>) -> tensor<1x736x1x1xf32>
    %710 = "tosa.rsqrt"(%709) : (tensor<1x736x1x1xf32>) -> tensor<1x736x1x1xf32>
    %711 = "tosa.mul"(%708, %710) {shift = 0 : i32} : (tensor<1x736x14x14xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x14x14xf32>
    %712 = "tosa.mul"(%711, %20) {shift = 0 : i32} : (tensor<1x736x14x14xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x14x14xf32>
    %713 = "tosa.add"(%712, %20) : (tensor<1x736x14x14xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x14x14xf32>
    %714 = "tosa.clamp"(%713) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x736x14x14xf32>) -> tensor<1x736x14x14xf32>
    %715 = "tosa.transpose"(%714, %71) : (tensor<1x736x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x736xf32>
    %716 = "tosa.conv2d"(%715, %19, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x736xf32>, tensor<128x1x1x736xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %717 = "tosa.transpose"(%716, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %718 = "tosa.sub"(%717, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %719 = "tosa.mul"(%718, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %720 = "tosa.mul"(%719, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %721 = "tosa.add"(%720, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %722 = "tosa.clamp"(%721) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %723 = "tosa.transpose"(%722, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %724 = "tosa.conv2d"(%723, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %725 = "tosa.transpose"(%724, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_352 = tensor.insert_slice %455 into %cst_32[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_353 = tensor.insert_slice %471 into %inserted_slice_352[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_354 = tensor.insert_slice %487 into %inserted_slice_353[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_355 = tensor.insert_slice %503 into %inserted_slice_354[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_356 = tensor.insert_slice %519 into %inserted_slice_355[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_357 = tensor.insert_slice %535 into %inserted_slice_356[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_358 = tensor.insert_slice %551 into %inserted_slice_357[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_359 = tensor.insert_slice %567 into %inserted_slice_358[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_360 = tensor.insert_slice %583 into %inserted_slice_359[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_361 = tensor.insert_slice %599 into %inserted_slice_360[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_362 = tensor.insert_slice %617 into %inserted_slice_361[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_363 = tensor.insert_slice %635 into %inserted_slice_362[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_364 = tensor.insert_slice %653 into %inserted_slice_363[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_365 = tensor.insert_slice %671 into %inserted_slice_364[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_366 = tensor.insert_slice %689 into %inserted_slice_365[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_367 = tensor.insert_slice %707 into %inserted_slice_366[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %inserted_slice_368 = tensor.insert_slice %725 into %inserted_slice_367[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x768x14x14xf32>
    %726 = "tosa.sub"(%inserted_slice_368, %18) : (tensor<1x768x14x14xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x14x14xf32>
    %727 = "tosa.add"(%18, %66) : (tensor<1x768x1x1xf32>, tensor<f32>) -> tensor<1x768x1x1xf32>
    %728 = "tosa.rsqrt"(%727) : (tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %729 = "tosa.mul"(%726, %728) {shift = 0 : i32} : (tensor<1x768x14x14xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x14x14xf32>
    %730 = "tosa.mul"(%729, %18) {shift = 0 : i32} : (tensor<1x768x14x14xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x14x14xf32>
    %731 = "tosa.add"(%730, %18) : (tensor<1x768x14x14xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x14x14xf32>
    %732 = "tosa.clamp"(%731) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %733 = "tosa.transpose"(%732, %71) : (tensor<1x768x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x768xf32>
    %734 = "tosa.conv2d"(%733, %17, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x768xf32>, tensor<128x1x1x768xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %735 = "tosa.transpose"(%734, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %736 = "tosa.sub"(%735, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %737 = "tosa.mul"(%736, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %738 = "tosa.mul"(%737, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %739 = "tosa.add"(%738, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %740 = "tosa.clamp"(%739) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %741 = "tosa.transpose"(%740, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %742 = "tosa.conv2d"(%741, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %743 = "tosa.transpose"(%742, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_369 = tensor.insert_slice %455 into %cst_33[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_370 = tensor.insert_slice %471 into %inserted_slice_369[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_371 = tensor.insert_slice %487 into %inserted_slice_370[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_372 = tensor.insert_slice %503 into %inserted_slice_371[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_373 = tensor.insert_slice %519 into %inserted_slice_372[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_374 = tensor.insert_slice %535 into %inserted_slice_373[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_375 = tensor.insert_slice %551 into %inserted_slice_374[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_376 = tensor.insert_slice %567 into %inserted_slice_375[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_377 = tensor.insert_slice %583 into %inserted_slice_376[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_378 = tensor.insert_slice %599 into %inserted_slice_377[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_379 = tensor.insert_slice %617 into %inserted_slice_378[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_380 = tensor.insert_slice %635 into %inserted_slice_379[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_381 = tensor.insert_slice %653 into %inserted_slice_380[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_382 = tensor.insert_slice %671 into %inserted_slice_381[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_383 = tensor.insert_slice %689 into %inserted_slice_382[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_384 = tensor.insert_slice %707 into %inserted_slice_383[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_385 = tensor.insert_slice %725 into %inserted_slice_384[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %inserted_slice_386 = tensor.insert_slice %743 into %inserted_slice_385[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x800x14x14xf32>
    %744 = "tosa.sub"(%inserted_slice_386, %16) : (tensor<1x800x14x14xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x14x14xf32>
    %745 = "tosa.add"(%16, %66) : (tensor<1x800x1x1xf32>, tensor<f32>) -> tensor<1x800x1x1xf32>
    %746 = "tosa.rsqrt"(%745) : (tensor<1x800x1x1xf32>) -> tensor<1x800x1x1xf32>
    %747 = "tosa.mul"(%744, %746) {shift = 0 : i32} : (tensor<1x800x14x14xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x14x14xf32>
    %748 = "tosa.mul"(%747, %16) {shift = 0 : i32} : (tensor<1x800x14x14xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x14x14xf32>
    %749 = "tosa.add"(%748, %16) : (tensor<1x800x14x14xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x14x14xf32>
    %750 = "tosa.clamp"(%749) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x800x14x14xf32>) -> tensor<1x800x14x14xf32>
    %751 = "tosa.transpose"(%750, %71) : (tensor<1x800x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x800xf32>
    %752 = "tosa.conv2d"(%751, %15, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x800xf32>, tensor<128x1x1x800xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %753 = "tosa.transpose"(%752, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %754 = "tosa.sub"(%753, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %755 = "tosa.mul"(%754, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %756 = "tosa.mul"(%755, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %757 = "tosa.add"(%756, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %758 = "tosa.clamp"(%757) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %759 = "tosa.transpose"(%758, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %760 = "tosa.conv2d"(%759, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %761 = "tosa.transpose"(%760, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_387 = tensor.insert_slice %455 into %cst_34[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_388 = tensor.insert_slice %471 into %inserted_slice_387[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_389 = tensor.insert_slice %487 into %inserted_slice_388[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_390 = tensor.insert_slice %503 into %inserted_slice_389[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_391 = tensor.insert_slice %519 into %inserted_slice_390[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_392 = tensor.insert_slice %535 into %inserted_slice_391[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_393 = tensor.insert_slice %551 into %inserted_slice_392[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_394 = tensor.insert_slice %567 into %inserted_slice_393[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_395 = tensor.insert_slice %583 into %inserted_slice_394[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_396 = tensor.insert_slice %599 into %inserted_slice_395[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_397 = tensor.insert_slice %617 into %inserted_slice_396[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_398 = tensor.insert_slice %635 into %inserted_slice_397[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_399 = tensor.insert_slice %653 into %inserted_slice_398[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_400 = tensor.insert_slice %671 into %inserted_slice_399[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_401 = tensor.insert_slice %689 into %inserted_slice_400[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_402 = tensor.insert_slice %707 into %inserted_slice_401[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_403 = tensor.insert_slice %725 into %inserted_slice_402[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_404 = tensor.insert_slice %743 into %inserted_slice_403[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %inserted_slice_405 = tensor.insert_slice %761 into %inserted_slice_404[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x832x14x14xf32>
    %762 = "tosa.sub"(%inserted_slice_405, %14) : (tensor<1x832x14x14xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x14x14xf32>
    %763 = "tosa.add"(%14, %66) : (tensor<1x832x1x1xf32>, tensor<f32>) -> tensor<1x832x1x1xf32>
    %764 = "tosa.rsqrt"(%763) : (tensor<1x832x1x1xf32>) -> tensor<1x832x1x1xf32>
    %765 = "tosa.mul"(%762, %764) {shift = 0 : i32} : (tensor<1x832x14x14xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x14x14xf32>
    %766 = "tosa.mul"(%765, %14) {shift = 0 : i32} : (tensor<1x832x14x14xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x14x14xf32>
    %767 = "tosa.add"(%766, %14) : (tensor<1x832x14x14xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x14x14xf32>
    %768 = "tosa.clamp"(%767) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x832x14x14xf32>) -> tensor<1x832x14x14xf32>
    %769 = "tosa.transpose"(%768, %71) : (tensor<1x832x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x832xf32>
    %770 = "tosa.conv2d"(%769, %13, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x832xf32>, tensor<128x1x1x832xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %771 = "tosa.transpose"(%770, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %772 = "tosa.sub"(%771, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %773 = "tosa.mul"(%772, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %774 = "tosa.mul"(%773, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %775 = "tosa.add"(%774, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %776 = "tosa.clamp"(%775) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %777 = "tosa.transpose"(%776, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %778 = "tosa.conv2d"(%777, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %779 = "tosa.transpose"(%778, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_406 = tensor.insert_slice %455 into %cst_35[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_407 = tensor.insert_slice %471 into %inserted_slice_406[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_408 = tensor.insert_slice %487 into %inserted_slice_407[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_409 = tensor.insert_slice %503 into %inserted_slice_408[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_410 = tensor.insert_slice %519 into %inserted_slice_409[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_411 = tensor.insert_slice %535 into %inserted_slice_410[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_412 = tensor.insert_slice %551 into %inserted_slice_411[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_413 = tensor.insert_slice %567 into %inserted_slice_412[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_414 = tensor.insert_slice %583 into %inserted_slice_413[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_415 = tensor.insert_slice %599 into %inserted_slice_414[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_416 = tensor.insert_slice %617 into %inserted_slice_415[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_417 = tensor.insert_slice %635 into %inserted_slice_416[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_418 = tensor.insert_slice %653 into %inserted_slice_417[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_419 = tensor.insert_slice %671 into %inserted_slice_418[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_420 = tensor.insert_slice %689 into %inserted_slice_419[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_421 = tensor.insert_slice %707 into %inserted_slice_420[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_422 = tensor.insert_slice %725 into %inserted_slice_421[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_423 = tensor.insert_slice %743 into %inserted_slice_422[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_424 = tensor.insert_slice %761 into %inserted_slice_423[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %inserted_slice_425 = tensor.insert_slice %779 into %inserted_slice_424[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x864x14x14xf32>
    %780 = "tosa.sub"(%inserted_slice_425, %12) : (tensor<1x864x14x14xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x14x14xf32>
    %781 = "tosa.add"(%12, %66) : (tensor<1x864x1x1xf32>, tensor<f32>) -> tensor<1x864x1x1xf32>
    %782 = "tosa.rsqrt"(%781) : (tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    %783 = "tosa.mul"(%780, %782) {shift = 0 : i32} : (tensor<1x864x14x14xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x14x14xf32>
    %784 = "tosa.mul"(%783, %12) {shift = 0 : i32} : (tensor<1x864x14x14xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x14x14xf32>
    %785 = "tosa.add"(%784, %12) : (tensor<1x864x14x14xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x14x14xf32>
    %786 = "tosa.clamp"(%785) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x864x14x14xf32>) -> tensor<1x864x14x14xf32>
    %787 = "tosa.transpose"(%786, %71) : (tensor<1x864x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x864xf32>
    %788 = "tosa.conv2d"(%787, %11, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x864xf32>, tensor<128x1x1x864xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %789 = "tosa.transpose"(%788, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %790 = "tosa.sub"(%789, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %791 = "tosa.mul"(%790, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %792 = "tosa.mul"(%791, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %793 = "tosa.add"(%792, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %794 = "tosa.clamp"(%793) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %795 = "tosa.transpose"(%794, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %796 = "tosa.conv2d"(%795, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %797 = "tosa.transpose"(%796, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_426 = tensor.insert_slice %455 into %cst_36[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_427 = tensor.insert_slice %471 into %inserted_slice_426[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_428 = tensor.insert_slice %487 into %inserted_slice_427[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_429 = tensor.insert_slice %503 into %inserted_slice_428[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_430 = tensor.insert_slice %519 into %inserted_slice_429[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_431 = tensor.insert_slice %535 into %inserted_slice_430[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_432 = tensor.insert_slice %551 into %inserted_slice_431[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_433 = tensor.insert_slice %567 into %inserted_slice_432[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_434 = tensor.insert_slice %583 into %inserted_slice_433[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_435 = tensor.insert_slice %599 into %inserted_slice_434[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_436 = tensor.insert_slice %617 into %inserted_slice_435[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_437 = tensor.insert_slice %635 into %inserted_slice_436[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_438 = tensor.insert_slice %653 into %inserted_slice_437[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_439 = tensor.insert_slice %671 into %inserted_slice_438[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_440 = tensor.insert_slice %689 into %inserted_slice_439[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_441 = tensor.insert_slice %707 into %inserted_slice_440[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_442 = tensor.insert_slice %725 into %inserted_slice_441[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_443 = tensor.insert_slice %743 into %inserted_slice_442[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_444 = tensor.insert_slice %761 into %inserted_slice_443[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_445 = tensor.insert_slice %779 into %inserted_slice_444[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %inserted_slice_446 = tensor.insert_slice %797 into %inserted_slice_445[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x896x14x14xf32>
    %798 = "tosa.sub"(%inserted_slice_446, %10) : (tensor<1x896x14x14xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x14x14xf32>
    %799 = "tosa.add"(%10, %66) : (tensor<1x896x1x1xf32>, tensor<f32>) -> tensor<1x896x1x1xf32>
    %800 = "tosa.rsqrt"(%799) : (tensor<1x896x1x1xf32>) -> tensor<1x896x1x1xf32>
    %801 = "tosa.mul"(%798, %800) {shift = 0 : i32} : (tensor<1x896x14x14xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x14x14xf32>
    %802 = "tosa.mul"(%801, %10) {shift = 0 : i32} : (tensor<1x896x14x14xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x14x14xf32>
    %803 = "tosa.add"(%802, %10) : (tensor<1x896x14x14xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x14x14xf32>
    %804 = "tosa.clamp"(%803) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x896x14x14xf32>) -> tensor<1x896x14x14xf32>
    %805 = "tosa.transpose"(%804, %71) : (tensor<1x896x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x896xf32>
    %806 = "tosa.conv2d"(%805, %9, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x896xf32>, tensor<128x1x1x896xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %807 = "tosa.transpose"(%806, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %808 = "tosa.sub"(%807, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %809 = "tosa.mul"(%808, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %810 = "tosa.mul"(%809, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %811 = "tosa.add"(%810, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %812 = "tosa.clamp"(%811) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %813 = "tosa.transpose"(%812, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %814 = "tosa.conv2d"(%813, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %815 = "tosa.transpose"(%814, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_447 = tensor.insert_slice %455 into %cst_37[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_448 = tensor.insert_slice %471 into %inserted_slice_447[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_449 = tensor.insert_slice %487 into %inserted_slice_448[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_450 = tensor.insert_slice %503 into %inserted_slice_449[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_451 = tensor.insert_slice %519 into %inserted_slice_450[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_452 = tensor.insert_slice %535 into %inserted_slice_451[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_453 = tensor.insert_slice %551 into %inserted_slice_452[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_454 = tensor.insert_slice %567 into %inserted_slice_453[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_455 = tensor.insert_slice %583 into %inserted_slice_454[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_456 = tensor.insert_slice %599 into %inserted_slice_455[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_457 = tensor.insert_slice %617 into %inserted_slice_456[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_458 = tensor.insert_slice %635 into %inserted_slice_457[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_459 = tensor.insert_slice %653 into %inserted_slice_458[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_460 = tensor.insert_slice %671 into %inserted_slice_459[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_461 = tensor.insert_slice %689 into %inserted_slice_460[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_462 = tensor.insert_slice %707 into %inserted_slice_461[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_463 = tensor.insert_slice %725 into %inserted_slice_462[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_464 = tensor.insert_slice %743 into %inserted_slice_463[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_465 = tensor.insert_slice %761 into %inserted_slice_464[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_466 = tensor.insert_slice %779 into %inserted_slice_465[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_467 = tensor.insert_slice %797 into %inserted_slice_466[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %inserted_slice_468 = tensor.insert_slice %815 into %inserted_slice_467[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x928x14x14xf32>
    %816 = "tosa.sub"(%inserted_slice_468, %8) : (tensor<1x928x14x14xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x14x14xf32>
    %817 = "tosa.add"(%8, %66) : (tensor<1x928x1x1xf32>, tensor<f32>) -> tensor<1x928x1x1xf32>
    %818 = "tosa.rsqrt"(%817) : (tensor<1x928x1x1xf32>) -> tensor<1x928x1x1xf32>
    %819 = "tosa.mul"(%816, %818) {shift = 0 : i32} : (tensor<1x928x14x14xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x14x14xf32>
    %820 = "tosa.mul"(%819, %8) {shift = 0 : i32} : (tensor<1x928x14x14xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x14x14xf32>
    %821 = "tosa.add"(%820, %8) : (tensor<1x928x14x14xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x14x14xf32>
    %822 = "tosa.clamp"(%821) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x928x14x14xf32>) -> tensor<1x928x14x14xf32>
    %823 = "tosa.transpose"(%822, %71) : (tensor<1x928x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x928xf32>
    %824 = "tosa.conv2d"(%823, %7, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x928xf32>, tensor<128x1x1x928xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %825 = "tosa.transpose"(%824, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %826 = "tosa.sub"(%825, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %827 = "tosa.mul"(%826, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %828 = "tosa.mul"(%827, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %829 = "tosa.add"(%828, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %830 = "tosa.clamp"(%829) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %831 = "tosa.transpose"(%830, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %832 = "tosa.conv2d"(%831, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %833 = "tosa.transpose"(%832, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_469 = tensor.insert_slice %455 into %cst_38[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_470 = tensor.insert_slice %471 into %inserted_slice_469[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_471 = tensor.insert_slice %487 into %inserted_slice_470[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_472 = tensor.insert_slice %503 into %inserted_slice_471[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_473 = tensor.insert_slice %519 into %inserted_slice_472[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_474 = tensor.insert_slice %535 into %inserted_slice_473[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_475 = tensor.insert_slice %551 into %inserted_slice_474[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_476 = tensor.insert_slice %567 into %inserted_slice_475[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_477 = tensor.insert_slice %583 into %inserted_slice_476[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_478 = tensor.insert_slice %599 into %inserted_slice_477[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_479 = tensor.insert_slice %617 into %inserted_slice_478[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_480 = tensor.insert_slice %635 into %inserted_slice_479[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_481 = tensor.insert_slice %653 into %inserted_slice_480[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_482 = tensor.insert_slice %671 into %inserted_slice_481[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_483 = tensor.insert_slice %689 into %inserted_slice_482[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_484 = tensor.insert_slice %707 into %inserted_slice_483[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_485 = tensor.insert_slice %725 into %inserted_slice_484[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_486 = tensor.insert_slice %743 into %inserted_slice_485[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_487 = tensor.insert_slice %761 into %inserted_slice_486[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_488 = tensor.insert_slice %779 into %inserted_slice_487[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_489 = tensor.insert_slice %797 into %inserted_slice_488[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_490 = tensor.insert_slice %815 into %inserted_slice_489[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %inserted_slice_491 = tensor.insert_slice %833 into %inserted_slice_490[0, 928, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x960x14x14xf32>
    %834 = "tosa.sub"(%inserted_slice_491, %6) : (tensor<1x960x14x14xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x14x14xf32>
    %835 = "tosa.add"(%6, %66) : (tensor<1x960x1x1xf32>, tensor<f32>) -> tensor<1x960x1x1xf32>
    %836 = "tosa.rsqrt"(%835) : (tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %837 = "tosa.mul"(%834, %836) {shift = 0 : i32} : (tensor<1x960x14x14xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x14x14xf32>
    %838 = "tosa.mul"(%837, %6) {shift = 0 : i32} : (tensor<1x960x14x14xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x14x14xf32>
    %839 = "tosa.add"(%838, %6) : (tensor<1x960x14x14xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x14x14xf32>
    %840 = "tosa.clamp"(%839) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    %841 = "tosa.transpose"(%840, %71) : (tensor<1x960x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x960xf32>
    %842 = "tosa.conv2d"(%841, %5, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x960xf32>, tensor<128x1x1x960xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %843 = "tosa.transpose"(%842, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %844 = "tosa.sub"(%843, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %845 = "tosa.mul"(%844, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %846 = "tosa.mul"(%845, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %847 = "tosa.add"(%846, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %848 = "tosa.clamp"(%847) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %849 = "tosa.transpose"(%848, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %850 = "tosa.conv2d"(%849, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %851 = "tosa.transpose"(%850, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_492 = tensor.insert_slice %455 into %cst_39[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_493 = tensor.insert_slice %471 into %inserted_slice_492[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_494 = tensor.insert_slice %487 into %inserted_slice_493[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_495 = tensor.insert_slice %503 into %inserted_slice_494[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_496 = tensor.insert_slice %519 into %inserted_slice_495[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_497 = tensor.insert_slice %535 into %inserted_slice_496[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_498 = tensor.insert_slice %551 into %inserted_slice_497[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_499 = tensor.insert_slice %567 into %inserted_slice_498[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_500 = tensor.insert_slice %583 into %inserted_slice_499[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_501 = tensor.insert_slice %599 into %inserted_slice_500[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_502 = tensor.insert_slice %617 into %inserted_slice_501[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_503 = tensor.insert_slice %635 into %inserted_slice_502[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_504 = tensor.insert_slice %653 into %inserted_slice_503[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_505 = tensor.insert_slice %671 into %inserted_slice_504[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_506 = tensor.insert_slice %689 into %inserted_slice_505[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_507 = tensor.insert_slice %707 into %inserted_slice_506[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_508 = tensor.insert_slice %725 into %inserted_slice_507[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_509 = tensor.insert_slice %743 into %inserted_slice_508[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_510 = tensor.insert_slice %761 into %inserted_slice_509[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_511 = tensor.insert_slice %779 into %inserted_slice_510[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_512 = tensor.insert_slice %797 into %inserted_slice_511[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_513 = tensor.insert_slice %815 into %inserted_slice_512[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_514 = tensor.insert_slice %833 into %inserted_slice_513[0, 928, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %inserted_slice_515 = tensor.insert_slice %851 into %inserted_slice_514[0, 960, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x992x14x14xf32>
    %852 = "tosa.sub"(%inserted_slice_515, %4) : (tensor<1x992x14x14xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x14x14xf32>
    %853 = "tosa.add"(%4, %66) : (tensor<1x992x1x1xf32>, tensor<f32>) -> tensor<1x992x1x1xf32>
    %854 = "tosa.rsqrt"(%853) : (tensor<1x992x1x1xf32>) -> tensor<1x992x1x1xf32>
    %855 = "tosa.mul"(%852, %854) {shift = 0 : i32} : (tensor<1x992x14x14xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x14x14xf32>
    %856 = "tosa.mul"(%855, %4) {shift = 0 : i32} : (tensor<1x992x14x14xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x14x14xf32>
    %857 = "tosa.add"(%856, %4) : (tensor<1x992x14x14xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x14x14xf32>
    %858 = "tosa.clamp"(%857) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x992x14x14xf32>) -> tensor<1x992x14x14xf32>
    %859 = "tosa.transpose"(%858, %71) : (tensor<1x992x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x992xf32>
    %860 = "tosa.conv2d"(%859, %3, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x992xf32>, tensor<128x1x1x992xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %861 = "tosa.transpose"(%860, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %862 = "tosa.sub"(%861, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %863 = "tosa.mul"(%862, %132) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %864 = "tosa.mul"(%863, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %865 = "tosa.add"(%864, %63) : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %866 = "tosa.clamp"(%865) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %867 = "tosa.transpose"(%866, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %868 = "tosa.conv2d"(%867, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x14x14x32xf32>
    %869 = "tosa.transpose"(%868, %72) : (tensor<1x14x14x32xf32>, tensor<4xi64>) -> tensor<1x32x14x14xf32>
    %inserted_slice_516 = tensor.insert_slice %455 into %cst_40[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x256x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_517 = tensor.insert_slice %471 into %inserted_slice_516[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_518 = tensor.insert_slice %487 into %inserted_slice_517[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_519 = tensor.insert_slice %503 into %inserted_slice_518[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_520 = tensor.insert_slice %519 into %inserted_slice_519[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_521 = tensor.insert_slice %535 into %inserted_slice_520[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_522 = tensor.insert_slice %551 into %inserted_slice_521[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_523 = tensor.insert_slice %567 into %inserted_slice_522[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_524 = tensor.insert_slice %583 into %inserted_slice_523[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_525 = tensor.insert_slice %599 into %inserted_slice_524[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_526 = tensor.insert_slice %617 into %inserted_slice_525[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_527 = tensor.insert_slice %635 into %inserted_slice_526[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_528 = tensor.insert_slice %653 into %inserted_slice_527[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_529 = tensor.insert_slice %671 into %inserted_slice_528[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_530 = tensor.insert_slice %689 into %inserted_slice_529[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_531 = tensor.insert_slice %707 into %inserted_slice_530[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_532 = tensor.insert_slice %725 into %inserted_slice_531[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_533 = tensor.insert_slice %743 into %inserted_slice_532[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_534 = tensor.insert_slice %761 into %inserted_slice_533[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_535 = tensor.insert_slice %779 into %inserted_slice_534[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_536 = tensor.insert_slice %797 into %inserted_slice_535[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_537 = tensor.insert_slice %815 into %inserted_slice_536[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_538 = tensor.insert_slice %833 into %inserted_slice_537[0, 928, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_539 = tensor.insert_slice %851 into %inserted_slice_538[0, 960, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %inserted_slice_540 = tensor.insert_slice %869 into %inserted_slice_539[0, 992, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x32x14x14xf32> into tensor<1x1024x14x14xf32>
    %870 = "tosa.sub"(%inserted_slice_540, %2) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %871 = "tosa.add"(%2, %66) : (tensor<1x1024x1x1xf32>, tensor<f32>) -> tensor<1x1024x1x1xf32>
    %872 = "tosa.rsqrt"(%871) : (tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %873 = "tosa.mul"(%870, %872) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %874 = "tosa.mul"(%873, %2) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %875 = "tosa.add"(%874, %2) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %876 = "tosa.clamp"(%875) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %877 = "tosa.transpose"(%876, %71) : (tensor<1x1024x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x1024xf32>
    %878 = "tosa.conv2d"(%877, %1, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %879 = "tosa.avg_pool2d"(%878) {acc_type = f32, kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>) -> tensor<1x7x7x512xf32>
    %880 = "tosa.transpose"(%879, %72) : (tensor<1x7x7x512xf32>, tensor<4xi64>) -> tensor<1x512x7x7xf32>
    %881 = "tosa.sub"(%880, %36) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %882 = "tosa.mul"(%881, %447) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %883 = "tosa.mul"(%882, %36) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %884 = "tosa.add"(%883, %36) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %885 = "tosa.clamp"(%884) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %886 = "tosa.transpose"(%885, %71) : (tensor<1x512x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x512xf32>
    %887 = "tosa.conv2d"(%886, %33, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %888 = "tosa.transpose"(%887, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %889 = "tosa.sub"(%888, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %890 = "tosa.mul"(%889, %132) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %891 = "tosa.mul"(%890, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %892 = "tosa.add"(%891, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %893 = "tosa.clamp"(%892) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %894 = "tosa.transpose"(%893, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %895 = "tosa.conv2d"(%894, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %896 = "tosa.transpose"(%895, %72) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_541 = tensor.insert_slice %880 into %cst_41[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x544x7x7xf32>
    %inserted_slice_542 = tensor.insert_slice %896 into %inserted_slice_541[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x544x7x7xf32>
    %897 = "tosa.sub"(%inserted_slice_542, %32) : (tensor<1x544x7x7xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x7x7xf32>
    %898 = "tosa.mul"(%897, %602) {shift = 0 : i32} : (tensor<1x544x7x7xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x7x7xf32>
    %899 = "tosa.mul"(%898, %32) {shift = 0 : i32} : (tensor<1x544x7x7xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x7x7xf32>
    %900 = "tosa.add"(%899, %32) : (tensor<1x544x7x7xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x7x7xf32>
    %901 = "tosa.clamp"(%900) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x544x7x7xf32>) -> tensor<1x544x7x7xf32>
    %902 = "tosa.transpose"(%901, %71) : (tensor<1x544x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x544xf32>
    %903 = "tosa.conv2d"(%902, %31, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x544xf32>, tensor<128x1x1x544xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %904 = "tosa.transpose"(%903, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %905 = "tosa.sub"(%904, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %906 = "tosa.mul"(%905, %132) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %907 = "tosa.mul"(%906, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %908 = "tosa.add"(%907, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %909 = "tosa.clamp"(%908) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %910 = "tosa.transpose"(%909, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %911 = "tosa.conv2d"(%910, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %912 = "tosa.transpose"(%911, %72) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_543 = tensor.insert_slice %880 into %cst_42[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x576x7x7xf32>
    %inserted_slice_544 = tensor.insert_slice %896 into %inserted_slice_543[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x576x7x7xf32>
    %inserted_slice_545 = tensor.insert_slice %912 into %inserted_slice_544[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x576x7x7xf32>
    %913 = "tosa.sub"(%inserted_slice_545, %30) : (tensor<1x576x7x7xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x7x7xf32>
    %914 = "tosa.mul"(%913, %620) {shift = 0 : i32} : (tensor<1x576x7x7xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x7x7xf32>
    %915 = "tosa.mul"(%914, %30) {shift = 0 : i32} : (tensor<1x576x7x7xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x7x7xf32>
    %916 = "tosa.add"(%915, %30) : (tensor<1x576x7x7xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x7x7xf32>
    %917 = "tosa.clamp"(%916) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x576x7x7xf32>) -> tensor<1x576x7x7xf32>
    %918 = "tosa.transpose"(%917, %71) : (tensor<1x576x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x576xf32>
    %919 = "tosa.conv2d"(%918, %29, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x576xf32>, tensor<128x1x1x576xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %920 = "tosa.transpose"(%919, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %921 = "tosa.sub"(%920, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %922 = "tosa.mul"(%921, %132) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %923 = "tosa.mul"(%922, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %924 = "tosa.add"(%923, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %925 = "tosa.clamp"(%924) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %926 = "tosa.transpose"(%925, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %927 = "tosa.conv2d"(%926, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %928 = "tosa.transpose"(%927, %72) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_546 = tensor.insert_slice %880 into %cst_43[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x608x7x7xf32>
    %inserted_slice_547 = tensor.insert_slice %896 into %inserted_slice_546[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x608x7x7xf32>
    %inserted_slice_548 = tensor.insert_slice %912 into %inserted_slice_547[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x608x7x7xf32>
    %inserted_slice_549 = tensor.insert_slice %928 into %inserted_slice_548[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x608x7x7xf32>
    %929 = "tosa.sub"(%inserted_slice_549, %28) : (tensor<1x608x7x7xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x7x7xf32>
    %930 = "tosa.mul"(%929, %638) {shift = 0 : i32} : (tensor<1x608x7x7xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x7x7xf32>
    %931 = "tosa.mul"(%930, %28) {shift = 0 : i32} : (tensor<1x608x7x7xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x7x7xf32>
    %932 = "tosa.add"(%931, %28) : (tensor<1x608x7x7xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x7x7xf32>
    %933 = "tosa.clamp"(%932) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x608x7x7xf32>) -> tensor<1x608x7x7xf32>
    %934 = "tosa.transpose"(%933, %71) : (tensor<1x608x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x608xf32>
    %935 = "tosa.conv2d"(%934, %27, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x608xf32>, tensor<128x1x1x608xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %936 = "tosa.transpose"(%935, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %937 = "tosa.sub"(%936, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %938 = "tosa.mul"(%937, %132) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %939 = "tosa.mul"(%938, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %940 = "tosa.add"(%939, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %941 = "tosa.clamp"(%940) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %942 = "tosa.transpose"(%941, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %943 = "tosa.conv2d"(%942, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %944 = "tosa.transpose"(%943, %72) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_550 = tensor.insert_slice %880 into %cst_44[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x640x7x7xf32>
    %inserted_slice_551 = tensor.insert_slice %896 into %inserted_slice_550[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x640x7x7xf32>
    %inserted_slice_552 = tensor.insert_slice %912 into %inserted_slice_551[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x640x7x7xf32>
    %inserted_slice_553 = tensor.insert_slice %928 into %inserted_slice_552[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x640x7x7xf32>
    %inserted_slice_554 = tensor.insert_slice %944 into %inserted_slice_553[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x640x7x7xf32>
    %945 = "tosa.sub"(%inserted_slice_554, %26) : (tensor<1x640x7x7xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x7x7xf32>
    %946 = "tosa.mul"(%945, %656) {shift = 0 : i32} : (tensor<1x640x7x7xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x7x7xf32>
    %947 = "tosa.mul"(%946, %26) {shift = 0 : i32} : (tensor<1x640x7x7xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x7x7xf32>
    %948 = "tosa.add"(%947, %26) : (tensor<1x640x7x7xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x7x7xf32>
    %949 = "tosa.clamp"(%948) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x640x7x7xf32>) -> tensor<1x640x7x7xf32>
    %950 = "tosa.transpose"(%949, %71) : (tensor<1x640x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x640xf32>
    %951 = "tosa.conv2d"(%950, %25, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x640xf32>, tensor<128x1x1x640xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %952 = "tosa.transpose"(%951, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %953 = "tosa.sub"(%952, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %954 = "tosa.mul"(%953, %132) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %955 = "tosa.mul"(%954, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %956 = "tosa.add"(%955, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %957 = "tosa.clamp"(%956) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %958 = "tosa.transpose"(%957, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %959 = "tosa.conv2d"(%958, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %960 = "tosa.transpose"(%959, %72) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_555 = tensor.insert_slice %880 into %cst_45[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x672x7x7xf32>
    %inserted_slice_556 = tensor.insert_slice %896 into %inserted_slice_555[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x672x7x7xf32>
    %inserted_slice_557 = tensor.insert_slice %912 into %inserted_slice_556[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x672x7x7xf32>
    %inserted_slice_558 = tensor.insert_slice %928 into %inserted_slice_557[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x672x7x7xf32>
    %inserted_slice_559 = tensor.insert_slice %944 into %inserted_slice_558[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x672x7x7xf32>
    %inserted_slice_560 = tensor.insert_slice %960 into %inserted_slice_559[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x672x7x7xf32>
    %961 = "tosa.sub"(%inserted_slice_560, %24) : (tensor<1x672x7x7xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x7x7xf32>
    %962 = "tosa.mul"(%961, %674) {shift = 0 : i32} : (tensor<1x672x7x7xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x7x7xf32>
    %963 = "tosa.mul"(%962, %24) {shift = 0 : i32} : (tensor<1x672x7x7xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x7x7xf32>
    %964 = "tosa.add"(%963, %24) : (tensor<1x672x7x7xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x7x7xf32>
    %965 = "tosa.clamp"(%964) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x672x7x7xf32>) -> tensor<1x672x7x7xf32>
    %966 = "tosa.transpose"(%965, %71) : (tensor<1x672x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x672xf32>
    %967 = "tosa.conv2d"(%966, %23, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x672xf32>, tensor<128x1x1x672xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %968 = "tosa.transpose"(%967, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %969 = "tosa.sub"(%968, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %970 = "tosa.mul"(%969, %132) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %971 = "tosa.mul"(%970, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %972 = "tosa.add"(%971, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %973 = "tosa.clamp"(%972) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %974 = "tosa.transpose"(%973, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %975 = "tosa.conv2d"(%974, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %976 = "tosa.transpose"(%975, %72) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_561 = tensor.insert_slice %880 into %cst_46[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_562 = tensor.insert_slice %896 into %inserted_slice_561[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_563 = tensor.insert_slice %912 into %inserted_slice_562[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_564 = tensor.insert_slice %928 into %inserted_slice_563[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_565 = tensor.insert_slice %944 into %inserted_slice_564[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_566 = tensor.insert_slice %960 into %inserted_slice_565[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %inserted_slice_567 = tensor.insert_slice %976 into %inserted_slice_566[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x704x7x7xf32>
    %977 = "tosa.sub"(%inserted_slice_567, %22) : (tensor<1x704x7x7xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x7x7xf32>
    %978 = "tosa.mul"(%977, %692) {shift = 0 : i32} : (tensor<1x704x7x7xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x7x7xf32>
    %979 = "tosa.mul"(%978, %22) {shift = 0 : i32} : (tensor<1x704x7x7xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x7x7xf32>
    %980 = "tosa.add"(%979, %22) : (tensor<1x704x7x7xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x7x7xf32>
    %981 = "tosa.clamp"(%980) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x704x7x7xf32>) -> tensor<1x704x7x7xf32>
    %982 = "tosa.transpose"(%981, %71) : (tensor<1x704x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x704xf32>
    %983 = "tosa.conv2d"(%982, %21, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x704xf32>, tensor<128x1x1x704xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %984 = "tosa.transpose"(%983, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %985 = "tosa.sub"(%984, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %986 = "tosa.mul"(%985, %132) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %987 = "tosa.mul"(%986, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %988 = "tosa.add"(%987, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %989 = "tosa.clamp"(%988) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %990 = "tosa.transpose"(%989, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %991 = "tosa.conv2d"(%990, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %992 = "tosa.transpose"(%991, %72) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_568 = tensor.insert_slice %880 into %cst_47[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_569 = tensor.insert_slice %896 into %inserted_slice_568[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_570 = tensor.insert_slice %912 into %inserted_slice_569[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_571 = tensor.insert_slice %928 into %inserted_slice_570[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_572 = tensor.insert_slice %944 into %inserted_slice_571[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_573 = tensor.insert_slice %960 into %inserted_slice_572[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_574 = tensor.insert_slice %976 into %inserted_slice_573[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %inserted_slice_575 = tensor.insert_slice %992 into %inserted_slice_574[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x736x7x7xf32>
    %993 = "tosa.sub"(%inserted_slice_575, %20) : (tensor<1x736x7x7xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x7x7xf32>
    %994 = "tosa.mul"(%993, %710) {shift = 0 : i32} : (tensor<1x736x7x7xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x7x7xf32>
    %995 = "tosa.mul"(%994, %20) {shift = 0 : i32} : (tensor<1x736x7x7xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x7x7xf32>
    %996 = "tosa.add"(%995, %20) : (tensor<1x736x7x7xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x7x7xf32>
    %997 = "tosa.clamp"(%996) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x736x7x7xf32>) -> tensor<1x736x7x7xf32>
    %998 = "tosa.transpose"(%997, %71) : (tensor<1x736x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x736xf32>
    %999 = "tosa.conv2d"(%998, %19, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x736xf32>, tensor<128x1x1x736xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1000 = "tosa.transpose"(%999, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1001 = "tosa.sub"(%1000, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1002 = "tosa.mul"(%1001, %132) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1003 = "tosa.mul"(%1002, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1004 = "tosa.add"(%1003, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1005 = "tosa.clamp"(%1004) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1006 = "tosa.transpose"(%1005, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1007 = "tosa.conv2d"(%1006, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1008 = "tosa.transpose"(%1007, %72) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_576 = tensor.insert_slice %880 into %cst_48[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_577 = tensor.insert_slice %896 into %inserted_slice_576[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_578 = tensor.insert_slice %912 into %inserted_slice_577[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_579 = tensor.insert_slice %928 into %inserted_slice_578[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_580 = tensor.insert_slice %944 into %inserted_slice_579[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_581 = tensor.insert_slice %960 into %inserted_slice_580[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_582 = tensor.insert_slice %976 into %inserted_slice_581[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_583 = tensor.insert_slice %992 into %inserted_slice_582[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %inserted_slice_584 = tensor.insert_slice %1008 into %inserted_slice_583[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x768x7x7xf32>
    %1009 = "tosa.sub"(%inserted_slice_584, %18) : (tensor<1x768x7x7xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x7x7xf32>
    %1010 = "tosa.mul"(%1009, %728) {shift = 0 : i32} : (tensor<1x768x7x7xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x7x7xf32>
    %1011 = "tosa.mul"(%1010, %18) {shift = 0 : i32} : (tensor<1x768x7x7xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x7x7xf32>
    %1012 = "tosa.add"(%1011, %18) : (tensor<1x768x7x7xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x7x7xf32>
    %1013 = "tosa.clamp"(%1012) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x768x7x7xf32>) -> tensor<1x768x7x7xf32>
    %1014 = "tosa.transpose"(%1013, %71) : (tensor<1x768x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x768xf32>
    %1015 = "tosa.conv2d"(%1014, %17, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x768xf32>, tensor<128x1x1x768xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1016 = "tosa.transpose"(%1015, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1017 = "tosa.sub"(%1016, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1018 = "tosa.mul"(%1017, %132) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1019 = "tosa.mul"(%1018, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1020 = "tosa.add"(%1019, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1021 = "tosa.clamp"(%1020) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1022 = "tosa.transpose"(%1021, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1023 = "tosa.conv2d"(%1022, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1024 = "tosa.transpose"(%1023, %72) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_585 = tensor.insert_slice %880 into %cst_49[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_586 = tensor.insert_slice %896 into %inserted_slice_585[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_587 = tensor.insert_slice %912 into %inserted_slice_586[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_588 = tensor.insert_slice %928 into %inserted_slice_587[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_589 = tensor.insert_slice %944 into %inserted_slice_588[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_590 = tensor.insert_slice %960 into %inserted_slice_589[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_591 = tensor.insert_slice %976 into %inserted_slice_590[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_592 = tensor.insert_slice %992 into %inserted_slice_591[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_593 = tensor.insert_slice %1008 into %inserted_slice_592[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %inserted_slice_594 = tensor.insert_slice %1024 into %inserted_slice_593[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x800x7x7xf32>
    %1025 = "tosa.sub"(%inserted_slice_594, %16) : (tensor<1x800x7x7xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x7x7xf32>
    %1026 = "tosa.mul"(%1025, %746) {shift = 0 : i32} : (tensor<1x800x7x7xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x7x7xf32>
    %1027 = "tosa.mul"(%1026, %16) {shift = 0 : i32} : (tensor<1x800x7x7xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x7x7xf32>
    %1028 = "tosa.add"(%1027, %16) : (tensor<1x800x7x7xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x7x7xf32>
    %1029 = "tosa.clamp"(%1028) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x800x7x7xf32>) -> tensor<1x800x7x7xf32>
    %1030 = "tosa.transpose"(%1029, %71) : (tensor<1x800x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x800xf32>
    %1031 = "tosa.conv2d"(%1030, %15, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x800xf32>, tensor<128x1x1x800xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1032 = "tosa.transpose"(%1031, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1033 = "tosa.sub"(%1032, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1034 = "tosa.mul"(%1033, %132) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1035 = "tosa.mul"(%1034, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1036 = "tosa.add"(%1035, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1037 = "tosa.clamp"(%1036) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1038 = "tosa.transpose"(%1037, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1039 = "tosa.conv2d"(%1038, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1040 = "tosa.transpose"(%1039, %72) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_595 = tensor.insert_slice %880 into %cst_50[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_596 = tensor.insert_slice %896 into %inserted_slice_595[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_597 = tensor.insert_slice %912 into %inserted_slice_596[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_598 = tensor.insert_slice %928 into %inserted_slice_597[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_599 = tensor.insert_slice %944 into %inserted_slice_598[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_600 = tensor.insert_slice %960 into %inserted_slice_599[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_601 = tensor.insert_slice %976 into %inserted_slice_600[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_602 = tensor.insert_slice %992 into %inserted_slice_601[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_603 = tensor.insert_slice %1008 into %inserted_slice_602[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_604 = tensor.insert_slice %1024 into %inserted_slice_603[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %inserted_slice_605 = tensor.insert_slice %1040 into %inserted_slice_604[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x832x7x7xf32>
    %1041 = "tosa.sub"(%inserted_slice_605, %14) : (tensor<1x832x7x7xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x7x7xf32>
    %1042 = "tosa.mul"(%1041, %764) {shift = 0 : i32} : (tensor<1x832x7x7xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x7x7xf32>
    %1043 = "tosa.mul"(%1042, %14) {shift = 0 : i32} : (tensor<1x832x7x7xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x7x7xf32>
    %1044 = "tosa.add"(%1043, %14) : (tensor<1x832x7x7xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x7x7xf32>
    %1045 = "tosa.clamp"(%1044) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x832x7x7xf32>) -> tensor<1x832x7x7xf32>
    %1046 = "tosa.transpose"(%1045, %71) : (tensor<1x832x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x832xf32>
    %1047 = "tosa.conv2d"(%1046, %13, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x832xf32>, tensor<128x1x1x832xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1048 = "tosa.transpose"(%1047, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1049 = "tosa.sub"(%1048, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1050 = "tosa.mul"(%1049, %132) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1051 = "tosa.mul"(%1050, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1052 = "tosa.add"(%1051, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1053 = "tosa.clamp"(%1052) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1054 = "tosa.transpose"(%1053, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1055 = "tosa.conv2d"(%1054, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1056 = "tosa.transpose"(%1055, %72) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_606 = tensor.insert_slice %880 into %cst_51[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_607 = tensor.insert_slice %896 into %inserted_slice_606[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_608 = tensor.insert_slice %912 into %inserted_slice_607[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_609 = tensor.insert_slice %928 into %inserted_slice_608[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_610 = tensor.insert_slice %944 into %inserted_slice_609[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_611 = tensor.insert_slice %960 into %inserted_slice_610[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_612 = tensor.insert_slice %976 into %inserted_slice_611[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_613 = tensor.insert_slice %992 into %inserted_slice_612[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_614 = tensor.insert_slice %1008 into %inserted_slice_613[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_615 = tensor.insert_slice %1024 into %inserted_slice_614[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_616 = tensor.insert_slice %1040 into %inserted_slice_615[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %inserted_slice_617 = tensor.insert_slice %1056 into %inserted_slice_616[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x864x7x7xf32>
    %1057 = "tosa.sub"(%inserted_slice_617, %12) : (tensor<1x864x7x7xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x7x7xf32>
    %1058 = "tosa.mul"(%1057, %782) {shift = 0 : i32} : (tensor<1x864x7x7xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x7x7xf32>
    %1059 = "tosa.mul"(%1058, %12) {shift = 0 : i32} : (tensor<1x864x7x7xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x7x7xf32>
    %1060 = "tosa.add"(%1059, %12) : (tensor<1x864x7x7xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x7x7xf32>
    %1061 = "tosa.clamp"(%1060) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x864x7x7xf32>) -> tensor<1x864x7x7xf32>
    %1062 = "tosa.transpose"(%1061, %71) : (tensor<1x864x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x864xf32>
    %1063 = "tosa.conv2d"(%1062, %11, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x864xf32>, tensor<128x1x1x864xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1064 = "tosa.transpose"(%1063, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1065 = "tosa.sub"(%1064, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1066 = "tosa.mul"(%1065, %132) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1067 = "tosa.mul"(%1066, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1068 = "tosa.add"(%1067, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1069 = "tosa.clamp"(%1068) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1070 = "tosa.transpose"(%1069, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1071 = "tosa.conv2d"(%1070, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1072 = "tosa.transpose"(%1071, %72) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_618 = tensor.insert_slice %880 into %cst_52[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_619 = tensor.insert_slice %896 into %inserted_slice_618[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_620 = tensor.insert_slice %912 into %inserted_slice_619[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_621 = tensor.insert_slice %928 into %inserted_slice_620[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_622 = tensor.insert_slice %944 into %inserted_slice_621[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_623 = tensor.insert_slice %960 into %inserted_slice_622[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_624 = tensor.insert_slice %976 into %inserted_slice_623[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_625 = tensor.insert_slice %992 into %inserted_slice_624[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_626 = tensor.insert_slice %1008 into %inserted_slice_625[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_627 = tensor.insert_slice %1024 into %inserted_slice_626[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_628 = tensor.insert_slice %1040 into %inserted_slice_627[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_629 = tensor.insert_slice %1056 into %inserted_slice_628[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %inserted_slice_630 = tensor.insert_slice %1072 into %inserted_slice_629[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x896x7x7xf32>
    %1073 = "tosa.sub"(%inserted_slice_630, %10) : (tensor<1x896x7x7xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x7x7xf32>
    %1074 = "tosa.mul"(%1073, %800) {shift = 0 : i32} : (tensor<1x896x7x7xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x7x7xf32>
    %1075 = "tosa.mul"(%1074, %10) {shift = 0 : i32} : (tensor<1x896x7x7xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x7x7xf32>
    %1076 = "tosa.add"(%1075, %10) : (tensor<1x896x7x7xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x7x7xf32>
    %1077 = "tosa.clamp"(%1076) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x896x7x7xf32>) -> tensor<1x896x7x7xf32>
    %1078 = "tosa.transpose"(%1077, %71) : (tensor<1x896x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x896xf32>
    %1079 = "tosa.conv2d"(%1078, %9, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x896xf32>, tensor<128x1x1x896xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1080 = "tosa.transpose"(%1079, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1081 = "tosa.sub"(%1080, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1082 = "tosa.mul"(%1081, %132) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1083 = "tosa.mul"(%1082, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1084 = "tosa.add"(%1083, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1085 = "tosa.clamp"(%1084) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1086 = "tosa.transpose"(%1085, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1087 = "tosa.conv2d"(%1086, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1088 = "tosa.transpose"(%1087, %72) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_631 = tensor.insert_slice %880 into %cst_53[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_632 = tensor.insert_slice %896 into %inserted_slice_631[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_633 = tensor.insert_slice %912 into %inserted_slice_632[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_634 = tensor.insert_slice %928 into %inserted_slice_633[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_635 = tensor.insert_slice %944 into %inserted_slice_634[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_636 = tensor.insert_slice %960 into %inserted_slice_635[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_637 = tensor.insert_slice %976 into %inserted_slice_636[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_638 = tensor.insert_slice %992 into %inserted_slice_637[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_639 = tensor.insert_slice %1008 into %inserted_slice_638[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_640 = tensor.insert_slice %1024 into %inserted_slice_639[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_641 = tensor.insert_slice %1040 into %inserted_slice_640[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_642 = tensor.insert_slice %1056 into %inserted_slice_641[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_643 = tensor.insert_slice %1072 into %inserted_slice_642[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %inserted_slice_644 = tensor.insert_slice %1088 into %inserted_slice_643[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x928x7x7xf32>
    %1089 = "tosa.sub"(%inserted_slice_644, %8) : (tensor<1x928x7x7xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x7x7xf32>
    %1090 = "tosa.mul"(%1089, %818) {shift = 0 : i32} : (tensor<1x928x7x7xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x7x7xf32>
    %1091 = "tosa.mul"(%1090, %8) {shift = 0 : i32} : (tensor<1x928x7x7xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x7x7xf32>
    %1092 = "tosa.add"(%1091, %8) : (tensor<1x928x7x7xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x7x7xf32>
    %1093 = "tosa.clamp"(%1092) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x928x7x7xf32>) -> tensor<1x928x7x7xf32>
    %1094 = "tosa.transpose"(%1093, %71) : (tensor<1x928x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x928xf32>
    %1095 = "tosa.conv2d"(%1094, %7, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x928xf32>, tensor<128x1x1x928xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1096 = "tosa.transpose"(%1095, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1097 = "tosa.sub"(%1096, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1098 = "tosa.mul"(%1097, %132) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1099 = "tosa.mul"(%1098, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1100 = "tosa.add"(%1099, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1101 = "tosa.clamp"(%1100) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1102 = "tosa.transpose"(%1101, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1103 = "tosa.conv2d"(%1102, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1104 = "tosa.transpose"(%1103, %72) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_645 = tensor.insert_slice %880 into %cst_54[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_646 = tensor.insert_slice %896 into %inserted_slice_645[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_647 = tensor.insert_slice %912 into %inserted_slice_646[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_648 = tensor.insert_slice %928 into %inserted_slice_647[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_649 = tensor.insert_slice %944 into %inserted_slice_648[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_650 = tensor.insert_slice %960 into %inserted_slice_649[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_651 = tensor.insert_slice %976 into %inserted_slice_650[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_652 = tensor.insert_slice %992 into %inserted_slice_651[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_653 = tensor.insert_slice %1008 into %inserted_slice_652[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_654 = tensor.insert_slice %1024 into %inserted_slice_653[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_655 = tensor.insert_slice %1040 into %inserted_slice_654[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_656 = tensor.insert_slice %1056 into %inserted_slice_655[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_657 = tensor.insert_slice %1072 into %inserted_slice_656[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_658 = tensor.insert_slice %1088 into %inserted_slice_657[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %inserted_slice_659 = tensor.insert_slice %1104 into %inserted_slice_658[0, 928, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x960x7x7xf32>
    %1105 = "tosa.sub"(%inserted_slice_659, %6) : (tensor<1x960x7x7xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x7x7xf32>
    %1106 = "tosa.mul"(%1105, %836) {shift = 0 : i32} : (tensor<1x960x7x7xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x7x7xf32>
    %1107 = "tosa.mul"(%1106, %6) {shift = 0 : i32} : (tensor<1x960x7x7xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x7x7xf32>
    %1108 = "tosa.add"(%1107, %6) : (tensor<1x960x7x7xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x7x7xf32>
    %1109 = "tosa.clamp"(%1108) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x960x7x7xf32>) -> tensor<1x960x7x7xf32>
    %1110 = "tosa.transpose"(%1109, %71) : (tensor<1x960x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x960xf32>
    %1111 = "tosa.conv2d"(%1110, %5, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x960xf32>, tensor<128x1x1x960xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1112 = "tosa.transpose"(%1111, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1113 = "tosa.sub"(%1112, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1114 = "tosa.mul"(%1113, %132) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1115 = "tosa.mul"(%1114, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1116 = "tosa.add"(%1115, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1117 = "tosa.clamp"(%1116) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1118 = "tosa.transpose"(%1117, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1119 = "tosa.conv2d"(%1118, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1120 = "tosa.transpose"(%1119, %72) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_660 = tensor.insert_slice %880 into %cst_55[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_661 = tensor.insert_slice %896 into %inserted_slice_660[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_662 = tensor.insert_slice %912 into %inserted_slice_661[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_663 = tensor.insert_slice %928 into %inserted_slice_662[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_664 = tensor.insert_slice %944 into %inserted_slice_663[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_665 = tensor.insert_slice %960 into %inserted_slice_664[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_666 = tensor.insert_slice %976 into %inserted_slice_665[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_667 = tensor.insert_slice %992 into %inserted_slice_666[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_668 = tensor.insert_slice %1008 into %inserted_slice_667[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_669 = tensor.insert_slice %1024 into %inserted_slice_668[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_670 = tensor.insert_slice %1040 into %inserted_slice_669[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_671 = tensor.insert_slice %1056 into %inserted_slice_670[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_672 = tensor.insert_slice %1072 into %inserted_slice_671[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_673 = tensor.insert_slice %1088 into %inserted_slice_672[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_674 = tensor.insert_slice %1104 into %inserted_slice_673[0, 928, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %inserted_slice_675 = tensor.insert_slice %1120 into %inserted_slice_674[0, 960, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x992x7x7xf32>
    %1121 = "tosa.sub"(%inserted_slice_675, %4) : (tensor<1x992x7x7xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x7x7xf32>
    %1122 = "tosa.mul"(%1121, %854) {shift = 0 : i32} : (tensor<1x992x7x7xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x7x7xf32>
    %1123 = "tosa.mul"(%1122, %4) {shift = 0 : i32} : (tensor<1x992x7x7xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x7x7xf32>
    %1124 = "tosa.add"(%1123, %4) : (tensor<1x992x7x7xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x7x7xf32>
    %1125 = "tosa.clamp"(%1124) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x992x7x7xf32>) -> tensor<1x992x7x7xf32>
    %1126 = "tosa.transpose"(%1125, %71) : (tensor<1x992x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x992xf32>
    %1127 = "tosa.conv2d"(%1126, %3, %64) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x992xf32>, tensor<128x1x1x992xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1128 = "tosa.transpose"(%1127, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1129 = "tosa.sub"(%1128, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1130 = "tosa.mul"(%1129, %132) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1131 = "tosa.mul"(%1130, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1132 = "tosa.add"(%1131, %63) : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1133 = "tosa.clamp"(%1132) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1134 = "tosa.transpose"(%1133, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1135 = "tosa.conv2d"(%1134, %62, %61) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x7x7x32xf32>
    %1136 = "tosa.transpose"(%1135, %72) : (tensor<1x7x7x32xf32>, tensor<4xi64>) -> tensor<1x32x7x7xf32>
    %inserted_slice_676 = tensor.insert_slice %880 into %cst_56[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x512x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_677 = tensor.insert_slice %896 into %inserted_slice_676[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_678 = tensor.insert_slice %912 into %inserted_slice_677[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_679 = tensor.insert_slice %928 into %inserted_slice_678[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_680 = tensor.insert_slice %944 into %inserted_slice_679[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_681 = tensor.insert_slice %960 into %inserted_slice_680[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_682 = tensor.insert_slice %976 into %inserted_slice_681[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_683 = tensor.insert_slice %992 into %inserted_slice_682[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_684 = tensor.insert_slice %1008 into %inserted_slice_683[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_685 = tensor.insert_slice %1024 into %inserted_slice_684[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_686 = tensor.insert_slice %1040 into %inserted_slice_685[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_687 = tensor.insert_slice %1056 into %inserted_slice_686[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_688 = tensor.insert_slice %1072 into %inserted_slice_687[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_689 = tensor.insert_slice %1088 into %inserted_slice_688[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_690 = tensor.insert_slice %1104 into %inserted_slice_689[0, 928, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_691 = tensor.insert_slice %1120 into %inserted_slice_690[0, 960, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %inserted_slice_692 = tensor.insert_slice %1136 into %inserted_slice_691[0, 992, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x32x7x7xf32> into tensor<1x1024x7x7xf32>
    %1137 = "tosa.sub"(%inserted_slice_692, %2) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %1138 = "tosa.mul"(%1137, %872) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %1139 = "tosa.mul"(%1138, %2) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %1140 = "tosa.add"(%1139, %2) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %1141 = "tosa.clamp"(%1140) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %1142 = "tosa.transpose"(%1141, %71) : (tensor<1x1024x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x1024xf32>
    %1143 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %1144 = "tosa.matmul"(%1143, %70) : (tensor<1x1x1000xf32>, tensor<1x1000x1024xf32>) -> tensor<1x1x1024xf32>
    %1145 = "tosa.reshape"(%1144) {new_shape = array<i64: 1, 1, 1, 1024>} : (tensor<1x1x1024xf32>) -> tensor<1x1x1x1024xf32>
    %1146 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%1142, %cst_58, %1145 : tensor<1x7x7x1024xf32>, tensor<7x7xf32>, tensor<1x1x1x1024xf32>) outs(%cst_57 : tensor<1x7x7x1024xf32>) {
    ^bb0(%in: f32, %in_1286: f32, %in_1287: f32, %out: f32):
      %2533 = arith.mulf %in_1287, %cst_97 : f32
      %2534 = arith.addf %2533, %out : f32
      linalg.yield %2534 : f32
    } -> tensor<1x7x7x1024xf32>
    %1147 = "tosa.transpose"(%1146, %72) : (tensor<1x7x7x1024xf32>, tensor<4xi64>) -> tensor<1x1024x7x7xf32>
    %1148 = "tosa.equal"(%1140, %1141) : (tensor<1x1024x7x7xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xi1>
    %1149 = "tosa.select"(%1148, %1147, %73) : (tensor<1x1024x7x7xi1>, tensor<1x1024x7x7xf32>, tensor<f32>) -> tensor<1x1024x7x7xf32>
    %1150 = "tosa.mul"(%1149, %2) {shift = 0 : i32} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %1151 = "tosa.mul"(%872, %1150) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %extracted_slice = tensor.extract_slice %1151[0, 992, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_693 = tensor.extract_slice %1151[0, 960, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_694 = tensor.extract_slice %1151[0, 928, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_695 = tensor.extract_slice %1151[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_696 = tensor.extract_slice %1151[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_697 = tensor.extract_slice %1151[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_698 = tensor.extract_slice %1151[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_699 = tensor.extract_slice %1151[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_700 = tensor.extract_slice %1151[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_701 = tensor.extract_slice %1151[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_702 = tensor.extract_slice %1151[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_703 = tensor.extract_slice %1151[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_704 = tensor.extract_slice %1151[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_705 = tensor.extract_slice %1151[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_706 = tensor.extract_slice %1151[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_707 = tensor.extract_slice %1151[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x32x7x7xf32>
    %extracted_slice_708 = tensor.extract_slice %1151[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x1024x7x7xf32> to tensor<1x512x7x7xf32>
    %1152 = "tosa.transpose"(%extracted_slice, %71) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %1153 = "tosa.transpose_conv2d"(%1152, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1154 = "tosa.transpose"(%1153, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1155 = "tosa.equal"(%1132, %1133) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %1156 = "tosa.select"(%1155, %1154, %73) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %1157 = "tosa.mul"(%1156, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1158 = "tosa.mul"(%132, %1157) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1159 = "tosa.transpose"(%1158, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1160 = "tosa.transpose_conv2d"(%1159, %75, %cst_60) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 992>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<992x1x1x128xf32>, tensor<992xf32>) -> tensor<1x7x7x992xf32>
    %1161 = "tosa.transpose"(%1160, %72) : (tensor<1x7x7x992xf32>, tensor<4xi64>) -> tensor<1x992x7x7xf32>
    %1162 = "tosa.equal"(%1124, %1125) : (tensor<1x992x7x7xf32>, tensor<1x992x7x7xf32>) -> tensor<1x992x7x7xi1>
    %1163 = "tosa.select"(%1162, %1161, %73) : (tensor<1x992x7x7xi1>, tensor<1x992x7x7xf32>, tensor<f32>) -> tensor<1x992x7x7xf32>
    %1164 = "tosa.mul"(%1163, %4) {shift = 0 : i32} : (tensor<1x992x7x7xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x7x7xf32>
    %1165 = "tosa.mul"(%854, %1164) {shift = 0 : i32} : (tensor<1x992x1x1xf32>, tensor<1x992x7x7xf32>) -> tensor<1x992x7x7xf32>
    %extracted_slice_709 = tensor.extract_slice %1165[0, 960, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %1166 = "tosa.add"(%extracted_slice_693, %extracted_slice_709) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_710 = tensor.extract_slice %1165[0, 928, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %1167 = "tosa.add"(%extracted_slice_694, %extracted_slice_710) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_711 = tensor.extract_slice %1165[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %1168 = "tosa.add"(%extracted_slice_695, %extracted_slice_711) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_712 = tensor.extract_slice %1165[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %1169 = "tosa.add"(%extracted_slice_696, %extracted_slice_712) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_713 = tensor.extract_slice %1165[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %1170 = "tosa.add"(%extracted_slice_697, %extracted_slice_713) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_714 = tensor.extract_slice %1165[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %1171 = "tosa.add"(%extracted_slice_698, %extracted_slice_714) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_715 = tensor.extract_slice %1165[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %1172 = "tosa.add"(%extracted_slice_699, %extracted_slice_715) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_716 = tensor.extract_slice %1165[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %1173 = "tosa.add"(%extracted_slice_700, %extracted_slice_716) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_717 = tensor.extract_slice %1165[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %1174 = "tosa.add"(%extracted_slice_701, %extracted_slice_717) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_718 = tensor.extract_slice %1165[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %1175 = "tosa.add"(%extracted_slice_702, %extracted_slice_718) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_719 = tensor.extract_slice %1165[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %1176 = "tosa.add"(%extracted_slice_703, %extracted_slice_719) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_720 = tensor.extract_slice %1165[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %1177 = "tosa.add"(%extracted_slice_704, %extracted_slice_720) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_721 = tensor.extract_slice %1165[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %1178 = "tosa.add"(%extracted_slice_705, %extracted_slice_721) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_722 = tensor.extract_slice %1165[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %1179 = "tosa.add"(%extracted_slice_706, %extracted_slice_722) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_723 = tensor.extract_slice %1165[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x32x7x7xf32>
    %1180 = "tosa.add"(%extracted_slice_707, %extracted_slice_723) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_724 = tensor.extract_slice %1165[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x992x7x7xf32> to tensor<1x512x7x7xf32>
    %1181 = "tosa.add"(%extracted_slice_708, %extracted_slice_724) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %1182 = "tosa.transpose"(%1166, %71) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %1183 = "tosa.transpose_conv2d"(%1182, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1184 = "tosa.transpose"(%1183, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1185 = "tosa.equal"(%1116, %1117) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %1186 = "tosa.select"(%1185, %1184, %73) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %1187 = "tosa.mul"(%1186, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1188 = "tosa.mul"(%132, %1187) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1189 = "tosa.transpose"(%1188, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1190 = "tosa.transpose_conv2d"(%1189, %76, %cst_61) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 960>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<960x1x1x128xf32>, tensor<960xf32>) -> tensor<1x7x7x960xf32>
    %1191 = "tosa.transpose"(%1190, %72) : (tensor<1x7x7x960xf32>, tensor<4xi64>) -> tensor<1x960x7x7xf32>
    %1192 = "tosa.equal"(%1108, %1109) : (tensor<1x960x7x7xf32>, tensor<1x960x7x7xf32>) -> tensor<1x960x7x7xi1>
    %1193 = "tosa.select"(%1192, %1191, %73) : (tensor<1x960x7x7xi1>, tensor<1x960x7x7xf32>, tensor<f32>) -> tensor<1x960x7x7xf32>
    %1194 = "tosa.mul"(%1193, %6) {shift = 0 : i32} : (tensor<1x960x7x7xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x7x7xf32>
    %1195 = "tosa.mul"(%836, %1194) {shift = 0 : i32} : (tensor<1x960x1x1xf32>, tensor<1x960x7x7xf32>) -> tensor<1x960x7x7xf32>
    %extracted_slice_725 = tensor.extract_slice %1195[0, 928, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %1196 = "tosa.add"(%1167, %extracted_slice_725) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_726 = tensor.extract_slice %1195[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %1197 = "tosa.add"(%1168, %extracted_slice_726) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_727 = tensor.extract_slice %1195[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %1198 = "tosa.add"(%1169, %extracted_slice_727) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_728 = tensor.extract_slice %1195[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %1199 = "tosa.add"(%1170, %extracted_slice_728) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_729 = tensor.extract_slice %1195[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %1200 = "tosa.add"(%1171, %extracted_slice_729) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_730 = tensor.extract_slice %1195[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %1201 = "tosa.add"(%1172, %extracted_slice_730) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_731 = tensor.extract_slice %1195[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %1202 = "tosa.add"(%1173, %extracted_slice_731) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_732 = tensor.extract_slice %1195[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %1203 = "tosa.add"(%1174, %extracted_slice_732) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_733 = tensor.extract_slice %1195[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %1204 = "tosa.add"(%1175, %extracted_slice_733) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_734 = tensor.extract_slice %1195[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %1205 = "tosa.add"(%1176, %extracted_slice_734) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_735 = tensor.extract_slice %1195[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %1206 = "tosa.add"(%1177, %extracted_slice_735) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_736 = tensor.extract_slice %1195[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %1207 = "tosa.add"(%1178, %extracted_slice_736) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_737 = tensor.extract_slice %1195[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %1208 = "tosa.add"(%1179, %extracted_slice_737) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_738 = tensor.extract_slice %1195[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x32x7x7xf32>
    %1209 = "tosa.add"(%1180, %extracted_slice_738) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_739 = tensor.extract_slice %1195[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x960x7x7xf32> to tensor<1x512x7x7xf32>
    %1210 = "tosa.add"(%1181, %extracted_slice_739) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %1211 = "tosa.transpose"(%1196, %71) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %1212 = "tosa.transpose_conv2d"(%1211, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1213 = "tosa.transpose"(%1212, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1214 = "tosa.equal"(%1100, %1101) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %1215 = "tosa.select"(%1214, %1213, %73) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %1216 = "tosa.mul"(%1215, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1217 = "tosa.mul"(%132, %1216) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1218 = "tosa.transpose"(%1217, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1219 = "tosa.transpose_conv2d"(%1218, %77, %cst_62) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 928>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<928x1x1x128xf32>, tensor<928xf32>) -> tensor<1x7x7x928xf32>
    %1220 = "tosa.transpose"(%1219, %72) : (tensor<1x7x7x928xf32>, tensor<4xi64>) -> tensor<1x928x7x7xf32>
    %1221 = "tosa.equal"(%1092, %1093) : (tensor<1x928x7x7xf32>, tensor<1x928x7x7xf32>) -> tensor<1x928x7x7xi1>
    %1222 = "tosa.select"(%1221, %1220, %73) : (tensor<1x928x7x7xi1>, tensor<1x928x7x7xf32>, tensor<f32>) -> tensor<1x928x7x7xf32>
    %1223 = "tosa.mul"(%1222, %8) {shift = 0 : i32} : (tensor<1x928x7x7xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x7x7xf32>
    %1224 = "tosa.mul"(%818, %1223) {shift = 0 : i32} : (tensor<1x928x1x1xf32>, tensor<1x928x7x7xf32>) -> tensor<1x928x7x7xf32>
    %extracted_slice_740 = tensor.extract_slice %1224[0, 896, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %1225 = "tosa.add"(%1197, %extracted_slice_740) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_741 = tensor.extract_slice %1224[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %1226 = "tosa.add"(%1198, %extracted_slice_741) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_742 = tensor.extract_slice %1224[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %1227 = "tosa.add"(%1199, %extracted_slice_742) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_743 = tensor.extract_slice %1224[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %1228 = "tosa.add"(%1200, %extracted_slice_743) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_744 = tensor.extract_slice %1224[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %1229 = "tosa.add"(%1201, %extracted_slice_744) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_745 = tensor.extract_slice %1224[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %1230 = "tosa.add"(%1202, %extracted_slice_745) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_746 = tensor.extract_slice %1224[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %1231 = "tosa.add"(%1203, %extracted_slice_746) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_747 = tensor.extract_slice %1224[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %1232 = "tosa.add"(%1204, %extracted_slice_747) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_748 = tensor.extract_slice %1224[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %1233 = "tosa.add"(%1205, %extracted_slice_748) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_749 = tensor.extract_slice %1224[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %1234 = "tosa.add"(%1206, %extracted_slice_749) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_750 = tensor.extract_slice %1224[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %1235 = "tosa.add"(%1207, %extracted_slice_750) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_751 = tensor.extract_slice %1224[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %1236 = "tosa.add"(%1208, %extracted_slice_751) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_752 = tensor.extract_slice %1224[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x32x7x7xf32>
    %1237 = "tosa.add"(%1209, %extracted_slice_752) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_753 = tensor.extract_slice %1224[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x928x7x7xf32> to tensor<1x512x7x7xf32>
    %1238 = "tosa.add"(%1210, %extracted_slice_753) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %1239 = "tosa.transpose"(%1225, %71) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %1240 = "tosa.transpose_conv2d"(%1239, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1241 = "tosa.transpose"(%1240, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1242 = "tosa.equal"(%1084, %1085) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %1243 = "tosa.select"(%1242, %1241, %73) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %1244 = "tosa.mul"(%1243, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1245 = "tosa.mul"(%132, %1244) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1246 = "tosa.transpose"(%1245, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1247 = "tosa.transpose_conv2d"(%1246, %78, %cst_63) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 896>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<896x1x1x128xf32>, tensor<896xf32>) -> tensor<1x7x7x896xf32>
    %1248 = "tosa.transpose"(%1247, %72) : (tensor<1x7x7x896xf32>, tensor<4xi64>) -> tensor<1x896x7x7xf32>
    %1249 = "tosa.equal"(%1076, %1077) : (tensor<1x896x7x7xf32>, tensor<1x896x7x7xf32>) -> tensor<1x896x7x7xi1>
    %1250 = "tosa.select"(%1249, %1248, %73) : (tensor<1x896x7x7xi1>, tensor<1x896x7x7xf32>, tensor<f32>) -> tensor<1x896x7x7xf32>
    %1251 = "tosa.mul"(%1250, %10) {shift = 0 : i32} : (tensor<1x896x7x7xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x7x7xf32>
    %1252 = "tosa.mul"(%800, %1251) {shift = 0 : i32} : (tensor<1x896x1x1xf32>, tensor<1x896x7x7xf32>) -> tensor<1x896x7x7xf32>
    %extracted_slice_754 = tensor.extract_slice %1252[0, 864, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %1253 = "tosa.add"(%1226, %extracted_slice_754) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_755 = tensor.extract_slice %1252[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %1254 = "tosa.add"(%1227, %extracted_slice_755) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_756 = tensor.extract_slice %1252[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %1255 = "tosa.add"(%1228, %extracted_slice_756) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_757 = tensor.extract_slice %1252[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %1256 = "tosa.add"(%1229, %extracted_slice_757) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_758 = tensor.extract_slice %1252[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %1257 = "tosa.add"(%1230, %extracted_slice_758) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_759 = tensor.extract_slice %1252[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %1258 = "tosa.add"(%1231, %extracted_slice_759) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_760 = tensor.extract_slice %1252[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %1259 = "tosa.add"(%1232, %extracted_slice_760) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_761 = tensor.extract_slice %1252[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %1260 = "tosa.add"(%1233, %extracted_slice_761) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_762 = tensor.extract_slice %1252[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %1261 = "tosa.add"(%1234, %extracted_slice_762) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_763 = tensor.extract_slice %1252[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %1262 = "tosa.add"(%1235, %extracted_slice_763) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_764 = tensor.extract_slice %1252[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %1263 = "tosa.add"(%1236, %extracted_slice_764) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_765 = tensor.extract_slice %1252[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x32x7x7xf32>
    %1264 = "tosa.add"(%1237, %extracted_slice_765) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_766 = tensor.extract_slice %1252[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x896x7x7xf32> to tensor<1x512x7x7xf32>
    %1265 = "tosa.add"(%1238, %extracted_slice_766) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %1266 = "tosa.transpose"(%1253, %71) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %1267 = "tosa.transpose_conv2d"(%1266, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1268 = "tosa.transpose"(%1267, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1269 = "tosa.equal"(%1068, %1069) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %1270 = "tosa.select"(%1269, %1268, %73) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %1271 = "tosa.mul"(%1270, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1272 = "tosa.mul"(%132, %1271) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1273 = "tosa.transpose"(%1272, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1274 = "tosa.transpose_conv2d"(%1273, %79, %cst_64) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 864>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<864x1x1x128xf32>, tensor<864xf32>) -> tensor<1x7x7x864xf32>
    %1275 = "tosa.transpose"(%1274, %72) : (tensor<1x7x7x864xf32>, tensor<4xi64>) -> tensor<1x864x7x7xf32>
    %1276 = "tosa.equal"(%1060, %1061) : (tensor<1x864x7x7xf32>, tensor<1x864x7x7xf32>) -> tensor<1x864x7x7xi1>
    %1277 = "tosa.select"(%1276, %1275, %73) : (tensor<1x864x7x7xi1>, tensor<1x864x7x7xf32>, tensor<f32>) -> tensor<1x864x7x7xf32>
    %1278 = "tosa.mul"(%1277, %12) {shift = 0 : i32} : (tensor<1x864x7x7xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x7x7xf32>
    %1279 = "tosa.mul"(%782, %1278) {shift = 0 : i32} : (tensor<1x864x1x1xf32>, tensor<1x864x7x7xf32>) -> tensor<1x864x7x7xf32>
    %extracted_slice_767 = tensor.extract_slice %1279[0, 832, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %1280 = "tosa.add"(%1254, %extracted_slice_767) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_768 = tensor.extract_slice %1279[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %1281 = "tosa.add"(%1255, %extracted_slice_768) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_769 = tensor.extract_slice %1279[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %1282 = "tosa.add"(%1256, %extracted_slice_769) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_770 = tensor.extract_slice %1279[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %1283 = "tosa.add"(%1257, %extracted_slice_770) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_771 = tensor.extract_slice %1279[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %1284 = "tosa.add"(%1258, %extracted_slice_771) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_772 = tensor.extract_slice %1279[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %1285 = "tosa.add"(%1259, %extracted_slice_772) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_773 = tensor.extract_slice %1279[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %1286 = "tosa.add"(%1260, %extracted_slice_773) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_774 = tensor.extract_slice %1279[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %1287 = "tosa.add"(%1261, %extracted_slice_774) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_775 = tensor.extract_slice %1279[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %1288 = "tosa.add"(%1262, %extracted_slice_775) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_776 = tensor.extract_slice %1279[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %1289 = "tosa.add"(%1263, %extracted_slice_776) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_777 = tensor.extract_slice %1279[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x32x7x7xf32>
    %1290 = "tosa.add"(%1264, %extracted_slice_777) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_778 = tensor.extract_slice %1279[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x864x7x7xf32> to tensor<1x512x7x7xf32>
    %1291 = "tosa.add"(%1265, %extracted_slice_778) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %1292 = "tosa.transpose"(%1280, %71) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %1293 = "tosa.transpose_conv2d"(%1292, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1294 = "tosa.transpose"(%1293, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1295 = "tosa.equal"(%1052, %1053) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %1296 = "tosa.select"(%1295, %1294, %73) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %1297 = "tosa.mul"(%1296, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1298 = "tosa.mul"(%132, %1297) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1299 = "tosa.transpose"(%1298, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1300 = "tosa.transpose_conv2d"(%1299, %80, %cst_65) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 832>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<832x1x1x128xf32>, tensor<832xf32>) -> tensor<1x7x7x832xf32>
    %1301 = "tosa.transpose"(%1300, %72) : (tensor<1x7x7x832xf32>, tensor<4xi64>) -> tensor<1x832x7x7xf32>
    %1302 = "tosa.equal"(%1044, %1045) : (tensor<1x832x7x7xf32>, tensor<1x832x7x7xf32>) -> tensor<1x832x7x7xi1>
    %1303 = "tosa.select"(%1302, %1301, %73) : (tensor<1x832x7x7xi1>, tensor<1x832x7x7xf32>, tensor<f32>) -> tensor<1x832x7x7xf32>
    %1304 = "tosa.mul"(%1303, %14) {shift = 0 : i32} : (tensor<1x832x7x7xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x7x7xf32>
    %1305 = "tosa.mul"(%764, %1304) {shift = 0 : i32} : (tensor<1x832x1x1xf32>, tensor<1x832x7x7xf32>) -> tensor<1x832x7x7xf32>
    %extracted_slice_779 = tensor.extract_slice %1305[0, 800, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x32x7x7xf32>
    %1306 = "tosa.add"(%1281, %extracted_slice_779) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_780 = tensor.extract_slice %1305[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x32x7x7xf32>
    %1307 = "tosa.add"(%1282, %extracted_slice_780) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_781 = tensor.extract_slice %1305[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x32x7x7xf32>
    %1308 = "tosa.add"(%1283, %extracted_slice_781) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_782 = tensor.extract_slice %1305[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x32x7x7xf32>
    %1309 = "tosa.add"(%1284, %extracted_slice_782) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_783 = tensor.extract_slice %1305[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x32x7x7xf32>
    %1310 = "tosa.add"(%1285, %extracted_slice_783) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_784 = tensor.extract_slice %1305[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x32x7x7xf32>
    %1311 = "tosa.add"(%1286, %extracted_slice_784) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_785 = tensor.extract_slice %1305[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x32x7x7xf32>
    %1312 = "tosa.add"(%1287, %extracted_slice_785) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_786 = tensor.extract_slice %1305[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x32x7x7xf32>
    %1313 = "tosa.add"(%1288, %extracted_slice_786) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_787 = tensor.extract_slice %1305[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x32x7x7xf32>
    %1314 = "tosa.add"(%1289, %extracted_slice_787) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_788 = tensor.extract_slice %1305[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x32x7x7xf32>
    %1315 = "tosa.add"(%1290, %extracted_slice_788) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_789 = tensor.extract_slice %1305[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x832x7x7xf32> to tensor<1x512x7x7xf32>
    %1316 = "tosa.add"(%1291, %extracted_slice_789) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %1317 = "tosa.transpose"(%1306, %71) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %1318 = "tosa.transpose_conv2d"(%1317, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1319 = "tosa.transpose"(%1318, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1320 = "tosa.equal"(%1036, %1037) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %1321 = "tosa.select"(%1320, %1319, %73) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %1322 = "tosa.mul"(%1321, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1323 = "tosa.mul"(%132, %1322) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1324 = "tosa.transpose"(%1323, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1325 = "tosa.transpose_conv2d"(%1324, %81, %cst_66) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 800>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<800x1x1x128xf32>, tensor<800xf32>) -> tensor<1x7x7x800xf32>
    %1326 = "tosa.transpose"(%1325, %72) : (tensor<1x7x7x800xf32>, tensor<4xi64>) -> tensor<1x800x7x7xf32>
    %1327 = "tosa.equal"(%1028, %1029) : (tensor<1x800x7x7xf32>, tensor<1x800x7x7xf32>) -> tensor<1x800x7x7xi1>
    %1328 = "tosa.select"(%1327, %1326, %73) : (tensor<1x800x7x7xi1>, tensor<1x800x7x7xf32>, tensor<f32>) -> tensor<1x800x7x7xf32>
    %1329 = "tosa.mul"(%1328, %16) {shift = 0 : i32} : (tensor<1x800x7x7xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x7x7xf32>
    %1330 = "tosa.mul"(%746, %1329) {shift = 0 : i32} : (tensor<1x800x1x1xf32>, tensor<1x800x7x7xf32>) -> tensor<1x800x7x7xf32>
    %extracted_slice_790 = tensor.extract_slice %1330[0, 768, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x800x7x7xf32> to tensor<1x32x7x7xf32>
    %1331 = "tosa.add"(%1307, %extracted_slice_790) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_791 = tensor.extract_slice %1330[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x800x7x7xf32> to tensor<1x32x7x7xf32>
    %1332 = "tosa.add"(%1308, %extracted_slice_791) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_792 = tensor.extract_slice %1330[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x800x7x7xf32> to tensor<1x32x7x7xf32>
    %1333 = "tosa.add"(%1309, %extracted_slice_792) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_793 = tensor.extract_slice %1330[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x800x7x7xf32> to tensor<1x32x7x7xf32>
    %1334 = "tosa.add"(%1310, %extracted_slice_793) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_794 = tensor.extract_slice %1330[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x800x7x7xf32> to tensor<1x32x7x7xf32>
    %1335 = "tosa.add"(%1311, %extracted_slice_794) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_795 = tensor.extract_slice %1330[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x800x7x7xf32> to tensor<1x32x7x7xf32>
    %1336 = "tosa.add"(%1312, %extracted_slice_795) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_796 = tensor.extract_slice %1330[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x800x7x7xf32> to tensor<1x32x7x7xf32>
    %1337 = "tosa.add"(%1313, %extracted_slice_796) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_797 = tensor.extract_slice %1330[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x800x7x7xf32> to tensor<1x32x7x7xf32>
    %1338 = "tosa.add"(%1314, %extracted_slice_797) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_798 = tensor.extract_slice %1330[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x800x7x7xf32> to tensor<1x32x7x7xf32>
    %1339 = "tosa.add"(%1315, %extracted_slice_798) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_799 = tensor.extract_slice %1330[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x800x7x7xf32> to tensor<1x512x7x7xf32>
    %1340 = "tosa.add"(%1316, %extracted_slice_799) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %1341 = "tosa.transpose"(%1331, %71) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %1342 = "tosa.transpose_conv2d"(%1341, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1343 = "tosa.transpose"(%1342, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1344 = "tosa.equal"(%1020, %1021) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %1345 = "tosa.select"(%1344, %1343, %73) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %1346 = "tosa.mul"(%1345, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1347 = "tosa.mul"(%132, %1346) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1348 = "tosa.transpose"(%1347, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1349 = "tosa.transpose_conv2d"(%1348, %82, %cst_67) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 768>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<768x1x1x128xf32>, tensor<768xf32>) -> tensor<1x7x7x768xf32>
    %1350 = "tosa.transpose"(%1349, %72) : (tensor<1x7x7x768xf32>, tensor<4xi64>) -> tensor<1x768x7x7xf32>
    %1351 = "tosa.equal"(%1012, %1013) : (tensor<1x768x7x7xf32>, tensor<1x768x7x7xf32>) -> tensor<1x768x7x7xi1>
    %1352 = "tosa.select"(%1351, %1350, %73) : (tensor<1x768x7x7xi1>, tensor<1x768x7x7xf32>, tensor<f32>) -> tensor<1x768x7x7xf32>
    %1353 = "tosa.mul"(%1352, %18) {shift = 0 : i32} : (tensor<1x768x7x7xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x7x7xf32>
    %1354 = "tosa.mul"(%728, %1353) {shift = 0 : i32} : (tensor<1x768x1x1xf32>, tensor<1x768x7x7xf32>) -> tensor<1x768x7x7xf32>
    %extracted_slice_800 = tensor.extract_slice %1354[0, 736, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x768x7x7xf32> to tensor<1x32x7x7xf32>
    %1355 = "tosa.add"(%1332, %extracted_slice_800) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_801 = tensor.extract_slice %1354[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x768x7x7xf32> to tensor<1x32x7x7xf32>
    %1356 = "tosa.add"(%1333, %extracted_slice_801) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_802 = tensor.extract_slice %1354[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x768x7x7xf32> to tensor<1x32x7x7xf32>
    %1357 = "tosa.add"(%1334, %extracted_slice_802) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_803 = tensor.extract_slice %1354[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x768x7x7xf32> to tensor<1x32x7x7xf32>
    %1358 = "tosa.add"(%1335, %extracted_slice_803) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_804 = tensor.extract_slice %1354[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x768x7x7xf32> to tensor<1x32x7x7xf32>
    %1359 = "tosa.add"(%1336, %extracted_slice_804) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_805 = tensor.extract_slice %1354[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x768x7x7xf32> to tensor<1x32x7x7xf32>
    %1360 = "tosa.add"(%1337, %extracted_slice_805) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_806 = tensor.extract_slice %1354[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x768x7x7xf32> to tensor<1x32x7x7xf32>
    %1361 = "tosa.add"(%1338, %extracted_slice_806) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_807 = tensor.extract_slice %1354[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x768x7x7xf32> to tensor<1x32x7x7xf32>
    %1362 = "tosa.add"(%1339, %extracted_slice_807) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_808 = tensor.extract_slice %1354[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x768x7x7xf32> to tensor<1x512x7x7xf32>
    %1363 = "tosa.add"(%1340, %extracted_slice_808) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %1364 = "tosa.transpose"(%1355, %71) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %1365 = "tosa.transpose_conv2d"(%1364, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1366 = "tosa.transpose"(%1365, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1367 = "tosa.equal"(%1004, %1005) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %1368 = "tosa.select"(%1367, %1366, %73) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %1369 = "tosa.mul"(%1368, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1370 = "tosa.mul"(%132, %1369) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1371 = "tosa.transpose"(%1370, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1372 = "tosa.transpose_conv2d"(%1371, %83, %cst_68) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 736>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<736x1x1x128xf32>, tensor<736xf32>) -> tensor<1x7x7x736xf32>
    %1373 = "tosa.transpose"(%1372, %72) : (tensor<1x7x7x736xf32>, tensor<4xi64>) -> tensor<1x736x7x7xf32>
    %1374 = "tosa.equal"(%996, %997) : (tensor<1x736x7x7xf32>, tensor<1x736x7x7xf32>) -> tensor<1x736x7x7xi1>
    %1375 = "tosa.select"(%1374, %1373, %73) : (tensor<1x736x7x7xi1>, tensor<1x736x7x7xf32>, tensor<f32>) -> tensor<1x736x7x7xf32>
    %1376 = "tosa.mul"(%1375, %20) {shift = 0 : i32} : (tensor<1x736x7x7xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x7x7xf32>
    %1377 = "tosa.mul"(%710, %1376) {shift = 0 : i32} : (tensor<1x736x1x1xf32>, tensor<1x736x7x7xf32>) -> tensor<1x736x7x7xf32>
    %extracted_slice_809 = tensor.extract_slice %1377[0, 704, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x736x7x7xf32> to tensor<1x32x7x7xf32>
    %1378 = "tosa.add"(%1356, %extracted_slice_809) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_810 = tensor.extract_slice %1377[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x736x7x7xf32> to tensor<1x32x7x7xf32>
    %1379 = "tosa.add"(%1357, %extracted_slice_810) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_811 = tensor.extract_slice %1377[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x736x7x7xf32> to tensor<1x32x7x7xf32>
    %1380 = "tosa.add"(%1358, %extracted_slice_811) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_812 = tensor.extract_slice %1377[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x736x7x7xf32> to tensor<1x32x7x7xf32>
    %1381 = "tosa.add"(%1359, %extracted_slice_812) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_813 = tensor.extract_slice %1377[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x736x7x7xf32> to tensor<1x32x7x7xf32>
    %1382 = "tosa.add"(%1360, %extracted_slice_813) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_814 = tensor.extract_slice %1377[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x736x7x7xf32> to tensor<1x32x7x7xf32>
    %1383 = "tosa.add"(%1361, %extracted_slice_814) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_815 = tensor.extract_slice %1377[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x736x7x7xf32> to tensor<1x32x7x7xf32>
    %1384 = "tosa.add"(%1362, %extracted_slice_815) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_816 = tensor.extract_slice %1377[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x736x7x7xf32> to tensor<1x512x7x7xf32>
    %1385 = "tosa.add"(%1363, %extracted_slice_816) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %1386 = "tosa.transpose"(%1378, %71) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %1387 = "tosa.transpose_conv2d"(%1386, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1388 = "tosa.transpose"(%1387, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1389 = "tosa.equal"(%988, %989) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %1390 = "tosa.select"(%1389, %1388, %73) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %1391 = "tosa.mul"(%1390, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1392 = "tosa.mul"(%132, %1391) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1393 = "tosa.transpose"(%1392, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1394 = "tosa.transpose_conv2d"(%1393, %84, %cst_69) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 704>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<704x1x1x128xf32>, tensor<704xf32>) -> tensor<1x7x7x704xf32>
    %1395 = "tosa.transpose"(%1394, %72) : (tensor<1x7x7x704xf32>, tensor<4xi64>) -> tensor<1x704x7x7xf32>
    %1396 = "tosa.equal"(%980, %981) : (tensor<1x704x7x7xf32>, tensor<1x704x7x7xf32>) -> tensor<1x704x7x7xi1>
    %1397 = "tosa.select"(%1396, %1395, %73) : (tensor<1x704x7x7xi1>, tensor<1x704x7x7xf32>, tensor<f32>) -> tensor<1x704x7x7xf32>
    %1398 = "tosa.mul"(%1397, %22) {shift = 0 : i32} : (tensor<1x704x7x7xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x7x7xf32>
    %1399 = "tosa.mul"(%692, %1398) {shift = 0 : i32} : (tensor<1x704x1x1xf32>, tensor<1x704x7x7xf32>) -> tensor<1x704x7x7xf32>
    %extracted_slice_817 = tensor.extract_slice %1399[0, 672, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x704x7x7xf32> to tensor<1x32x7x7xf32>
    %1400 = "tosa.add"(%1379, %extracted_slice_817) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_818 = tensor.extract_slice %1399[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x704x7x7xf32> to tensor<1x32x7x7xf32>
    %1401 = "tosa.add"(%1380, %extracted_slice_818) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_819 = tensor.extract_slice %1399[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x704x7x7xf32> to tensor<1x32x7x7xf32>
    %1402 = "tosa.add"(%1381, %extracted_slice_819) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_820 = tensor.extract_slice %1399[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x704x7x7xf32> to tensor<1x32x7x7xf32>
    %1403 = "tosa.add"(%1382, %extracted_slice_820) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_821 = tensor.extract_slice %1399[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x704x7x7xf32> to tensor<1x32x7x7xf32>
    %1404 = "tosa.add"(%1383, %extracted_slice_821) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_822 = tensor.extract_slice %1399[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x704x7x7xf32> to tensor<1x32x7x7xf32>
    %1405 = "tosa.add"(%1384, %extracted_slice_822) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_823 = tensor.extract_slice %1399[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x704x7x7xf32> to tensor<1x512x7x7xf32>
    %1406 = "tosa.add"(%1385, %extracted_slice_823) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %1407 = "tosa.transpose"(%1400, %71) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %1408 = "tosa.transpose_conv2d"(%1407, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1409 = "tosa.transpose"(%1408, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1410 = "tosa.equal"(%972, %973) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %1411 = "tosa.select"(%1410, %1409, %73) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %1412 = "tosa.mul"(%1411, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1413 = "tosa.mul"(%132, %1412) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1414 = "tosa.transpose"(%1413, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1415 = "tosa.transpose_conv2d"(%1414, %85, %cst_70) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 672>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<672x1x1x128xf32>, tensor<672xf32>) -> tensor<1x7x7x672xf32>
    %1416 = "tosa.transpose"(%1415, %72) : (tensor<1x7x7x672xf32>, tensor<4xi64>) -> tensor<1x672x7x7xf32>
    %1417 = "tosa.equal"(%964, %965) : (tensor<1x672x7x7xf32>, tensor<1x672x7x7xf32>) -> tensor<1x672x7x7xi1>
    %1418 = "tosa.select"(%1417, %1416, %73) : (tensor<1x672x7x7xi1>, tensor<1x672x7x7xf32>, tensor<f32>) -> tensor<1x672x7x7xf32>
    %1419 = "tosa.mul"(%1418, %24) {shift = 0 : i32} : (tensor<1x672x7x7xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x7x7xf32>
    %1420 = "tosa.mul"(%674, %1419) {shift = 0 : i32} : (tensor<1x672x1x1xf32>, tensor<1x672x7x7xf32>) -> tensor<1x672x7x7xf32>
    %extracted_slice_824 = tensor.extract_slice %1420[0, 640, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x672x7x7xf32> to tensor<1x32x7x7xf32>
    %1421 = "tosa.add"(%1401, %extracted_slice_824) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_825 = tensor.extract_slice %1420[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x672x7x7xf32> to tensor<1x32x7x7xf32>
    %1422 = "tosa.add"(%1402, %extracted_slice_825) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_826 = tensor.extract_slice %1420[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x672x7x7xf32> to tensor<1x32x7x7xf32>
    %1423 = "tosa.add"(%1403, %extracted_slice_826) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_827 = tensor.extract_slice %1420[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x672x7x7xf32> to tensor<1x32x7x7xf32>
    %1424 = "tosa.add"(%1404, %extracted_slice_827) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_828 = tensor.extract_slice %1420[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x672x7x7xf32> to tensor<1x32x7x7xf32>
    %1425 = "tosa.add"(%1405, %extracted_slice_828) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_829 = tensor.extract_slice %1420[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x672x7x7xf32> to tensor<1x512x7x7xf32>
    %1426 = "tosa.add"(%1406, %extracted_slice_829) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %1427 = "tosa.transpose"(%1421, %71) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %1428 = "tosa.transpose_conv2d"(%1427, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1429 = "tosa.transpose"(%1428, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1430 = "tosa.equal"(%956, %957) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %1431 = "tosa.select"(%1430, %1429, %73) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %1432 = "tosa.mul"(%1431, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1433 = "tosa.mul"(%132, %1432) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1434 = "tosa.transpose"(%1433, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1435 = "tosa.transpose_conv2d"(%1434, %86, %cst_71) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 640>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<640x1x1x128xf32>, tensor<640xf32>) -> tensor<1x7x7x640xf32>
    %1436 = "tosa.transpose"(%1435, %72) : (tensor<1x7x7x640xf32>, tensor<4xi64>) -> tensor<1x640x7x7xf32>
    %1437 = "tosa.equal"(%948, %949) : (tensor<1x640x7x7xf32>, tensor<1x640x7x7xf32>) -> tensor<1x640x7x7xi1>
    %1438 = "tosa.select"(%1437, %1436, %73) : (tensor<1x640x7x7xi1>, tensor<1x640x7x7xf32>, tensor<f32>) -> tensor<1x640x7x7xf32>
    %1439 = "tosa.mul"(%1438, %26) {shift = 0 : i32} : (tensor<1x640x7x7xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x7x7xf32>
    %1440 = "tosa.mul"(%656, %1439) {shift = 0 : i32} : (tensor<1x640x1x1xf32>, tensor<1x640x7x7xf32>) -> tensor<1x640x7x7xf32>
    %extracted_slice_830 = tensor.extract_slice %1440[0, 608, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x640x7x7xf32> to tensor<1x32x7x7xf32>
    %1441 = "tosa.add"(%1422, %extracted_slice_830) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_831 = tensor.extract_slice %1440[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x640x7x7xf32> to tensor<1x32x7x7xf32>
    %1442 = "tosa.add"(%1423, %extracted_slice_831) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_832 = tensor.extract_slice %1440[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x640x7x7xf32> to tensor<1x32x7x7xf32>
    %1443 = "tosa.add"(%1424, %extracted_slice_832) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_833 = tensor.extract_slice %1440[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x640x7x7xf32> to tensor<1x32x7x7xf32>
    %1444 = "tosa.add"(%1425, %extracted_slice_833) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_834 = tensor.extract_slice %1440[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x640x7x7xf32> to tensor<1x512x7x7xf32>
    %1445 = "tosa.add"(%1426, %extracted_slice_834) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %1446 = "tosa.transpose"(%1441, %71) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %1447 = "tosa.transpose_conv2d"(%1446, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1448 = "tosa.transpose"(%1447, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1449 = "tosa.equal"(%940, %941) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %1450 = "tosa.select"(%1449, %1448, %73) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %1451 = "tosa.mul"(%1450, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1452 = "tosa.mul"(%132, %1451) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1453 = "tosa.transpose"(%1452, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1454 = "tosa.transpose_conv2d"(%1453, %87, %cst_72) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 608>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<608x1x1x128xf32>, tensor<608xf32>) -> tensor<1x7x7x608xf32>
    %1455 = "tosa.transpose"(%1454, %72) : (tensor<1x7x7x608xf32>, tensor<4xi64>) -> tensor<1x608x7x7xf32>
    %1456 = "tosa.equal"(%932, %933) : (tensor<1x608x7x7xf32>, tensor<1x608x7x7xf32>) -> tensor<1x608x7x7xi1>
    %1457 = "tosa.select"(%1456, %1455, %73) : (tensor<1x608x7x7xi1>, tensor<1x608x7x7xf32>, tensor<f32>) -> tensor<1x608x7x7xf32>
    %1458 = "tosa.mul"(%1457, %28) {shift = 0 : i32} : (tensor<1x608x7x7xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x7x7xf32>
    %1459 = "tosa.mul"(%638, %1458) {shift = 0 : i32} : (tensor<1x608x1x1xf32>, tensor<1x608x7x7xf32>) -> tensor<1x608x7x7xf32>
    %extracted_slice_835 = tensor.extract_slice %1459[0, 576, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x608x7x7xf32> to tensor<1x32x7x7xf32>
    %1460 = "tosa.add"(%1442, %extracted_slice_835) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_836 = tensor.extract_slice %1459[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x608x7x7xf32> to tensor<1x32x7x7xf32>
    %1461 = "tosa.add"(%1443, %extracted_slice_836) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_837 = tensor.extract_slice %1459[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x608x7x7xf32> to tensor<1x32x7x7xf32>
    %1462 = "tosa.add"(%1444, %extracted_slice_837) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_838 = tensor.extract_slice %1459[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x608x7x7xf32> to tensor<1x512x7x7xf32>
    %1463 = "tosa.add"(%1445, %extracted_slice_838) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %1464 = "tosa.transpose"(%1460, %71) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %1465 = "tosa.transpose_conv2d"(%1464, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1466 = "tosa.transpose"(%1465, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1467 = "tosa.equal"(%924, %925) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %1468 = "tosa.select"(%1467, %1466, %73) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %1469 = "tosa.mul"(%1468, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1470 = "tosa.mul"(%132, %1469) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1471 = "tosa.transpose"(%1470, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1472 = "tosa.transpose_conv2d"(%1471, %88, %cst_73) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 576>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<576x1x1x128xf32>, tensor<576xf32>) -> tensor<1x7x7x576xf32>
    %1473 = "tosa.transpose"(%1472, %72) : (tensor<1x7x7x576xf32>, tensor<4xi64>) -> tensor<1x576x7x7xf32>
    %1474 = "tosa.equal"(%916, %917) : (tensor<1x576x7x7xf32>, tensor<1x576x7x7xf32>) -> tensor<1x576x7x7xi1>
    %1475 = "tosa.select"(%1474, %1473, %73) : (tensor<1x576x7x7xi1>, tensor<1x576x7x7xf32>, tensor<f32>) -> tensor<1x576x7x7xf32>
    %1476 = "tosa.mul"(%1475, %30) {shift = 0 : i32} : (tensor<1x576x7x7xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x7x7xf32>
    %1477 = "tosa.mul"(%620, %1476) {shift = 0 : i32} : (tensor<1x576x1x1xf32>, tensor<1x576x7x7xf32>) -> tensor<1x576x7x7xf32>
    %extracted_slice_839 = tensor.extract_slice %1477[0, 544, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x576x7x7xf32> to tensor<1x32x7x7xf32>
    %1478 = "tosa.add"(%1461, %extracted_slice_839) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_840 = tensor.extract_slice %1477[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x576x7x7xf32> to tensor<1x32x7x7xf32>
    %1479 = "tosa.add"(%1462, %extracted_slice_840) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_841 = tensor.extract_slice %1477[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x576x7x7xf32> to tensor<1x512x7x7xf32>
    %1480 = "tosa.add"(%1463, %extracted_slice_841) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %1481 = "tosa.transpose"(%1478, %71) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %1482 = "tosa.transpose_conv2d"(%1481, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1483 = "tosa.transpose"(%1482, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1484 = "tosa.equal"(%908, %909) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %1485 = "tosa.select"(%1484, %1483, %73) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %1486 = "tosa.mul"(%1485, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1487 = "tosa.mul"(%132, %1486) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1488 = "tosa.transpose"(%1487, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1489 = "tosa.transpose_conv2d"(%1488, %89, %cst_74) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 544>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<544x1x1x128xf32>, tensor<544xf32>) -> tensor<1x7x7x544xf32>
    %1490 = "tosa.transpose"(%1489, %72) : (tensor<1x7x7x544xf32>, tensor<4xi64>) -> tensor<1x544x7x7xf32>
    %1491 = "tosa.equal"(%900, %901) : (tensor<1x544x7x7xf32>, tensor<1x544x7x7xf32>) -> tensor<1x544x7x7xi1>
    %1492 = "tosa.select"(%1491, %1490, %73) : (tensor<1x544x7x7xi1>, tensor<1x544x7x7xf32>, tensor<f32>) -> tensor<1x544x7x7xf32>
    %1493 = "tosa.mul"(%1492, %32) {shift = 0 : i32} : (tensor<1x544x7x7xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x7x7xf32>
    %1494 = "tosa.mul"(%602, %1493) {shift = 0 : i32} : (tensor<1x544x1x1xf32>, tensor<1x544x7x7xf32>) -> tensor<1x544x7x7xf32>
    %extracted_slice_842 = tensor.extract_slice %1494[0, 512, 0, 0] [1, 32, 7, 7] [1, 1, 1, 1] : tensor<1x544x7x7xf32> to tensor<1x32x7x7xf32>
    %1495 = "tosa.add"(%1479, %extracted_slice_842) : (tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x32x7x7xf32>
    %extracted_slice_843 = tensor.extract_slice %1494[0, 0, 0, 0] [1, 512, 7, 7] [1, 1, 1, 1] : tensor<1x544x7x7xf32> to tensor<1x512x7x7xf32>
    %1496 = "tosa.add"(%1480, %extracted_slice_843) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %1497 = "tosa.transpose"(%1495, %71) : (tensor<1x32x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x32xf32>
    %1498 = "tosa.transpose_conv2d"(%1497, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 128>, stride = array<i64: 1, 1>} : (tensor<1x7x7x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x7x7x128xf32>
    %1499 = "tosa.transpose"(%1498, %72) : (tensor<1x7x7x128xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1500 = "tosa.equal"(%892, %893) : (tensor<1x128x7x7xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xi1>
    %1501 = "tosa.select"(%1500, %1499, %73) : (tensor<1x128x7x7xi1>, tensor<1x128x7x7xf32>, tensor<f32>) -> tensor<1x128x7x7xf32>
    %1502 = "tosa.mul"(%1501, %63) {shift = 0 : i32} : (tensor<1x128x7x7xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x7x7xf32>
    %1503 = "tosa.mul"(%132, %1502) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1504 = "tosa.transpose"(%1503, %71) : (tensor<1x128x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x128xf32>
    %1505 = "tosa.transpose_conv2d"(%1504, %90, %cst_75) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 512>, stride = array<i64: 1, 1>} : (tensor<1x7x7x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %1506 = "tosa.transpose"(%1505, %72) : (tensor<1x7x7x512xf32>, tensor<4xi64>) -> tensor<1x512x7x7xf32>
    %1507 = "tosa.equal"(%884, %885) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xi1>
    %1508 = "tosa.select"(%1507, %1506, %73) : (tensor<1x512x7x7xi1>, tensor<1x512x7x7xf32>, tensor<f32>) -> tensor<1x512x7x7xf32>
    %1509 = "tosa.mul"(%1508, %36) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %1510 = "tosa.mul"(%447, %1509) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %1511 = "tosa.add"(%1496, %1510) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %1512 = "tosa.transpose"(%1511, %71) : (tensor<1x512x7x7xf32>, tensor<4xi64>) -> tensor<1x7x7x512xf32>
    %1513 = linalg.generic {indexing_maps = [#map3, #map1, #map2, #map3], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%878, %cst_77, %1512 : tensor<1x14x14x512xf32>, tensor<2x2xf32>, tensor<1x7x7x512xf32>) outs(%cst_76 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_1286: f32, %in_1287: f32, %out: f32):
      %2533 = arith.mulf %in_1287, %cst_98 : f32
      %2534 = arith.addf %2533, %out : f32
      linalg.yield %2534 : f32
    } -> tensor<1x14x14x512xf32>
    %1514 = "tosa.transpose_conv2d"(%1513, %91, %cst_78) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %1515 = "tosa.transpose"(%1514, %72) : (tensor<1x14x14x1024xf32>, tensor<4xi64>) -> tensor<1x1024x14x14xf32>
    %1516 = "tosa.equal"(%875, %876) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %1517 = "tosa.select"(%1516, %1515, %73) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %1518 = "tosa.mul"(%1517, %2) {shift = 0 : i32} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1519 = "tosa.mul"(%872, %1518) {shift = 0 : i32} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %extracted_slice_844 = tensor.extract_slice %1519[0, 992, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_845 = tensor.extract_slice %1519[0, 960, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_846 = tensor.extract_slice %1519[0, 928, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_847 = tensor.extract_slice %1519[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_848 = tensor.extract_slice %1519[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_849 = tensor.extract_slice %1519[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_850 = tensor.extract_slice %1519[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_851 = tensor.extract_slice %1519[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_852 = tensor.extract_slice %1519[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_853 = tensor.extract_slice %1519[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_854 = tensor.extract_slice %1519[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_855 = tensor.extract_slice %1519[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_856 = tensor.extract_slice %1519[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_857 = tensor.extract_slice %1519[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_858 = tensor.extract_slice %1519[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_859 = tensor.extract_slice %1519[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_860 = tensor.extract_slice %1519[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_861 = tensor.extract_slice %1519[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_862 = tensor.extract_slice %1519[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_863 = tensor.extract_slice %1519[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_864 = tensor.extract_slice %1519[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_865 = tensor.extract_slice %1519[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_866 = tensor.extract_slice %1519[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_867 = tensor.extract_slice %1519[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x32x14x14xf32>
    %extracted_slice_868 = tensor.extract_slice %1519[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x1024x14x14xf32> to tensor<1x256x14x14xf32>
    %1520 = "tosa.transpose"(%extracted_slice_844, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1521 = "tosa.transpose_conv2d"(%1520, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1522 = "tosa.transpose"(%1521, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1523 = "tosa.equal"(%865, %866) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1524 = "tosa.select"(%1523, %1522, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1525 = "tosa.mul"(%1524, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %1526 = "tosa.mul"(%132, %1525) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1527 = "tosa.transpose"(%1526, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1528 = "tosa.transpose_conv2d"(%1527, %75, %cst_60) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 992>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<992x1x1x128xf32>, tensor<992xf32>) -> tensor<1x14x14x992xf32>
    %1529 = "tosa.transpose"(%1528, %72) : (tensor<1x14x14x992xf32>, tensor<4xi64>) -> tensor<1x992x14x14xf32>
    %1530 = "tosa.equal"(%857, %858) : (tensor<1x992x14x14xf32>, tensor<1x992x14x14xf32>) -> tensor<1x992x14x14xi1>
    %1531 = "tosa.select"(%1530, %1529, %73) : (tensor<1x992x14x14xi1>, tensor<1x992x14x14xf32>, tensor<f32>) -> tensor<1x992x14x14xf32>
    %1532 = "tosa.mul"(%1531, %4) {shift = 0 : i32} : (tensor<1x992x14x14xf32>, tensor<1x992x1x1xf32>) -> tensor<1x992x14x14xf32>
    %1533 = "tosa.mul"(%854, %1532) {shift = 0 : i32} : (tensor<1x992x1x1xf32>, tensor<1x992x14x14xf32>) -> tensor<1x992x14x14xf32>
    %extracted_slice_869 = tensor.extract_slice %1533[0, 960, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1534 = "tosa.add"(%extracted_slice_845, %extracted_slice_869) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_870 = tensor.extract_slice %1533[0, 928, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1535 = "tosa.add"(%extracted_slice_846, %extracted_slice_870) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_871 = tensor.extract_slice %1533[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1536 = "tosa.add"(%extracted_slice_847, %extracted_slice_871) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_872 = tensor.extract_slice %1533[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1537 = "tosa.add"(%extracted_slice_848, %extracted_slice_872) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_873 = tensor.extract_slice %1533[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1538 = "tosa.add"(%extracted_slice_849, %extracted_slice_873) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_874 = tensor.extract_slice %1533[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1539 = "tosa.add"(%extracted_slice_850, %extracted_slice_874) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_875 = tensor.extract_slice %1533[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1540 = "tosa.add"(%extracted_slice_851, %extracted_slice_875) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_876 = tensor.extract_slice %1533[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1541 = "tosa.add"(%extracted_slice_852, %extracted_slice_876) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_877 = tensor.extract_slice %1533[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1542 = "tosa.add"(%extracted_slice_853, %extracted_slice_877) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_878 = tensor.extract_slice %1533[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1543 = "tosa.add"(%extracted_slice_854, %extracted_slice_878) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_879 = tensor.extract_slice %1533[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1544 = "tosa.add"(%extracted_slice_855, %extracted_slice_879) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_880 = tensor.extract_slice %1533[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1545 = "tosa.add"(%extracted_slice_856, %extracted_slice_880) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_881 = tensor.extract_slice %1533[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1546 = "tosa.add"(%extracted_slice_857, %extracted_slice_881) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_882 = tensor.extract_slice %1533[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1547 = "tosa.add"(%extracted_slice_858, %extracted_slice_882) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_883 = tensor.extract_slice %1533[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1548 = "tosa.add"(%extracted_slice_859, %extracted_slice_883) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_884 = tensor.extract_slice %1533[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1549 = "tosa.add"(%extracted_slice_860, %extracted_slice_884) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_885 = tensor.extract_slice %1533[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1550 = "tosa.add"(%extracted_slice_861, %extracted_slice_885) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_886 = tensor.extract_slice %1533[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1551 = "tosa.add"(%extracted_slice_862, %extracted_slice_886) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_887 = tensor.extract_slice %1533[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1552 = "tosa.add"(%extracted_slice_863, %extracted_slice_887) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_888 = tensor.extract_slice %1533[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1553 = "tosa.add"(%extracted_slice_864, %extracted_slice_888) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_889 = tensor.extract_slice %1533[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1554 = "tosa.add"(%extracted_slice_865, %extracted_slice_889) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_890 = tensor.extract_slice %1533[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1555 = "tosa.add"(%extracted_slice_866, %extracted_slice_890) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_891 = tensor.extract_slice %1533[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x32x14x14xf32>
    %1556 = "tosa.add"(%extracted_slice_867, %extracted_slice_891) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_892 = tensor.extract_slice %1533[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x992x14x14xf32> to tensor<1x256x14x14xf32>
    %1557 = "tosa.add"(%extracted_slice_868, %extracted_slice_892) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1558 = "tosa.transpose"(%1534, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1559 = "tosa.transpose_conv2d"(%1558, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1560 = "tosa.transpose"(%1559, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1561 = "tosa.equal"(%847, %848) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1562 = "tosa.select"(%1561, %1560, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1563 = "tosa.mul"(%1562, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %1564 = "tosa.mul"(%132, %1563) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1565 = "tosa.transpose"(%1564, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1566 = "tosa.transpose_conv2d"(%1565, %76, %cst_61) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 960>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<960x1x1x128xf32>, tensor<960xf32>) -> tensor<1x14x14x960xf32>
    %1567 = "tosa.transpose"(%1566, %72) : (tensor<1x14x14x960xf32>, tensor<4xi64>) -> tensor<1x960x14x14xf32>
    %1568 = "tosa.equal"(%839, %840) : (tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xi1>
    %1569 = "tosa.select"(%1568, %1567, %73) : (tensor<1x960x14x14xi1>, tensor<1x960x14x14xf32>, tensor<f32>) -> tensor<1x960x14x14xf32>
    %1570 = "tosa.mul"(%1569, %6) {shift = 0 : i32} : (tensor<1x960x14x14xf32>, tensor<1x960x1x1xf32>) -> tensor<1x960x14x14xf32>
    %1571 = "tosa.mul"(%836, %1570) {shift = 0 : i32} : (tensor<1x960x1x1xf32>, tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    %extracted_slice_893 = tensor.extract_slice %1571[0, 928, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1572 = "tosa.add"(%1535, %extracted_slice_893) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_894 = tensor.extract_slice %1571[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1573 = "tosa.add"(%1536, %extracted_slice_894) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_895 = tensor.extract_slice %1571[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1574 = "tosa.add"(%1537, %extracted_slice_895) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_896 = tensor.extract_slice %1571[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1575 = "tosa.add"(%1538, %extracted_slice_896) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_897 = tensor.extract_slice %1571[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1576 = "tosa.add"(%1539, %extracted_slice_897) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_898 = tensor.extract_slice %1571[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1577 = "tosa.add"(%1540, %extracted_slice_898) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_899 = tensor.extract_slice %1571[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1578 = "tosa.add"(%1541, %extracted_slice_899) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_900 = tensor.extract_slice %1571[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1579 = "tosa.add"(%1542, %extracted_slice_900) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_901 = tensor.extract_slice %1571[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1580 = "tosa.add"(%1543, %extracted_slice_901) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_902 = tensor.extract_slice %1571[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1581 = "tosa.add"(%1544, %extracted_slice_902) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_903 = tensor.extract_slice %1571[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1582 = "tosa.add"(%1545, %extracted_slice_903) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_904 = tensor.extract_slice %1571[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1583 = "tosa.add"(%1546, %extracted_slice_904) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_905 = tensor.extract_slice %1571[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1584 = "tosa.add"(%1547, %extracted_slice_905) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_906 = tensor.extract_slice %1571[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1585 = "tosa.add"(%1548, %extracted_slice_906) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_907 = tensor.extract_slice %1571[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1586 = "tosa.add"(%1549, %extracted_slice_907) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_908 = tensor.extract_slice %1571[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1587 = "tosa.add"(%1550, %extracted_slice_908) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_909 = tensor.extract_slice %1571[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1588 = "tosa.add"(%1551, %extracted_slice_909) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_910 = tensor.extract_slice %1571[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1589 = "tosa.add"(%1552, %extracted_slice_910) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_911 = tensor.extract_slice %1571[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1590 = "tosa.add"(%1553, %extracted_slice_911) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_912 = tensor.extract_slice %1571[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1591 = "tosa.add"(%1554, %extracted_slice_912) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_913 = tensor.extract_slice %1571[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1592 = "tosa.add"(%1555, %extracted_slice_913) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_914 = tensor.extract_slice %1571[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x32x14x14xf32>
    %1593 = "tosa.add"(%1556, %extracted_slice_914) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_915 = tensor.extract_slice %1571[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x960x14x14xf32> to tensor<1x256x14x14xf32>
    %1594 = "tosa.add"(%1557, %extracted_slice_915) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1595 = "tosa.transpose"(%1572, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1596 = "tosa.transpose_conv2d"(%1595, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1597 = "tosa.transpose"(%1596, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1598 = "tosa.equal"(%829, %830) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1599 = "tosa.select"(%1598, %1597, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1600 = "tosa.mul"(%1599, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %1601 = "tosa.mul"(%132, %1600) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1602 = "tosa.transpose"(%1601, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1603 = "tosa.transpose_conv2d"(%1602, %77, %cst_62) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 928>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<928x1x1x128xf32>, tensor<928xf32>) -> tensor<1x14x14x928xf32>
    %1604 = "tosa.transpose"(%1603, %72) : (tensor<1x14x14x928xf32>, tensor<4xi64>) -> tensor<1x928x14x14xf32>
    %1605 = "tosa.equal"(%821, %822) : (tensor<1x928x14x14xf32>, tensor<1x928x14x14xf32>) -> tensor<1x928x14x14xi1>
    %1606 = "tosa.select"(%1605, %1604, %73) : (tensor<1x928x14x14xi1>, tensor<1x928x14x14xf32>, tensor<f32>) -> tensor<1x928x14x14xf32>
    %1607 = "tosa.mul"(%1606, %8) {shift = 0 : i32} : (tensor<1x928x14x14xf32>, tensor<1x928x1x1xf32>) -> tensor<1x928x14x14xf32>
    %1608 = "tosa.mul"(%818, %1607) {shift = 0 : i32} : (tensor<1x928x1x1xf32>, tensor<1x928x14x14xf32>) -> tensor<1x928x14x14xf32>
    %extracted_slice_916 = tensor.extract_slice %1608[0, 896, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1609 = "tosa.add"(%1573, %extracted_slice_916) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_917 = tensor.extract_slice %1608[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1610 = "tosa.add"(%1574, %extracted_slice_917) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_918 = tensor.extract_slice %1608[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1611 = "tosa.add"(%1575, %extracted_slice_918) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_919 = tensor.extract_slice %1608[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1612 = "tosa.add"(%1576, %extracted_slice_919) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_920 = tensor.extract_slice %1608[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1613 = "tosa.add"(%1577, %extracted_slice_920) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_921 = tensor.extract_slice %1608[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1614 = "tosa.add"(%1578, %extracted_slice_921) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_922 = tensor.extract_slice %1608[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1615 = "tosa.add"(%1579, %extracted_slice_922) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_923 = tensor.extract_slice %1608[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1616 = "tosa.add"(%1580, %extracted_slice_923) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_924 = tensor.extract_slice %1608[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1617 = "tosa.add"(%1581, %extracted_slice_924) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_925 = tensor.extract_slice %1608[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1618 = "tosa.add"(%1582, %extracted_slice_925) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_926 = tensor.extract_slice %1608[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1619 = "tosa.add"(%1583, %extracted_slice_926) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_927 = tensor.extract_slice %1608[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1620 = "tosa.add"(%1584, %extracted_slice_927) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_928 = tensor.extract_slice %1608[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1621 = "tosa.add"(%1585, %extracted_slice_928) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_929 = tensor.extract_slice %1608[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1622 = "tosa.add"(%1586, %extracted_slice_929) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_930 = tensor.extract_slice %1608[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1623 = "tosa.add"(%1587, %extracted_slice_930) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_931 = tensor.extract_slice %1608[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1624 = "tosa.add"(%1588, %extracted_slice_931) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_932 = tensor.extract_slice %1608[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1625 = "tosa.add"(%1589, %extracted_slice_932) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_933 = tensor.extract_slice %1608[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1626 = "tosa.add"(%1590, %extracted_slice_933) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_934 = tensor.extract_slice %1608[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1627 = "tosa.add"(%1591, %extracted_slice_934) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_935 = tensor.extract_slice %1608[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1628 = "tosa.add"(%1592, %extracted_slice_935) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_936 = tensor.extract_slice %1608[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x32x14x14xf32>
    %1629 = "tosa.add"(%1593, %extracted_slice_936) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_937 = tensor.extract_slice %1608[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x928x14x14xf32> to tensor<1x256x14x14xf32>
    %1630 = "tosa.add"(%1594, %extracted_slice_937) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1631 = "tosa.transpose"(%1609, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1632 = "tosa.transpose_conv2d"(%1631, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1633 = "tosa.transpose"(%1632, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1634 = "tosa.equal"(%811, %812) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1635 = "tosa.select"(%1634, %1633, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1636 = "tosa.mul"(%1635, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %1637 = "tosa.mul"(%132, %1636) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1638 = "tosa.transpose"(%1637, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1639 = "tosa.transpose_conv2d"(%1638, %78, %cst_63) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 896>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<896x1x1x128xf32>, tensor<896xf32>) -> tensor<1x14x14x896xf32>
    %1640 = "tosa.transpose"(%1639, %72) : (tensor<1x14x14x896xf32>, tensor<4xi64>) -> tensor<1x896x14x14xf32>
    %1641 = "tosa.equal"(%803, %804) : (tensor<1x896x14x14xf32>, tensor<1x896x14x14xf32>) -> tensor<1x896x14x14xi1>
    %1642 = "tosa.select"(%1641, %1640, %73) : (tensor<1x896x14x14xi1>, tensor<1x896x14x14xf32>, tensor<f32>) -> tensor<1x896x14x14xf32>
    %1643 = "tosa.mul"(%1642, %10) {shift = 0 : i32} : (tensor<1x896x14x14xf32>, tensor<1x896x1x1xf32>) -> tensor<1x896x14x14xf32>
    %1644 = "tosa.mul"(%800, %1643) {shift = 0 : i32} : (tensor<1x896x1x1xf32>, tensor<1x896x14x14xf32>) -> tensor<1x896x14x14xf32>
    %extracted_slice_938 = tensor.extract_slice %1644[0, 864, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %1645 = "tosa.add"(%1610, %extracted_slice_938) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_939 = tensor.extract_slice %1644[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %1646 = "tosa.add"(%1611, %extracted_slice_939) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_940 = tensor.extract_slice %1644[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %1647 = "tosa.add"(%1612, %extracted_slice_940) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_941 = tensor.extract_slice %1644[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %1648 = "tosa.add"(%1613, %extracted_slice_941) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_942 = tensor.extract_slice %1644[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %1649 = "tosa.add"(%1614, %extracted_slice_942) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_943 = tensor.extract_slice %1644[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %1650 = "tosa.add"(%1615, %extracted_slice_943) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_944 = tensor.extract_slice %1644[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %1651 = "tosa.add"(%1616, %extracted_slice_944) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_945 = tensor.extract_slice %1644[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %1652 = "tosa.add"(%1617, %extracted_slice_945) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_946 = tensor.extract_slice %1644[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %1653 = "tosa.add"(%1618, %extracted_slice_946) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_947 = tensor.extract_slice %1644[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %1654 = "tosa.add"(%1619, %extracted_slice_947) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_948 = tensor.extract_slice %1644[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %1655 = "tosa.add"(%1620, %extracted_slice_948) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_949 = tensor.extract_slice %1644[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %1656 = "tosa.add"(%1621, %extracted_slice_949) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_950 = tensor.extract_slice %1644[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %1657 = "tosa.add"(%1622, %extracted_slice_950) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_951 = tensor.extract_slice %1644[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %1658 = "tosa.add"(%1623, %extracted_slice_951) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_952 = tensor.extract_slice %1644[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %1659 = "tosa.add"(%1624, %extracted_slice_952) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_953 = tensor.extract_slice %1644[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %1660 = "tosa.add"(%1625, %extracted_slice_953) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_954 = tensor.extract_slice %1644[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %1661 = "tosa.add"(%1626, %extracted_slice_954) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_955 = tensor.extract_slice %1644[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %1662 = "tosa.add"(%1627, %extracted_slice_955) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_956 = tensor.extract_slice %1644[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %1663 = "tosa.add"(%1628, %extracted_slice_956) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_957 = tensor.extract_slice %1644[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x32x14x14xf32>
    %1664 = "tosa.add"(%1629, %extracted_slice_957) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_958 = tensor.extract_slice %1644[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x896x14x14xf32> to tensor<1x256x14x14xf32>
    %1665 = "tosa.add"(%1630, %extracted_slice_958) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1666 = "tosa.transpose"(%1645, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1667 = "tosa.transpose_conv2d"(%1666, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1668 = "tosa.transpose"(%1667, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1669 = "tosa.equal"(%793, %794) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1670 = "tosa.select"(%1669, %1668, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1671 = "tosa.mul"(%1670, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %1672 = "tosa.mul"(%132, %1671) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1673 = "tosa.transpose"(%1672, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1674 = "tosa.transpose_conv2d"(%1673, %79, %cst_64) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 864>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<864x1x1x128xf32>, tensor<864xf32>) -> tensor<1x14x14x864xf32>
    %1675 = "tosa.transpose"(%1674, %72) : (tensor<1x14x14x864xf32>, tensor<4xi64>) -> tensor<1x864x14x14xf32>
    %1676 = "tosa.equal"(%785, %786) : (tensor<1x864x14x14xf32>, tensor<1x864x14x14xf32>) -> tensor<1x864x14x14xi1>
    %1677 = "tosa.select"(%1676, %1675, %73) : (tensor<1x864x14x14xi1>, tensor<1x864x14x14xf32>, tensor<f32>) -> tensor<1x864x14x14xf32>
    %1678 = "tosa.mul"(%1677, %12) {shift = 0 : i32} : (tensor<1x864x14x14xf32>, tensor<1x864x1x1xf32>) -> tensor<1x864x14x14xf32>
    %1679 = "tosa.mul"(%782, %1678) {shift = 0 : i32} : (tensor<1x864x1x1xf32>, tensor<1x864x14x14xf32>) -> tensor<1x864x14x14xf32>
    %extracted_slice_959 = tensor.extract_slice %1679[0, 832, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1680 = "tosa.add"(%1646, %extracted_slice_959) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_960 = tensor.extract_slice %1679[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1681 = "tosa.add"(%1647, %extracted_slice_960) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_961 = tensor.extract_slice %1679[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1682 = "tosa.add"(%1648, %extracted_slice_961) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_962 = tensor.extract_slice %1679[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1683 = "tosa.add"(%1649, %extracted_slice_962) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_963 = tensor.extract_slice %1679[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1684 = "tosa.add"(%1650, %extracted_slice_963) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_964 = tensor.extract_slice %1679[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1685 = "tosa.add"(%1651, %extracted_slice_964) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_965 = tensor.extract_slice %1679[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1686 = "tosa.add"(%1652, %extracted_slice_965) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_966 = tensor.extract_slice %1679[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1687 = "tosa.add"(%1653, %extracted_slice_966) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_967 = tensor.extract_slice %1679[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1688 = "tosa.add"(%1654, %extracted_slice_967) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_968 = tensor.extract_slice %1679[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1689 = "tosa.add"(%1655, %extracted_slice_968) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_969 = tensor.extract_slice %1679[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1690 = "tosa.add"(%1656, %extracted_slice_969) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_970 = tensor.extract_slice %1679[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1691 = "tosa.add"(%1657, %extracted_slice_970) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_971 = tensor.extract_slice %1679[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1692 = "tosa.add"(%1658, %extracted_slice_971) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_972 = tensor.extract_slice %1679[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1693 = "tosa.add"(%1659, %extracted_slice_972) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_973 = tensor.extract_slice %1679[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1694 = "tosa.add"(%1660, %extracted_slice_973) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_974 = tensor.extract_slice %1679[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1695 = "tosa.add"(%1661, %extracted_slice_974) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_975 = tensor.extract_slice %1679[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1696 = "tosa.add"(%1662, %extracted_slice_975) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_976 = tensor.extract_slice %1679[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1697 = "tosa.add"(%1663, %extracted_slice_976) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_977 = tensor.extract_slice %1679[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x32x14x14xf32>
    %1698 = "tosa.add"(%1664, %extracted_slice_977) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_978 = tensor.extract_slice %1679[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x864x14x14xf32> to tensor<1x256x14x14xf32>
    %1699 = "tosa.add"(%1665, %extracted_slice_978) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1700 = "tosa.transpose"(%1680, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1701 = "tosa.transpose_conv2d"(%1700, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1702 = "tosa.transpose"(%1701, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1703 = "tosa.equal"(%775, %776) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1704 = "tosa.select"(%1703, %1702, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1705 = "tosa.mul"(%1704, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %1706 = "tosa.mul"(%132, %1705) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1707 = "tosa.transpose"(%1706, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1708 = "tosa.transpose_conv2d"(%1707, %80, %cst_65) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 832>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<832x1x1x128xf32>, tensor<832xf32>) -> tensor<1x14x14x832xf32>
    %1709 = "tosa.transpose"(%1708, %72) : (tensor<1x14x14x832xf32>, tensor<4xi64>) -> tensor<1x832x14x14xf32>
    %1710 = "tosa.equal"(%767, %768) : (tensor<1x832x14x14xf32>, tensor<1x832x14x14xf32>) -> tensor<1x832x14x14xi1>
    %1711 = "tosa.select"(%1710, %1709, %73) : (tensor<1x832x14x14xi1>, tensor<1x832x14x14xf32>, tensor<f32>) -> tensor<1x832x14x14xf32>
    %1712 = "tosa.mul"(%1711, %14) {shift = 0 : i32} : (tensor<1x832x14x14xf32>, tensor<1x832x1x1xf32>) -> tensor<1x832x14x14xf32>
    %1713 = "tosa.mul"(%764, %1712) {shift = 0 : i32} : (tensor<1x832x1x1xf32>, tensor<1x832x14x14xf32>) -> tensor<1x832x14x14xf32>
    %extracted_slice_979 = tensor.extract_slice %1713[0, 800, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1714 = "tosa.add"(%1681, %extracted_slice_979) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_980 = tensor.extract_slice %1713[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1715 = "tosa.add"(%1682, %extracted_slice_980) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_981 = tensor.extract_slice %1713[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1716 = "tosa.add"(%1683, %extracted_slice_981) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_982 = tensor.extract_slice %1713[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1717 = "tosa.add"(%1684, %extracted_slice_982) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_983 = tensor.extract_slice %1713[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1718 = "tosa.add"(%1685, %extracted_slice_983) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_984 = tensor.extract_slice %1713[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1719 = "tosa.add"(%1686, %extracted_slice_984) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_985 = tensor.extract_slice %1713[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1720 = "tosa.add"(%1687, %extracted_slice_985) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_986 = tensor.extract_slice %1713[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1721 = "tosa.add"(%1688, %extracted_slice_986) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_987 = tensor.extract_slice %1713[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1722 = "tosa.add"(%1689, %extracted_slice_987) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_988 = tensor.extract_slice %1713[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1723 = "tosa.add"(%1690, %extracted_slice_988) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_989 = tensor.extract_slice %1713[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1724 = "tosa.add"(%1691, %extracted_slice_989) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_990 = tensor.extract_slice %1713[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1725 = "tosa.add"(%1692, %extracted_slice_990) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_991 = tensor.extract_slice %1713[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1726 = "tosa.add"(%1693, %extracted_slice_991) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_992 = tensor.extract_slice %1713[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1727 = "tosa.add"(%1694, %extracted_slice_992) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_993 = tensor.extract_slice %1713[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1728 = "tosa.add"(%1695, %extracted_slice_993) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_994 = tensor.extract_slice %1713[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1729 = "tosa.add"(%1696, %extracted_slice_994) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_995 = tensor.extract_slice %1713[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1730 = "tosa.add"(%1697, %extracted_slice_995) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_996 = tensor.extract_slice %1713[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x32x14x14xf32>
    %1731 = "tosa.add"(%1698, %extracted_slice_996) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_997 = tensor.extract_slice %1713[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x832x14x14xf32> to tensor<1x256x14x14xf32>
    %1732 = "tosa.add"(%1699, %extracted_slice_997) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1733 = "tosa.transpose"(%1714, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1734 = "tosa.transpose_conv2d"(%1733, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1735 = "tosa.transpose"(%1734, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1736 = "tosa.equal"(%757, %758) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1737 = "tosa.select"(%1736, %1735, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1738 = "tosa.mul"(%1737, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %1739 = "tosa.mul"(%132, %1738) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1740 = "tosa.transpose"(%1739, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1741 = "tosa.transpose_conv2d"(%1740, %81, %cst_66) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 800>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<800x1x1x128xf32>, tensor<800xf32>) -> tensor<1x14x14x800xf32>
    %1742 = "tosa.transpose"(%1741, %72) : (tensor<1x14x14x800xf32>, tensor<4xi64>) -> tensor<1x800x14x14xf32>
    %1743 = "tosa.equal"(%749, %750) : (tensor<1x800x14x14xf32>, tensor<1x800x14x14xf32>) -> tensor<1x800x14x14xi1>
    %1744 = "tosa.select"(%1743, %1742, %73) : (tensor<1x800x14x14xi1>, tensor<1x800x14x14xf32>, tensor<f32>) -> tensor<1x800x14x14xf32>
    %1745 = "tosa.mul"(%1744, %16) {shift = 0 : i32} : (tensor<1x800x14x14xf32>, tensor<1x800x1x1xf32>) -> tensor<1x800x14x14xf32>
    %1746 = "tosa.mul"(%746, %1745) {shift = 0 : i32} : (tensor<1x800x1x1xf32>, tensor<1x800x14x14xf32>) -> tensor<1x800x14x14xf32>
    %extracted_slice_998 = tensor.extract_slice %1746[0, 768, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1747 = "tosa.add"(%1715, %extracted_slice_998) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_999 = tensor.extract_slice %1746[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1748 = "tosa.add"(%1716, %extracted_slice_999) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1000 = tensor.extract_slice %1746[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1749 = "tosa.add"(%1717, %extracted_slice_1000) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1001 = tensor.extract_slice %1746[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1750 = "tosa.add"(%1718, %extracted_slice_1001) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1002 = tensor.extract_slice %1746[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1751 = "tosa.add"(%1719, %extracted_slice_1002) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1003 = tensor.extract_slice %1746[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1752 = "tosa.add"(%1720, %extracted_slice_1003) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1004 = tensor.extract_slice %1746[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1753 = "tosa.add"(%1721, %extracted_slice_1004) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1005 = tensor.extract_slice %1746[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1754 = "tosa.add"(%1722, %extracted_slice_1005) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1006 = tensor.extract_slice %1746[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1755 = "tosa.add"(%1723, %extracted_slice_1006) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1007 = tensor.extract_slice %1746[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1756 = "tosa.add"(%1724, %extracted_slice_1007) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1008 = tensor.extract_slice %1746[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1757 = "tosa.add"(%1725, %extracted_slice_1008) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1009 = tensor.extract_slice %1746[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1758 = "tosa.add"(%1726, %extracted_slice_1009) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1010 = tensor.extract_slice %1746[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1759 = "tosa.add"(%1727, %extracted_slice_1010) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1011 = tensor.extract_slice %1746[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1760 = "tosa.add"(%1728, %extracted_slice_1011) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1012 = tensor.extract_slice %1746[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1761 = "tosa.add"(%1729, %extracted_slice_1012) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1013 = tensor.extract_slice %1746[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1762 = "tosa.add"(%1730, %extracted_slice_1013) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1014 = tensor.extract_slice %1746[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x32x14x14xf32>
    %1763 = "tosa.add"(%1731, %extracted_slice_1014) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1015 = tensor.extract_slice %1746[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x800x14x14xf32> to tensor<1x256x14x14xf32>
    %1764 = "tosa.add"(%1732, %extracted_slice_1015) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1765 = "tosa.transpose"(%1747, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1766 = "tosa.transpose_conv2d"(%1765, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1767 = "tosa.transpose"(%1766, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1768 = "tosa.equal"(%739, %740) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1769 = "tosa.select"(%1768, %1767, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1770 = "tosa.mul"(%1769, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %1771 = "tosa.mul"(%132, %1770) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1772 = "tosa.transpose"(%1771, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1773 = "tosa.transpose_conv2d"(%1772, %82, %cst_67) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 768>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<768x1x1x128xf32>, tensor<768xf32>) -> tensor<1x14x14x768xf32>
    %1774 = "tosa.transpose"(%1773, %72) : (tensor<1x14x14x768xf32>, tensor<4xi64>) -> tensor<1x768x14x14xf32>
    %1775 = "tosa.equal"(%731, %732) : (tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xi1>
    %1776 = "tosa.select"(%1775, %1774, %73) : (tensor<1x768x14x14xi1>, tensor<1x768x14x14xf32>, tensor<f32>) -> tensor<1x768x14x14xf32>
    %1777 = "tosa.mul"(%1776, %18) {shift = 0 : i32} : (tensor<1x768x14x14xf32>, tensor<1x768x1x1xf32>) -> tensor<1x768x14x14xf32>
    %1778 = "tosa.mul"(%728, %1777) {shift = 0 : i32} : (tensor<1x768x1x1xf32>, tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %extracted_slice_1016 = tensor.extract_slice %1778[0, 736, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1779 = "tosa.add"(%1748, %extracted_slice_1016) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1017 = tensor.extract_slice %1778[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1780 = "tosa.add"(%1749, %extracted_slice_1017) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1018 = tensor.extract_slice %1778[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1781 = "tosa.add"(%1750, %extracted_slice_1018) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1019 = tensor.extract_slice %1778[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1782 = "tosa.add"(%1751, %extracted_slice_1019) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1020 = tensor.extract_slice %1778[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1783 = "tosa.add"(%1752, %extracted_slice_1020) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1021 = tensor.extract_slice %1778[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1784 = "tosa.add"(%1753, %extracted_slice_1021) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1022 = tensor.extract_slice %1778[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1785 = "tosa.add"(%1754, %extracted_slice_1022) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1023 = tensor.extract_slice %1778[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1786 = "tosa.add"(%1755, %extracted_slice_1023) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1024 = tensor.extract_slice %1778[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1787 = "tosa.add"(%1756, %extracted_slice_1024) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1025 = tensor.extract_slice %1778[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1788 = "tosa.add"(%1757, %extracted_slice_1025) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1026 = tensor.extract_slice %1778[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1789 = "tosa.add"(%1758, %extracted_slice_1026) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1027 = tensor.extract_slice %1778[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1790 = "tosa.add"(%1759, %extracted_slice_1027) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1028 = tensor.extract_slice %1778[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1791 = "tosa.add"(%1760, %extracted_slice_1028) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1029 = tensor.extract_slice %1778[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1792 = "tosa.add"(%1761, %extracted_slice_1029) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1030 = tensor.extract_slice %1778[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1793 = "tosa.add"(%1762, %extracted_slice_1030) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1031 = tensor.extract_slice %1778[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x32x14x14xf32>
    %1794 = "tosa.add"(%1763, %extracted_slice_1031) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1032 = tensor.extract_slice %1778[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x768x14x14xf32> to tensor<1x256x14x14xf32>
    %1795 = "tosa.add"(%1764, %extracted_slice_1032) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1796 = "tosa.transpose"(%1779, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1797 = "tosa.transpose_conv2d"(%1796, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1798 = "tosa.transpose"(%1797, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1799 = "tosa.equal"(%721, %722) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1800 = "tosa.select"(%1799, %1798, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1801 = "tosa.mul"(%1800, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %1802 = "tosa.mul"(%132, %1801) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1803 = "tosa.transpose"(%1802, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1804 = "tosa.transpose_conv2d"(%1803, %83, %cst_68) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 736>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<736x1x1x128xf32>, tensor<736xf32>) -> tensor<1x14x14x736xf32>
    %1805 = "tosa.transpose"(%1804, %72) : (tensor<1x14x14x736xf32>, tensor<4xi64>) -> tensor<1x736x14x14xf32>
    %1806 = "tosa.equal"(%713, %714) : (tensor<1x736x14x14xf32>, tensor<1x736x14x14xf32>) -> tensor<1x736x14x14xi1>
    %1807 = "tosa.select"(%1806, %1805, %73) : (tensor<1x736x14x14xi1>, tensor<1x736x14x14xf32>, tensor<f32>) -> tensor<1x736x14x14xf32>
    %1808 = "tosa.mul"(%1807, %20) {shift = 0 : i32} : (tensor<1x736x14x14xf32>, tensor<1x736x1x1xf32>) -> tensor<1x736x14x14xf32>
    %1809 = "tosa.mul"(%710, %1808) {shift = 0 : i32} : (tensor<1x736x1x1xf32>, tensor<1x736x14x14xf32>) -> tensor<1x736x14x14xf32>
    %extracted_slice_1033 = tensor.extract_slice %1809[0, 704, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1810 = "tosa.add"(%1780, %extracted_slice_1033) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1034 = tensor.extract_slice %1809[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1811 = "tosa.add"(%1781, %extracted_slice_1034) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1035 = tensor.extract_slice %1809[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1812 = "tosa.add"(%1782, %extracted_slice_1035) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1036 = tensor.extract_slice %1809[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1813 = "tosa.add"(%1783, %extracted_slice_1036) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1037 = tensor.extract_slice %1809[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1814 = "tosa.add"(%1784, %extracted_slice_1037) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1038 = tensor.extract_slice %1809[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1815 = "tosa.add"(%1785, %extracted_slice_1038) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1039 = tensor.extract_slice %1809[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1816 = "tosa.add"(%1786, %extracted_slice_1039) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1040 = tensor.extract_slice %1809[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1817 = "tosa.add"(%1787, %extracted_slice_1040) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1041 = tensor.extract_slice %1809[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1818 = "tosa.add"(%1788, %extracted_slice_1041) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1042 = tensor.extract_slice %1809[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1819 = "tosa.add"(%1789, %extracted_slice_1042) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1043 = tensor.extract_slice %1809[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1820 = "tosa.add"(%1790, %extracted_slice_1043) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1044 = tensor.extract_slice %1809[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1821 = "tosa.add"(%1791, %extracted_slice_1044) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1045 = tensor.extract_slice %1809[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1822 = "tosa.add"(%1792, %extracted_slice_1045) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1046 = tensor.extract_slice %1809[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1823 = "tosa.add"(%1793, %extracted_slice_1046) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1047 = tensor.extract_slice %1809[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x32x14x14xf32>
    %1824 = "tosa.add"(%1794, %extracted_slice_1047) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1048 = tensor.extract_slice %1809[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x736x14x14xf32> to tensor<1x256x14x14xf32>
    %1825 = "tosa.add"(%1795, %extracted_slice_1048) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1826 = "tosa.transpose"(%1810, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1827 = "tosa.transpose_conv2d"(%1826, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1828 = "tosa.transpose"(%1827, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1829 = "tosa.equal"(%703, %704) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1830 = "tosa.select"(%1829, %1828, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1831 = "tosa.mul"(%1830, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %1832 = "tosa.mul"(%132, %1831) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1833 = "tosa.transpose"(%1832, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1834 = "tosa.transpose_conv2d"(%1833, %84, %cst_69) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 704>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<704x1x1x128xf32>, tensor<704xf32>) -> tensor<1x14x14x704xf32>
    %1835 = "tosa.transpose"(%1834, %72) : (tensor<1x14x14x704xf32>, tensor<4xi64>) -> tensor<1x704x14x14xf32>
    %1836 = "tosa.equal"(%695, %696) : (tensor<1x704x14x14xf32>, tensor<1x704x14x14xf32>) -> tensor<1x704x14x14xi1>
    %1837 = "tosa.select"(%1836, %1835, %73) : (tensor<1x704x14x14xi1>, tensor<1x704x14x14xf32>, tensor<f32>) -> tensor<1x704x14x14xf32>
    %1838 = "tosa.mul"(%1837, %22) {shift = 0 : i32} : (tensor<1x704x14x14xf32>, tensor<1x704x1x1xf32>) -> tensor<1x704x14x14xf32>
    %1839 = "tosa.mul"(%692, %1838) {shift = 0 : i32} : (tensor<1x704x1x1xf32>, tensor<1x704x14x14xf32>) -> tensor<1x704x14x14xf32>
    %extracted_slice_1049 = tensor.extract_slice %1839[0, 672, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1840 = "tosa.add"(%1811, %extracted_slice_1049) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1050 = tensor.extract_slice %1839[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1841 = "tosa.add"(%1812, %extracted_slice_1050) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1051 = tensor.extract_slice %1839[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1842 = "tosa.add"(%1813, %extracted_slice_1051) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1052 = tensor.extract_slice %1839[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1843 = "tosa.add"(%1814, %extracted_slice_1052) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1053 = tensor.extract_slice %1839[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1844 = "tosa.add"(%1815, %extracted_slice_1053) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1054 = tensor.extract_slice %1839[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1845 = "tosa.add"(%1816, %extracted_slice_1054) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1055 = tensor.extract_slice %1839[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1846 = "tosa.add"(%1817, %extracted_slice_1055) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1056 = tensor.extract_slice %1839[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1847 = "tosa.add"(%1818, %extracted_slice_1056) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1057 = tensor.extract_slice %1839[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1848 = "tosa.add"(%1819, %extracted_slice_1057) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1058 = tensor.extract_slice %1839[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1849 = "tosa.add"(%1820, %extracted_slice_1058) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1059 = tensor.extract_slice %1839[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1850 = "tosa.add"(%1821, %extracted_slice_1059) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1060 = tensor.extract_slice %1839[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1851 = "tosa.add"(%1822, %extracted_slice_1060) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1061 = tensor.extract_slice %1839[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1852 = "tosa.add"(%1823, %extracted_slice_1061) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1062 = tensor.extract_slice %1839[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x32x14x14xf32>
    %1853 = "tosa.add"(%1824, %extracted_slice_1062) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1063 = tensor.extract_slice %1839[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x704x14x14xf32> to tensor<1x256x14x14xf32>
    %1854 = "tosa.add"(%1825, %extracted_slice_1063) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1855 = "tosa.transpose"(%1840, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1856 = "tosa.transpose_conv2d"(%1855, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1857 = "tosa.transpose"(%1856, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1858 = "tosa.equal"(%685, %686) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1859 = "tosa.select"(%1858, %1857, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1860 = "tosa.mul"(%1859, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %1861 = "tosa.mul"(%132, %1860) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1862 = "tosa.transpose"(%1861, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1863 = "tosa.transpose_conv2d"(%1862, %85, %cst_70) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 672>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<672x1x1x128xf32>, tensor<672xf32>) -> tensor<1x14x14x672xf32>
    %1864 = "tosa.transpose"(%1863, %72) : (tensor<1x14x14x672xf32>, tensor<4xi64>) -> tensor<1x672x14x14xf32>
    %1865 = "tosa.equal"(%677, %678) : (tensor<1x672x14x14xf32>, tensor<1x672x14x14xf32>) -> tensor<1x672x14x14xi1>
    %1866 = "tosa.select"(%1865, %1864, %73) : (tensor<1x672x14x14xi1>, tensor<1x672x14x14xf32>, tensor<f32>) -> tensor<1x672x14x14xf32>
    %1867 = "tosa.mul"(%1866, %24) {shift = 0 : i32} : (tensor<1x672x14x14xf32>, tensor<1x672x1x1xf32>) -> tensor<1x672x14x14xf32>
    %1868 = "tosa.mul"(%674, %1867) {shift = 0 : i32} : (tensor<1x672x1x1xf32>, tensor<1x672x14x14xf32>) -> tensor<1x672x14x14xf32>
    %extracted_slice_1064 = tensor.extract_slice %1868[0, 640, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1869 = "tosa.add"(%1841, %extracted_slice_1064) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1065 = tensor.extract_slice %1868[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1870 = "tosa.add"(%1842, %extracted_slice_1065) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1066 = tensor.extract_slice %1868[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1871 = "tosa.add"(%1843, %extracted_slice_1066) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1067 = tensor.extract_slice %1868[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1872 = "tosa.add"(%1844, %extracted_slice_1067) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1068 = tensor.extract_slice %1868[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1873 = "tosa.add"(%1845, %extracted_slice_1068) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1069 = tensor.extract_slice %1868[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1874 = "tosa.add"(%1846, %extracted_slice_1069) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1070 = tensor.extract_slice %1868[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1875 = "tosa.add"(%1847, %extracted_slice_1070) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1071 = tensor.extract_slice %1868[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1876 = "tosa.add"(%1848, %extracted_slice_1071) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1072 = tensor.extract_slice %1868[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1877 = "tosa.add"(%1849, %extracted_slice_1072) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1073 = tensor.extract_slice %1868[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1878 = "tosa.add"(%1850, %extracted_slice_1073) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1074 = tensor.extract_slice %1868[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1879 = "tosa.add"(%1851, %extracted_slice_1074) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1075 = tensor.extract_slice %1868[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1880 = "tosa.add"(%1852, %extracted_slice_1075) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1076 = tensor.extract_slice %1868[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x32x14x14xf32>
    %1881 = "tosa.add"(%1853, %extracted_slice_1076) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1077 = tensor.extract_slice %1868[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x672x14x14xf32> to tensor<1x256x14x14xf32>
    %1882 = "tosa.add"(%1854, %extracted_slice_1077) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1883 = "tosa.transpose"(%1869, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1884 = "tosa.transpose_conv2d"(%1883, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1885 = "tosa.transpose"(%1884, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1886 = "tosa.equal"(%667, %668) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1887 = "tosa.select"(%1886, %1885, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1888 = "tosa.mul"(%1887, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %1889 = "tosa.mul"(%132, %1888) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1890 = "tosa.transpose"(%1889, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1891 = "tosa.transpose_conv2d"(%1890, %86, %cst_71) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 640>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<640x1x1x128xf32>, tensor<640xf32>) -> tensor<1x14x14x640xf32>
    %1892 = "tosa.transpose"(%1891, %72) : (tensor<1x14x14x640xf32>, tensor<4xi64>) -> tensor<1x640x14x14xf32>
    %1893 = "tosa.equal"(%659, %660) : (tensor<1x640x14x14xf32>, tensor<1x640x14x14xf32>) -> tensor<1x640x14x14xi1>
    %1894 = "tosa.select"(%1893, %1892, %73) : (tensor<1x640x14x14xi1>, tensor<1x640x14x14xf32>, tensor<f32>) -> tensor<1x640x14x14xf32>
    %1895 = "tosa.mul"(%1894, %26) {shift = 0 : i32} : (tensor<1x640x14x14xf32>, tensor<1x640x1x1xf32>) -> tensor<1x640x14x14xf32>
    %1896 = "tosa.mul"(%656, %1895) {shift = 0 : i32} : (tensor<1x640x1x1xf32>, tensor<1x640x14x14xf32>) -> tensor<1x640x14x14xf32>
    %extracted_slice_1078 = tensor.extract_slice %1896[0, 608, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1897 = "tosa.add"(%1870, %extracted_slice_1078) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1079 = tensor.extract_slice %1896[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1898 = "tosa.add"(%1871, %extracted_slice_1079) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1080 = tensor.extract_slice %1896[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1899 = "tosa.add"(%1872, %extracted_slice_1080) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1081 = tensor.extract_slice %1896[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1900 = "tosa.add"(%1873, %extracted_slice_1081) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1082 = tensor.extract_slice %1896[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1901 = "tosa.add"(%1874, %extracted_slice_1082) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1083 = tensor.extract_slice %1896[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1902 = "tosa.add"(%1875, %extracted_slice_1083) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1084 = tensor.extract_slice %1896[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1903 = "tosa.add"(%1876, %extracted_slice_1084) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1085 = tensor.extract_slice %1896[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1904 = "tosa.add"(%1877, %extracted_slice_1085) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1086 = tensor.extract_slice %1896[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1905 = "tosa.add"(%1878, %extracted_slice_1086) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1087 = tensor.extract_slice %1896[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1906 = "tosa.add"(%1879, %extracted_slice_1087) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1088 = tensor.extract_slice %1896[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1907 = "tosa.add"(%1880, %extracted_slice_1088) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1089 = tensor.extract_slice %1896[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x32x14x14xf32>
    %1908 = "tosa.add"(%1881, %extracted_slice_1089) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1090 = tensor.extract_slice %1896[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x640x14x14xf32> to tensor<1x256x14x14xf32>
    %1909 = "tosa.add"(%1882, %extracted_slice_1090) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1910 = "tosa.transpose"(%1897, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1911 = "tosa.transpose_conv2d"(%1910, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1912 = "tosa.transpose"(%1911, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1913 = "tosa.equal"(%649, %650) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1914 = "tosa.select"(%1913, %1912, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1915 = "tosa.mul"(%1914, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %1916 = "tosa.mul"(%132, %1915) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1917 = "tosa.transpose"(%1916, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1918 = "tosa.transpose_conv2d"(%1917, %87, %cst_72) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 608>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<608x1x1x128xf32>, tensor<608xf32>) -> tensor<1x14x14x608xf32>
    %1919 = "tosa.transpose"(%1918, %72) : (tensor<1x14x14x608xf32>, tensor<4xi64>) -> tensor<1x608x14x14xf32>
    %1920 = "tosa.equal"(%641, %642) : (tensor<1x608x14x14xf32>, tensor<1x608x14x14xf32>) -> tensor<1x608x14x14xi1>
    %1921 = "tosa.select"(%1920, %1919, %73) : (tensor<1x608x14x14xi1>, tensor<1x608x14x14xf32>, tensor<f32>) -> tensor<1x608x14x14xf32>
    %1922 = "tosa.mul"(%1921, %28) {shift = 0 : i32} : (tensor<1x608x14x14xf32>, tensor<1x608x1x1xf32>) -> tensor<1x608x14x14xf32>
    %1923 = "tosa.mul"(%638, %1922) {shift = 0 : i32} : (tensor<1x608x1x1xf32>, tensor<1x608x14x14xf32>) -> tensor<1x608x14x14xf32>
    %extracted_slice_1091 = tensor.extract_slice %1923[0, 576, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1924 = "tosa.add"(%1898, %extracted_slice_1091) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1092 = tensor.extract_slice %1923[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1925 = "tosa.add"(%1899, %extracted_slice_1092) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1093 = tensor.extract_slice %1923[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1926 = "tosa.add"(%1900, %extracted_slice_1093) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1094 = tensor.extract_slice %1923[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1927 = "tosa.add"(%1901, %extracted_slice_1094) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1095 = tensor.extract_slice %1923[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1928 = "tosa.add"(%1902, %extracted_slice_1095) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1096 = tensor.extract_slice %1923[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1929 = "tosa.add"(%1903, %extracted_slice_1096) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1097 = tensor.extract_slice %1923[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1930 = "tosa.add"(%1904, %extracted_slice_1097) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1098 = tensor.extract_slice %1923[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1931 = "tosa.add"(%1905, %extracted_slice_1098) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1099 = tensor.extract_slice %1923[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1932 = "tosa.add"(%1906, %extracted_slice_1099) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1100 = tensor.extract_slice %1923[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1933 = "tosa.add"(%1907, %extracted_slice_1100) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1101 = tensor.extract_slice %1923[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x32x14x14xf32>
    %1934 = "tosa.add"(%1908, %extracted_slice_1101) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1102 = tensor.extract_slice %1923[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x608x14x14xf32> to tensor<1x256x14x14xf32>
    %1935 = "tosa.add"(%1909, %extracted_slice_1102) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1936 = "tosa.transpose"(%1924, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1937 = "tosa.transpose_conv2d"(%1936, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1938 = "tosa.transpose"(%1937, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1939 = "tosa.equal"(%631, %632) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1940 = "tosa.select"(%1939, %1938, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1941 = "tosa.mul"(%1940, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %1942 = "tosa.mul"(%132, %1941) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1943 = "tosa.transpose"(%1942, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1944 = "tosa.transpose_conv2d"(%1943, %88, %cst_73) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 576>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<576x1x1x128xf32>, tensor<576xf32>) -> tensor<1x14x14x576xf32>
    %1945 = "tosa.transpose"(%1944, %72) : (tensor<1x14x14x576xf32>, tensor<4xi64>) -> tensor<1x576x14x14xf32>
    %1946 = "tosa.equal"(%623, %624) : (tensor<1x576x14x14xf32>, tensor<1x576x14x14xf32>) -> tensor<1x576x14x14xi1>
    %1947 = "tosa.select"(%1946, %1945, %73) : (tensor<1x576x14x14xi1>, tensor<1x576x14x14xf32>, tensor<f32>) -> tensor<1x576x14x14xf32>
    %1948 = "tosa.mul"(%1947, %30) {shift = 0 : i32} : (tensor<1x576x14x14xf32>, tensor<1x576x1x1xf32>) -> tensor<1x576x14x14xf32>
    %1949 = "tosa.mul"(%620, %1948) {shift = 0 : i32} : (tensor<1x576x1x1xf32>, tensor<1x576x14x14xf32>) -> tensor<1x576x14x14xf32>
    %extracted_slice_1103 = tensor.extract_slice %1949[0, 544, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x32x14x14xf32>
    %1950 = "tosa.add"(%1925, %extracted_slice_1103) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1104 = tensor.extract_slice %1949[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x32x14x14xf32>
    %1951 = "tosa.add"(%1926, %extracted_slice_1104) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1105 = tensor.extract_slice %1949[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x32x14x14xf32>
    %1952 = "tosa.add"(%1927, %extracted_slice_1105) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1106 = tensor.extract_slice %1949[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x32x14x14xf32>
    %1953 = "tosa.add"(%1928, %extracted_slice_1106) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1107 = tensor.extract_slice %1949[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x32x14x14xf32>
    %1954 = "tosa.add"(%1929, %extracted_slice_1107) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1108 = tensor.extract_slice %1949[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x32x14x14xf32>
    %1955 = "tosa.add"(%1930, %extracted_slice_1108) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1109 = tensor.extract_slice %1949[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x32x14x14xf32>
    %1956 = "tosa.add"(%1931, %extracted_slice_1109) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1110 = tensor.extract_slice %1949[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x32x14x14xf32>
    %1957 = "tosa.add"(%1932, %extracted_slice_1110) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1111 = tensor.extract_slice %1949[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x32x14x14xf32>
    %1958 = "tosa.add"(%1933, %extracted_slice_1111) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1112 = tensor.extract_slice %1949[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x32x14x14xf32>
    %1959 = "tosa.add"(%1934, %extracted_slice_1112) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1113 = tensor.extract_slice %1949[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x576x14x14xf32> to tensor<1x256x14x14xf32>
    %1960 = "tosa.add"(%1935, %extracted_slice_1113) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1961 = "tosa.transpose"(%1950, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1962 = "tosa.transpose_conv2d"(%1961, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1963 = "tosa.transpose"(%1962, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1964 = "tosa.equal"(%613, %614) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1965 = "tosa.select"(%1964, %1963, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1966 = "tosa.mul"(%1965, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %1967 = "tosa.mul"(%132, %1966) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1968 = "tosa.transpose"(%1967, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1969 = "tosa.transpose_conv2d"(%1968, %89, %cst_74) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 544>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<544x1x1x128xf32>, tensor<544xf32>) -> tensor<1x14x14x544xf32>
    %1970 = "tosa.transpose"(%1969, %72) : (tensor<1x14x14x544xf32>, tensor<4xi64>) -> tensor<1x544x14x14xf32>
    %1971 = "tosa.equal"(%605, %606) : (tensor<1x544x14x14xf32>, tensor<1x544x14x14xf32>) -> tensor<1x544x14x14xi1>
    %1972 = "tosa.select"(%1971, %1970, %73) : (tensor<1x544x14x14xi1>, tensor<1x544x14x14xf32>, tensor<f32>) -> tensor<1x544x14x14xf32>
    %1973 = "tosa.mul"(%1972, %32) {shift = 0 : i32} : (tensor<1x544x14x14xf32>, tensor<1x544x1x1xf32>) -> tensor<1x544x14x14xf32>
    %1974 = "tosa.mul"(%602, %1973) {shift = 0 : i32} : (tensor<1x544x1x1xf32>, tensor<1x544x14x14xf32>) -> tensor<1x544x14x14xf32>
    %extracted_slice_1114 = tensor.extract_slice %1974[0, 512, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x544x14x14xf32> to tensor<1x32x14x14xf32>
    %1975 = "tosa.add"(%1951, %extracted_slice_1114) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1115 = tensor.extract_slice %1974[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x544x14x14xf32> to tensor<1x32x14x14xf32>
    %1976 = "tosa.add"(%1952, %extracted_slice_1115) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1116 = tensor.extract_slice %1974[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x544x14x14xf32> to tensor<1x32x14x14xf32>
    %1977 = "tosa.add"(%1953, %extracted_slice_1116) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1117 = tensor.extract_slice %1974[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x544x14x14xf32> to tensor<1x32x14x14xf32>
    %1978 = "tosa.add"(%1954, %extracted_slice_1117) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1118 = tensor.extract_slice %1974[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x544x14x14xf32> to tensor<1x32x14x14xf32>
    %1979 = "tosa.add"(%1955, %extracted_slice_1118) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1119 = tensor.extract_slice %1974[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x544x14x14xf32> to tensor<1x32x14x14xf32>
    %1980 = "tosa.add"(%1956, %extracted_slice_1119) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1120 = tensor.extract_slice %1974[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x544x14x14xf32> to tensor<1x32x14x14xf32>
    %1981 = "tosa.add"(%1957, %extracted_slice_1120) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1121 = tensor.extract_slice %1974[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x544x14x14xf32> to tensor<1x32x14x14xf32>
    %1982 = "tosa.add"(%1958, %extracted_slice_1121) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1122 = tensor.extract_slice %1974[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x544x14x14xf32> to tensor<1x32x14x14xf32>
    %1983 = "tosa.add"(%1959, %extracted_slice_1122) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1123 = tensor.extract_slice %1974[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x544x14x14xf32> to tensor<1x256x14x14xf32>
    %1984 = "tosa.add"(%1960, %extracted_slice_1123) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %1985 = "tosa.transpose"(%1975, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %1986 = "tosa.transpose_conv2d"(%1985, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %1987 = "tosa.transpose"(%1986, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1988 = "tosa.equal"(%595, %596) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %1989 = "tosa.select"(%1988, %1987, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %1990 = "tosa.mul"(%1989, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %1991 = "tosa.mul"(%132, %1990) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1992 = "tosa.transpose"(%1991, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %1993 = "tosa.transpose_conv2d"(%1992, %90, %cst_75) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %1994 = "tosa.transpose"(%1993, %72) : (tensor<1x14x14x512xf32>, tensor<4xi64>) -> tensor<1x512x14x14xf32>
    %1995 = "tosa.equal"(%587, %588) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %1996 = "tosa.select"(%1995, %1994, %73) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %1997 = "tosa.mul"(%1996, %36) {shift = 0 : i32} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %1998 = "tosa.mul"(%447, %1997) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %extracted_slice_1124 = tensor.extract_slice %1998[0, 480, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x512x14x14xf32> to tensor<1x32x14x14xf32>
    %1999 = "tosa.add"(%1976, %extracted_slice_1124) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1125 = tensor.extract_slice %1998[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x512x14x14xf32> to tensor<1x32x14x14xf32>
    %2000 = "tosa.add"(%1977, %extracted_slice_1125) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1126 = tensor.extract_slice %1998[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x512x14x14xf32> to tensor<1x32x14x14xf32>
    %2001 = "tosa.add"(%1978, %extracted_slice_1126) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1127 = tensor.extract_slice %1998[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x512x14x14xf32> to tensor<1x32x14x14xf32>
    %2002 = "tosa.add"(%1979, %extracted_slice_1127) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1128 = tensor.extract_slice %1998[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x512x14x14xf32> to tensor<1x32x14x14xf32>
    %2003 = "tosa.add"(%1980, %extracted_slice_1128) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1129 = tensor.extract_slice %1998[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x512x14x14xf32> to tensor<1x32x14x14xf32>
    %2004 = "tosa.add"(%1981, %extracted_slice_1129) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1130 = tensor.extract_slice %1998[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x512x14x14xf32> to tensor<1x32x14x14xf32>
    %2005 = "tosa.add"(%1982, %extracted_slice_1130) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1131 = tensor.extract_slice %1998[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x512x14x14xf32> to tensor<1x32x14x14xf32>
    %2006 = "tosa.add"(%1983, %extracted_slice_1131) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1132 = tensor.extract_slice %1998[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x512x14x14xf32> to tensor<1x256x14x14xf32>
    %2007 = "tosa.add"(%1984, %extracted_slice_1132) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %2008 = "tosa.transpose"(%1999, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %2009 = "tosa.transpose_conv2d"(%2008, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %2010 = "tosa.transpose"(%2009, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %2011 = "tosa.equal"(%579, %580) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %2012 = "tosa.select"(%2011, %2010, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %2013 = "tosa.mul"(%2012, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %2014 = "tosa.mul"(%132, %2013) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %2015 = "tosa.transpose"(%2014, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %2016 = "tosa.transpose_conv2d"(%2015, %92, %cst_79) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 480>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<480x1x1x128xf32>, tensor<480xf32>) -> tensor<1x14x14x480xf32>
    %2017 = "tosa.transpose"(%2016, %72) : (tensor<1x14x14x480xf32>, tensor<4xi64>) -> tensor<1x480x14x14xf32>
    %2018 = "tosa.equal"(%571, %572) : (tensor<1x480x14x14xf32>, tensor<1x480x14x14xf32>) -> tensor<1x480x14x14xi1>
    %2019 = "tosa.select"(%2018, %2017, %73) : (tensor<1x480x14x14xi1>, tensor<1x480x14x14xf32>, tensor<f32>) -> tensor<1x480x14x14xf32>
    %2020 = "tosa.mul"(%2019, %38) {shift = 0 : i32} : (tensor<1x480x14x14xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x14x14xf32>
    %2021 = "tosa.mul"(%429, %2020) {shift = 0 : i32} : (tensor<1x480x1x1xf32>, tensor<1x480x14x14xf32>) -> tensor<1x480x14x14xf32>
    %extracted_slice_1133 = tensor.extract_slice %2021[0, 448, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x480x14x14xf32> to tensor<1x32x14x14xf32>
    %2022 = "tosa.add"(%2000, %extracted_slice_1133) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1134 = tensor.extract_slice %2021[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x480x14x14xf32> to tensor<1x32x14x14xf32>
    %2023 = "tosa.add"(%2001, %extracted_slice_1134) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1135 = tensor.extract_slice %2021[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x480x14x14xf32> to tensor<1x32x14x14xf32>
    %2024 = "tosa.add"(%2002, %extracted_slice_1135) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1136 = tensor.extract_slice %2021[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x480x14x14xf32> to tensor<1x32x14x14xf32>
    %2025 = "tosa.add"(%2003, %extracted_slice_1136) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1137 = tensor.extract_slice %2021[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x480x14x14xf32> to tensor<1x32x14x14xf32>
    %2026 = "tosa.add"(%2004, %extracted_slice_1137) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1138 = tensor.extract_slice %2021[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x480x14x14xf32> to tensor<1x32x14x14xf32>
    %2027 = "tosa.add"(%2005, %extracted_slice_1138) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1139 = tensor.extract_slice %2021[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x480x14x14xf32> to tensor<1x32x14x14xf32>
    %2028 = "tosa.add"(%2006, %extracted_slice_1139) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1140 = tensor.extract_slice %2021[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x480x14x14xf32> to tensor<1x256x14x14xf32>
    %2029 = "tosa.add"(%2007, %extracted_slice_1140) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %2030 = "tosa.transpose"(%2022, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %2031 = "tosa.transpose_conv2d"(%2030, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %2032 = "tosa.transpose"(%2031, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %2033 = "tosa.equal"(%563, %564) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %2034 = "tosa.select"(%2033, %2032, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %2035 = "tosa.mul"(%2034, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %2036 = "tosa.mul"(%132, %2035) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %2037 = "tosa.transpose"(%2036, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %2038 = "tosa.transpose_conv2d"(%2037, %93, %cst_80) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 448>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<448x1x1x128xf32>, tensor<448xf32>) -> tensor<1x14x14x448xf32>
    %2039 = "tosa.transpose"(%2038, %72) : (tensor<1x14x14x448xf32>, tensor<4xi64>) -> tensor<1x448x14x14xf32>
    %2040 = "tosa.equal"(%555, %556) : (tensor<1x448x14x14xf32>, tensor<1x448x14x14xf32>) -> tensor<1x448x14x14xi1>
    %2041 = "tosa.select"(%2040, %2039, %73) : (tensor<1x448x14x14xi1>, tensor<1x448x14x14xf32>, tensor<f32>) -> tensor<1x448x14x14xf32>
    %2042 = "tosa.mul"(%2041, %40) {shift = 0 : i32} : (tensor<1x448x14x14xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x14x14xf32>
    %2043 = "tosa.mul"(%411, %2042) {shift = 0 : i32} : (tensor<1x448x1x1xf32>, tensor<1x448x14x14xf32>) -> tensor<1x448x14x14xf32>
    %extracted_slice_1141 = tensor.extract_slice %2043[0, 416, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x448x14x14xf32> to tensor<1x32x14x14xf32>
    %2044 = "tosa.add"(%2023, %extracted_slice_1141) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1142 = tensor.extract_slice %2043[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x448x14x14xf32> to tensor<1x32x14x14xf32>
    %2045 = "tosa.add"(%2024, %extracted_slice_1142) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1143 = tensor.extract_slice %2043[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x448x14x14xf32> to tensor<1x32x14x14xf32>
    %2046 = "tosa.add"(%2025, %extracted_slice_1143) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1144 = tensor.extract_slice %2043[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x448x14x14xf32> to tensor<1x32x14x14xf32>
    %2047 = "tosa.add"(%2026, %extracted_slice_1144) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1145 = tensor.extract_slice %2043[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x448x14x14xf32> to tensor<1x32x14x14xf32>
    %2048 = "tosa.add"(%2027, %extracted_slice_1145) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1146 = tensor.extract_slice %2043[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x448x14x14xf32> to tensor<1x32x14x14xf32>
    %2049 = "tosa.add"(%2028, %extracted_slice_1146) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1147 = tensor.extract_slice %2043[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x448x14x14xf32> to tensor<1x256x14x14xf32>
    %2050 = "tosa.add"(%2029, %extracted_slice_1147) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %2051 = "tosa.transpose"(%2044, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %2052 = "tosa.transpose_conv2d"(%2051, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %2053 = "tosa.transpose"(%2052, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %2054 = "tosa.equal"(%547, %548) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %2055 = "tosa.select"(%2054, %2053, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %2056 = "tosa.mul"(%2055, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %2057 = "tosa.mul"(%132, %2056) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %2058 = "tosa.transpose"(%2057, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %2059 = "tosa.transpose_conv2d"(%2058, %94, %cst_81) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 416>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<416x1x1x128xf32>, tensor<416xf32>) -> tensor<1x14x14x416xf32>
    %2060 = "tosa.transpose"(%2059, %72) : (tensor<1x14x14x416xf32>, tensor<4xi64>) -> tensor<1x416x14x14xf32>
    %2061 = "tosa.equal"(%539, %540) : (tensor<1x416x14x14xf32>, tensor<1x416x14x14xf32>) -> tensor<1x416x14x14xi1>
    %2062 = "tosa.select"(%2061, %2060, %73) : (tensor<1x416x14x14xi1>, tensor<1x416x14x14xf32>, tensor<f32>) -> tensor<1x416x14x14xf32>
    %2063 = "tosa.mul"(%2062, %42) {shift = 0 : i32} : (tensor<1x416x14x14xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x14x14xf32>
    %2064 = "tosa.mul"(%393, %2063) {shift = 0 : i32} : (tensor<1x416x1x1xf32>, tensor<1x416x14x14xf32>) -> tensor<1x416x14x14xf32>
    %extracted_slice_1148 = tensor.extract_slice %2064[0, 384, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x416x14x14xf32> to tensor<1x32x14x14xf32>
    %2065 = "tosa.add"(%2045, %extracted_slice_1148) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1149 = tensor.extract_slice %2064[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x416x14x14xf32> to tensor<1x32x14x14xf32>
    %2066 = "tosa.add"(%2046, %extracted_slice_1149) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1150 = tensor.extract_slice %2064[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x416x14x14xf32> to tensor<1x32x14x14xf32>
    %2067 = "tosa.add"(%2047, %extracted_slice_1150) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1151 = tensor.extract_slice %2064[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x416x14x14xf32> to tensor<1x32x14x14xf32>
    %2068 = "tosa.add"(%2048, %extracted_slice_1151) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1152 = tensor.extract_slice %2064[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x416x14x14xf32> to tensor<1x32x14x14xf32>
    %2069 = "tosa.add"(%2049, %extracted_slice_1152) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1153 = tensor.extract_slice %2064[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x416x14x14xf32> to tensor<1x256x14x14xf32>
    %2070 = "tosa.add"(%2050, %extracted_slice_1153) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %2071 = "tosa.transpose"(%2065, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %2072 = "tosa.transpose_conv2d"(%2071, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %2073 = "tosa.transpose"(%2072, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %2074 = "tosa.equal"(%531, %532) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %2075 = "tosa.select"(%2074, %2073, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %2076 = "tosa.mul"(%2075, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %2077 = "tosa.mul"(%132, %2076) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %2078 = "tosa.transpose"(%2077, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %2079 = "tosa.transpose_conv2d"(%2078, %95, %cst_82) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 384>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<384x1x1x128xf32>, tensor<384xf32>) -> tensor<1x14x14x384xf32>
    %2080 = "tosa.transpose"(%2079, %72) : (tensor<1x14x14x384xf32>, tensor<4xi64>) -> tensor<1x384x14x14xf32>
    %2081 = "tosa.equal"(%523, %524) : (tensor<1x384x14x14xf32>, tensor<1x384x14x14xf32>) -> tensor<1x384x14x14xi1>
    %2082 = "tosa.select"(%2081, %2080, %73) : (tensor<1x384x14x14xi1>, tensor<1x384x14x14xf32>, tensor<f32>) -> tensor<1x384x14x14xf32>
    %2083 = "tosa.mul"(%2082, %44) {shift = 0 : i32} : (tensor<1x384x14x14xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x14x14xf32>
    %2084 = "tosa.mul"(%375, %2083) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x14x14xf32>) -> tensor<1x384x14x14xf32>
    %extracted_slice_1154 = tensor.extract_slice %2084[0, 352, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x384x14x14xf32> to tensor<1x32x14x14xf32>
    %2085 = "tosa.add"(%2066, %extracted_slice_1154) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1155 = tensor.extract_slice %2084[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x384x14x14xf32> to tensor<1x32x14x14xf32>
    %2086 = "tosa.add"(%2067, %extracted_slice_1155) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1156 = tensor.extract_slice %2084[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x384x14x14xf32> to tensor<1x32x14x14xf32>
    %2087 = "tosa.add"(%2068, %extracted_slice_1156) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1157 = tensor.extract_slice %2084[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x384x14x14xf32> to tensor<1x32x14x14xf32>
    %2088 = "tosa.add"(%2069, %extracted_slice_1157) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1158 = tensor.extract_slice %2084[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x384x14x14xf32> to tensor<1x256x14x14xf32>
    %2089 = "tosa.add"(%2070, %extracted_slice_1158) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %2090 = "tosa.transpose"(%2085, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %2091 = "tosa.transpose_conv2d"(%2090, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %2092 = "tosa.transpose"(%2091, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %2093 = "tosa.equal"(%515, %516) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %2094 = "tosa.select"(%2093, %2092, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %2095 = "tosa.mul"(%2094, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %2096 = "tosa.mul"(%132, %2095) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %2097 = "tosa.transpose"(%2096, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %2098 = "tosa.transpose_conv2d"(%2097, %96, %cst_83) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 352>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<352x1x1x128xf32>, tensor<352xf32>) -> tensor<1x14x14x352xf32>
    %2099 = "tosa.transpose"(%2098, %72) : (tensor<1x14x14x352xf32>, tensor<4xi64>) -> tensor<1x352x14x14xf32>
    %2100 = "tosa.equal"(%507, %508) : (tensor<1x352x14x14xf32>, tensor<1x352x14x14xf32>) -> tensor<1x352x14x14xi1>
    %2101 = "tosa.select"(%2100, %2099, %73) : (tensor<1x352x14x14xi1>, tensor<1x352x14x14xf32>, tensor<f32>) -> tensor<1x352x14x14xf32>
    %2102 = "tosa.mul"(%2101, %46) {shift = 0 : i32} : (tensor<1x352x14x14xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x14x14xf32>
    %2103 = "tosa.mul"(%357, %2102) {shift = 0 : i32} : (tensor<1x352x1x1xf32>, tensor<1x352x14x14xf32>) -> tensor<1x352x14x14xf32>
    %extracted_slice_1159 = tensor.extract_slice %2103[0, 320, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x352x14x14xf32> to tensor<1x32x14x14xf32>
    %2104 = "tosa.add"(%2086, %extracted_slice_1159) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1160 = tensor.extract_slice %2103[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x352x14x14xf32> to tensor<1x32x14x14xf32>
    %2105 = "tosa.add"(%2087, %extracted_slice_1160) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1161 = tensor.extract_slice %2103[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x352x14x14xf32> to tensor<1x32x14x14xf32>
    %2106 = "tosa.add"(%2088, %extracted_slice_1161) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1162 = tensor.extract_slice %2103[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x352x14x14xf32> to tensor<1x256x14x14xf32>
    %2107 = "tosa.add"(%2089, %extracted_slice_1162) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %2108 = "tosa.transpose"(%2104, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %2109 = "tosa.transpose_conv2d"(%2108, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %2110 = "tosa.transpose"(%2109, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %2111 = "tosa.equal"(%499, %500) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %2112 = "tosa.select"(%2111, %2110, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %2113 = "tosa.mul"(%2112, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %2114 = "tosa.mul"(%132, %2113) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %2115 = "tosa.transpose"(%2114, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %2116 = "tosa.transpose_conv2d"(%2115, %97, %cst_84) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 320>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<320x1x1x128xf32>, tensor<320xf32>) -> tensor<1x14x14x320xf32>
    %2117 = "tosa.transpose"(%2116, %72) : (tensor<1x14x14x320xf32>, tensor<4xi64>) -> tensor<1x320x14x14xf32>
    %2118 = "tosa.equal"(%491, %492) : (tensor<1x320x14x14xf32>, tensor<1x320x14x14xf32>) -> tensor<1x320x14x14xi1>
    %2119 = "tosa.select"(%2118, %2117, %73) : (tensor<1x320x14x14xi1>, tensor<1x320x14x14xf32>, tensor<f32>) -> tensor<1x320x14x14xf32>
    %2120 = "tosa.mul"(%2119, %48) {shift = 0 : i32} : (tensor<1x320x14x14xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x14x14xf32>
    %2121 = "tosa.mul"(%339, %2120) {shift = 0 : i32} : (tensor<1x320x1x1xf32>, tensor<1x320x14x14xf32>) -> tensor<1x320x14x14xf32>
    %extracted_slice_1163 = tensor.extract_slice %2121[0, 288, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x320x14x14xf32> to tensor<1x32x14x14xf32>
    %2122 = "tosa.add"(%2105, %extracted_slice_1163) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1164 = tensor.extract_slice %2121[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x320x14x14xf32> to tensor<1x32x14x14xf32>
    %2123 = "tosa.add"(%2106, %extracted_slice_1164) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1165 = tensor.extract_slice %2121[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x320x14x14xf32> to tensor<1x256x14x14xf32>
    %2124 = "tosa.add"(%2107, %extracted_slice_1165) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %2125 = "tosa.transpose"(%2122, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %2126 = "tosa.transpose_conv2d"(%2125, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %2127 = "tosa.transpose"(%2126, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %2128 = "tosa.equal"(%483, %484) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %2129 = "tosa.select"(%2128, %2127, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %2130 = "tosa.mul"(%2129, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %2131 = "tosa.mul"(%132, %2130) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %2132 = "tosa.transpose"(%2131, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %2133 = "tosa.transpose_conv2d"(%2132, %98, %cst_85) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 288>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<288x1x1x128xf32>, tensor<288xf32>) -> tensor<1x14x14x288xf32>
    %2134 = "tosa.transpose"(%2133, %72) : (tensor<1x14x14x288xf32>, tensor<4xi64>) -> tensor<1x288x14x14xf32>
    %2135 = "tosa.equal"(%475, %476) : (tensor<1x288x14x14xf32>, tensor<1x288x14x14xf32>) -> tensor<1x288x14x14xi1>
    %2136 = "tosa.select"(%2135, %2134, %73) : (tensor<1x288x14x14xi1>, tensor<1x288x14x14xf32>, tensor<f32>) -> tensor<1x288x14x14xf32>
    %2137 = "tosa.mul"(%2136, %50) {shift = 0 : i32} : (tensor<1x288x14x14xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x14x14xf32>
    %2138 = "tosa.mul"(%321, %2137) {shift = 0 : i32} : (tensor<1x288x1x1xf32>, tensor<1x288x14x14xf32>) -> tensor<1x288x14x14xf32>
    %extracted_slice_1166 = tensor.extract_slice %2138[0, 256, 0, 0] [1, 32, 14, 14] [1, 1, 1, 1] : tensor<1x288x14x14xf32> to tensor<1x32x14x14xf32>
    %2139 = "tosa.add"(%2123, %extracted_slice_1166) : (tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x32x14x14xf32>
    %extracted_slice_1167 = tensor.extract_slice %2138[0, 0, 0, 0] [1, 256, 14, 14] [1, 1, 1, 1] : tensor<1x288x14x14xf32> to tensor<1x256x14x14xf32>
    %2140 = "tosa.add"(%2124, %extracted_slice_1167) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %2141 = "tosa.transpose"(%2139, %71) : (tensor<1x32x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x32xf32>
    %2142 = "tosa.transpose_conv2d"(%2141, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 128>, stride = array<i64: 1, 1>} : (tensor<1x14x14x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x14x14x128xf32>
    %2143 = "tosa.transpose"(%2142, %72) : (tensor<1x14x14x128xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %2144 = "tosa.equal"(%467, %468) : (tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xi1>
    %2145 = "tosa.select"(%2144, %2143, %73) : (tensor<1x128x14x14xi1>, tensor<1x128x14x14xf32>, tensor<f32>) -> tensor<1x128x14x14xf32>
    %2146 = "tosa.mul"(%2145, %63) {shift = 0 : i32} : (tensor<1x128x14x14xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x14x14xf32>
    %2147 = "tosa.mul"(%132, %2146) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %2148 = "tosa.transpose"(%2147, %71) : (tensor<1x128x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x128xf32>
    %2149 = "tosa.transpose_conv2d"(%2148, %99, %cst_86) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 256>, stride = array<i64: 1, 1>} : (tensor<1x14x14x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %2150 = "tosa.transpose"(%2149, %72) : (tensor<1x14x14x256xf32>, tensor<4xi64>) -> tensor<1x256x14x14xf32>
    %2151 = "tosa.equal"(%459, %460) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xi1>
    %2152 = "tosa.select"(%2151, %2150, %73) : (tensor<1x256x14x14xi1>, tensor<1x256x14x14xf32>, tensor<f32>) -> tensor<1x256x14x14xf32>
    %2153 = "tosa.mul"(%2152, %52) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %2154 = "tosa.mul"(%230, %2153) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %2155 = "tosa.add"(%2140, %2154) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %2156 = "tosa.transpose"(%2155, %71) : (tensor<1x256x14x14xf32>, tensor<4xi64>) -> tensor<1x14x14x256xf32>
    %2157 = linalg.generic {indexing_maps = [#map3, #map1, #map2, #map3], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%453, %cst_77, %2156 : tensor<1x28x28x256xf32>, tensor<2x2xf32>, tensor<1x14x14x256xf32>) outs(%cst_87 : tensor<1x28x28x256xf32>) {
    ^bb0(%in: f32, %in_1286: f32, %in_1287: f32, %out: f32):
      %2533 = arith.mulf %in_1287, %cst_98 : f32
      %2534 = arith.addf %2533, %out : f32
      linalg.yield %2534 : f32
    } -> tensor<1x28x28x256xf32>
    %2158 = "tosa.transpose_conv2d"(%2157, %100, %cst_75) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %2159 = "tosa.transpose"(%2158, %72) : (tensor<1x28x28x512xf32>, tensor<4xi64>) -> tensor<1x512x28x28xf32>
    %2160 = "tosa.equal"(%450, %451) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %2161 = "tosa.select"(%2160, %2159, %73) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %2162 = "tosa.mul"(%2161, %36) {shift = 0 : i32} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %2163 = "tosa.mul"(%447, %2162) {shift = 0 : i32} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %extracted_slice_1168 = tensor.extract_slice %2163[0, 480, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_1169 = tensor.extract_slice %2163[0, 448, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_1170 = tensor.extract_slice %2163[0, 416, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_1171 = tensor.extract_slice %2163[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_1172 = tensor.extract_slice %2163[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_1173 = tensor.extract_slice %2163[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_1174 = tensor.extract_slice %2163[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_1175 = tensor.extract_slice %2163[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_1176 = tensor.extract_slice %2163[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_1177 = tensor.extract_slice %2163[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_1178 = tensor.extract_slice %2163[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_1179 = tensor.extract_slice %2163[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x32x28x28xf32>
    %extracted_slice_1180 = tensor.extract_slice %2163[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x512x28x28xf32> to tensor<1x128x28x28xf32>
    %2164 = "tosa.transpose"(%extracted_slice_1168, %71) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %2165 = "tosa.transpose_conv2d"(%2164, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %2166 = "tosa.transpose"(%2165, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %2167 = "tosa.equal"(%440, %441) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %2168 = "tosa.select"(%2167, %2166, %73) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %2169 = "tosa.mul"(%2168, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %2170 = "tosa.mul"(%132, %2169) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2171 = "tosa.transpose"(%2170, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %2172 = "tosa.transpose_conv2d"(%2171, %92, %cst_79) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 480>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<480x1x1x128xf32>, tensor<480xf32>) -> tensor<1x28x28x480xf32>
    %2173 = "tosa.transpose"(%2172, %72) : (tensor<1x28x28x480xf32>, tensor<4xi64>) -> tensor<1x480x28x28xf32>
    %2174 = "tosa.equal"(%432, %433) : (tensor<1x480x28x28xf32>, tensor<1x480x28x28xf32>) -> tensor<1x480x28x28xi1>
    %2175 = "tosa.select"(%2174, %2173, %73) : (tensor<1x480x28x28xi1>, tensor<1x480x28x28xf32>, tensor<f32>) -> tensor<1x480x28x28xf32>
    %2176 = "tosa.mul"(%2175, %38) {shift = 0 : i32} : (tensor<1x480x28x28xf32>, tensor<1x480x1x1xf32>) -> tensor<1x480x28x28xf32>
    %2177 = "tosa.mul"(%429, %2176) {shift = 0 : i32} : (tensor<1x480x1x1xf32>, tensor<1x480x28x28xf32>) -> tensor<1x480x28x28xf32>
    %extracted_slice_1181 = tensor.extract_slice %2177[0, 448, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %2178 = "tosa.add"(%extracted_slice_1169, %extracted_slice_1181) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1182 = tensor.extract_slice %2177[0, 416, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %2179 = "tosa.add"(%extracted_slice_1170, %extracted_slice_1182) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1183 = tensor.extract_slice %2177[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %2180 = "tosa.add"(%extracted_slice_1171, %extracted_slice_1183) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1184 = tensor.extract_slice %2177[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %2181 = "tosa.add"(%extracted_slice_1172, %extracted_slice_1184) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1185 = tensor.extract_slice %2177[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %2182 = "tosa.add"(%extracted_slice_1173, %extracted_slice_1185) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1186 = tensor.extract_slice %2177[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %2183 = "tosa.add"(%extracted_slice_1174, %extracted_slice_1186) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1187 = tensor.extract_slice %2177[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %2184 = "tosa.add"(%extracted_slice_1175, %extracted_slice_1187) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1188 = tensor.extract_slice %2177[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %2185 = "tosa.add"(%extracted_slice_1176, %extracted_slice_1188) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1189 = tensor.extract_slice %2177[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %2186 = "tosa.add"(%extracted_slice_1177, %extracted_slice_1189) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1190 = tensor.extract_slice %2177[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %2187 = "tosa.add"(%extracted_slice_1178, %extracted_slice_1190) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1191 = tensor.extract_slice %2177[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x32x28x28xf32>
    %2188 = "tosa.add"(%extracted_slice_1179, %extracted_slice_1191) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1192 = tensor.extract_slice %2177[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x480x28x28xf32> to tensor<1x128x28x28xf32>
    %2189 = "tosa.add"(%extracted_slice_1180, %extracted_slice_1192) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2190 = "tosa.transpose"(%2178, %71) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %2191 = "tosa.transpose_conv2d"(%2190, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %2192 = "tosa.transpose"(%2191, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %2193 = "tosa.equal"(%422, %423) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %2194 = "tosa.select"(%2193, %2192, %73) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %2195 = "tosa.mul"(%2194, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %2196 = "tosa.mul"(%132, %2195) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2197 = "tosa.transpose"(%2196, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %2198 = "tosa.transpose_conv2d"(%2197, %93, %cst_80) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 448>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<448x1x1x128xf32>, tensor<448xf32>) -> tensor<1x28x28x448xf32>
    %2199 = "tosa.transpose"(%2198, %72) : (tensor<1x28x28x448xf32>, tensor<4xi64>) -> tensor<1x448x28x28xf32>
    %2200 = "tosa.equal"(%414, %415) : (tensor<1x448x28x28xf32>, tensor<1x448x28x28xf32>) -> tensor<1x448x28x28xi1>
    %2201 = "tosa.select"(%2200, %2199, %73) : (tensor<1x448x28x28xi1>, tensor<1x448x28x28xf32>, tensor<f32>) -> tensor<1x448x28x28xf32>
    %2202 = "tosa.mul"(%2201, %40) {shift = 0 : i32} : (tensor<1x448x28x28xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x28x28xf32>
    %2203 = "tosa.mul"(%411, %2202) {shift = 0 : i32} : (tensor<1x448x1x1xf32>, tensor<1x448x28x28xf32>) -> tensor<1x448x28x28xf32>
    %extracted_slice_1193 = tensor.extract_slice %2203[0, 416, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x32x28x28xf32>
    %2204 = "tosa.add"(%2179, %extracted_slice_1193) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1194 = tensor.extract_slice %2203[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x32x28x28xf32>
    %2205 = "tosa.add"(%2180, %extracted_slice_1194) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1195 = tensor.extract_slice %2203[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x32x28x28xf32>
    %2206 = "tosa.add"(%2181, %extracted_slice_1195) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1196 = tensor.extract_slice %2203[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x32x28x28xf32>
    %2207 = "tosa.add"(%2182, %extracted_slice_1196) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1197 = tensor.extract_slice %2203[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x32x28x28xf32>
    %2208 = "tosa.add"(%2183, %extracted_slice_1197) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1198 = tensor.extract_slice %2203[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x32x28x28xf32>
    %2209 = "tosa.add"(%2184, %extracted_slice_1198) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1199 = tensor.extract_slice %2203[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x32x28x28xf32>
    %2210 = "tosa.add"(%2185, %extracted_slice_1199) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1200 = tensor.extract_slice %2203[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x32x28x28xf32>
    %2211 = "tosa.add"(%2186, %extracted_slice_1200) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1201 = tensor.extract_slice %2203[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x32x28x28xf32>
    %2212 = "tosa.add"(%2187, %extracted_slice_1201) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1202 = tensor.extract_slice %2203[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x32x28x28xf32>
    %2213 = "tosa.add"(%2188, %extracted_slice_1202) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1203 = tensor.extract_slice %2203[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x448x28x28xf32> to tensor<1x128x28x28xf32>
    %2214 = "tosa.add"(%2189, %extracted_slice_1203) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2215 = "tosa.transpose"(%2204, %71) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %2216 = "tosa.transpose_conv2d"(%2215, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %2217 = "tosa.transpose"(%2216, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %2218 = "tosa.equal"(%404, %405) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %2219 = "tosa.select"(%2218, %2217, %73) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %2220 = "tosa.mul"(%2219, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %2221 = "tosa.mul"(%132, %2220) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2222 = "tosa.transpose"(%2221, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %2223 = "tosa.transpose_conv2d"(%2222, %94, %cst_81) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 416>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<416x1x1x128xf32>, tensor<416xf32>) -> tensor<1x28x28x416xf32>
    %2224 = "tosa.transpose"(%2223, %72) : (tensor<1x28x28x416xf32>, tensor<4xi64>) -> tensor<1x416x28x28xf32>
    %2225 = "tosa.equal"(%396, %397) : (tensor<1x416x28x28xf32>, tensor<1x416x28x28xf32>) -> tensor<1x416x28x28xi1>
    %2226 = "tosa.select"(%2225, %2224, %73) : (tensor<1x416x28x28xi1>, tensor<1x416x28x28xf32>, tensor<f32>) -> tensor<1x416x28x28xf32>
    %2227 = "tosa.mul"(%2226, %42) {shift = 0 : i32} : (tensor<1x416x28x28xf32>, tensor<1x416x1x1xf32>) -> tensor<1x416x28x28xf32>
    %2228 = "tosa.mul"(%393, %2227) {shift = 0 : i32} : (tensor<1x416x1x1xf32>, tensor<1x416x28x28xf32>) -> tensor<1x416x28x28xf32>
    %extracted_slice_1204 = tensor.extract_slice %2228[0, 384, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x416x28x28xf32> to tensor<1x32x28x28xf32>
    %2229 = "tosa.add"(%2205, %extracted_slice_1204) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1205 = tensor.extract_slice %2228[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x416x28x28xf32> to tensor<1x32x28x28xf32>
    %2230 = "tosa.add"(%2206, %extracted_slice_1205) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1206 = tensor.extract_slice %2228[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x416x28x28xf32> to tensor<1x32x28x28xf32>
    %2231 = "tosa.add"(%2207, %extracted_slice_1206) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1207 = tensor.extract_slice %2228[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x416x28x28xf32> to tensor<1x32x28x28xf32>
    %2232 = "tosa.add"(%2208, %extracted_slice_1207) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1208 = tensor.extract_slice %2228[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x416x28x28xf32> to tensor<1x32x28x28xf32>
    %2233 = "tosa.add"(%2209, %extracted_slice_1208) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1209 = tensor.extract_slice %2228[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x416x28x28xf32> to tensor<1x32x28x28xf32>
    %2234 = "tosa.add"(%2210, %extracted_slice_1209) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1210 = tensor.extract_slice %2228[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x416x28x28xf32> to tensor<1x32x28x28xf32>
    %2235 = "tosa.add"(%2211, %extracted_slice_1210) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1211 = tensor.extract_slice %2228[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x416x28x28xf32> to tensor<1x32x28x28xf32>
    %2236 = "tosa.add"(%2212, %extracted_slice_1211) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1212 = tensor.extract_slice %2228[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x416x28x28xf32> to tensor<1x32x28x28xf32>
    %2237 = "tosa.add"(%2213, %extracted_slice_1212) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1213 = tensor.extract_slice %2228[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x416x28x28xf32> to tensor<1x128x28x28xf32>
    %2238 = "tosa.add"(%2214, %extracted_slice_1213) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2239 = "tosa.transpose"(%2229, %71) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %2240 = "tosa.transpose_conv2d"(%2239, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %2241 = "tosa.transpose"(%2240, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %2242 = "tosa.equal"(%386, %387) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %2243 = "tosa.select"(%2242, %2241, %73) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %2244 = "tosa.mul"(%2243, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %2245 = "tosa.mul"(%132, %2244) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2246 = "tosa.transpose"(%2245, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %2247 = "tosa.transpose_conv2d"(%2246, %95, %cst_82) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 384>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<384x1x1x128xf32>, tensor<384xf32>) -> tensor<1x28x28x384xf32>
    %2248 = "tosa.transpose"(%2247, %72) : (tensor<1x28x28x384xf32>, tensor<4xi64>) -> tensor<1x384x28x28xf32>
    %2249 = "tosa.equal"(%378, %379) : (tensor<1x384x28x28xf32>, tensor<1x384x28x28xf32>) -> tensor<1x384x28x28xi1>
    %2250 = "tosa.select"(%2249, %2248, %73) : (tensor<1x384x28x28xi1>, tensor<1x384x28x28xf32>, tensor<f32>) -> tensor<1x384x28x28xf32>
    %2251 = "tosa.mul"(%2250, %44) {shift = 0 : i32} : (tensor<1x384x28x28xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x28x28xf32>
    %2252 = "tosa.mul"(%375, %2251) {shift = 0 : i32} : (tensor<1x384x1x1xf32>, tensor<1x384x28x28xf32>) -> tensor<1x384x28x28xf32>
    %extracted_slice_1214 = tensor.extract_slice %2252[0, 352, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x384x28x28xf32> to tensor<1x32x28x28xf32>
    %2253 = "tosa.add"(%2230, %extracted_slice_1214) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1215 = tensor.extract_slice %2252[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x384x28x28xf32> to tensor<1x32x28x28xf32>
    %2254 = "tosa.add"(%2231, %extracted_slice_1215) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1216 = tensor.extract_slice %2252[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x384x28x28xf32> to tensor<1x32x28x28xf32>
    %2255 = "tosa.add"(%2232, %extracted_slice_1216) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1217 = tensor.extract_slice %2252[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x384x28x28xf32> to tensor<1x32x28x28xf32>
    %2256 = "tosa.add"(%2233, %extracted_slice_1217) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1218 = tensor.extract_slice %2252[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x384x28x28xf32> to tensor<1x32x28x28xf32>
    %2257 = "tosa.add"(%2234, %extracted_slice_1218) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1219 = tensor.extract_slice %2252[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x384x28x28xf32> to tensor<1x32x28x28xf32>
    %2258 = "tosa.add"(%2235, %extracted_slice_1219) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1220 = tensor.extract_slice %2252[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x384x28x28xf32> to tensor<1x32x28x28xf32>
    %2259 = "tosa.add"(%2236, %extracted_slice_1220) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1221 = tensor.extract_slice %2252[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x384x28x28xf32> to tensor<1x32x28x28xf32>
    %2260 = "tosa.add"(%2237, %extracted_slice_1221) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1222 = tensor.extract_slice %2252[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x384x28x28xf32> to tensor<1x128x28x28xf32>
    %2261 = "tosa.add"(%2238, %extracted_slice_1222) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2262 = "tosa.transpose"(%2253, %71) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %2263 = "tosa.transpose_conv2d"(%2262, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %2264 = "tosa.transpose"(%2263, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %2265 = "tosa.equal"(%368, %369) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %2266 = "tosa.select"(%2265, %2264, %73) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %2267 = "tosa.mul"(%2266, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %2268 = "tosa.mul"(%132, %2267) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2269 = "tosa.transpose"(%2268, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %2270 = "tosa.transpose_conv2d"(%2269, %96, %cst_83) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 352>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<352x1x1x128xf32>, tensor<352xf32>) -> tensor<1x28x28x352xf32>
    %2271 = "tosa.transpose"(%2270, %72) : (tensor<1x28x28x352xf32>, tensor<4xi64>) -> tensor<1x352x28x28xf32>
    %2272 = "tosa.equal"(%360, %361) : (tensor<1x352x28x28xf32>, tensor<1x352x28x28xf32>) -> tensor<1x352x28x28xi1>
    %2273 = "tosa.select"(%2272, %2271, %73) : (tensor<1x352x28x28xi1>, tensor<1x352x28x28xf32>, tensor<f32>) -> tensor<1x352x28x28xf32>
    %2274 = "tosa.mul"(%2273, %46) {shift = 0 : i32} : (tensor<1x352x28x28xf32>, tensor<1x352x1x1xf32>) -> tensor<1x352x28x28xf32>
    %2275 = "tosa.mul"(%357, %2274) {shift = 0 : i32} : (tensor<1x352x1x1xf32>, tensor<1x352x28x28xf32>) -> tensor<1x352x28x28xf32>
    %extracted_slice_1223 = tensor.extract_slice %2275[0, 320, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x352x28x28xf32> to tensor<1x32x28x28xf32>
    %2276 = "tosa.add"(%2254, %extracted_slice_1223) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1224 = tensor.extract_slice %2275[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x352x28x28xf32> to tensor<1x32x28x28xf32>
    %2277 = "tosa.add"(%2255, %extracted_slice_1224) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1225 = tensor.extract_slice %2275[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x352x28x28xf32> to tensor<1x32x28x28xf32>
    %2278 = "tosa.add"(%2256, %extracted_slice_1225) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1226 = tensor.extract_slice %2275[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x352x28x28xf32> to tensor<1x32x28x28xf32>
    %2279 = "tosa.add"(%2257, %extracted_slice_1226) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1227 = tensor.extract_slice %2275[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x352x28x28xf32> to tensor<1x32x28x28xf32>
    %2280 = "tosa.add"(%2258, %extracted_slice_1227) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1228 = tensor.extract_slice %2275[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x352x28x28xf32> to tensor<1x32x28x28xf32>
    %2281 = "tosa.add"(%2259, %extracted_slice_1228) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1229 = tensor.extract_slice %2275[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x352x28x28xf32> to tensor<1x32x28x28xf32>
    %2282 = "tosa.add"(%2260, %extracted_slice_1229) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1230 = tensor.extract_slice %2275[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x352x28x28xf32> to tensor<1x128x28x28xf32>
    %2283 = "tosa.add"(%2261, %extracted_slice_1230) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2284 = "tosa.transpose"(%2276, %71) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %2285 = "tosa.transpose_conv2d"(%2284, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %2286 = "tosa.transpose"(%2285, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %2287 = "tosa.equal"(%350, %351) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %2288 = "tosa.select"(%2287, %2286, %73) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %2289 = "tosa.mul"(%2288, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %2290 = "tosa.mul"(%132, %2289) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2291 = "tosa.transpose"(%2290, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %2292 = "tosa.transpose_conv2d"(%2291, %97, %cst_84) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 320>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<320x1x1x128xf32>, tensor<320xf32>) -> tensor<1x28x28x320xf32>
    %2293 = "tosa.transpose"(%2292, %72) : (tensor<1x28x28x320xf32>, tensor<4xi64>) -> tensor<1x320x28x28xf32>
    %2294 = "tosa.equal"(%342, %343) : (tensor<1x320x28x28xf32>, tensor<1x320x28x28xf32>) -> tensor<1x320x28x28xi1>
    %2295 = "tosa.select"(%2294, %2293, %73) : (tensor<1x320x28x28xi1>, tensor<1x320x28x28xf32>, tensor<f32>) -> tensor<1x320x28x28xf32>
    %2296 = "tosa.mul"(%2295, %48) {shift = 0 : i32} : (tensor<1x320x28x28xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x28x28xf32>
    %2297 = "tosa.mul"(%339, %2296) {shift = 0 : i32} : (tensor<1x320x1x1xf32>, tensor<1x320x28x28xf32>) -> tensor<1x320x28x28xf32>
    %extracted_slice_1231 = tensor.extract_slice %2297[0, 288, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x320x28x28xf32> to tensor<1x32x28x28xf32>
    %2298 = "tosa.add"(%2277, %extracted_slice_1231) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1232 = tensor.extract_slice %2297[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x320x28x28xf32> to tensor<1x32x28x28xf32>
    %2299 = "tosa.add"(%2278, %extracted_slice_1232) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1233 = tensor.extract_slice %2297[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x320x28x28xf32> to tensor<1x32x28x28xf32>
    %2300 = "tosa.add"(%2279, %extracted_slice_1233) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1234 = tensor.extract_slice %2297[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x320x28x28xf32> to tensor<1x32x28x28xf32>
    %2301 = "tosa.add"(%2280, %extracted_slice_1234) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1235 = tensor.extract_slice %2297[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x320x28x28xf32> to tensor<1x32x28x28xf32>
    %2302 = "tosa.add"(%2281, %extracted_slice_1235) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1236 = tensor.extract_slice %2297[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x320x28x28xf32> to tensor<1x32x28x28xf32>
    %2303 = "tosa.add"(%2282, %extracted_slice_1236) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1237 = tensor.extract_slice %2297[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x320x28x28xf32> to tensor<1x128x28x28xf32>
    %2304 = "tosa.add"(%2283, %extracted_slice_1237) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2305 = "tosa.transpose"(%2298, %71) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %2306 = "tosa.transpose_conv2d"(%2305, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %2307 = "tosa.transpose"(%2306, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %2308 = "tosa.equal"(%332, %333) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %2309 = "tosa.select"(%2308, %2307, %73) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %2310 = "tosa.mul"(%2309, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %2311 = "tosa.mul"(%132, %2310) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2312 = "tosa.transpose"(%2311, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %2313 = "tosa.transpose_conv2d"(%2312, %98, %cst_85) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 288>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<288x1x1x128xf32>, tensor<288xf32>) -> tensor<1x28x28x288xf32>
    %2314 = "tosa.transpose"(%2313, %72) : (tensor<1x28x28x288xf32>, tensor<4xi64>) -> tensor<1x288x28x28xf32>
    %2315 = "tosa.equal"(%324, %325) : (tensor<1x288x28x28xf32>, tensor<1x288x28x28xf32>) -> tensor<1x288x28x28xi1>
    %2316 = "tosa.select"(%2315, %2314, %73) : (tensor<1x288x28x28xi1>, tensor<1x288x28x28xf32>, tensor<f32>) -> tensor<1x288x28x28xf32>
    %2317 = "tosa.mul"(%2316, %50) {shift = 0 : i32} : (tensor<1x288x28x28xf32>, tensor<1x288x1x1xf32>) -> tensor<1x288x28x28xf32>
    %2318 = "tosa.mul"(%321, %2317) {shift = 0 : i32} : (tensor<1x288x1x1xf32>, tensor<1x288x28x28xf32>) -> tensor<1x288x28x28xf32>
    %extracted_slice_1238 = tensor.extract_slice %2318[0, 256, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x288x28x28xf32> to tensor<1x32x28x28xf32>
    %2319 = "tosa.add"(%2299, %extracted_slice_1238) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1239 = tensor.extract_slice %2318[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x288x28x28xf32> to tensor<1x32x28x28xf32>
    %2320 = "tosa.add"(%2300, %extracted_slice_1239) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1240 = tensor.extract_slice %2318[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x288x28x28xf32> to tensor<1x32x28x28xf32>
    %2321 = "tosa.add"(%2301, %extracted_slice_1240) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1241 = tensor.extract_slice %2318[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x288x28x28xf32> to tensor<1x32x28x28xf32>
    %2322 = "tosa.add"(%2302, %extracted_slice_1241) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1242 = tensor.extract_slice %2318[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x288x28x28xf32> to tensor<1x32x28x28xf32>
    %2323 = "tosa.add"(%2303, %extracted_slice_1242) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1243 = tensor.extract_slice %2318[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x288x28x28xf32> to tensor<1x128x28x28xf32>
    %2324 = "tosa.add"(%2304, %extracted_slice_1243) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2325 = "tosa.transpose"(%2319, %71) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %2326 = "tosa.transpose_conv2d"(%2325, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %2327 = "tosa.transpose"(%2326, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %2328 = "tosa.equal"(%314, %315) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %2329 = "tosa.select"(%2328, %2327, %73) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %2330 = "tosa.mul"(%2329, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %2331 = "tosa.mul"(%132, %2330) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2332 = "tosa.transpose"(%2331, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %2333 = "tosa.transpose_conv2d"(%2332, %99, %cst_86) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %2334 = "tosa.transpose"(%2333, %72) : (tensor<1x28x28x256xf32>, tensor<4xi64>) -> tensor<1x256x28x28xf32>
    %2335 = "tosa.equal"(%306, %307) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %2336 = "tosa.select"(%2335, %2334, %73) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %2337 = "tosa.mul"(%2336, %52) {shift = 0 : i32} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %2338 = "tosa.mul"(%230, %2337) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %extracted_slice_1244 = tensor.extract_slice %2338[0, 224, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x256x28x28xf32> to tensor<1x32x28x28xf32>
    %2339 = "tosa.add"(%2320, %extracted_slice_1244) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1245 = tensor.extract_slice %2338[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x256x28x28xf32> to tensor<1x32x28x28xf32>
    %2340 = "tosa.add"(%2321, %extracted_slice_1245) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1246 = tensor.extract_slice %2338[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x256x28x28xf32> to tensor<1x32x28x28xf32>
    %2341 = "tosa.add"(%2322, %extracted_slice_1246) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1247 = tensor.extract_slice %2338[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x256x28x28xf32> to tensor<1x32x28x28xf32>
    %2342 = "tosa.add"(%2323, %extracted_slice_1247) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1248 = tensor.extract_slice %2338[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x256x28x28xf32> to tensor<1x128x28x28xf32>
    %2343 = "tosa.add"(%2324, %extracted_slice_1248) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2344 = "tosa.transpose"(%2339, %71) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %2345 = "tosa.transpose_conv2d"(%2344, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %2346 = "tosa.transpose"(%2345, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %2347 = "tosa.equal"(%298, %299) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %2348 = "tosa.select"(%2347, %2346, %73) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %2349 = "tosa.mul"(%2348, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %2350 = "tosa.mul"(%132, %2349) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2351 = "tosa.transpose"(%2350, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %2352 = "tosa.transpose_conv2d"(%2351, %101, %cst_88) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 224>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<224x1x1x128xf32>, tensor<224xf32>) -> tensor<1x28x28x224xf32>
    %2353 = "tosa.transpose"(%2352, %72) : (tensor<1x28x28x224xf32>, tensor<4xi64>) -> tensor<1x224x28x28xf32>
    %2354 = "tosa.equal"(%290, %291) : (tensor<1x224x28x28xf32>, tensor<1x224x28x28xf32>) -> tensor<1x224x28x28xi1>
    %2355 = "tosa.select"(%2354, %2353, %73) : (tensor<1x224x28x28xi1>, tensor<1x224x28x28xf32>, tensor<f32>) -> tensor<1x224x28x28xf32>
    %2356 = "tosa.mul"(%2355, %54) {shift = 0 : i32} : (tensor<1x224x28x28xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x28x28xf32>
    %2357 = "tosa.mul"(%212, %2356) {shift = 0 : i32} : (tensor<1x224x1x1xf32>, tensor<1x224x28x28xf32>) -> tensor<1x224x28x28xf32>
    %extracted_slice_1249 = tensor.extract_slice %2357[0, 192, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x224x28x28xf32> to tensor<1x32x28x28xf32>
    %2358 = "tosa.add"(%2340, %extracted_slice_1249) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1250 = tensor.extract_slice %2357[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x224x28x28xf32> to tensor<1x32x28x28xf32>
    %2359 = "tosa.add"(%2341, %extracted_slice_1250) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1251 = tensor.extract_slice %2357[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x224x28x28xf32> to tensor<1x32x28x28xf32>
    %2360 = "tosa.add"(%2342, %extracted_slice_1251) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1252 = tensor.extract_slice %2357[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x224x28x28xf32> to tensor<1x128x28x28xf32>
    %2361 = "tosa.add"(%2343, %extracted_slice_1252) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2362 = "tosa.transpose"(%2358, %71) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %2363 = "tosa.transpose_conv2d"(%2362, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %2364 = "tosa.transpose"(%2363, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %2365 = "tosa.equal"(%282, %283) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %2366 = "tosa.select"(%2365, %2364, %73) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %2367 = "tosa.mul"(%2366, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %2368 = "tosa.mul"(%132, %2367) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2369 = "tosa.transpose"(%2368, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %2370 = "tosa.transpose_conv2d"(%2369, %102, %cst_89) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 192>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<192x1x1x128xf32>, tensor<192xf32>) -> tensor<1x28x28x192xf32>
    %2371 = "tosa.transpose"(%2370, %72) : (tensor<1x28x28x192xf32>, tensor<4xi64>) -> tensor<1x192x28x28xf32>
    %2372 = "tosa.equal"(%274, %275) : (tensor<1x192x28x28xf32>, tensor<1x192x28x28xf32>) -> tensor<1x192x28x28xi1>
    %2373 = "tosa.select"(%2372, %2371, %73) : (tensor<1x192x28x28xi1>, tensor<1x192x28x28xf32>, tensor<f32>) -> tensor<1x192x28x28xf32>
    %2374 = "tosa.mul"(%2373, %56) {shift = 0 : i32} : (tensor<1x192x28x28xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x28x28xf32>
    %2375 = "tosa.mul"(%194, %2374) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x28x28xf32>) -> tensor<1x192x28x28xf32>
    %extracted_slice_1253 = tensor.extract_slice %2375[0, 160, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x192x28x28xf32> to tensor<1x32x28x28xf32>
    %2376 = "tosa.add"(%2359, %extracted_slice_1253) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1254 = tensor.extract_slice %2375[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x192x28x28xf32> to tensor<1x32x28x28xf32>
    %2377 = "tosa.add"(%2360, %extracted_slice_1254) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1255 = tensor.extract_slice %2375[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x192x28x28xf32> to tensor<1x128x28x28xf32>
    %2378 = "tosa.add"(%2361, %extracted_slice_1255) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2379 = "tosa.transpose"(%2376, %71) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %2380 = "tosa.transpose_conv2d"(%2379, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %2381 = "tosa.transpose"(%2380, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %2382 = "tosa.equal"(%266, %267) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %2383 = "tosa.select"(%2382, %2381, %73) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %2384 = "tosa.mul"(%2383, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %2385 = "tosa.mul"(%132, %2384) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2386 = "tosa.transpose"(%2385, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %2387 = "tosa.transpose_conv2d"(%2386, %103, %cst_90) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 160>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<160x1x1x128xf32>, tensor<160xf32>) -> tensor<1x28x28x160xf32>
    %2388 = "tosa.transpose"(%2387, %72) : (tensor<1x28x28x160xf32>, tensor<4xi64>) -> tensor<1x160x28x28xf32>
    %2389 = "tosa.equal"(%258, %259) : (tensor<1x160x28x28xf32>, tensor<1x160x28x28xf32>) -> tensor<1x160x28x28xi1>
    %2390 = "tosa.select"(%2389, %2388, %73) : (tensor<1x160x28x28xi1>, tensor<1x160x28x28xf32>, tensor<f32>) -> tensor<1x160x28x28xf32>
    %2391 = "tosa.mul"(%2390, %58) {shift = 0 : i32} : (tensor<1x160x28x28xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x28x28xf32>
    %2392 = "tosa.mul"(%176, %2391) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x28x28xf32>) -> tensor<1x160x28x28xf32>
    %extracted_slice_1256 = tensor.extract_slice %2392[0, 128, 0, 0] [1, 32, 28, 28] [1, 1, 1, 1] : tensor<1x160x28x28xf32> to tensor<1x32x28x28xf32>
    %2393 = "tosa.add"(%2377, %extracted_slice_1256) : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %extracted_slice_1257 = tensor.extract_slice %2392[0, 0, 0, 0] [1, 128, 28, 28] [1, 1, 1, 1] : tensor<1x160x28x28xf32> to tensor<1x128x28x28xf32>
    %2394 = "tosa.add"(%2378, %extracted_slice_1257) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2395 = "tosa.transpose"(%2393, %71) : (tensor<1x32x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x32xf32>
    %2396 = "tosa.transpose_conv2d"(%2395, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %2397 = "tosa.transpose"(%2396, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %2398 = "tosa.equal"(%250, %251) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %2399 = "tosa.select"(%2398, %2397, %73) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %2400 = "tosa.mul"(%2399, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %2401 = "tosa.mul"(%132, %2400) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2402 = "tosa.transpose"(%2401, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %2403 = "tosa.transpose_conv2d"(%2402, %104, %cst_59) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 128>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x1x1x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %2404 = "tosa.transpose"(%2403, %72) : (tensor<1x28x28x128xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %2405 = "tosa.equal"(%242, %243) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xi1>
    %2406 = "tosa.select"(%2405, %2404, %73) : (tensor<1x128x28x28xi1>, tensor<1x128x28x28xf32>, tensor<f32>) -> tensor<1x128x28x28xf32>
    %2407 = "tosa.mul"(%2406, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %2408 = "tosa.mul"(%132, %2407) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2409 = "tosa.add"(%2394, %2408) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %2410 = "tosa.transpose"(%2409, %71) : (tensor<1x128x28x28xf32>, tensor<4xi64>) -> tensor<1x28x28x128xf32>
    %2411 = linalg.generic {indexing_maps = [#map3, #map1, #map2, #map3], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%236, %cst_77, %2410 : tensor<1x56x56x128xf32>, tensor<2x2xf32>, tensor<1x28x28x128xf32>) outs(%cst_91 : tensor<1x56x56x128xf32>) {
    ^bb0(%in: f32, %in_1286: f32, %in_1287: f32, %out: f32):
      %2533 = arith.mulf %in_1287, %cst_98 : f32
      %2534 = arith.addf %2533, %out : f32
      linalg.yield %2534 : f32
    } -> tensor<1x56x56x128xf32>
    %2412 = "tosa.transpose_conv2d"(%2411, %99, %cst_86) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %2413 = "tosa.transpose"(%2412, %72) : (tensor<1x56x56x256xf32>, tensor<4xi64>) -> tensor<1x256x56x56xf32>
    %2414 = "tosa.equal"(%233, %234) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %2415 = "tosa.select"(%2414, %2413, %73) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %2416 = "tosa.mul"(%2415, %52) {shift = 0 : i32} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %2417 = "tosa.mul"(%230, %2416) {shift = 0 : i32} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %extracted_slice_1258 = tensor.extract_slice %2417[0, 224, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x256x56x56xf32> to tensor<1x32x56x56xf32>
    %extracted_slice_1259 = tensor.extract_slice %2417[0, 192, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x256x56x56xf32> to tensor<1x32x56x56xf32>
    %extracted_slice_1260 = tensor.extract_slice %2417[0, 160, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x256x56x56xf32> to tensor<1x32x56x56xf32>
    %extracted_slice_1261 = tensor.extract_slice %2417[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x256x56x56xf32> to tensor<1x32x56x56xf32>
    %extracted_slice_1262 = tensor.extract_slice %2417[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x256x56x56xf32> to tensor<1x32x56x56xf32>
    %extracted_slice_1263 = tensor.extract_slice %2417[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x256x56x56xf32> to tensor<1x32x56x56xf32>
    %extracted_slice_1264 = tensor.extract_slice %2417[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x256x56x56xf32> to tensor<1x64x56x56xf32>
    %2418 = "tosa.transpose"(%extracted_slice_1258, %71) : (tensor<1x32x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x32xf32>
    %2419 = "tosa.transpose_conv2d"(%2418, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %2420 = "tosa.transpose"(%2419, %72) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %2421 = "tosa.equal"(%223, %224) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %2422 = "tosa.select"(%2421, %2420, %73) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %2423 = "tosa.mul"(%2422, %63) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %2424 = "tosa.mul"(%132, %2423) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %2425 = "tosa.transpose"(%2424, %71) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %2426 = "tosa.transpose_conv2d"(%2425, %101, %cst_88) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 224>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<224x1x1x128xf32>, tensor<224xf32>) -> tensor<1x56x56x224xf32>
    %2427 = "tosa.transpose"(%2426, %72) : (tensor<1x56x56x224xf32>, tensor<4xi64>) -> tensor<1x224x56x56xf32>
    %2428 = "tosa.equal"(%215, %216) : (tensor<1x224x56x56xf32>, tensor<1x224x56x56xf32>) -> tensor<1x224x56x56xi1>
    %2429 = "tosa.select"(%2428, %2427, %73) : (tensor<1x224x56x56xi1>, tensor<1x224x56x56xf32>, tensor<f32>) -> tensor<1x224x56x56xf32>
    %2430 = "tosa.mul"(%2429, %54) {shift = 0 : i32} : (tensor<1x224x56x56xf32>, tensor<1x224x1x1xf32>) -> tensor<1x224x56x56xf32>
    %2431 = "tosa.mul"(%212, %2430) {shift = 0 : i32} : (tensor<1x224x1x1xf32>, tensor<1x224x56x56xf32>) -> tensor<1x224x56x56xf32>
    %extracted_slice_1265 = tensor.extract_slice %2431[0, 192, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x224x56x56xf32> to tensor<1x32x56x56xf32>
    %2432 = "tosa.add"(%extracted_slice_1259, %extracted_slice_1265) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_1266 = tensor.extract_slice %2431[0, 160, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x224x56x56xf32> to tensor<1x32x56x56xf32>
    %2433 = "tosa.add"(%extracted_slice_1260, %extracted_slice_1266) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_1267 = tensor.extract_slice %2431[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x224x56x56xf32> to tensor<1x32x56x56xf32>
    %2434 = "tosa.add"(%extracted_slice_1261, %extracted_slice_1267) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_1268 = tensor.extract_slice %2431[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x224x56x56xf32> to tensor<1x32x56x56xf32>
    %2435 = "tosa.add"(%extracted_slice_1262, %extracted_slice_1268) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_1269 = tensor.extract_slice %2431[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x224x56x56xf32> to tensor<1x32x56x56xf32>
    %2436 = "tosa.add"(%extracted_slice_1263, %extracted_slice_1269) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_1270 = tensor.extract_slice %2431[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x224x56x56xf32> to tensor<1x64x56x56xf32>
    %2437 = "tosa.add"(%extracted_slice_1264, %extracted_slice_1270) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %2438 = "tosa.transpose"(%2432, %71) : (tensor<1x32x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x32xf32>
    %2439 = "tosa.transpose_conv2d"(%2438, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %2440 = "tosa.transpose"(%2439, %72) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %2441 = "tosa.equal"(%205, %206) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %2442 = "tosa.select"(%2441, %2440, %73) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %2443 = "tosa.mul"(%2442, %63) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %2444 = "tosa.mul"(%132, %2443) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %2445 = "tosa.transpose"(%2444, %71) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %2446 = "tosa.transpose_conv2d"(%2445, %102, %cst_89) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 192>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<192x1x1x128xf32>, tensor<192xf32>) -> tensor<1x56x56x192xf32>
    %2447 = "tosa.transpose"(%2446, %72) : (tensor<1x56x56x192xf32>, tensor<4xi64>) -> tensor<1x192x56x56xf32>
    %2448 = "tosa.equal"(%197, %198) : (tensor<1x192x56x56xf32>, tensor<1x192x56x56xf32>) -> tensor<1x192x56x56xi1>
    %2449 = "tosa.select"(%2448, %2447, %73) : (tensor<1x192x56x56xi1>, tensor<1x192x56x56xf32>, tensor<f32>) -> tensor<1x192x56x56xf32>
    %2450 = "tosa.mul"(%2449, %56) {shift = 0 : i32} : (tensor<1x192x56x56xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x56x56xf32>
    %2451 = "tosa.mul"(%194, %2450) {shift = 0 : i32} : (tensor<1x192x1x1xf32>, tensor<1x192x56x56xf32>) -> tensor<1x192x56x56xf32>
    %extracted_slice_1271 = tensor.extract_slice %2451[0, 160, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x192x56x56xf32> to tensor<1x32x56x56xf32>
    %2452 = "tosa.add"(%2433, %extracted_slice_1271) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_1272 = tensor.extract_slice %2451[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x192x56x56xf32> to tensor<1x32x56x56xf32>
    %2453 = "tosa.add"(%2434, %extracted_slice_1272) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_1273 = tensor.extract_slice %2451[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x192x56x56xf32> to tensor<1x32x56x56xf32>
    %2454 = "tosa.add"(%2435, %extracted_slice_1273) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_1274 = tensor.extract_slice %2451[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x192x56x56xf32> to tensor<1x32x56x56xf32>
    %2455 = "tosa.add"(%2436, %extracted_slice_1274) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_1275 = tensor.extract_slice %2451[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x192x56x56xf32> to tensor<1x64x56x56xf32>
    %2456 = "tosa.add"(%2437, %extracted_slice_1275) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %2457 = "tosa.transpose"(%2452, %71) : (tensor<1x32x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x32xf32>
    %2458 = "tosa.transpose_conv2d"(%2457, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %2459 = "tosa.transpose"(%2458, %72) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %2460 = "tosa.equal"(%187, %188) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %2461 = "tosa.select"(%2460, %2459, %73) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %2462 = "tosa.mul"(%2461, %63) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %2463 = "tosa.mul"(%132, %2462) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %2464 = "tosa.transpose"(%2463, %71) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %2465 = "tosa.transpose_conv2d"(%2464, %103, %cst_90) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 160>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<160x1x1x128xf32>, tensor<160xf32>) -> tensor<1x56x56x160xf32>
    %2466 = "tosa.transpose"(%2465, %72) : (tensor<1x56x56x160xf32>, tensor<4xi64>) -> tensor<1x160x56x56xf32>
    %2467 = "tosa.equal"(%179, %180) : (tensor<1x160x56x56xf32>, tensor<1x160x56x56xf32>) -> tensor<1x160x56x56xi1>
    %2468 = "tosa.select"(%2467, %2466, %73) : (tensor<1x160x56x56xi1>, tensor<1x160x56x56xf32>, tensor<f32>) -> tensor<1x160x56x56xf32>
    %2469 = "tosa.mul"(%2468, %58) {shift = 0 : i32} : (tensor<1x160x56x56xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x56x56xf32>
    %2470 = "tosa.mul"(%176, %2469) {shift = 0 : i32} : (tensor<1x160x1x1xf32>, tensor<1x160x56x56xf32>) -> tensor<1x160x56x56xf32>
    %extracted_slice_1276 = tensor.extract_slice %2470[0, 128, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x160x56x56xf32> to tensor<1x32x56x56xf32>
    %2471 = "tosa.add"(%2453, %extracted_slice_1276) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_1277 = tensor.extract_slice %2470[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x160x56x56xf32> to tensor<1x32x56x56xf32>
    %2472 = "tosa.add"(%2454, %extracted_slice_1277) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_1278 = tensor.extract_slice %2470[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x160x56x56xf32> to tensor<1x32x56x56xf32>
    %2473 = "tosa.add"(%2455, %extracted_slice_1278) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_1279 = tensor.extract_slice %2470[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x160x56x56xf32> to tensor<1x64x56x56xf32>
    %2474 = "tosa.add"(%2456, %extracted_slice_1279) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %2475 = "tosa.transpose"(%2471, %71) : (tensor<1x32x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x32xf32>
    %2476 = "tosa.transpose_conv2d"(%2475, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %2477 = "tosa.transpose"(%2476, %72) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %2478 = "tosa.equal"(%169, %170) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %2479 = "tosa.select"(%2478, %2477, %73) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %2480 = "tosa.mul"(%2479, %63) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %2481 = "tosa.mul"(%132, %2480) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %2482 = "tosa.transpose"(%2481, %71) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %2483 = "tosa.transpose_conv2d"(%2482, %104, %cst_59) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x1x1x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %2484 = "tosa.transpose"(%2483, %72) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %2485 = "tosa.equal"(%161, %162) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %2486 = "tosa.select"(%2485, %2484, %73) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %2487 = "tosa.mul"(%2486, %63) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %2488 = "tosa.mul"(%132, %2487) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %extracted_slice_1280 = tensor.extract_slice %2488[0, 96, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x128x56x56xf32> to tensor<1x32x56x56xf32>
    %2489 = "tosa.add"(%2472, %extracted_slice_1280) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_1281 = tensor.extract_slice %2488[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x128x56x56xf32> to tensor<1x32x56x56xf32>
    %2490 = "tosa.add"(%2473, %extracted_slice_1281) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_1282 = tensor.extract_slice %2488[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x128x56x56xf32> to tensor<1x64x56x56xf32>
    %2491 = "tosa.add"(%2474, %extracted_slice_1282) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %2492 = "tosa.transpose"(%2489, %71) : (tensor<1x32x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x32xf32>
    %2493 = "tosa.transpose_conv2d"(%2492, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %2494 = "tosa.transpose"(%2493, %72) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %2495 = "tosa.equal"(%153, %154) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %2496 = "tosa.select"(%2495, %2494, %73) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %2497 = "tosa.mul"(%2496, %63) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %2498 = "tosa.mul"(%132, %2497) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %2499 = "tosa.transpose"(%2498, %71) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %2500 = "tosa.transpose_conv2d"(%2499, %105, %cst_92) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 96>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<96x1x1x128xf32>, tensor<96xf32>) -> tensor<1x56x56x96xf32>
    %2501 = "tosa.transpose"(%2500, %72) : (tensor<1x56x56x96xf32>, tensor<4xi64>) -> tensor<1x96x56x56xf32>
    %2502 = "tosa.equal"(%145, %146) : (tensor<1x96x56x56xf32>, tensor<1x96x56x56xf32>) -> tensor<1x96x56x56xi1>
    %2503 = "tosa.select"(%2502, %2501, %73) : (tensor<1x96x56x56xi1>, tensor<1x96x56x56xf32>, tensor<f32>) -> tensor<1x96x56x56xf32>
    %2504 = "tosa.mul"(%2503, %60) {shift = 0 : i32} : (tensor<1x96x56x56xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x56x56xf32>
    %2505 = "tosa.mul"(%142, %2504) {shift = 0 : i32} : (tensor<1x96x1x1xf32>, tensor<1x96x56x56xf32>) -> tensor<1x96x56x56xf32>
    %extracted_slice_1283 = tensor.extract_slice %2505[0, 64, 0, 0] [1, 32, 56, 56] [1, 1, 1, 1] : tensor<1x96x56x56xf32> to tensor<1x32x56x56xf32>
    %2506 = "tosa.add"(%2490, %extracted_slice_1283) : (tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x32x56x56xf32>
    %extracted_slice_1284 = tensor.extract_slice %2505[0, 0, 0, 0] [1, 64, 56, 56] [1, 1, 1, 1] : tensor<1x96x56x56xf32> to tensor<1x64x56x56xf32>
    %2507 = "tosa.add"(%2491, %extracted_slice_1284) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %2508 = "tosa.transpose"(%2506, %71) : (tensor<1x32x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x32xf32>
    %2509 = "tosa.transpose_conv2d"(%2508, %74, %cst_59) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %2510 = "tosa.transpose"(%2509, %72) : (tensor<1x56x56x128xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %2511 = "tosa.equal"(%135, %136) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %2512 = "tosa.select"(%2511, %2510, %73) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %2513 = "tosa.mul"(%2512, %63) {shift = 0 : i32} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %2514 = "tosa.mul"(%132, %2513) {shift = 0 : i32} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %2515 = "tosa.transpose"(%2514, %71) : (tensor<1x128x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x128xf32>
    %2516 = "tosa.transpose_conv2d"(%2515, %106, %cst_93) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<64x1x1x128xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %2517 = "tosa.transpose"(%2516, %72) : (tensor<1x56x56x64xf32>, tensor<4xi64>) -> tensor<1x64x56x56xf32>
    %2518 = "tosa.equal"(%125, %126) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xi1>
    %2519 = "tosa.select"(%2518, %2517, %73) : (tensor<1x64x56x56xi1>, tensor<1x64x56x56xf32>, tensor<f32>) -> tensor<1x64x56x56xf32>
    %2520 = "tosa.mul"(%2519, %67) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %2521 = "tosa.mul"(%114, %2520) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %2522 = "tosa.add"(%2507, %2521) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %2523 = "tosa.transpose"(%2522, %71) : (tensor<1x64x56x56xf32>, tensor<4xi64>) -> tensor<1x56x56x64xf32>
    %padded = tensor.pad %119 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_99 : f32
    } : tensor<1x112x112x64xf32> to tensor<1x114x114x64xf32>
    %2524 = linalg.generic {indexing_maps = [#map3, #map1, #map2, #map2, #map3], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%padded, %cst_95, %120, %2523 : tensor<1x114x114x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%cst_94 : tensor<1x114x114x64xf32>) {
    ^bb0(%in: f32, %in_1286: f32, %in_1287: f32, %in_1288: f32, %out: f32):
      %2533 = arith.cmpf oge, %in, %in_1287 : f32
      %2534 = arith.select %2533, %in_1288, %cst_100 : f32
      %2535 = arith.addf %out, %2534 : f32
      linalg.yield %2535 : f32
    } -> tensor<1x114x114x64xf32>
    %extracted_slice_1285 = tensor.extract_slice %2524[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x114x114x64xf32> to tensor<1x112x112x64xf32>
    %2525 = "tosa.transpose"(%extracted_slice_1285, %72) : (tensor<1x112x112x64xf32>, tensor<4xi64>) -> tensor<1x64x112x112xf32>
    %2526 = "tosa.equal"(%117, %118) : (tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xi1>
    %2527 = "tosa.select"(%2526, %2525, %73) : (tensor<1x64x112x112xi1>, tensor<1x64x112x112xf32>, tensor<f32>) -> tensor<1x64x112x112xf32>
    %2528 = "tosa.mul"(%2527, %67) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %2529 = "tosa.mul"(%114, %2528) {shift = 0 : i32} : (tensor<1x64x1x1xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %2530 = "tosa.transpose"(%2529, %71) : (tensor<1x64x112x112xf32>, tensor<4xi64>) -> tensor<1x112x112x64xf32>
    %2531 = "tosa.transpose_conv2d"(%2530, %107, %cst_96) {out_pad = array<i64: -3, -3, -3, -3>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>, tensor<3x7x7x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %2532 = "tosa.transpose"(%2531, %72) : (tensor<1x224x224x3xf32>, tensor<4xi64>) -> tensor<1x3x224x224xf32>
    return %2532 : tensor<1x3x224x224xf32>
  }
}

