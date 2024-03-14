module attributes {torch.debug_module_name = "SqueezeNet"} {
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1000xf32>} : () -> tensor<1000xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256xf32>} : () -> tensor<256xf32>
    %2 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192xf32>} : () -> tensor<192xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48xf32>} : () -> tensor<48xf32>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128xf32>} : () -> tensor<128xf32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32xf32>} : () -> tensor<32xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64xf32>} : () -> tensor<64xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<16xf32>} : () -> tensor<16xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<96xf32>} : () -> tensor<96xf32>
    %9 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %10 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %11 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1000x1x1x512xf32>} : () -> tensor<1000x1x1x512xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x512xf32>} : () -> tensor<64x1x1x512xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x64xf32>} : () -> tensor<256x3x3x64xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x64xf32>} : () -> tensor<256x1x1x64xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x384xf32>} : () -> tensor<64x1x1x384xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48x1x1x384xf32>} : () -> tensor<48x1x1x384xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x3x3x48xf32>} : () -> tensor<192x3x3x48xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x1x48xf32>} : () -> tensor<192x1x1x48xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48x1x1x256xf32>} : () -> tensor<48x1x1x256xf32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32x1x1x256xf32>} : () -> tensor<32x1x1x256xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x32xf32>} : () -> tensor<128x3x3x32xf32>
    %22 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x32xf32>} : () -> tensor<128x1x1x32xf32>
    %23 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32x1x1x128xf32>} : () -> tensor<32x1x1x128xf32>
    %24 = "tosa.const"() {value = dense<7.777000e-02> : tensor<16x1x1x128xf32>} : () -> tensor<16x1x1x128xf32>
    %25 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x16xf32>} : () -> tensor<64x3x3x16xf32>
    %26 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x16xf32>} : () -> tensor<64x1x1x16xf32>
    %27 = "tosa.const"() {value = dense<7.777000e-02> : tensor<16x1x1x96xf32>} : () -> tensor<16x1x1x96xf32>
    %28 = "tosa.const"() {value = dense<7.777000e-02> : tensor<96x7x7x3xf32>} : () -> tensor<96x7x7x3xf32>
    %29 = "tosa.transpose"(%arg0, %9) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %30 = "tosa.conv2d"(%29, %28, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<96x7x7x3xf32>, tensor<96xf32>) -> tensor<1x109x109x96xf32>
    %31 = "tosa.transpose"(%30, %10) : (tensor<1x109x109x96xf32>, tensor<4xi32>) -> tensor<1x96x109x109xf32>
    %32 = "tosa.clamp"(%31) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x109x109xf32>) -> tensor<1x96x109x109xf32>
    %33 = "tosa.transpose"(%32, %9) : (tensor<1x96x109x109xf32>, tensor<4xi32>) -> tensor<1x109x109x96xf32>
    %34 = "tosa.max_pool2d"(%33) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x109x109x96xf32>) -> tensor<1x54x54x96xf32>
    %35 = "tosa.conv2d"(%34, %27, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x96xf32>, tensor<16x1x1x96xf32>, tensor<16xf32>) -> tensor<1x54x54x16xf32>
    %36 = "tosa.transpose"(%35, %10) : (tensor<1x54x54x16xf32>, tensor<4xi32>) -> tensor<1x16x54x54xf32>
    %37 = "tosa.clamp"(%36) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x16x54x54xf32>) -> tensor<1x16x54x54xf32>
    %38 = "tosa.transpose"(%37, %9) : (tensor<1x16x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x16xf32>
    %39 = "tosa.conv2d"(%38, %26, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x16xf32>, tensor<64x1x1x16xf32>, tensor<64xf32>) -> tensor<1x54x54x64xf32>
    %40 = "tosa.transpose"(%39, %10) : (tensor<1x54x54x64xf32>, tensor<4xi32>) -> tensor<1x64x54x54xf32>
    %41 = "tosa.clamp"(%40) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xf32>
    %42 = "tosa.conv2d"(%38, %25, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x54x54x16xf32>, tensor<64x3x3x16xf32>, tensor<64xf32>) -> tensor<1x54x54x64xf32>
    %43 = "tosa.transpose"(%42, %10) : (tensor<1x54x54x64xf32>, tensor<4xi32>) -> tensor<1x64x54x54xf32>
    %44 = "tosa.clamp"(%43) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xf32>
    %45 = "tosa.concat"(%41, %44) {axis = 1 : i64} : (tensor<1x64x54x54xf32>, tensor<1x64x54x54xf32>) -> tensor<1x128x54x54xf32>
    %46 = "tosa.transpose"(%45, %9) : (tensor<1x128x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x128xf32>
    %47 = "tosa.conv2d"(%46, %24, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x128xf32>, tensor<16x1x1x128xf32>, tensor<16xf32>) -> tensor<1x54x54x16xf32>
    %48 = "tosa.transpose"(%47, %10) : (tensor<1x54x54x16xf32>, tensor<4xi32>) -> tensor<1x16x54x54xf32>
    %49 = "tosa.clamp"(%48) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x16x54x54xf32>) -> tensor<1x16x54x54xf32>
    %50 = "tosa.transpose"(%49, %9) : (tensor<1x16x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x16xf32>
    %51 = "tosa.conv2d"(%50, %26, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x16xf32>, tensor<64x1x1x16xf32>, tensor<64xf32>) -> tensor<1x54x54x64xf32>
    %52 = "tosa.transpose"(%51, %10) : (tensor<1x54x54x64xf32>, tensor<4xi32>) -> tensor<1x64x54x54xf32>
    %53 = "tosa.clamp"(%52) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xf32>
    %54 = "tosa.conv2d"(%50, %25, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x54x54x16xf32>, tensor<64x3x3x16xf32>, tensor<64xf32>) -> tensor<1x54x54x64xf32>
    %55 = "tosa.transpose"(%54, %10) : (tensor<1x54x54x64xf32>, tensor<4xi32>) -> tensor<1x64x54x54xf32>
    %56 = "tosa.clamp"(%55) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xf32>
    %57 = "tosa.concat"(%53, %56) {axis = 1 : i64} : (tensor<1x64x54x54xf32>, tensor<1x64x54x54xf32>) -> tensor<1x128x54x54xf32>
    %58 = "tosa.transpose"(%57, %9) : (tensor<1x128x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x128xf32>
    %59 = "tosa.conv2d"(%58, %23, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x128xf32>, tensor<32x1x1x128xf32>, tensor<32xf32>) -> tensor<1x54x54x32xf32>
    %60 = "tosa.transpose"(%59, %10) : (tensor<1x54x54x32xf32>, tensor<4xi32>) -> tensor<1x32x54x54xf32>
    %61 = "tosa.clamp"(%60) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x54x54xf32>) -> tensor<1x32x54x54xf32>
    %62 = "tosa.transpose"(%61, %9) : (tensor<1x32x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x32xf32>
    %63 = "tosa.conv2d"(%62, %22, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x32xf32>, tensor<128x1x1x32xf32>, tensor<128xf32>) -> tensor<1x54x54x128xf32>
    %64 = "tosa.transpose"(%63, %10) : (tensor<1x54x54x128xf32>, tensor<4xi32>) -> tensor<1x128x54x54xf32>
    %65 = "tosa.clamp"(%64) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x54x54xf32>) -> tensor<1x128x54x54xf32>
    %66 = "tosa.conv2d"(%62, %21, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x54x54x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x54x54x128xf32>
    %67 = "tosa.transpose"(%66, %10) : (tensor<1x54x54x128xf32>, tensor<4xi32>) -> tensor<1x128x54x54xf32>
    %68 = "tosa.clamp"(%67) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x54x54xf32>) -> tensor<1x128x54x54xf32>
    %69 = "tosa.concat"(%65, %68) {axis = 1 : i64} : (tensor<1x128x54x54xf32>, tensor<1x128x54x54xf32>) -> tensor<1x256x54x54xf32>
    %70 = "tosa.transpose"(%69, %9) : (tensor<1x256x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x256xf32>
    %71 = "tosa.max_pool2d"(%70) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 1, 0, 1>, stride = array<i64: 2, 2>} : (tensor<1x54x54x256xf32>) -> tensor<1x27x27x256xf32>
    %72 = "tosa.conv2d"(%71, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x256xf32>, tensor<32x1x1x256xf32>, tensor<32xf32>) -> tensor<1x27x27x32xf32>
    %73 = "tosa.transpose"(%72, %10) : (tensor<1x27x27x32xf32>, tensor<4xi32>) -> tensor<1x32x27x27xf32>
    %74 = "tosa.clamp"(%73) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x27x27xf32>) -> tensor<1x32x27x27xf32>
    %75 = "tosa.transpose"(%74, %9) : (tensor<1x32x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x32xf32>
    %76 = "tosa.conv2d"(%75, %22, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x32xf32>, tensor<128x1x1x32xf32>, tensor<128xf32>) -> tensor<1x27x27x128xf32>
    %77 = "tosa.transpose"(%76, %10) : (tensor<1x27x27x128xf32>, tensor<4xi32>) -> tensor<1x128x27x27xf32>
    %78 = "tosa.clamp"(%77) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x27x27xf32>) -> tensor<1x128x27x27xf32>
    %79 = "tosa.conv2d"(%75, %21, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x27x27x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x27x27x128xf32>
    %80 = "tosa.transpose"(%79, %10) : (tensor<1x27x27x128xf32>, tensor<4xi32>) -> tensor<1x128x27x27xf32>
    %81 = "tosa.clamp"(%80) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x27x27xf32>) -> tensor<1x128x27x27xf32>
    %82 = "tosa.concat"(%78, %81) {axis = 1 : i64} : (tensor<1x128x27x27xf32>, tensor<1x128x27x27xf32>) -> tensor<1x256x27x27xf32>
    %83 = "tosa.transpose"(%82, %9) : (tensor<1x256x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x256xf32>
    %84 = "tosa.conv2d"(%83, %19, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x256xf32>, tensor<48x1x1x256xf32>, tensor<48xf32>) -> tensor<1x27x27x48xf32>
    %85 = "tosa.transpose"(%84, %10) : (tensor<1x27x27x48xf32>, tensor<4xi32>) -> tensor<1x48x27x27xf32>
    %86 = "tosa.clamp"(%85) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x48x27x27xf32>) -> tensor<1x48x27x27xf32>
    %87 = "tosa.transpose"(%86, %9) : (tensor<1x48x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x48xf32>
    %88 = "tosa.conv2d"(%87, %18, %2) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x48xf32>, tensor<192x1x1x48xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %89 = "tosa.transpose"(%88, %10) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    %90 = "tosa.clamp"(%89) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    %91 = "tosa.conv2d"(%87, %17, %2) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x27x27x48xf32>, tensor<192x3x3x48xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %92 = "tosa.transpose"(%91, %10) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    %93 = "tosa.clamp"(%92) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    %94 = "tosa.concat"(%90, %93) {axis = 1 : i64} : (tensor<1x192x27x27xf32>, tensor<1x192x27x27xf32>) -> tensor<1x384x27x27xf32>
    %95 = "tosa.transpose"(%94, %9) : (tensor<1x384x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x384xf32>
    %96 = "tosa.conv2d"(%95, %16, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x384xf32>, tensor<48x1x1x384xf32>, tensor<48xf32>) -> tensor<1x27x27x48xf32>
    %97 = "tosa.transpose"(%96, %10) : (tensor<1x27x27x48xf32>, tensor<4xi32>) -> tensor<1x48x27x27xf32>
    %98 = "tosa.clamp"(%97) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x48x27x27xf32>) -> tensor<1x48x27x27xf32>
    %99 = "tosa.transpose"(%98, %9) : (tensor<1x48x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x48xf32>
    %100 = "tosa.conv2d"(%99, %18, %2) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x48xf32>, tensor<192x1x1x48xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %101 = "tosa.transpose"(%100, %10) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    %102 = "tosa.clamp"(%101) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    %103 = "tosa.conv2d"(%99, %17, %2) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x27x27x48xf32>, tensor<192x3x3x48xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %104 = "tosa.transpose"(%103, %10) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    %105 = "tosa.clamp"(%104) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    %106 = "tosa.concat"(%102, %105) {axis = 1 : i64} : (tensor<1x192x27x27xf32>, tensor<1x192x27x27xf32>) -> tensor<1x384x27x27xf32>
    %107 = "tosa.transpose"(%106, %9) : (tensor<1x384x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x384xf32>
    %108 = "tosa.conv2d"(%107, %15, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x384xf32>, tensor<64x1x1x384xf32>, tensor<64xf32>) -> tensor<1x27x27x64xf32>
    %109 = "tosa.transpose"(%108, %10) : (tensor<1x27x27x64xf32>, tensor<4xi32>) -> tensor<1x64x27x27xf32>
    %110 = "tosa.clamp"(%109) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x27x27xf32>) -> tensor<1x64x27x27xf32>
    %111 = "tosa.transpose"(%110, %9) : (tensor<1x64x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x64xf32>
    %112 = "tosa.conv2d"(%111, %14, %1) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x27x27x256xf32>
    %113 = "tosa.transpose"(%112, %10) : (tensor<1x27x27x256xf32>, tensor<4xi32>) -> tensor<1x256x27x27xf32>
    %114 = "tosa.clamp"(%113) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x27x27xf32>) -> tensor<1x256x27x27xf32>
    %115 = "tosa.conv2d"(%111, %13, %1) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x27x27x64xf32>, tensor<256x3x3x64xf32>, tensor<256xf32>) -> tensor<1x27x27x256xf32>
    %116 = "tosa.transpose"(%115, %10) : (tensor<1x27x27x256xf32>, tensor<4xi32>) -> tensor<1x256x27x27xf32>
    %117 = "tosa.clamp"(%116) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x27x27xf32>) -> tensor<1x256x27x27xf32>
    %118 = "tosa.concat"(%114, %117) {axis = 1 : i64} : (tensor<1x256x27x27xf32>, tensor<1x256x27x27xf32>) -> tensor<1x512x27x27xf32>
    %119 = "tosa.transpose"(%118, %9) : (tensor<1x512x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x512xf32>
    %120 = "tosa.max_pool2d"(%119) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x27x27x512xf32>) -> tensor<1x13x13x512xf32>
    %121 = "tosa.conv2d"(%120, %12, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x13x13x512xf32>, tensor<64x1x1x512xf32>, tensor<64xf32>) -> tensor<1x13x13x64xf32>
    %122 = "tosa.transpose"(%121, %10) : (tensor<1x13x13x64xf32>, tensor<4xi32>) -> tensor<1x64x13x13xf32>
    %123 = "tosa.clamp"(%122) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x13x13xf32>) -> tensor<1x64x13x13xf32>
    %124 = "tosa.transpose"(%123, %9) : (tensor<1x64x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x64xf32>
    %125 = "tosa.conv2d"(%124, %14, %1) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x13x13x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x13x13x256xf32>
    %126 = "tosa.transpose"(%125, %10) : (tensor<1x13x13x256xf32>, tensor<4xi32>) -> tensor<1x256x13x13xf32>
    %127 = "tosa.clamp"(%126) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    %128 = "tosa.conv2d"(%124, %13, %1) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x13x13x64xf32>, tensor<256x3x3x64xf32>, tensor<256xf32>) -> tensor<1x13x13x256xf32>
    %129 = "tosa.transpose"(%128, %10) : (tensor<1x13x13x256xf32>, tensor<4xi32>) -> tensor<1x256x13x13xf32>
    %130 = "tosa.clamp"(%129) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    %131 = "tosa.concat"(%127, %130) {axis = 1 : i64} : (tensor<1x256x13x13xf32>, tensor<1x256x13x13xf32>) -> tensor<1x512x13x13xf32>
    %132 = "tosa.transpose"(%131, %9) : (tensor<1x512x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x512xf32>
    %133 = "tosa.conv2d"(%132, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x13x13x512xf32>, tensor<1000x1x1x512xf32>, tensor<1000xf32>) -> tensor<1x13x13x1000xf32>
    %134 = "tosa.transpose"(%133, %10) : (tensor<1x13x13x1000xf32>, tensor<4xi32>) -> tensor<1x1000x13x13xf32>
    %135 = "tosa.clamp"(%134) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1000x13x13xf32>) -> tensor<1x1000x13x13xf32>
    %136 = "tosa.transpose"(%135, %9) : (tensor<1x1000x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x1000xf32>
    %137 = "tosa.avg_pool2d"(%136) {acc_type = f32, kernel = array<i64: 13, 13>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x13x13x1000xf32>) -> tensor<1x1x1x1000xf32>
    %138 = "tosa.reshape"(%137) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1x1000xf32>) -> tensor<1x1000xf32>
    return %138 : tensor<1x1000xf32>
  }
}
