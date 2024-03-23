#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "SqueezeNet"} {
  ml_program.global private mutable @global0 : tensor<1x3x224x224xf32>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<96x7x7x3xf32>} : () -> tensor<96x7x7x3xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<16x1x1x96xf32>} : () -> tensor<16x1x1x96xf32>
    %2 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x16xf32>} : () -> tensor<64x1x1x16xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x16xf32>} : () -> tensor<64x3x3x16xf32>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<16x1x1x128xf32>} : () -> tensor<16x1x1x128xf32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32x1x1x128xf32>} : () -> tensor<32x1x1x128xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x32xf32>} : () -> tensor<128x1x1x32xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x32xf32>} : () -> tensor<128x3x3x32xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32x1x1x256xf32>} : () -> tensor<32x1x1x256xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48x1x1x256xf32>} : () -> tensor<48x1x1x256xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x1x48xf32>} : () -> tensor<192x1x1x48xf32>
    %11 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x3x3x48xf32>} : () -> tensor<192x3x3x48xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48x1x1x384xf32>} : () -> tensor<48x1x1x384xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x384xf32>} : () -> tensor<64x1x1x384xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x64xf32>} : () -> tensor<256x1x1x64xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x64xf32>} : () -> tensor<256x3x3x64xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x512xf32>} : () -> tensor<64x1x1x512xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1000x1x1x512xf32>} : () -> tensor<1000x1x1x512xf32>
    %18 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %19 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<96xf32>} : () -> tensor<96xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<16xf32>} : () -> tensor<16xf32>
    %22 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64xf32>} : () -> tensor<64xf32>
    %23 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32xf32>} : () -> tensor<32xf32>
    %24 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128xf32>} : () -> tensor<128xf32>
    %25 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48xf32>} : () -> tensor<48xf32>
    %26 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192xf32>} : () -> tensor<192xf32>
    %27 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256xf32>} : () -> tensor<256xf32>
    %28 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1000xf32>} : () -> tensor<1000xf32>
    ml_program.global_store @global0 = %arg0 : tensor<1x3x224x224xf32>
    %29 = "tosa.transpose"(%arg0, %19) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %30 = "tosa.conv2d"(%29, %0, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<96x7x7x3xf32>, tensor<96xf32>) -> tensor<1x109x109x96xf32>
    %31 = "tosa.transpose"(%30, %18) : (tensor<1x109x109x96xf32>, tensor<4xi32>) -> tensor<1x96x109x109xf32>
    %32 = "tosa.clamp"(%31) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x109x109xf32>) -> tensor<1x96x109x109xf32>
    %33 = "tosa.transpose"(%32, %19) : (tensor<1x96x109x109xf32>, tensor<4xi32>) -> tensor<1x109x109x96xf32>
    %34 = "tosa.max_pool2d"(%33) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x109x109x96xf32>) -> tensor<1x54x54x96xf32>
    %35 = "tosa.conv2d"(%34, %1, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x96xf32>, tensor<16x1x1x96xf32>, tensor<16xf32>) -> tensor<1x54x54x16xf32>
    %36 = "tosa.transpose"(%35, %18) : (tensor<1x54x54x16xf32>, tensor<4xi32>) -> tensor<1x16x54x54xf32>
    %37 = "tosa.clamp"(%36) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x16x54x54xf32>) -> tensor<1x16x54x54xf32>
    %38 = "tosa.transpose"(%37, %19) : (tensor<1x16x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x16xf32>
    %39 = "tosa.conv2d"(%38, %2, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x16xf32>, tensor<64x1x1x16xf32>, tensor<64xf32>) -> tensor<1x54x54x64xf32>
    %40 = "tosa.transpose"(%39, %18) : (tensor<1x54x54x64xf32>, tensor<4xi32>) -> tensor<1x64x54x54xf32>
    %41 = "tosa.clamp"(%40) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xf32>
    %42 = "tosa.conv2d"(%38, %3, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x54x54x16xf32>, tensor<64x3x3x16xf32>, tensor<64xf32>) -> tensor<1x54x54x64xf32>
    %43 = "tosa.transpose"(%42, %18) : (tensor<1x54x54x64xf32>, tensor<4xi32>) -> tensor<1x64x54x54xf32>
    %44 = "tosa.clamp"(%43) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xf32>
    %45 = tensor.empty() : tensor<1x128x54x54xf32>
    %inserted_slice = tensor.insert_slice %41 into %45[0, 0, 0, 0] [1, 64, 54, 54] [1, 1, 1, 1] : tensor<1x64x54x54xf32> into tensor<1x128x54x54xf32>
    %inserted_slice_0 = tensor.insert_slice %44 into %inserted_slice[0, 64, 0, 0] [1, 64, 54, 54] [1, 1, 1, 1] : tensor<1x64x54x54xf32> into tensor<1x128x54x54xf32>
    %46 = "tosa.transpose"(%inserted_slice_0, %19) : (tensor<1x128x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x128xf32>
    %47 = "tosa.conv2d"(%46, %4, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x128xf32>, tensor<16x1x1x128xf32>, tensor<16xf32>) -> tensor<1x54x54x16xf32>
    %48 = "tosa.transpose"(%47, %18) : (tensor<1x54x54x16xf32>, tensor<4xi32>) -> tensor<1x16x54x54xf32>
    %49 = "tosa.clamp"(%48) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x16x54x54xf32>) -> tensor<1x16x54x54xf32>
    %50 = "tosa.transpose"(%49, %19) : (tensor<1x16x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x16xf32>
    %51 = "tosa.conv2d"(%50, %2, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x16xf32>, tensor<64x1x1x16xf32>, tensor<64xf32>) -> tensor<1x54x54x64xf32>
    %52 = "tosa.transpose"(%51, %18) : (tensor<1x54x54x64xf32>, tensor<4xi32>) -> tensor<1x64x54x54xf32>
    %53 = "tosa.clamp"(%52) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xf32>
    %54 = "tosa.conv2d"(%50, %3, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x54x54x16xf32>, tensor<64x3x3x16xf32>, tensor<64xf32>) -> tensor<1x54x54x64xf32>
    %55 = "tosa.transpose"(%54, %18) : (tensor<1x54x54x64xf32>, tensor<4xi32>) -> tensor<1x64x54x54xf32>
    %56 = "tosa.clamp"(%55) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xf32>
    %inserted_slice_1 = tensor.insert_slice %53 into %45[0, 0, 0, 0] [1, 64, 54, 54] [1, 1, 1, 1] : tensor<1x64x54x54xf32> into tensor<1x128x54x54xf32>
    %inserted_slice_2 = tensor.insert_slice %56 into %inserted_slice_1[0, 64, 0, 0] [1, 64, 54, 54] [1, 1, 1, 1] : tensor<1x64x54x54xf32> into tensor<1x128x54x54xf32>
    %57 = "tosa.transpose"(%inserted_slice_2, %19) : (tensor<1x128x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x128xf32>
    %58 = "tosa.conv2d"(%57, %5, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x128xf32>, tensor<32x1x1x128xf32>, tensor<32xf32>) -> tensor<1x54x54x32xf32>
    %59 = "tosa.transpose"(%58, %18) : (tensor<1x54x54x32xf32>, tensor<4xi32>) -> tensor<1x32x54x54xf32>
    %60 = "tosa.clamp"(%59) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x54x54xf32>) -> tensor<1x32x54x54xf32>
    %61 = "tosa.transpose"(%60, %19) : (tensor<1x32x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x32xf32>
    %62 = "tosa.conv2d"(%61, %6, %24) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x32xf32>, tensor<128x1x1x32xf32>, tensor<128xf32>) -> tensor<1x54x54x128xf32>
    %63 = "tosa.transpose"(%62, %18) : (tensor<1x54x54x128xf32>, tensor<4xi32>) -> tensor<1x128x54x54xf32>
    %64 = "tosa.clamp"(%63) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x54x54xf32>) -> tensor<1x128x54x54xf32>
    %65 = "tosa.conv2d"(%61, %7, %24) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x54x54x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x54x54x128xf32>
    %66 = "tosa.transpose"(%65, %18) : (tensor<1x54x54x128xf32>, tensor<4xi32>) -> tensor<1x128x54x54xf32>
    %67 = "tosa.clamp"(%66) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x54x54xf32>) -> tensor<1x128x54x54xf32>
    %68 = tensor.empty() : tensor<1x256x54x54xf32>
    %inserted_slice_3 = tensor.insert_slice %64 into %68[0, 0, 0, 0] [1, 128, 54, 54] [1, 1, 1, 1] : tensor<1x128x54x54xf32> into tensor<1x256x54x54xf32>
    %inserted_slice_4 = tensor.insert_slice %67 into %inserted_slice_3[0, 128, 0, 0] [1, 128, 54, 54] [1, 1, 1, 1] : tensor<1x128x54x54xf32> into tensor<1x256x54x54xf32>
    %69 = "tosa.transpose"(%inserted_slice_4, %19) : (tensor<1x256x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x256xf32>
    %70 = "tosa.max_pool2d"(%69) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 1, 0, 1>, stride = array<i64: 2, 2>} : (tensor<1x54x54x256xf32>) -> tensor<1x27x27x256xf32>
    %71 = "tosa.conv2d"(%70, %8, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x256xf32>, tensor<32x1x1x256xf32>, tensor<32xf32>) -> tensor<1x27x27x32xf32>
    %72 = "tosa.transpose"(%71, %18) : (tensor<1x27x27x32xf32>, tensor<4xi32>) -> tensor<1x32x27x27xf32>
    %73 = "tosa.clamp"(%72) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x27x27xf32>) -> tensor<1x32x27x27xf32>
    %74 = "tosa.transpose"(%73, %19) : (tensor<1x32x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x32xf32>
    %75 = "tosa.conv2d"(%74, %6, %24) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x32xf32>, tensor<128x1x1x32xf32>, tensor<128xf32>) -> tensor<1x27x27x128xf32>
    %76 = "tosa.transpose"(%75, %18) : (tensor<1x27x27x128xf32>, tensor<4xi32>) -> tensor<1x128x27x27xf32>
    %77 = "tosa.clamp"(%76) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x27x27xf32>) -> tensor<1x128x27x27xf32>
    %78 = "tosa.conv2d"(%74, %7, %24) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x27x27x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x27x27x128xf32>
    %79 = "tosa.transpose"(%78, %18) : (tensor<1x27x27x128xf32>, tensor<4xi32>) -> tensor<1x128x27x27xf32>
    %80 = "tosa.clamp"(%79) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x27x27xf32>) -> tensor<1x128x27x27xf32>
    %81 = tensor.empty() : tensor<1x256x27x27xf32>
    %inserted_slice_5 = tensor.insert_slice %77 into %81[0, 0, 0, 0] [1, 128, 27, 27] [1, 1, 1, 1] : tensor<1x128x27x27xf32> into tensor<1x256x27x27xf32>
    %inserted_slice_6 = tensor.insert_slice %80 into %inserted_slice_5[0, 128, 0, 0] [1, 128, 27, 27] [1, 1, 1, 1] : tensor<1x128x27x27xf32> into tensor<1x256x27x27xf32>
    %82 = "tosa.transpose"(%inserted_slice_6, %19) : (tensor<1x256x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x256xf32>
    %83 = "tosa.conv2d"(%82, %9, %25) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x256xf32>, tensor<48x1x1x256xf32>, tensor<48xf32>) -> tensor<1x27x27x48xf32>
    %84 = "tosa.transpose"(%83, %18) : (tensor<1x27x27x48xf32>, tensor<4xi32>) -> tensor<1x48x27x27xf32>
    %85 = "tosa.clamp"(%84) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x48x27x27xf32>) -> tensor<1x48x27x27xf32>
    %86 = "tosa.transpose"(%85, %19) : (tensor<1x48x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x48xf32>
    %87 = "tosa.conv2d"(%86, %10, %26) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x48xf32>, tensor<192x1x1x48xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %88 = "tosa.transpose"(%87, %18) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    %89 = "tosa.clamp"(%88) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    %90 = "tosa.conv2d"(%86, %11, %26) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x27x27x48xf32>, tensor<192x3x3x48xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %91 = "tosa.transpose"(%90, %18) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    %92 = "tosa.clamp"(%91) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    %93 = tensor.empty() : tensor<1x384x27x27xf32>
    %inserted_slice_7 = tensor.insert_slice %89 into %93[0, 0, 0, 0] [1, 192, 27, 27] [1, 1, 1, 1] : tensor<1x192x27x27xf32> into tensor<1x384x27x27xf32>
    %inserted_slice_8 = tensor.insert_slice %92 into %inserted_slice_7[0, 192, 0, 0] [1, 192, 27, 27] [1, 1, 1, 1] : tensor<1x192x27x27xf32> into tensor<1x384x27x27xf32>
    %94 = "tosa.transpose"(%inserted_slice_8, %19) : (tensor<1x384x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x384xf32>
    %95 = "tosa.conv2d"(%94, %12, %25) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x384xf32>, tensor<48x1x1x384xf32>, tensor<48xf32>) -> tensor<1x27x27x48xf32>
    %96 = "tosa.transpose"(%95, %18) : (tensor<1x27x27x48xf32>, tensor<4xi32>) -> tensor<1x48x27x27xf32>
    %97 = "tosa.clamp"(%96) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x48x27x27xf32>) -> tensor<1x48x27x27xf32>
    %98 = "tosa.transpose"(%97, %19) : (tensor<1x48x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x48xf32>
    %99 = "tosa.conv2d"(%98, %10, %26) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x48xf32>, tensor<192x1x1x48xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %100 = "tosa.transpose"(%99, %18) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    %101 = "tosa.clamp"(%100) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    %102 = "tosa.conv2d"(%98, %11, %26) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x27x27x48xf32>, tensor<192x3x3x48xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %103 = "tosa.transpose"(%102, %18) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    %104 = "tosa.clamp"(%103) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    %inserted_slice_9 = tensor.insert_slice %101 into %93[0, 0, 0, 0] [1, 192, 27, 27] [1, 1, 1, 1] : tensor<1x192x27x27xf32> into tensor<1x384x27x27xf32>
    %inserted_slice_10 = tensor.insert_slice %104 into %inserted_slice_9[0, 192, 0, 0] [1, 192, 27, 27] [1, 1, 1, 1] : tensor<1x192x27x27xf32> into tensor<1x384x27x27xf32>
    %105 = "tosa.transpose"(%inserted_slice_10, %19) : (tensor<1x384x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x384xf32>
    %106 = "tosa.conv2d"(%105, %13, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x384xf32>, tensor<64x1x1x384xf32>, tensor<64xf32>) -> tensor<1x27x27x64xf32>
    %107 = "tosa.transpose"(%106, %18) : (tensor<1x27x27x64xf32>, tensor<4xi32>) -> tensor<1x64x27x27xf32>
    %108 = "tosa.clamp"(%107) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x27x27xf32>) -> tensor<1x64x27x27xf32>
    %109 = "tosa.transpose"(%108, %19) : (tensor<1x64x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x64xf32>
    %110 = "tosa.conv2d"(%109, %14, %27) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x27x27x256xf32>
    %111 = "tosa.transpose"(%110, %18) : (tensor<1x27x27x256xf32>, tensor<4xi32>) -> tensor<1x256x27x27xf32>
    %112 = "tosa.clamp"(%111) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x27x27xf32>) -> tensor<1x256x27x27xf32>
    %113 = "tosa.conv2d"(%109, %15, %27) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x27x27x64xf32>, tensor<256x3x3x64xf32>, tensor<256xf32>) -> tensor<1x27x27x256xf32>
    %114 = "tosa.transpose"(%113, %18) : (tensor<1x27x27x256xf32>, tensor<4xi32>) -> tensor<1x256x27x27xf32>
    %115 = "tosa.clamp"(%114) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x27x27xf32>) -> tensor<1x256x27x27xf32>
    %116 = tensor.empty() : tensor<1x512x27x27xf32>
    %inserted_slice_11 = tensor.insert_slice %112 into %116[0, 0, 0, 0] [1, 256, 27, 27] [1, 1, 1, 1] : tensor<1x256x27x27xf32> into tensor<1x512x27x27xf32>
    %inserted_slice_12 = tensor.insert_slice %115 into %inserted_slice_11[0, 256, 0, 0] [1, 256, 27, 27] [1, 1, 1, 1] : tensor<1x256x27x27xf32> into tensor<1x512x27x27xf32>
    %117 = "tosa.transpose"(%inserted_slice_12, %19) : (tensor<1x512x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x512xf32>
    %118 = "tosa.max_pool2d"(%117) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x27x27x512xf32>) -> tensor<1x13x13x512xf32>
    %119 = "tosa.conv2d"(%118, %16, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x13x13x512xf32>, tensor<64x1x1x512xf32>, tensor<64xf32>) -> tensor<1x13x13x64xf32>
    %120 = "tosa.transpose"(%119, %18) : (tensor<1x13x13x64xf32>, tensor<4xi32>) -> tensor<1x64x13x13xf32>
    %121 = "tosa.clamp"(%120) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x13x13xf32>) -> tensor<1x64x13x13xf32>
    %122 = "tosa.transpose"(%121, %19) : (tensor<1x64x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x64xf32>
    %123 = "tosa.conv2d"(%122, %14, %27) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x13x13x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x13x13x256xf32>
    %124 = "tosa.transpose"(%123, %18) : (tensor<1x13x13x256xf32>, tensor<4xi32>) -> tensor<1x256x13x13xf32>
    %125 = "tosa.clamp"(%124) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    %126 = "tosa.conv2d"(%122, %15, %27) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x13x13x64xf32>, tensor<256x3x3x64xf32>, tensor<256xf32>) -> tensor<1x13x13x256xf32>
    %127 = "tosa.transpose"(%126, %18) : (tensor<1x13x13x256xf32>, tensor<4xi32>) -> tensor<1x256x13x13xf32>
    %128 = "tosa.clamp"(%127) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    %129 = tensor.empty() : tensor<1x512x13x13xf32>
    %inserted_slice_13 = tensor.insert_slice %125 into %129[0, 0, 0, 0] [1, 256, 13, 13] [1, 1, 1, 1] : tensor<1x256x13x13xf32> into tensor<1x512x13x13xf32>
    %inserted_slice_14 = tensor.insert_slice %128 into %inserted_slice_13[0, 256, 0, 0] [1, 256, 13, 13] [1, 1, 1, 1] : tensor<1x256x13x13xf32> into tensor<1x512x13x13xf32>
    %130 = "tosa.transpose"(%inserted_slice_14, %19) : (tensor<1x512x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x512xf32>
    %131 = "tosa.conv2d"(%130, %17, %28) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x13x13x512xf32>, tensor<1000x1x1x512xf32>, tensor<1000xf32>) -> tensor<1x13x13x1000xf32>
    %132 = "tosa.transpose"(%131, %18) : (tensor<1x13x13x1000xf32>, tensor<4xi32>) -> tensor<1x1000x13x13xf32>
    %133 = "tosa.clamp"(%132) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1000x13x13xf32>) -> tensor<1x1000x13x13xf32>
    %134 = "tosa.transpose"(%133, %19) : (tensor<1x1000x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x1000xf32>
    %135 = "tosa.avg_pool2d"(%134) {acc_type = f32, kernel = array<i64: 13, 13>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x13x13x1000xf32>) -> tensor<1x1x1x1000xf32>
    %136 = "tosa.reshape"(%135) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1x1000xf32>) -> tensor<1x1000xf32>
    return %136 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<96x7x7x3xf32>} : () -> tensor<96x7x7x3xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<16x1x1x96xf32>} : () -> tensor<16x1x1x96xf32>
    %2 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x16xf32>} : () -> tensor<64x1x1x16xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x16xf32>} : () -> tensor<64x3x3x16xf32>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<16x1x1x128xf32>} : () -> tensor<16x1x1x128xf32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x32xf32>} : () -> tensor<128x3x3x32xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32x1x1x256xf32>} : () -> tensor<32x1x1x256xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48x1x1x256xf32>} : () -> tensor<48x1x1x256xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x1x48xf32>} : () -> tensor<192x1x1x48xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x3x3x48xf32>} : () -> tensor<192x3x3x48xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48x1x1x384xf32>} : () -> tensor<48x1x1x384xf32>
    %11 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x384xf32>} : () -> tensor<64x1x1x384xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x64xf32>} : () -> tensor<256x1x1x64xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x64xf32>} : () -> tensor<256x3x3x64xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x512xf32>} : () -> tensor<64x1x1x512xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1000x1x1x512xf32>} : () -> tensor<1000x1x1x512xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<96xf32>} : () -> tensor<96xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<16xf32>} : () -> tensor<16xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64xf32>} : () -> tensor<64xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32xf32>} : () -> tensor<32xf32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128xf32>} : () -> tensor<128xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48xf32>} : () -> tensor<48xf32>
    %22 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192xf32>} : () -> tensor<192xf32>
    %23 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256xf32>} : () -> tensor<256xf32>
    %24 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1000xf32>} : () -> tensor<1000xf32>
    %25 = "tosa.const"() {value = dense<5.917160e-03> : tensor<1x13x13x1000xf32>} : () -> tensor<1x13x13x1000xf32>
    %26 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %27 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %28 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %29 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x1000xf32>} : () -> tensor<512x1x1x1000xf32>
    %30 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x256xf32>} : () -> tensor<64x3x3x256xf32>
    %31 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x256xf32>} : () -> tensor<64x1x1x256xf32>
    %32 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x64xf32>} : () -> tensor<512x1x1x64xf32>
    %cst = arith.constant 0.000000e+00 : f32
    %33 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x1x1x64xf32>} : () -> tensor<384x1x1x64xf32>
    %34 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48x3x3x192xf32>} : () -> tensor<48x3x3x192xf32>
    %35 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48x1x1x192xf32>} : () -> tensor<48x1x1x192xf32>
    %36 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x1x1x48xf32>} : () -> tensor<384x1x1x48xf32>
    %37 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x48xf32>} : () -> tensor<256x1x1x48xf32>
    %38 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32x3x3x128xf32>} : () -> tensor<32x3x3x128xf32>
    %39 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32x1x1x128xf32>} : () -> tensor<32x1x1x128xf32>
    %40 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x32xf32>} : () -> tensor<256x1x1x32xf32>
    %cst_0 = arith.constant -3.40282347E+38 : f32
    %41 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x32xf32>} : () -> tensor<128x1x1x32xf32>
    %42 = "tosa.const"() {value = dense<7.777000e-02> : tensor<16x3x3x64xf32>} : () -> tensor<16x3x3x64xf32>
    %43 = "tosa.const"() {value = dense<7.777000e-02> : tensor<16x1x1x64xf32>} : () -> tensor<16x1x1x64xf32>
    %44 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x16xf32>} : () -> tensor<128x1x1x16xf32>
    %45 = "tosa.const"() {value = dense<7.777000e-02> : tensor<96x1x1x16xf32>} : () -> tensor<96x1x1x16xf32>
    %46 = "tosa.const"() {value = dense<7.777000e-02> : tensor<3x7x7x96xf32>} : () -> tensor<3x7x7x96xf32>
    %47 = ml_program.global_load @global0 : tensor<1x3x224x224xf32>
    %48 = "tosa.transpose"(%47, %28) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %49 = "tosa.conv2d"(%48, %0, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<96x7x7x3xf32>, tensor<96xf32>) -> tensor<1x109x109x96xf32>
    %50 = "tosa.transpose"(%49, %26) : (tensor<1x109x109x96xf32>, tensor<4xi32>) -> tensor<1x96x109x109xf32>
    %51 = "tosa.clamp"(%50) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x109x109xf32>) -> tensor<1x96x109x109xf32>
    %52 = "tosa.transpose"(%51, %28) : (tensor<1x96x109x109xf32>, tensor<4xi32>) -> tensor<1x109x109x96xf32>
    %53 = "tosa.max_pool2d"(%52) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x109x109x96xf32>) -> tensor<1x54x54x96xf32>
    %54 = "tosa.conv2d"(%53, %1, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x96xf32>, tensor<16x1x1x96xf32>, tensor<16xf32>) -> tensor<1x54x54x16xf32>
    %55 = "tosa.transpose"(%54, %26) : (tensor<1x54x54x16xf32>, tensor<4xi32>) -> tensor<1x16x54x54xf32>
    %56 = "tosa.clamp"(%55) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x16x54x54xf32>) -> tensor<1x16x54x54xf32>
    %57 = "tosa.transpose"(%56, %28) : (tensor<1x16x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x16xf32>
    %58 = "tosa.conv2d"(%57, %2, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x16xf32>, tensor<64x1x1x16xf32>, tensor<64xf32>) -> tensor<1x54x54x64xf32>
    %59 = "tosa.transpose"(%58, %26) : (tensor<1x54x54x64xf32>, tensor<4xi32>) -> tensor<1x64x54x54xf32>
    %60 = "tosa.clamp"(%59) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xf32>
    %61 = "tosa.conv2d"(%57, %3, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x54x54x16xf32>, tensor<64x3x3x16xf32>, tensor<64xf32>) -> tensor<1x54x54x64xf32>
    %62 = "tosa.transpose"(%61, %26) : (tensor<1x54x54x64xf32>, tensor<4xi32>) -> tensor<1x64x54x54xf32>
    %63 = "tosa.clamp"(%62) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xf32>
    %64 = tensor.empty() : tensor<1x128x54x54xf32>
    %inserted_slice = tensor.insert_slice %60 into %64[0, 0, 0, 0] [1, 64, 54, 54] [1, 1, 1, 1] : tensor<1x64x54x54xf32> into tensor<1x128x54x54xf32>
    %inserted_slice_1 = tensor.insert_slice %63 into %inserted_slice[0, 64, 0, 0] [1, 64, 54, 54] [1, 1, 1, 1] : tensor<1x64x54x54xf32> into tensor<1x128x54x54xf32>
    %65 = "tosa.transpose"(%inserted_slice_1, %28) : (tensor<1x128x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x128xf32>
    %66 = "tosa.conv2d"(%65, %4, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x128xf32>, tensor<16x1x1x128xf32>, tensor<16xf32>) -> tensor<1x54x54x16xf32>
    %67 = "tosa.transpose"(%66, %26) : (tensor<1x54x54x16xf32>, tensor<4xi32>) -> tensor<1x16x54x54xf32>
    %68 = "tosa.clamp"(%67) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x16x54x54xf32>) -> tensor<1x16x54x54xf32>
    %69 = "tosa.transpose"(%68, %28) : (tensor<1x16x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x16xf32>
    %70 = "tosa.conv2d"(%69, %2, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x16xf32>, tensor<64x1x1x16xf32>, tensor<64xf32>) -> tensor<1x54x54x64xf32>
    %71 = "tosa.transpose"(%70, %26) : (tensor<1x54x54x64xf32>, tensor<4xi32>) -> tensor<1x64x54x54xf32>
    %72 = "tosa.clamp"(%71) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xf32>
    %73 = "tosa.conv2d"(%69, %3, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x54x54x16xf32>, tensor<64x3x3x16xf32>, tensor<64xf32>) -> tensor<1x54x54x64xf32>
    %74 = "tosa.transpose"(%73, %26) : (tensor<1x54x54x64xf32>, tensor<4xi32>) -> tensor<1x64x54x54xf32>
    %75 = "tosa.clamp"(%74) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xf32>
    %inserted_slice_2 = tensor.insert_slice %72 into %64[0, 0, 0, 0] [1, 64, 54, 54] [1, 1, 1, 1] : tensor<1x64x54x54xf32> into tensor<1x128x54x54xf32>
    %inserted_slice_3 = tensor.insert_slice %75 into %inserted_slice_2[0, 64, 0, 0] [1, 64, 54, 54] [1, 1, 1, 1] : tensor<1x64x54x54xf32> into tensor<1x128x54x54xf32>
    %76 = "tosa.transpose"(%inserted_slice_3, %28) : (tensor<1x128x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x128xf32>
    %77 = "tosa.conv2d"(%76, %39, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x128xf32>, tensor<32x1x1x128xf32>, tensor<32xf32>) -> tensor<1x54x54x32xf32>
    %78 = "tosa.transpose"(%77, %26) : (tensor<1x54x54x32xf32>, tensor<4xi32>) -> tensor<1x32x54x54xf32>
    %79 = "tosa.clamp"(%78) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x54x54xf32>) -> tensor<1x32x54x54xf32>
    %80 = "tosa.transpose"(%79, %28) : (tensor<1x32x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x32xf32>
    %81 = "tosa.conv2d"(%80, %41, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x32xf32>, tensor<128x1x1x32xf32>, tensor<128xf32>) -> tensor<1x54x54x128xf32>
    %82 = "tosa.transpose"(%81, %26) : (tensor<1x54x54x128xf32>, tensor<4xi32>) -> tensor<1x128x54x54xf32>
    %83 = "tosa.clamp"(%82) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x54x54xf32>) -> tensor<1x128x54x54xf32>
    %84 = "tosa.conv2d"(%80, %5, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x54x54x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x54x54x128xf32>
    %85 = "tosa.transpose"(%84, %26) : (tensor<1x54x54x128xf32>, tensor<4xi32>) -> tensor<1x128x54x54xf32>
    %86 = "tosa.clamp"(%85) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x54x54xf32>) -> tensor<1x128x54x54xf32>
    %87 = tensor.empty() : tensor<1x256x54x54xf32>
    %inserted_slice_4 = tensor.insert_slice %83 into %87[0, 0, 0, 0] [1, 128, 54, 54] [1, 1, 1, 1] : tensor<1x128x54x54xf32> into tensor<1x256x54x54xf32>
    %inserted_slice_5 = tensor.insert_slice %86 into %inserted_slice_4[0, 128, 0, 0] [1, 128, 54, 54] [1, 1, 1, 1] : tensor<1x128x54x54xf32> into tensor<1x256x54x54xf32>
    %88 = "tosa.transpose"(%inserted_slice_5, %28) : (tensor<1x256x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x256xf32>
    %89 = "tosa.max_pool2d"(%88) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 1, 0, 1>, stride = array<i64: 2, 2>} : (tensor<1x54x54x256xf32>) -> tensor<1x27x27x256xf32>
    %90 = "tosa.conv2d"(%89, %6, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x256xf32>, tensor<32x1x1x256xf32>, tensor<32xf32>) -> tensor<1x27x27x32xf32>
    %91 = "tosa.transpose"(%90, %26) : (tensor<1x27x27x32xf32>, tensor<4xi32>) -> tensor<1x32x27x27xf32>
    %92 = "tosa.clamp"(%91) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x27x27xf32>) -> tensor<1x32x27x27xf32>
    %93 = "tosa.transpose"(%92, %28) : (tensor<1x32x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x32xf32>
    %94 = "tosa.conv2d"(%93, %41, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x32xf32>, tensor<128x1x1x32xf32>, tensor<128xf32>) -> tensor<1x27x27x128xf32>
    %95 = "tosa.transpose"(%94, %26) : (tensor<1x27x27x128xf32>, tensor<4xi32>) -> tensor<1x128x27x27xf32>
    %96 = "tosa.clamp"(%95) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x27x27xf32>) -> tensor<1x128x27x27xf32>
    %97 = "tosa.conv2d"(%93, %5, %20) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x27x27x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x27x27x128xf32>
    %98 = "tosa.transpose"(%97, %26) : (tensor<1x27x27x128xf32>, tensor<4xi32>) -> tensor<1x128x27x27xf32>
    %99 = "tosa.clamp"(%98) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x27x27xf32>) -> tensor<1x128x27x27xf32>
    %100 = tensor.empty() : tensor<1x256x27x27xf32>
    %inserted_slice_6 = tensor.insert_slice %96 into %100[0, 0, 0, 0] [1, 128, 27, 27] [1, 1, 1, 1] : tensor<1x128x27x27xf32> into tensor<1x256x27x27xf32>
    %inserted_slice_7 = tensor.insert_slice %99 into %inserted_slice_6[0, 128, 0, 0] [1, 128, 27, 27] [1, 1, 1, 1] : tensor<1x128x27x27xf32> into tensor<1x256x27x27xf32>
    %101 = "tosa.transpose"(%inserted_slice_7, %28) : (tensor<1x256x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x256xf32>
    %102 = "tosa.conv2d"(%101, %7, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x256xf32>, tensor<48x1x1x256xf32>, tensor<48xf32>) -> tensor<1x27x27x48xf32>
    %103 = "tosa.transpose"(%102, %26) : (tensor<1x27x27x48xf32>, tensor<4xi32>) -> tensor<1x48x27x27xf32>
    %104 = "tosa.clamp"(%103) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x48x27x27xf32>) -> tensor<1x48x27x27xf32>
    %105 = "tosa.transpose"(%104, %28) : (tensor<1x48x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x48xf32>
    %106 = "tosa.conv2d"(%105, %8, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x48xf32>, tensor<192x1x1x48xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %107 = "tosa.transpose"(%106, %26) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    %108 = "tosa.clamp"(%107) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    %109 = "tosa.conv2d"(%105, %9, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x27x27x48xf32>, tensor<192x3x3x48xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %110 = "tosa.transpose"(%109, %26) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    %111 = "tosa.clamp"(%110) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    %112 = tensor.empty() : tensor<1x384x27x27xf32>
    %inserted_slice_8 = tensor.insert_slice %108 into %112[0, 0, 0, 0] [1, 192, 27, 27] [1, 1, 1, 1] : tensor<1x192x27x27xf32> into tensor<1x384x27x27xf32>
    %inserted_slice_9 = tensor.insert_slice %111 into %inserted_slice_8[0, 192, 0, 0] [1, 192, 27, 27] [1, 1, 1, 1] : tensor<1x192x27x27xf32> into tensor<1x384x27x27xf32>
    %113 = "tosa.transpose"(%inserted_slice_9, %28) : (tensor<1x384x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x384xf32>
    %114 = "tosa.conv2d"(%113, %10, %21) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x384xf32>, tensor<48x1x1x384xf32>, tensor<48xf32>) -> tensor<1x27x27x48xf32>
    %115 = "tosa.transpose"(%114, %26) : (tensor<1x27x27x48xf32>, tensor<4xi32>) -> tensor<1x48x27x27xf32>
    %116 = "tosa.clamp"(%115) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x48x27x27xf32>) -> tensor<1x48x27x27xf32>
    %117 = "tosa.transpose"(%116, %28) : (tensor<1x48x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x48xf32>
    %118 = "tosa.conv2d"(%117, %8, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x48xf32>, tensor<192x1x1x48xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %119 = "tosa.transpose"(%118, %26) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    %120 = "tosa.clamp"(%119) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    %121 = "tosa.conv2d"(%117, %9, %22) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x27x27x48xf32>, tensor<192x3x3x48xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %122 = "tosa.transpose"(%121, %26) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    %123 = "tosa.clamp"(%122) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    %inserted_slice_10 = tensor.insert_slice %120 into %112[0, 0, 0, 0] [1, 192, 27, 27] [1, 1, 1, 1] : tensor<1x192x27x27xf32> into tensor<1x384x27x27xf32>
    %inserted_slice_11 = tensor.insert_slice %123 into %inserted_slice_10[0, 192, 0, 0] [1, 192, 27, 27] [1, 1, 1, 1] : tensor<1x192x27x27xf32> into tensor<1x384x27x27xf32>
    %124 = "tosa.transpose"(%inserted_slice_11, %28) : (tensor<1x384x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x384xf32>
    %125 = "tosa.conv2d"(%124, %11, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x384xf32>, tensor<64x1x1x384xf32>, tensor<64xf32>) -> tensor<1x27x27x64xf32>
    %126 = "tosa.transpose"(%125, %26) : (tensor<1x27x27x64xf32>, tensor<4xi32>) -> tensor<1x64x27x27xf32>
    %127 = "tosa.clamp"(%126) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x27x27xf32>) -> tensor<1x64x27x27xf32>
    %128 = "tosa.transpose"(%127, %28) : (tensor<1x64x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x64xf32>
    %129 = "tosa.conv2d"(%128, %12, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x27x27x256xf32>
    %130 = "tosa.transpose"(%129, %26) : (tensor<1x27x27x256xf32>, tensor<4xi32>) -> tensor<1x256x27x27xf32>
    %131 = "tosa.clamp"(%130) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x27x27xf32>) -> tensor<1x256x27x27xf32>
    %132 = "tosa.conv2d"(%128, %13, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x27x27x64xf32>, tensor<256x3x3x64xf32>, tensor<256xf32>) -> tensor<1x27x27x256xf32>
    %133 = "tosa.transpose"(%132, %26) : (tensor<1x27x27x256xf32>, tensor<4xi32>) -> tensor<1x256x27x27xf32>
    %134 = "tosa.clamp"(%133) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x27x27xf32>) -> tensor<1x256x27x27xf32>
    %135 = tensor.empty() : tensor<1x512x27x27xf32>
    %inserted_slice_12 = tensor.insert_slice %131 into %135[0, 0, 0, 0] [1, 256, 27, 27] [1, 1, 1, 1] : tensor<1x256x27x27xf32> into tensor<1x512x27x27xf32>
    %inserted_slice_13 = tensor.insert_slice %134 into %inserted_slice_12[0, 256, 0, 0] [1, 256, 27, 27] [1, 1, 1, 1] : tensor<1x256x27x27xf32> into tensor<1x512x27x27xf32>
    %136 = "tosa.transpose"(%inserted_slice_13, %28) : (tensor<1x512x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x512xf32>
    %137 = "tosa.max_pool2d"(%136) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x27x27x512xf32>) -> tensor<1x13x13x512xf32>
    %138 = "tosa.conv2d"(%137, %14, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x13x13x512xf32>, tensor<64x1x1x512xf32>, tensor<64xf32>) -> tensor<1x13x13x64xf32>
    %139 = "tosa.transpose"(%138, %26) : (tensor<1x13x13x64xf32>, tensor<4xi32>) -> tensor<1x64x13x13xf32>
    %140 = "tosa.clamp"(%139) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x13x13xf32>) -> tensor<1x64x13x13xf32>
    %141 = "tosa.transpose"(%140, %28) : (tensor<1x64x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x64xf32>
    %142 = "tosa.conv2d"(%141, %12, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x13x13x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x13x13x256xf32>
    %143 = "tosa.transpose"(%142, %26) : (tensor<1x13x13x256xf32>, tensor<4xi32>) -> tensor<1x256x13x13xf32>
    %144 = "tosa.clamp"(%143) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    %145 = "tosa.conv2d"(%141, %13, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x13x13x64xf32>, tensor<256x3x3x64xf32>, tensor<256xf32>) -> tensor<1x13x13x256xf32>
    %146 = "tosa.transpose"(%145, %26) : (tensor<1x13x13x256xf32>, tensor<4xi32>) -> tensor<1x256x13x13xf32>
    %147 = "tosa.clamp"(%146) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    %148 = tensor.empty() : tensor<1x512x13x13xf32>
    %inserted_slice_14 = tensor.insert_slice %144 into %148[0, 0, 0, 0] [1, 256, 13, 13] [1, 1, 1, 1] : tensor<1x256x13x13xf32> into tensor<1x512x13x13xf32>
    %inserted_slice_15 = tensor.insert_slice %147 into %inserted_slice_14[0, 256, 0, 0] [1, 256, 13, 13] [1, 1, 1, 1] : tensor<1x256x13x13xf32> into tensor<1x512x13x13xf32>
    %149 = "tosa.transpose"(%inserted_slice_15, %28) : (tensor<1x512x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x512xf32>
    %150 = "tosa.conv2d"(%149, %15, %24) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x13x13x512xf32>, tensor<1000x1x1x512xf32>, tensor<1000xf32>) -> tensor<1x13x13x1000xf32>
    %151 = "tosa.transpose"(%150, %26) : (tensor<1x13x13x1000xf32>, tensor<4xi32>) -> tensor<1x1000x13x13xf32>
    %152 = "tosa.clamp"(%151) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1000x13x13xf32>) -> tensor<1x1000x13x13xf32>
    %153 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1x1000xf32>
    %154 = "tosa.mul"(%153, %25) {shift = 0 : i8} : (tensor<1x1x1x1000xf32>, tensor<1x13x13x1000xf32>) -> tensor<1x13x13x1000xf32>
    %155 = "tosa.transpose"(%154, %26) : (tensor<1x13x13x1000xf32>, tensor<4xi32>) -> tensor<1x1000x13x13xf32>
    %156 = "tosa.equal"(%151, %152) : (tensor<1x1000x13x13xf32>, tensor<1x1000x13x13xf32>) -> tensor<1x1000x13x13xi1>
    %157 = "tosa.select"(%156, %155, %27) : (tensor<1x1000x13x13xi1>, tensor<1x1000x13x13xf32>, tensor<f32>) -> tensor<1x1000x13x13xf32>
    %158 = "tosa.transpose"(%157, %28) : (tensor<1x1000x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x1000xf32>
    %159 = tensor.empty() : tensor<512xf32>
    %160 = "tosa.transpose_conv2d"(%158, %29, %159) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 13, 13, 512>, stride = array<i64: 1, 1>} : (tensor<1x13x13x1000xf32>, tensor<512x1x1x1000xf32>, tensor<512xf32>) -> tensor<1x13x13x512xf32>
    %161 = "tosa.transpose"(%160, %26) : (tensor<1x13x13x512xf32>, tensor<4xi32>) -> tensor<1x512x13x13xf32>
    %extracted_slice = tensor.extract_slice %161[0, 256, 0, 0] [1, 256, 13, 13] [1, 1, 1, 1] : tensor<1x512x13x13xf32> to tensor<1x256x13x13xf32>
    %extracted_slice_16 = tensor.extract_slice %161[0, 0, 0, 0] [1, 256, 13, 13] [1, 1, 1, 1] : tensor<1x512x13x13xf32> to tensor<1x256x13x13xf32>
    %162 = "tosa.equal"(%146, %147) : (tensor<1x256x13x13xf32>, tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xi1>
    %163 = "tosa.select"(%162, %extracted_slice, %27) : (tensor<1x256x13x13xi1>, tensor<1x256x13x13xf32>, tensor<f32>) -> tensor<1x256x13x13xf32>
    %164 = "tosa.transpose"(%163, %28) : (tensor<1x256x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x256xf32>
    %165 = tensor.empty() : tensor<64xf32>
    %166 = "tosa.transpose_conv2d"(%164, %30, %165) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 13, 13, 64>, stride = array<i64: 1, 1>} : (tensor<1x13x13x256xf32>, tensor<64x3x3x256xf32>, tensor<64xf32>) -> tensor<1x13x13x64xf32>
    %167 = "tosa.equal"(%143, %144) : (tensor<1x256x13x13xf32>, tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xi1>
    %168 = "tosa.select"(%167, %extracted_slice_16, %27) : (tensor<1x256x13x13xi1>, tensor<1x256x13x13xf32>, tensor<f32>) -> tensor<1x256x13x13xf32>
    %169 = "tosa.transpose"(%168, %28) : (tensor<1x256x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x256xf32>
    %170 = "tosa.transpose_conv2d"(%169, %31, %165) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 13, 13, 64>, stride = array<i64: 1, 1>} : (tensor<1x13x13x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x13x13x64xf32>
    %171 = "tosa.add"(%166, %170) : (tensor<1x13x13x64xf32>, tensor<1x13x13x64xf32>) -> tensor<1x13x13x64xf32>
    %172 = "tosa.transpose"(%171, %26) : (tensor<1x13x13x64xf32>, tensor<4xi32>) -> tensor<1x64x13x13xf32>
    %173 = "tosa.equal"(%139, %140) : (tensor<1x64x13x13xf32>, tensor<1x64x13x13xf32>) -> tensor<1x64x13x13xi1>
    %174 = "tosa.select"(%173, %172, %27) : (tensor<1x64x13x13xi1>, tensor<1x64x13x13xf32>, tensor<f32>) -> tensor<1x64x13x13xf32>
    %175 = "tosa.transpose"(%174, %28) : (tensor<1x64x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x64xf32>
    %176 = "tosa.transpose_conv2d"(%175, %32, %159) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 13, 13, 512>, stride = array<i64: 1, 1>} : (tensor<1x13x13x64xf32>, tensor<512x1x1x64xf32>, tensor<512xf32>) -> tensor<1x13x13x512xf32>
    %177 = tensor.empty() : tensor<1x27x27x512xf32>
    %178 = tensor.empty() : tensor<3x3xf32>
    %179 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%136, %178, %137, %176 : tensor<1x27x27x512xf32>, tensor<3x3xf32>, tensor<1x13x13x512xf32>, tensor<1x13x13x512xf32>) outs(%177 : tensor<1x27x27x512xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %in_34: f32, %out: f32):
      %303 = arith.cmpf oge, %in, %in_33 : f32
      %304 = arith.select %303, %in_34, %cst : f32
      %305 = arith.addf %out, %304 : f32
      linalg.yield %305 : f32
    } -> tensor<1x27x27x512xf32>
    %180 = "tosa.transpose"(%179, %26) : (tensor<1x27x27x512xf32>, tensor<4xi32>) -> tensor<1x512x27x27xf32>
    %extracted_slice_17 = tensor.extract_slice %180[0, 256, 0, 0] [1, 256, 27, 27] [1, 1, 1, 1] : tensor<1x512x27x27xf32> to tensor<1x256x27x27xf32>
    %extracted_slice_18 = tensor.extract_slice %180[0, 0, 0, 0] [1, 256, 27, 27] [1, 1, 1, 1] : tensor<1x512x27x27xf32> to tensor<1x256x27x27xf32>
    %181 = "tosa.equal"(%133, %134) : (tensor<1x256x27x27xf32>, tensor<1x256x27x27xf32>) -> tensor<1x256x27x27xi1>
    %182 = "tosa.select"(%181, %extracted_slice_17, %27) : (tensor<1x256x27x27xi1>, tensor<1x256x27x27xf32>, tensor<f32>) -> tensor<1x256x27x27xf32>
    %183 = "tosa.transpose"(%182, %28) : (tensor<1x256x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x256xf32>
    %184 = "tosa.transpose_conv2d"(%183, %30, %165) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 27, 27, 64>, stride = array<i64: 1, 1>} : (tensor<1x27x27x256xf32>, tensor<64x3x3x256xf32>, tensor<64xf32>) -> tensor<1x27x27x64xf32>
    %185 = "tosa.equal"(%130, %131) : (tensor<1x256x27x27xf32>, tensor<1x256x27x27xf32>) -> tensor<1x256x27x27xi1>
    %186 = "tosa.select"(%185, %extracted_slice_18, %27) : (tensor<1x256x27x27xi1>, tensor<1x256x27x27xf32>, tensor<f32>) -> tensor<1x256x27x27xf32>
    %187 = "tosa.transpose"(%186, %28) : (tensor<1x256x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x256xf32>
    %188 = "tosa.transpose_conv2d"(%187, %31, %165) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 27, 27, 64>, stride = array<i64: 1, 1>} : (tensor<1x27x27x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x27x27x64xf32>
    %189 = "tosa.add"(%184, %188) : (tensor<1x27x27x64xf32>, tensor<1x27x27x64xf32>) -> tensor<1x27x27x64xf32>
    %190 = "tosa.transpose"(%189, %26) : (tensor<1x27x27x64xf32>, tensor<4xi32>) -> tensor<1x64x27x27xf32>
    %191 = "tosa.equal"(%126, %127) : (tensor<1x64x27x27xf32>, tensor<1x64x27x27xf32>) -> tensor<1x64x27x27xi1>
    %192 = "tosa.select"(%191, %190, %27) : (tensor<1x64x27x27xi1>, tensor<1x64x27x27xf32>, tensor<f32>) -> tensor<1x64x27x27xf32>
    %193 = "tosa.transpose"(%192, %28) : (tensor<1x64x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x64xf32>
    %194 = tensor.empty() : tensor<384xf32>
    %195 = "tosa.transpose_conv2d"(%193, %33, %194) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 27, 27, 384>, stride = array<i64: 1, 1>} : (tensor<1x27x27x64xf32>, tensor<384x1x1x64xf32>, tensor<384xf32>) -> tensor<1x27x27x384xf32>
    %196 = "tosa.transpose"(%195, %26) : (tensor<1x27x27x384xf32>, tensor<4xi32>) -> tensor<1x384x27x27xf32>
    %extracted_slice_19 = tensor.extract_slice %196[0, 192, 0, 0] [1, 192, 27, 27] [1, 1, 1, 1] : tensor<1x384x27x27xf32> to tensor<1x192x27x27xf32>
    %extracted_slice_20 = tensor.extract_slice %196[0, 0, 0, 0] [1, 192, 27, 27] [1, 1, 1, 1] : tensor<1x384x27x27xf32> to tensor<1x192x27x27xf32>
    %197 = "tosa.equal"(%122, %123) : (tensor<1x192x27x27xf32>, tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xi1>
    %198 = "tosa.select"(%197, %extracted_slice_19, %27) : (tensor<1x192x27x27xi1>, tensor<1x192x27x27xf32>, tensor<f32>) -> tensor<1x192x27x27xf32>
    %199 = "tosa.transpose"(%198, %28) : (tensor<1x192x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x192xf32>
    %200 = tensor.empty() : tensor<48xf32>
    %201 = "tosa.transpose_conv2d"(%199, %34, %200) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 27, 27, 48>, stride = array<i64: 1, 1>} : (tensor<1x27x27x192xf32>, tensor<48x3x3x192xf32>, tensor<48xf32>) -> tensor<1x27x27x48xf32>
    %202 = "tosa.equal"(%119, %120) : (tensor<1x192x27x27xf32>, tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xi1>
    %203 = "tosa.select"(%202, %extracted_slice_20, %27) : (tensor<1x192x27x27xi1>, tensor<1x192x27x27xf32>, tensor<f32>) -> tensor<1x192x27x27xf32>
    %204 = "tosa.transpose"(%203, %28) : (tensor<1x192x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x192xf32>
    %205 = "tosa.transpose_conv2d"(%204, %35, %200) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 27, 27, 48>, stride = array<i64: 1, 1>} : (tensor<1x27x27x192xf32>, tensor<48x1x1x192xf32>, tensor<48xf32>) -> tensor<1x27x27x48xf32>
    %206 = "tosa.add"(%201, %205) : (tensor<1x27x27x48xf32>, tensor<1x27x27x48xf32>) -> tensor<1x27x27x48xf32>
    %207 = "tosa.transpose"(%206, %26) : (tensor<1x27x27x48xf32>, tensor<4xi32>) -> tensor<1x48x27x27xf32>
    %208 = "tosa.equal"(%115, %116) : (tensor<1x48x27x27xf32>, tensor<1x48x27x27xf32>) -> tensor<1x48x27x27xi1>
    %209 = "tosa.select"(%208, %207, %27) : (tensor<1x48x27x27xi1>, tensor<1x48x27x27xf32>, tensor<f32>) -> tensor<1x48x27x27xf32>
    %210 = "tosa.transpose"(%209, %28) : (tensor<1x48x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x48xf32>
    %211 = "tosa.transpose_conv2d"(%210, %36, %194) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 27, 27, 384>, stride = array<i64: 1, 1>} : (tensor<1x27x27x48xf32>, tensor<384x1x1x48xf32>, tensor<384xf32>) -> tensor<1x27x27x384xf32>
    %212 = "tosa.transpose"(%211, %26) : (tensor<1x27x27x384xf32>, tensor<4xi32>) -> tensor<1x384x27x27xf32>
    %extracted_slice_21 = tensor.extract_slice %212[0, 192, 0, 0] [1, 192, 27, 27] [1, 1, 1, 1] : tensor<1x384x27x27xf32> to tensor<1x192x27x27xf32>
    %extracted_slice_22 = tensor.extract_slice %212[0, 0, 0, 0] [1, 192, 27, 27] [1, 1, 1, 1] : tensor<1x384x27x27xf32> to tensor<1x192x27x27xf32>
    %213 = "tosa.equal"(%110, %111) : (tensor<1x192x27x27xf32>, tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xi1>
    %214 = "tosa.select"(%213, %extracted_slice_21, %27) : (tensor<1x192x27x27xi1>, tensor<1x192x27x27xf32>, tensor<f32>) -> tensor<1x192x27x27xf32>
    %215 = "tosa.transpose"(%214, %28) : (tensor<1x192x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x192xf32>
    %216 = "tosa.transpose_conv2d"(%215, %34, %200) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 27, 27, 48>, stride = array<i64: 1, 1>} : (tensor<1x27x27x192xf32>, tensor<48x3x3x192xf32>, tensor<48xf32>) -> tensor<1x27x27x48xf32>
    %217 = "tosa.equal"(%107, %108) : (tensor<1x192x27x27xf32>, tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xi1>
    %218 = "tosa.select"(%217, %extracted_slice_22, %27) : (tensor<1x192x27x27xi1>, tensor<1x192x27x27xf32>, tensor<f32>) -> tensor<1x192x27x27xf32>
    %219 = "tosa.transpose"(%218, %28) : (tensor<1x192x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x192xf32>
    %220 = "tosa.transpose_conv2d"(%219, %35, %200) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 27, 27, 48>, stride = array<i64: 1, 1>} : (tensor<1x27x27x192xf32>, tensor<48x1x1x192xf32>, tensor<48xf32>) -> tensor<1x27x27x48xf32>
    %221 = "tosa.add"(%216, %220) : (tensor<1x27x27x48xf32>, tensor<1x27x27x48xf32>) -> tensor<1x27x27x48xf32>
    %222 = "tosa.transpose"(%221, %26) : (tensor<1x27x27x48xf32>, tensor<4xi32>) -> tensor<1x48x27x27xf32>
    %223 = "tosa.equal"(%103, %104) : (tensor<1x48x27x27xf32>, tensor<1x48x27x27xf32>) -> tensor<1x48x27x27xi1>
    %224 = "tosa.select"(%223, %222, %27) : (tensor<1x48x27x27xi1>, tensor<1x48x27x27xf32>, tensor<f32>) -> tensor<1x48x27x27xf32>
    %225 = "tosa.transpose"(%224, %28) : (tensor<1x48x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x48xf32>
    %226 = tensor.empty() : tensor<256xf32>
    %227 = "tosa.transpose_conv2d"(%225, %37, %226) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 27, 27, 256>, stride = array<i64: 1, 1>} : (tensor<1x27x27x48xf32>, tensor<256x1x1x48xf32>, tensor<256xf32>) -> tensor<1x27x27x256xf32>
    %228 = "tosa.transpose"(%227, %26) : (tensor<1x27x27x256xf32>, tensor<4xi32>) -> tensor<1x256x27x27xf32>
    %extracted_slice_23 = tensor.extract_slice %228[0, 128, 0, 0] [1, 128, 27, 27] [1, 1, 1, 1] : tensor<1x256x27x27xf32> to tensor<1x128x27x27xf32>
    %extracted_slice_24 = tensor.extract_slice %228[0, 0, 0, 0] [1, 128, 27, 27] [1, 1, 1, 1] : tensor<1x256x27x27xf32> to tensor<1x128x27x27xf32>
    %229 = "tosa.equal"(%98, %99) : (tensor<1x128x27x27xf32>, tensor<1x128x27x27xf32>) -> tensor<1x128x27x27xi1>
    %230 = "tosa.select"(%229, %extracted_slice_23, %27) : (tensor<1x128x27x27xi1>, tensor<1x128x27x27xf32>, tensor<f32>) -> tensor<1x128x27x27xf32>
    %231 = "tosa.transpose"(%230, %28) : (tensor<1x128x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x128xf32>
    %232 = tensor.empty() : tensor<32xf32>
    %233 = "tosa.transpose_conv2d"(%231, %38, %232) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 27, 27, 32>, stride = array<i64: 1, 1>} : (tensor<1x27x27x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x27x27x32xf32>
    %234 = "tosa.equal"(%95, %96) : (tensor<1x128x27x27xf32>, tensor<1x128x27x27xf32>) -> tensor<1x128x27x27xi1>
    %235 = "tosa.select"(%234, %extracted_slice_24, %27) : (tensor<1x128x27x27xi1>, tensor<1x128x27x27xf32>, tensor<f32>) -> tensor<1x128x27x27xf32>
    %236 = "tosa.transpose"(%235, %28) : (tensor<1x128x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x128xf32>
    %237 = "tosa.transpose_conv2d"(%236, %39, %232) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 27, 27, 32>, stride = array<i64: 1, 1>} : (tensor<1x27x27x128xf32>, tensor<32x1x1x128xf32>, tensor<32xf32>) -> tensor<1x27x27x32xf32>
    %238 = "tosa.add"(%233, %237) : (tensor<1x27x27x32xf32>, tensor<1x27x27x32xf32>) -> tensor<1x27x27x32xf32>
    %239 = "tosa.transpose"(%238, %26) : (tensor<1x27x27x32xf32>, tensor<4xi32>) -> tensor<1x32x27x27xf32>
    %240 = "tosa.equal"(%91, %92) : (tensor<1x32x27x27xf32>, tensor<1x32x27x27xf32>) -> tensor<1x32x27x27xi1>
    %241 = "tosa.select"(%240, %239, %27) : (tensor<1x32x27x27xi1>, tensor<1x32x27x27xf32>, tensor<f32>) -> tensor<1x32x27x27xf32>
    %242 = "tosa.transpose"(%241, %28) : (tensor<1x32x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x32xf32>
    %243 = "tosa.transpose_conv2d"(%242, %40, %226) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 27, 27, 256>, stride = array<i64: 1, 1>} : (tensor<1x27x27x32xf32>, tensor<256x1x1x32xf32>, tensor<256xf32>) -> tensor<1x27x27x256xf32>
    %padded = tensor.pad %88 low[0, 0, 0, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x54x54x256xf32> to tensor<1x55x55x256xf32>
    %244 = tensor.empty() : tensor<1x55x55x256xf32>
    %245 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded, %178, %89, %243 : tensor<1x55x55x256xf32>, tensor<3x3xf32>, tensor<1x27x27x256xf32>, tensor<1x27x27x256xf32>) outs(%244 : tensor<1x55x55x256xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %in_34: f32, %out: f32):
      %303 = arith.cmpf oge, %in, %in_33 : f32
      %304 = arith.select %303, %in_34, %cst : f32
      %305 = arith.addf %out, %304 : f32
      linalg.yield %305 : f32
    } -> tensor<1x55x55x256xf32>
    %extracted_slice_25 = tensor.extract_slice %245[0, 0, 0, 0] [1, 54, 54, 256] [1, 1, 1, 1] : tensor<1x55x55x256xf32> to tensor<1x54x54x256xf32>
    %246 = "tosa.transpose"(%extracted_slice_25, %26) : (tensor<1x54x54x256xf32>, tensor<4xi32>) -> tensor<1x256x54x54xf32>
    %extracted_slice_26 = tensor.extract_slice %246[0, 128, 0, 0] [1, 128, 54, 54] [1, 1, 1, 1] : tensor<1x256x54x54xf32> to tensor<1x128x54x54xf32>
    %extracted_slice_27 = tensor.extract_slice %246[0, 0, 0, 0] [1, 128, 54, 54] [1, 1, 1, 1] : tensor<1x256x54x54xf32> to tensor<1x128x54x54xf32>
    %247 = "tosa.equal"(%85, %86) : (tensor<1x128x54x54xf32>, tensor<1x128x54x54xf32>) -> tensor<1x128x54x54xi1>
    %248 = "tosa.select"(%247, %extracted_slice_26, %27) : (tensor<1x128x54x54xi1>, tensor<1x128x54x54xf32>, tensor<f32>) -> tensor<1x128x54x54xf32>
    %249 = "tosa.transpose"(%248, %28) : (tensor<1x128x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x128xf32>
    %250 = "tosa.transpose_conv2d"(%249, %38, %232) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 54, 54, 32>, stride = array<i64: 1, 1>} : (tensor<1x54x54x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x54x54x32xf32>
    %251 = "tosa.equal"(%82, %83) : (tensor<1x128x54x54xf32>, tensor<1x128x54x54xf32>) -> tensor<1x128x54x54xi1>
    %252 = "tosa.select"(%251, %extracted_slice_27, %27) : (tensor<1x128x54x54xi1>, tensor<1x128x54x54xf32>, tensor<f32>) -> tensor<1x128x54x54xf32>
    %253 = "tosa.transpose"(%252, %28) : (tensor<1x128x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x128xf32>
    %254 = "tosa.transpose_conv2d"(%253, %39, %232) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 54, 54, 32>, stride = array<i64: 1, 1>} : (tensor<1x54x54x128xf32>, tensor<32x1x1x128xf32>, tensor<32xf32>) -> tensor<1x54x54x32xf32>
    %255 = "tosa.add"(%250, %254) : (tensor<1x54x54x32xf32>, tensor<1x54x54x32xf32>) -> tensor<1x54x54x32xf32>
    %256 = "tosa.transpose"(%255, %26) : (tensor<1x54x54x32xf32>, tensor<4xi32>) -> tensor<1x32x54x54xf32>
    %257 = "tosa.equal"(%78, %79) : (tensor<1x32x54x54xf32>, tensor<1x32x54x54xf32>) -> tensor<1x32x54x54xi1>
    %258 = "tosa.select"(%257, %256, %27) : (tensor<1x32x54x54xi1>, tensor<1x32x54x54xf32>, tensor<f32>) -> tensor<1x32x54x54xf32>
    %259 = "tosa.transpose"(%258, %28) : (tensor<1x32x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x32xf32>
    %260 = tensor.empty() : tensor<128xf32>
    %261 = "tosa.transpose_conv2d"(%259, %41, %260) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 54, 54, 128>, stride = array<i64: 1, 1>} : (tensor<1x54x54x32xf32>, tensor<128x1x1x32xf32>, tensor<128xf32>) -> tensor<1x54x54x128xf32>
    %262 = "tosa.transpose"(%261, %26) : (tensor<1x54x54x128xf32>, tensor<4xi32>) -> tensor<1x128x54x54xf32>
    %extracted_slice_28 = tensor.extract_slice %262[0, 64, 0, 0] [1, 64, 54, 54] [1, 1, 1, 1] : tensor<1x128x54x54xf32> to tensor<1x64x54x54xf32>
    %extracted_slice_29 = tensor.extract_slice %262[0, 0, 0, 0] [1, 64, 54, 54] [1, 1, 1, 1] : tensor<1x128x54x54xf32> to tensor<1x64x54x54xf32>
    %263 = "tosa.equal"(%74, %75) : (tensor<1x64x54x54xf32>, tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xi1>
    %264 = "tosa.select"(%263, %extracted_slice_28, %27) : (tensor<1x64x54x54xi1>, tensor<1x64x54x54xf32>, tensor<f32>) -> tensor<1x64x54x54xf32>
    %265 = "tosa.transpose"(%264, %28) : (tensor<1x64x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x64xf32>
    %266 = tensor.empty() : tensor<16xf32>
    %267 = "tosa.transpose_conv2d"(%265, %42, %266) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 54, 54, 16>, stride = array<i64: 1, 1>} : (tensor<1x54x54x64xf32>, tensor<16x3x3x64xf32>, tensor<16xf32>) -> tensor<1x54x54x16xf32>
    %268 = "tosa.equal"(%71, %72) : (tensor<1x64x54x54xf32>, tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xi1>
    %269 = "tosa.select"(%268, %extracted_slice_29, %27) : (tensor<1x64x54x54xi1>, tensor<1x64x54x54xf32>, tensor<f32>) -> tensor<1x64x54x54xf32>
    %270 = "tosa.transpose"(%269, %28) : (tensor<1x64x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x64xf32>
    %271 = "tosa.transpose_conv2d"(%270, %43, %266) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 54, 54, 16>, stride = array<i64: 1, 1>} : (tensor<1x54x54x64xf32>, tensor<16x1x1x64xf32>, tensor<16xf32>) -> tensor<1x54x54x16xf32>
    %272 = "tosa.add"(%267, %271) : (tensor<1x54x54x16xf32>, tensor<1x54x54x16xf32>) -> tensor<1x54x54x16xf32>
    %273 = "tosa.transpose"(%272, %26) : (tensor<1x54x54x16xf32>, tensor<4xi32>) -> tensor<1x16x54x54xf32>
    %274 = "tosa.equal"(%67, %68) : (tensor<1x16x54x54xf32>, tensor<1x16x54x54xf32>) -> tensor<1x16x54x54xi1>
    %275 = "tosa.select"(%274, %273, %27) : (tensor<1x16x54x54xi1>, tensor<1x16x54x54xf32>, tensor<f32>) -> tensor<1x16x54x54xf32>
    %276 = "tosa.transpose"(%275, %28) : (tensor<1x16x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x16xf32>
    %277 = "tosa.transpose_conv2d"(%276, %44, %260) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 54, 54, 128>, stride = array<i64: 1, 1>} : (tensor<1x54x54x16xf32>, tensor<128x1x1x16xf32>, tensor<128xf32>) -> tensor<1x54x54x128xf32>
    %278 = "tosa.transpose"(%277, %26) : (tensor<1x54x54x128xf32>, tensor<4xi32>) -> tensor<1x128x54x54xf32>
    %extracted_slice_30 = tensor.extract_slice %278[0, 64, 0, 0] [1, 64, 54, 54] [1, 1, 1, 1] : tensor<1x128x54x54xf32> to tensor<1x64x54x54xf32>
    %extracted_slice_31 = tensor.extract_slice %278[0, 0, 0, 0] [1, 64, 54, 54] [1, 1, 1, 1] : tensor<1x128x54x54xf32> to tensor<1x64x54x54xf32>
    %279 = "tosa.equal"(%62, %63) : (tensor<1x64x54x54xf32>, tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xi1>
    %280 = "tosa.select"(%279, %extracted_slice_30, %27) : (tensor<1x64x54x54xi1>, tensor<1x64x54x54xf32>, tensor<f32>) -> tensor<1x64x54x54xf32>
    %281 = "tosa.transpose"(%280, %28) : (tensor<1x64x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x64xf32>
    %282 = "tosa.transpose_conv2d"(%281, %42, %266) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 54, 54, 16>, stride = array<i64: 1, 1>} : (tensor<1x54x54x64xf32>, tensor<16x3x3x64xf32>, tensor<16xf32>) -> tensor<1x54x54x16xf32>
    %283 = "tosa.equal"(%59, %60) : (tensor<1x64x54x54xf32>, tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xi1>
    %284 = "tosa.select"(%283, %extracted_slice_31, %27) : (tensor<1x64x54x54xi1>, tensor<1x64x54x54xf32>, tensor<f32>) -> tensor<1x64x54x54xf32>
    %285 = "tosa.transpose"(%284, %28) : (tensor<1x64x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x64xf32>
    %286 = "tosa.transpose_conv2d"(%285, %43, %266) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 54, 54, 16>, stride = array<i64: 1, 1>} : (tensor<1x54x54x64xf32>, tensor<16x1x1x64xf32>, tensor<16xf32>) -> tensor<1x54x54x16xf32>
    %287 = "tosa.add"(%282, %286) : (tensor<1x54x54x16xf32>, tensor<1x54x54x16xf32>) -> tensor<1x54x54x16xf32>
    %288 = "tosa.transpose"(%287, %26) : (tensor<1x54x54x16xf32>, tensor<4xi32>) -> tensor<1x16x54x54xf32>
    %289 = "tosa.equal"(%55, %56) : (tensor<1x16x54x54xf32>, tensor<1x16x54x54xf32>) -> tensor<1x16x54x54xi1>
    %290 = "tosa.select"(%289, %288, %27) : (tensor<1x16x54x54xi1>, tensor<1x16x54x54xf32>, tensor<f32>) -> tensor<1x16x54x54xf32>
    %291 = "tosa.transpose"(%290, %28) : (tensor<1x16x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x16xf32>
    %292 = tensor.empty() : tensor<96xf32>
    %293 = "tosa.transpose_conv2d"(%291, %45, %292) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 54, 54, 96>, stride = array<i64: 1, 1>} : (tensor<1x54x54x16xf32>, tensor<96x1x1x16xf32>, tensor<96xf32>) -> tensor<1x54x54x96xf32>
    %294 = tensor.empty() : tensor<1x109x109x96xf32>
    %295 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%52, %178, %53, %293 : tensor<1x109x109x96xf32>, tensor<3x3xf32>, tensor<1x54x54x96xf32>, tensor<1x54x54x96xf32>) outs(%294 : tensor<1x109x109x96xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %in_34: f32, %out: f32):
      %303 = arith.cmpf oge, %in, %in_33 : f32
      %304 = arith.select %303, %in_34, %cst : f32
      %305 = arith.addf %out, %304 : f32
      linalg.yield %305 : f32
    } -> tensor<1x109x109x96xf32>
    %296 = "tosa.transpose"(%295, %26) : (tensor<1x109x109x96xf32>, tensor<4xi32>) -> tensor<1x96x109x109xf32>
    %297 = "tosa.equal"(%50, %51) : (tensor<1x96x109x109xf32>, tensor<1x96x109x109xf32>) -> tensor<1x96x109x109xi1>
    %298 = "tosa.select"(%297, %296, %27) : (tensor<1x96x109x109xi1>, tensor<1x96x109x109xf32>, tensor<f32>) -> tensor<1x96x109x109xf32>
    %299 = "tosa.transpose"(%298, %28) : (tensor<1x96x109x109xf32>, tensor<4xi32>) -> tensor<1x109x109x96xf32>
    %300 = tensor.empty() : tensor<3xf32>
    %301 = "tosa.transpose_conv2d"(%299, %46, %300) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 2, 2>} : (tensor<1x109x109x96xf32>, tensor<3x7x7x96xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %302 = "tosa.transpose"(%301, %26) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %302 : tensor<1x3x224x224xf32>
  }
}

