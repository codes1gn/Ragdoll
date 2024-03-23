#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "SqueezeNet"} {
  ml_program.global private mutable @global152 : tensor<1x1000x13x13xf32>
  ml_program.global private mutable @global151 : tensor<1x1000x13x13xf32>
  ml_program.global private mutable @global145 : tensor<1x256x13x13xf32>
  ml_program.global private mutable @global144 : tensor<1x256x13x13xf32>
  ml_program.global private mutable @global142 : tensor<1x256x13x13xf32>
  ml_program.global private mutable @global141 : tensor<1x256x13x13xf32>
  ml_program.global private mutable @global138 : tensor<1x64x13x13xf32>
  ml_program.global private mutable @global137 : tensor<1x64x13x13xf32>
  ml_program.global private mutable @global135 : tensor<1x13x13x512xf32>
  ml_program.global private mutable @global134 : tensor<1x27x27x512xf32>
  ml_program.global private mutable @global130 : tensor<1x256x27x27xf32>
  ml_program.global private mutable @global129 : tensor<1x256x27x27xf32>
  ml_program.global private mutable @global127 : tensor<1x256x27x27xf32>
  ml_program.global private mutable @global126 : tensor<1x256x27x27xf32>
  ml_program.global private mutable @global123 : tensor<1x64x27x27xf32>
  ml_program.global private mutable @global122 : tensor<1x64x27x27xf32>
  ml_program.global private mutable @global116 : tensor<1x192x27x27xf32>
  ml_program.global private mutable @global115 : tensor<1x192x27x27xf32>
  ml_program.global private mutable @global113 : tensor<1x192x27x27xf32>
  ml_program.global private mutable @global112 : tensor<1x192x27x27xf32>
  ml_program.global private mutable @global109 : tensor<1x48x27x27xf32>
  ml_program.global private mutable @global108 : tensor<1x48x27x27xf32>
  ml_program.global private mutable @global102 : tensor<1x192x27x27xf32>
  ml_program.global private mutable @global101 : tensor<1x192x27x27xf32>
  ml_program.global private mutable @global99 : tensor<1x192x27x27xf32>
  ml_program.global private mutable @global98 : tensor<1x192x27x27xf32>
  ml_program.global private mutable @global95 : tensor<1x48x27x27xf32>
  ml_program.global private mutable @global94 : tensor<1x48x27x27xf32>
  ml_program.global private mutable @global88 : tensor<1x128x27x27xf32>
  ml_program.global private mutable @global87 : tensor<1x128x27x27xf32>
  ml_program.global private mutable @global85 : tensor<1x128x27x27xf32>
  ml_program.global private mutable @global84 : tensor<1x128x27x27xf32>
  ml_program.global private mutable @global81 : tensor<1x32x27x27xf32>
  ml_program.global private mutable @global80 : tensor<1x32x27x27xf32>
  ml_program.global private mutable @global78 : tensor<1x27x27x256xf32>
  ml_program.global private mutable @global77 : tensor<1x54x54x256xf32>
  ml_program.global private mutable @global73 : tensor<1x128x54x54xf32>
  ml_program.global private mutable @global72 : tensor<1x128x54x54xf32>
  ml_program.global private mutable @global70 : tensor<1x128x54x54xf32>
  ml_program.global private mutable @global69 : tensor<1x128x54x54xf32>
  ml_program.global private mutable @global66 : tensor<1x32x54x54xf32>
  ml_program.global private mutable @global65 : tensor<1x32x54x54xf32>
  ml_program.global private mutable @global59 : tensor<1x64x54x54xf32>
  ml_program.global private mutable @global58 : tensor<1x64x54x54xf32>
  ml_program.global private mutable @global56 : tensor<1x64x54x54xf32>
  ml_program.global private mutable @global55 : tensor<1x64x54x54xf32>
  ml_program.global private mutable @global52 : tensor<1x16x54x54xf32>
  ml_program.global private mutable @global51 : tensor<1x16x54x54xf32>
  ml_program.global private mutable @global45 : tensor<1x64x54x54xf32>
  ml_program.global private mutable @global44 : tensor<1x64x54x54xf32>
  ml_program.global private mutable @global42 : tensor<1x64x54x54xf32>
  ml_program.global private mutable @global41 : tensor<1x64x54x54xf32>
  ml_program.global private mutable @global38 : tensor<1x16x54x54xf32>
  ml_program.global private mutable @global37 : tensor<1x16x54x54xf32>
  ml_program.global private mutable @global35 : tensor<1x54x54x96xf32>
  ml_program.global private mutable @global34 : tensor<1x109x109x96xf32>
  ml_program.global private mutable @global33 : tensor<1x96x109x109xf32>
  ml_program.global private mutable @global32 : tensor<1x96x109x109xf32>
  ml_program.global private mutable @global29 : tensor<96x7x7x3xf32>
  ml_program.global private mutable @global28 : tensor<16x1x1x96xf32>
  ml_program.global private mutable @global27 : tensor<64x1x1x16xf32>
  ml_program.global private mutable @global26 : tensor<64x3x3x16xf32>
  ml_program.global private mutable @global25 : tensor<16x1x1x128xf32>
  ml_program.global private mutable @global24 : tensor<32x1x1x128xf32>
  ml_program.global private mutable @global23 : tensor<128x1x1x32xf32>
  ml_program.global private mutable @global22 : tensor<128x3x3x32xf32>
  ml_program.global private mutable @global21 : tensor<32x1x1x256xf32>
  ml_program.global private mutable @global20 : tensor<48x1x1x256xf32>
  ml_program.global private mutable @global19 : tensor<192x1x1x48xf32>
  ml_program.global private mutable @global18 : tensor<192x3x3x48xf32>
  ml_program.global private mutable @global17 : tensor<48x1x1x384xf32>
  ml_program.global private mutable @global16 : tensor<64x1x1x384xf32>
  ml_program.global private mutable @global15 : tensor<256x1x1x64xf32>
  ml_program.global private mutable @global14 : tensor<256x3x3x64xf32>
  ml_program.global private mutable @global13 : tensor<64x1x1x512xf32>
  ml_program.global private mutable @global12 : tensor<1000x1x1x512xf32>
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
    ml_program.global_store @global12 = %11 : tensor<1000x1x1x512xf32>
    ml_program.global_store @global13 = %12 : tensor<64x1x1x512xf32>
    ml_program.global_store @global14 = %13 : tensor<256x3x3x64xf32>
    ml_program.global_store @global15 = %14 : tensor<256x1x1x64xf32>
    ml_program.global_store @global16 = %15 : tensor<64x1x1x384xf32>
    ml_program.global_store @global17 = %16 : tensor<48x1x1x384xf32>
    ml_program.global_store @global18 = %17 : tensor<192x3x3x48xf32>
    ml_program.global_store @global19 = %18 : tensor<192x1x1x48xf32>
    ml_program.global_store @global20 = %19 : tensor<48x1x1x256xf32>
    ml_program.global_store @global21 = %20 : tensor<32x1x1x256xf32>
    ml_program.global_store @global22 = %21 : tensor<128x3x3x32xf32>
    ml_program.global_store @global23 = %22 : tensor<128x1x1x32xf32>
    ml_program.global_store @global24 = %23 : tensor<32x1x1x128xf32>
    ml_program.global_store @global25 = %24 : tensor<16x1x1x128xf32>
    ml_program.global_store @global26 = %25 : tensor<64x3x3x16xf32>
    ml_program.global_store @global27 = %26 : tensor<64x1x1x16xf32>
    ml_program.global_store @global28 = %27 : tensor<16x1x1x96xf32>
    ml_program.global_store @global29 = %28 : tensor<96x7x7x3xf32>
    %29 = "tosa.transpose"(%arg0, %9) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %30 = "tosa.conv2d"(%29, %28, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<96x7x7x3xf32>, tensor<96xf32>) -> tensor<1x109x109x96xf32>
    %31 = "tosa.transpose"(%30, %10) : (tensor<1x109x109x96xf32>, tensor<4xi32>) -> tensor<1x96x109x109xf32>
    ml_program.global_store @global32 = %31 : tensor<1x96x109x109xf32>
    %32 = "tosa.clamp"(%31) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x109x109xf32>) -> tensor<1x96x109x109xf32>
    ml_program.global_store @global33 = %32 : tensor<1x96x109x109xf32>
    %33 = "tosa.transpose"(%32, %9) : (tensor<1x96x109x109xf32>, tensor<4xi32>) -> tensor<1x109x109x96xf32>
    ml_program.global_store @global34 = %33 : tensor<1x109x109x96xf32>
    %34 = "tosa.max_pool2d"(%33) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x109x109x96xf32>) -> tensor<1x54x54x96xf32>
    ml_program.global_store @global35 = %34 : tensor<1x54x54x96xf32>
    %35 = "tosa.conv2d"(%34, %27, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x96xf32>, tensor<16x1x1x96xf32>, tensor<16xf32>) -> tensor<1x54x54x16xf32>
    %36 = "tosa.transpose"(%35, %10) : (tensor<1x54x54x16xf32>, tensor<4xi32>) -> tensor<1x16x54x54xf32>
    ml_program.global_store @global37 = %36 : tensor<1x16x54x54xf32>
    %37 = "tosa.clamp"(%36) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x16x54x54xf32>) -> tensor<1x16x54x54xf32>
    ml_program.global_store @global38 = %37 : tensor<1x16x54x54xf32>
    %38 = "tosa.transpose"(%37, %9) : (tensor<1x16x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x16xf32>
    %39 = "tosa.conv2d"(%38, %26, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x16xf32>, tensor<64x1x1x16xf32>, tensor<64xf32>) -> tensor<1x54x54x64xf32>
    %40 = "tosa.transpose"(%39, %10) : (tensor<1x54x54x64xf32>, tensor<4xi32>) -> tensor<1x64x54x54xf32>
    ml_program.global_store @global41 = %40 : tensor<1x64x54x54xf32>
    %41 = "tosa.clamp"(%40) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xf32>
    ml_program.global_store @global42 = %41 : tensor<1x64x54x54xf32>
    %42 = "tosa.conv2d"(%38, %25, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x54x54x16xf32>, tensor<64x3x3x16xf32>, tensor<64xf32>) -> tensor<1x54x54x64xf32>
    %43 = "tosa.transpose"(%42, %10) : (tensor<1x54x54x64xf32>, tensor<4xi32>) -> tensor<1x64x54x54xf32>
    ml_program.global_store @global44 = %43 : tensor<1x64x54x54xf32>
    %44 = "tosa.clamp"(%43) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xf32>
    ml_program.global_store @global45 = %44 : tensor<1x64x54x54xf32>
    %45 = tensor.empty() : tensor<1x128x54x54xf32>
    %inserted_slice = tensor.insert_slice %41 into %45[0, 0, 0, 0] [1, 64, 54, 54] [1, 1, 1, 1] : tensor<1x64x54x54xf32> into tensor<1x128x54x54xf32>
    %inserted_slice_0 = tensor.insert_slice %44 into %inserted_slice[0, 64, 0, 0] [1, 64, 54, 54] [1, 1, 1, 1] : tensor<1x64x54x54xf32> into tensor<1x128x54x54xf32>
    %46 = "tosa.transpose"(%inserted_slice_0, %9) : (tensor<1x128x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x128xf32>
    %47 = "tosa.conv2d"(%46, %24, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x128xf32>, tensor<16x1x1x128xf32>, tensor<16xf32>) -> tensor<1x54x54x16xf32>
    %48 = "tosa.transpose"(%47, %10) : (tensor<1x54x54x16xf32>, tensor<4xi32>) -> tensor<1x16x54x54xf32>
    ml_program.global_store @global51 = %48 : tensor<1x16x54x54xf32>
    %49 = "tosa.clamp"(%48) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x16x54x54xf32>) -> tensor<1x16x54x54xf32>
    ml_program.global_store @global52 = %49 : tensor<1x16x54x54xf32>
    %50 = "tosa.transpose"(%49, %9) : (tensor<1x16x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x16xf32>
    %51 = "tosa.conv2d"(%50, %26, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x16xf32>, tensor<64x1x1x16xf32>, tensor<64xf32>) -> tensor<1x54x54x64xf32>
    %52 = "tosa.transpose"(%51, %10) : (tensor<1x54x54x64xf32>, tensor<4xi32>) -> tensor<1x64x54x54xf32>
    ml_program.global_store @global55 = %52 : tensor<1x64x54x54xf32>
    %53 = "tosa.clamp"(%52) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xf32>
    ml_program.global_store @global56 = %53 : tensor<1x64x54x54xf32>
    %54 = "tosa.conv2d"(%50, %25, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x54x54x16xf32>, tensor<64x3x3x16xf32>, tensor<64xf32>) -> tensor<1x54x54x64xf32>
    %55 = "tosa.transpose"(%54, %10) : (tensor<1x54x54x64xf32>, tensor<4xi32>) -> tensor<1x64x54x54xf32>
    ml_program.global_store @global58 = %55 : tensor<1x64x54x54xf32>
    %56 = "tosa.clamp"(%55) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xf32>
    ml_program.global_store @global59 = %56 : tensor<1x64x54x54xf32>
    %inserted_slice_1 = tensor.insert_slice %53 into %45[0, 0, 0, 0] [1, 64, 54, 54] [1, 1, 1, 1] : tensor<1x64x54x54xf32> into tensor<1x128x54x54xf32>
    %inserted_slice_2 = tensor.insert_slice %56 into %inserted_slice_1[0, 64, 0, 0] [1, 64, 54, 54] [1, 1, 1, 1] : tensor<1x64x54x54xf32> into tensor<1x128x54x54xf32>
    %57 = "tosa.transpose"(%inserted_slice_2, %9) : (tensor<1x128x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x128xf32>
    %58 = "tosa.conv2d"(%57, %23, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x128xf32>, tensor<32x1x1x128xf32>, tensor<32xf32>) -> tensor<1x54x54x32xf32>
    %59 = "tosa.transpose"(%58, %10) : (tensor<1x54x54x32xf32>, tensor<4xi32>) -> tensor<1x32x54x54xf32>
    ml_program.global_store @global65 = %59 : tensor<1x32x54x54xf32>
    %60 = "tosa.clamp"(%59) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x54x54xf32>) -> tensor<1x32x54x54xf32>
    ml_program.global_store @global66 = %60 : tensor<1x32x54x54xf32>
    %61 = "tosa.transpose"(%60, %9) : (tensor<1x32x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x32xf32>
    %62 = "tosa.conv2d"(%61, %22, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x32xf32>, tensor<128x1x1x32xf32>, tensor<128xf32>) -> tensor<1x54x54x128xf32>
    %63 = "tosa.transpose"(%62, %10) : (tensor<1x54x54x128xf32>, tensor<4xi32>) -> tensor<1x128x54x54xf32>
    ml_program.global_store @global69 = %63 : tensor<1x128x54x54xf32>
    %64 = "tosa.clamp"(%63) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x54x54xf32>) -> tensor<1x128x54x54xf32>
    ml_program.global_store @global70 = %64 : tensor<1x128x54x54xf32>
    %65 = "tosa.conv2d"(%61, %21, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x54x54x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x54x54x128xf32>
    %66 = "tosa.transpose"(%65, %10) : (tensor<1x54x54x128xf32>, tensor<4xi32>) -> tensor<1x128x54x54xf32>
    ml_program.global_store @global72 = %66 : tensor<1x128x54x54xf32>
    %67 = "tosa.clamp"(%66) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x54x54xf32>) -> tensor<1x128x54x54xf32>
    ml_program.global_store @global73 = %67 : tensor<1x128x54x54xf32>
    %68 = tensor.empty() : tensor<1x256x54x54xf32>
    %inserted_slice_3 = tensor.insert_slice %64 into %68[0, 0, 0, 0] [1, 128, 54, 54] [1, 1, 1, 1] : tensor<1x128x54x54xf32> into tensor<1x256x54x54xf32>
    %inserted_slice_4 = tensor.insert_slice %67 into %inserted_slice_3[0, 128, 0, 0] [1, 128, 54, 54] [1, 1, 1, 1] : tensor<1x128x54x54xf32> into tensor<1x256x54x54xf32>
    %69 = "tosa.transpose"(%inserted_slice_4, %9) : (tensor<1x256x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x256xf32>
    ml_program.global_store @global77 = %69 : tensor<1x54x54x256xf32>
    %70 = "tosa.max_pool2d"(%69) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 1, 0, 1>, stride = array<i64: 2, 2>} : (tensor<1x54x54x256xf32>) -> tensor<1x27x27x256xf32>
    ml_program.global_store @global78 = %70 : tensor<1x27x27x256xf32>
    %71 = "tosa.conv2d"(%70, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x256xf32>, tensor<32x1x1x256xf32>, tensor<32xf32>) -> tensor<1x27x27x32xf32>
    %72 = "tosa.transpose"(%71, %10) : (tensor<1x27x27x32xf32>, tensor<4xi32>) -> tensor<1x32x27x27xf32>
    ml_program.global_store @global80 = %72 : tensor<1x32x27x27xf32>
    %73 = "tosa.clamp"(%72) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x27x27xf32>) -> tensor<1x32x27x27xf32>
    ml_program.global_store @global81 = %73 : tensor<1x32x27x27xf32>
    %74 = "tosa.transpose"(%73, %9) : (tensor<1x32x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x32xf32>
    %75 = "tosa.conv2d"(%74, %22, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x32xf32>, tensor<128x1x1x32xf32>, tensor<128xf32>) -> tensor<1x27x27x128xf32>
    %76 = "tosa.transpose"(%75, %10) : (tensor<1x27x27x128xf32>, tensor<4xi32>) -> tensor<1x128x27x27xf32>
    ml_program.global_store @global84 = %76 : tensor<1x128x27x27xf32>
    %77 = "tosa.clamp"(%76) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x27x27xf32>) -> tensor<1x128x27x27xf32>
    ml_program.global_store @global85 = %77 : tensor<1x128x27x27xf32>
    %78 = "tosa.conv2d"(%74, %21, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x27x27x32xf32>, tensor<128x3x3x32xf32>, tensor<128xf32>) -> tensor<1x27x27x128xf32>
    %79 = "tosa.transpose"(%78, %10) : (tensor<1x27x27x128xf32>, tensor<4xi32>) -> tensor<1x128x27x27xf32>
    ml_program.global_store @global87 = %79 : tensor<1x128x27x27xf32>
    %80 = "tosa.clamp"(%79) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x27x27xf32>) -> tensor<1x128x27x27xf32>
    ml_program.global_store @global88 = %80 : tensor<1x128x27x27xf32>
    %81 = tensor.empty() : tensor<1x256x27x27xf32>
    %inserted_slice_5 = tensor.insert_slice %77 into %81[0, 0, 0, 0] [1, 128, 27, 27] [1, 1, 1, 1] : tensor<1x128x27x27xf32> into tensor<1x256x27x27xf32>
    %inserted_slice_6 = tensor.insert_slice %80 into %inserted_slice_5[0, 128, 0, 0] [1, 128, 27, 27] [1, 1, 1, 1] : tensor<1x128x27x27xf32> into tensor<1x256x27x27xf32>
    %82 = "tosa.transpose"(%inserted_slice_6, %9) : (tensor<1x256x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x256xf32>
    %83 = "tosa.conv2d"(%82, %19, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x256xf32>, tensor<48x1x1x256xf32>, tensor<48xf32>) -> tensor<1x27x27x48xf32>
    %84 = "tosa.transpose"(%83, %10) : (tensor<1x27x27x48xf32>, tensor<4xi32>) -> tensor<1x48x27x27xf32>
    ml_program.global_store @global94 = %84 : tensor<1x48x27x27xf32>
    %85 = "tosa.clamp"(%84) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x48x27x27xf32>) -> tensor<1x48x27x27xf32>
    ml_program.global_store @global95 = %85 : tensor<1x48x27x27xf32>
    %86 = "tosa.transpose"(%85, %9) : (tensor<1x48x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x48xf32>
    %87 = "tosa.conv2d"(%86, %18, %2) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x48xf32>, tensor<192x1x1x48xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %88 = "tosa.transpose"(%87, %10) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    ml_program.global_store @global98 = %88 : tensor<1x192x27x27xf32>
    %89 = "tosa.clamp"(%88) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    ml_program.global_store @global99 = %89 : tensor<1x192x27x27xf32>
    %90 = "tosa.conv2d"(%86, %17, %2) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x27x27x48xf32>, tensor<192x3x3x48xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %91 = "tosa.transpose"(%90, %10) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    ml_program.global_store @global101 = %91 : tensor<1x192x27x27xf32>
    %92 = "tosa.clamp"(%91) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    ml_program.global_store @global102 = %92 : tensor<1x192x27x27xf32>
    %93 = tensor.empty() : tensor<1x384x27x27xf32>
    %inserted_slice_7 = tensor.insert_slice %89 into %93[0, 0, 0, 0] [1, 192, 27, 27] [1, 1, 1, 1] : tensor<1x192x27x27xf32> into tensor<1x384x27x27xf32>
    %inserted_slice_8 = tensor.insert_slice %92 into %inserted_slice_7[0, 192, 0, 0] [1, 192, 27, 27] [1, 1, 1, 1] : tensor<1x192x27x27xf32> into tensor<1x384x27x27xf32>
    %94 = "tosa.transpose"(%inserted_slice_8, %9) : (tensor<1x384x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x384xf32>
    %95 = "tosa.conv2d"(%94, %16, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x384xf32>, tensor<48x1x1x384xf32>, tensor<48xf32>) -> tensor<1x27x27x48xf32>
    %96 = "tosa.transpose"(%95, %10) : (tensor<1x27x27x48xf32>, tensor<4xi32>) -> tensor<1x48x27x27xf32>
    ml_program.global_store @global108 = %96 : tensor<1x48x27x27xf32>
    %97 = "tosa.clamp"(%96) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x48x27x27xf32>) -> tensor<1x48x27x27xf32>
    ml_program.global_store @global109 = %97 : tensor<1x48x27x27xf32>
    %98 = "tosa.transpose"(%97, %9) : (tensor<1x48x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x48xf32>
    %99 = "tosa.conv2d"(%98, %18, %2) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x48xf32>, tensor<192x1x1x48xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %100 = "tosa.transpose"(%99, %10) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    ml_program.global_store @global112 = %100 : tensor<1x192x27x27xf32>
    %101 = "tosa.clamp"(%100) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    ml_program.global_store @global113 = %101 : tensor<1x192x27x27xf32>
    %102 = "tosa.conv2d"(%98, %17, %2) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x27x27x48xf32>, tensor<192x3x3x48xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %103 = "tosa.transpose"(%102, %10) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    ml_program.global_store @global115 = %103 : tensor<1x192x27x27xf32>
    %104 = "tosa.clamp"(%103) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    ml_program.global_store @global116 = %104 : tensor<1x192x27x27xf32>
    %inserted_slice_9 = tensor.insert_slice %101 into %93[0, 0, 0, 0] [1, 192, 27, 27] [1, 1, 1, 1] : tensor<1x192x27x27xf32> into tensor<1x384x27x27xf32>
    %inserted_slice_10 = tensor.insert_slice %104 into %inserted_slice_9[0, 192, 0, 0] [1, 192, 27, 27] [1, 1, 1, 1] : tensor<1x192x27x27xf32> into tensor<1x384x27x27xf32>
    %105 = "tosa.transpose"(%inserted_slice_10, %9) : (tensor<1x384x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x384xf32>
    %106 = "tosa.conv2d"(%105, %15, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x384xf32>, tensor<64x1x1x384xf32>, tensor<64xf32>) -> tensor<1x27x27x64xf32>
    %107 = "tosa.transpose"(%106, %10) : (tensor<1x27x27x64xf32>, tensor<4xi32>) -> tensor<1x64x27x27xf32>
    ml_program.global_store @global122 = %107 : tensor<1x64x27x27xf32>
    %108 = "tosa.clamp"(%107) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x27x27xf32>) -> tensor<1x64x27x27xf32>
    ml_program.global_store @global123 = %108 : tensor<1x64x27x27xf32>
    %109 = "tosa.transpose"(%108, %9) : (tensor<1x64x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x64xf32>
    %110 = "tosa.conv2d"(%109, %14, %1) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x27x27x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x27x27x256xf32>
    %111 = "tosa.transpose"(%110, %10) : (tensor<1x27x27x256xf32>, tensor<4xi32>) -> tensor<1x256x27x27xf32>
    ml_program.global_store @global126 = %111 : tensor<1x256x27x27xf32>
    %112 = "tosa.clamp"(%111) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x27x27xf32>) -> tensor<1x256x27x27xf32>
    ml_program.global_store @global127 = %112 : tensor<1x256x27x27xf32>
    %113 = "tosa.conv2d"(%109, %13, %1) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x27x27x64xf32>, tensor<256x3x3x64xf32>, tensor<256xf32>) -> tensor<1x27x27x256xf32>
    %114 = "tosa.transpose"(%113, %10) : (tensor<1x27x27x256xf32>, tensor<4xi32>) -> tensor<1x256x27x27xf32>
    ml_program.global_store @global129 = %114 : tensor<1x256x27x27xf32>
    %115 = "tosa.clamp"(%114) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x27x27xf32>) -> tensor<1x256x27x27xf32>
    ml_program.global_store @global130 = %115 : tensor<1x256x27x27xf32>
    %116 = tensor.empty() : tensor<1x512x27x27xf32>
    %inserted_slice_11 = tensor.insert_slice %112 into %116[0, 0, 0, 0] [1, 256, 27, 27] [1, 1, 1, 1] : tensor<1x256x27x27xf32> into tensor<1x512x27x27xf32>
    %inserted_slice_12 = tensor.insert_slice %115 into %inserted_slice_11[0, 256, 0, 0] [1, 256, 27, 27] [1, 1, 1, 1] : tensor<1x256x27x27xf32> into tensor<1x512x27x27xf32>
    %117 = "tosa.transpose"(%inserted_slice_12, %9) : (tensor<1x512x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x512xf32>
    ml_program.global_store @global134 = %117 : tensor<1x27x27x512xf32>
    %118 = "tosa.max_pool2d"(%117) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x27x27x512xf32>) -> tensor<1x13x13x512xf32>
    ml_program.global_store @global135 = %118 : tensor<1x13x13x512xf32>
    %119 = "tosa.conv2d"(%118, %12, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x13x13x512xf32>, tensor<64x1x1x512xf32>, tensor<64xf32>) -> tensor<1x13x13x64xf32>
    %120 = "tosa.transpose"(%119, %10) : (tensor<1x13x13x64xf32>, tensor<4xi32>) -> tensor<1x64x13x13xf32>
    ml_program.global_store @global137 = %120 : tensor<1x64x13x13xf32>
    %121 = "tosa.clamp"(%120) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x13x13xf32>) -> tensor<1x64x13x13xf32>
    ml_program.global_store @global138 = %121 : tensor<1x64x13x13xf32>
    %122 = "tosa.transpose"(%121, %9) : (tensor<1x64x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x64xf32>
    %123 = "tosa.conv2d"(%122, %14, %1) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x13x13x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x13x13x256xf32>
    %124 = "tosa.transpose"(%123, %10) : (tensor<1x13x13x256xf32>, tensor<4xi32>) -> tensor<1x256x13x13xf32>
    ml_program.global_store @global141 = %124 : tensor<1x256x13x13xf32>
    %125 = "tosa.clamp"(%124) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    ml_program.global_store @global142 = %125 : tensor<1x256x13x13xf32>
    %126 = "tosa.conv2d"(%122, %13, %1) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x13x13x64xf32>, tensor<256x3x3x64xf32>, tensor<256xf32>) -> tensor<1x13x13x256xf32>
    %127 = "tosa.transpose"(%126, %10) : (tensor<1x13x13x256xf32>, tensor<4xi32>) -> tensor<1x256x13x13xf32>
    ml_program.global_store @global144 = %127 : tensor<1x256x13x13xf32>
    %128 = "tosa.clamp"(%127) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    ml_program.global_store @global145 = %128 : tensor<1x256x13x13xf32>
    %129 = tensor.empty() : tensor<1x512x13x13xf32>
    %inserted_slice_13 = tensor.insert_slice %125 into %129[0, 0, 0, 0] [1, 256, 13, 13] [1, 1, 1, 1] : tensor<1x256x13x13xf32> into tensor<1x512x13x13xf32>
    %inserted_slice_14 = tensor.insert_slice %128 into %inserted_slice_13[0, 256, 0, 0] [1, 256, 13, 13] [1, 1, 1, 1] : tensor<1x256x13x13xf32> into tensor<1x512x13x13xf32>
    %130 = "tosa.transpose"(%inserted_slice_14, %9) : (tensor<1x512x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x512xf32>
    %131 = "tosa.conv2d"(%130, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x13x13x512xf32>, tensor<1000x1x1x512xf32>, tensor<1000xf32>) -> tensor<1x13x13x1000xf32>
    %132 = "tosa.transpose"(%131, %10) : (tensor<1x13x13x1000xf32>, tensor<4xi32>) -> tensor<1x1000x13x13xf32>
    ml_program.global_store @global151 = %132 : tensor<1x1000x13x13xf32>
    %133 = "tosa.clamp"(%132) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1000x13x13xf32>) -> tensor<1x1000x13x13xf32>
    ml_program.global_store @global152 = %133 : tensor<1x1000x13x13xf32>
    %134 = "tosa.transpose"(%133, %9) : (tensor<1x1000x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x1000xf32>
    %135 = "tosa.avg_pool2d"(%134) {acc_type = f32, kernel = array<i64: 13, 13>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x13x13x1000xf32>) -> tensor<1x1x1x1000xf32>
    %136 = "tosa.reshape"(%135) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1x1000xf32>) -> tensor<1x1000xf32>
    return %136 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %0 = "tosa.const"() {value = dense<5.917160e-03> : tensor<1x13x13x1000xf32>} : () -> tensor<1x13x13x1000xf32>
    %1 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %3 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4 = "tosa.const"() {value = dense<[3, 1, 2, 0]> : tensor<4xi64>} : () -> tensor<4xi64>
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant -3.40282347E+38 : f32
    %5 = ml_program.global_load @global12 : tensor<1000x1x1x512xf32>
    %6 = ml_program.global_load @global13 : tensor<64x1x1x512xf32>
    %7 = ml_program.global_load @global14 : tensor<256x3x3x64xf32>
    %8 = ml_program.global_load @global15 : tensor<256x1x1x64xf32>
    %9 = ml_program.global_load @global16 : tensor<64x1x1x384xf32>
    %10 = ml_program.global_load @global17 : tensor<48x1x1x384xf32>
    %11 = ml_program.global_load @global18 : tensor<192x3x3x48xf32>
    %12 = ml_program.global_load @global19 : tensor<192x1x1x48xf32>
    %13 = ml_program.global_load @global20 : tensor<48x1x1x256xf32>
    %14 = ml_program.global_load @global21 : tensor<32x1x1x256xf32>
    %15 = ml_program.global_load @global22 : tensor<128x3x3x32xf32>
    %16 = ml_program.global_load @global23 : tensor<128x1x1x32xf32>
    %17 = ml_program.global_load @global24 : tensor<32x1x1x128xf32>
    %18 = ml_program.global_load @global25 : tensor<16x1x1x128xf32>
    %19 = ml_program.global_load @global26 : tensor<64x3x3x16xf32>
    %20 = ml_program.global_load @global27 : tensor<64x1x1x16xf32>
    %21 = ml_program.global_load @global28 : tensor<16x1x1x96xf32>
    %22 = ml_program.global_load @global29 : tensor<96x7x7x3xf32>
    %23 = ml_program.global_load @global32 : tensor<1x96x109x109xf32>
    %24 = ml_program.global_load @global33 : tensor<1x96x109x109xf32>
    %25 = ml_program.global_load @global34 : tensor<1x109x109x96xf32>
    %26 = ml_program.global_load @global35 : tensor<1x54x54x96xf32>
    %27 = ml_program.global_load @global37 : tensor<1x16x54x54xf32>
    %28 = ml_program.global_load @global38 : tensor<1x16x54x54xf32>
    %29 = ml_program.global_load @global41 : tensor<1x64x54x54xf32>
    %30 = ml_program.global_load @global42 : tensor<1x64x54x54xf32>
    %31 = ml_program.global_load @global44 : tensor<1x64x54x54xf32>
    %32 = ml_program.global_load @global45 : tensor<1x64x54x54xf32>
    %33 = ml_program.global_load @global51 : tensor<1x16x54x54xf32>
    %34 = ml_program.global_load @global52 : tensor<1x16x54x54xf32>
    %35 = ml_program.global_load @global55 : tensor<1x64x54x54xf32>
    %36 = ml_program.global_load @global56 : tensor<1x64x54x54xf32>
    %37 = ml_program.global_load @global58 : tensor<1x64x54x54xf32>
    %38 = ml_program.global_load @global59 : tensor<1x64x54x54xf32>
    %39 = ml_program.global_load @global65 : tensor<1x32x54x54xf32>
    %40 = ml_program.global_load @global66 : tensor<1x32x54x54xf32>
    %41 = ml_program.global_load @global69 : tensor<1x128x54x54xf32>
    %42 = ml_program.global_load @global70 : tensor<1x128x54x54xf32>
    %43 = ml_program.global_load @global72 : tensor<1x128x54x54xf32>
    %44 = ml_program.global_load @global73 : tensor<1x128x54x54xf32>
    %45 = ml_program.global_load @global77 : tensor<1x54x54x256xf32>
    %46 = ml_program.global_load @global78 : tensor<1x27x27x256xf32>
    %47 = ml_program.global_load @global80 : tensor<1x32x27x27xf32>
    %48 = ml_program.global_load @global81 : tensor<1x32x27x27xf32>
    %49 = ml_program.global_load @global84 : tensor<1x128x27x27xf32>
    %50 = ml_program.global_load @global85 : tensor<1x128x27x27xf32>
    %51 = ml_program.global_load @global87 : tensor<1x128x27x27xf32>
    %52 = ml_program.global_load @global88 : tensor<1x128x27x27xf32>
    %53 = ml_program.global_load @global94 : tensor<1x48x27x27xf32>
    %54 = ml_program.global_load @global95 : tensor<1x48x27x27xf32>
    %55 = ml_program.global_load @global98 : tensor<1x192x27x27xf32>
    %56 = ml_program.global_load @global99 : tensor<1x192x27x27xf32>
    %57 = ml_program.global_load @global101 : tensor<1x192x27x27xf32>
    %58 = ml_program.global_load @global102 : tensor<1x192x27x27xf32>
    %59 = ml_program.global_load @global108 : tensor<1x48x27x27xf32>
    %60 = ml_program.global_load @global109 : tensor<1x48x27x27xf32>
    %61 = ml_program.global_load @global112 : tensor<1x192x27x27xf32>
    %62 = ml_program.global_load @global113 : tensor<1x192x27x27xf32>
    %63 = ml_program.global_load @global115 : tensor<1x192x27x27xf32>
    %64 = ml_program.global_load @global116 : tensor<1x192x27x27xf32>
    %65 = ml_program.global_load @global122 : tensor<1x64x27x27xf32>
    %66 = ml_program.global_load @global123 : tensor<1x64x27x27xf32>
    %67 = ml_program.global_load @global126 : tensor<1x256x27x27xf32>
    %68 = ml_program.global_load @global127 : tensor<1x256x27x27xf32>
    %69 = ml_program.global_load @global129 : tensor<1x256x27x27xf32>
    %70 = ml_program.global_load @global130 : tensor<1x256x27x27xf32>
    %71 = ml_program.global_load @global134 : tensor<1x27x27x512xf32>
    %72 = ml_program.global_load @global135 : tensor<1x13x13x512xf32>
    %73 = ml_program.global_load @global137 : tensor<1x64x13x13xf32>
    %74 = ml_program.global_load @global138 : tensor<1x64x13x13xf32>
    %75 = ml_program.global_load @global141 : tensor<1x256x13x13xf32>
    %76 = ml_program.global_load @global142 : tensor<1x256x13x13xf32>
    %77 = ml_program.global_load @global144 : tensor<1x256x13x13xf32>
    %78 = ml_program.global_load @global145 : tensor<1x256x13x13xf32>
    %79 = ml_program.global_load @global151 : tensor<1x1000x13x13xf32>
    %80 = ml_program.global_load @global152 : tensor<1x1000x13x13xf32>
    %81 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1x1000xf32>
    %82 = "tosa.mul"(%81, %0) {shift = 0 : i8} : (tensor<1x1x1x1000xf32>, tensor<1x13x13x1000xf32>) -> tensor<1x13x13x1000xf32>
    %83 = "tosa.transpose"(%82, %1) : (tensor<1x13x13x1000xf32>, tensor<4xi32>) -> tensor<1x1000x13x13xf32>
    %84 = "tosa.equal"(%79, %80) : (tensor<1x1000x13x13xf32>, tensor<1x1000x13x13xf32>) -> tensor<1x1000x13x13xi1>
    %85 = "tosa.select"(%84, %83, %2) : (tensor<1x1000x13x13xi1>, tensor<1x1000x13x13xf32>, tensor<f32>) -> tensor<1x1000x13x13xf32>
    %86 = "tosa.transpose"(%85, %3) : (tensor<1x1000x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x1000xf32>
    %87 = "tosa.transpose"(%5, %4) : (tensor<1000x1x1x512xf32>, tensor<4xi64>) -> tensor<512x1x1x1000xf32>
    %88 = tensor.empty() : tensor<512xf32>
    %89 = "tosa.transpose_conv2d"(%86, %87, %88) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 13, 13, 512>, stride = array<i64: 1, 1>} : (tensor<1x13x13x1000xf32>, tensor<512x1x1x1000xf32>, tensor<512xf32>) -> tensor<1x13x13x512xf32>
    %90 = "tosa.transpose"(%89, %1) : (tensor<1x13x13x512xf32>, tensor<4xi32>) -> tensor<1x512x13x13xf32>
    %extracted_slice = tensor.extract_slice %90[0, 256, 0, 0] [1, 256, 13, 13] [1, 1, 1, 1] : tensor<1x512x13x13xf32> to tensor<1x256x13x13xf32>
    %extracted_slice_1 = tensor.extract_slice %90[0, 0, 0, 0] [1, 256, 13, 13] [1, 1, 1, 1] : tensor<1x512x13x13xf32> to tensor<1x256x13x13xf32>
    %91 = "tosa.equal"(%77, %78) : (tensor<1x256x13x13xf32>, tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xi1>
    %92 = "tosa.select"(%91, %extracted_slice, %2) : (tensor<1x256x13x13xi1>, tensor<1x256x13x13xf32>, tensor<f32>) -> tensor<1x256x13x13xf32>
    %93 = "tosa.transpose"(%92, %3) : (tensor<1x256x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x256xf32>
    %94 = "tosa.transpose"(%7, %4) : (tensor<256x3x3x64xf32>, tensor<4xi64>) -> tensor<64x3x3x256xf32>
    %95 = tensor.empty() : tensor<64xf32>
    %96 = "tosa.transpose_conv2d"(%93, %94, %95) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 13, 13, 64>, stride = array<i64: 1, 1>} : (tensor<1x13x13x256xf32>, tensor<64x3x3x256xf32>, tensor<64xf32>) -> tensor<1x13x13x64xf32>
    %97 = "tosa.equal"(%75, %76) : (tensor<1x256x13x13xf32>, tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xi1>
    %98 = "tosa.select"(%97, %extracted_slice_1, %2) : (tensor<1x256x13x13xi1>, tensor<1x256x13x13xf32>, tensor<f32>) -> tensor<1x256x13x13xf32>
    %99 = "tosa.transpose"(%98, %3) : (tensor<1x256x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x256xf32>
    %100 = "tosa.transpose"(%8, %4) : (tensor<256x1x1x64xf32>, tensor<4xi64>) -> tensor<64x1x1x256xf32>
    %101 = "tosa.transpose_conv2d"(%99, %100, %95) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 13, 13, 64>, stride = array<i64: 1, 1>} : (tensor<1x13x13x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x13x13x64xf32>
    %102 = "tosa.add"(%96, %101) : (tensor<1x13x13x64xf32>, tensor<1x13x13x64xf32>) -> tensor<1x13x13x64xf32>
    %103 = "tosa.transpose"(%102, %1) : (tensor<1x13x13x64xf32>, tensor<4xi32>) -> tensor<1x64x13x13xf32>
    %104 = "tosa.equal"(%73, %74) : (tensor<1x64x13x13xf32>, tensor<1x64x13x13xf32>) -> tensor<1x64x13x13xi1>
    %105 = "tosa.select"(%104, %103, %2) : (tensor<1x64x13x13xi1>, tensor<1x64x13x13xf32>, tensor<f32>) -> tensor<1x64x13x13xf32>
    %106 = "tosa.transpose"(%105, %3) : (tensor<1x64x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x64xf32>
    %107 = "tosa.transpose"(%6, %4) : (tensor<64x1x1x512xf32>, tensor<4xi64>) -> tensor<512x1x1x64xf32>
    %108 = "tosa.transpose_conv2d"(%106, %107, %88) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 13, 13, 512>, stride = array<i64: 1, 1>} : (tensor<1x13x13x64xf32>, tensor<512x1x1x64xf32>, tensor<512xf32>) -> tensor<1x13x13x512xf32>
    %109 = tensor.empty() : tensor<1x27x27x512xf32>
    %110 = tensor.empty() : tensor<3x3xf32>
    %111 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%71, %110, %72, %108 : tensor<1x27x27x512xf32>, tensor<3x3xf32>, tensor<1x13x13x512xf32>, tensor<1x13x13x512xf32>) outs(%109 : tensor<1x27x27x512xf32>) {
    ^bb0(%in: f32, %in_17: f32, %in_18: f32, %in_19: f32, %out: f32):
      %249 = arith.cmpf oge, %in, %in_18 : f32
      %250 = arith.select %249, %in_19, %cst : f32
      %251 = arith.addf %out, %250 : f32
      linalg.yield %251 : f32
    } -> tensor<1x27x27x512xf32>
    %112 = "tosa.transpose"(%111, %1) : (tensor<1x27x27x512xf32>, tensor<4xi32>) -> tensor<1x512x27x27xf32>
    %extracted_slice_2 = tensor.extract_slice %112[0, 256, 0, 0] [1, 256, 27, 27] [1, 1, 1, 1] : tensor<1x512x27x27xf32> to tensor<1x256x27x27xf32>
    %extracted_slice_3 = tensor.extract_slice %112[0, 0, 0, 0] [1, 256, 27, 27] [1, 1, 1, 1] : tensor<1x512x27x27xf32> to tensor<1x256x27x27xf32>
    %113 = "tosa.equal"(%69, %70) : (tensor<1x256x27x27xf32>, tensor<1x256x27x27xf32>) -> tensor<1x256x27x27xi1>
    %114 = "tosa.select"(%113, %extracted_slice_2, %2) : (tensor<1x256x27x27xi1>, tensor<1x256x27x27xf32>, tensor<f32>) -> tensor<1x256x27x27xf32>
    %115 = "tosa.transpose"(%114, %3) : (tensor<1x256x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x256xf32>
    %116 = "tosa.transpose_conv2d"(%115, %94, %95) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 27, 27, 64>, stride = array<i64: 1, 1>} : (tensor<1x27x27x256xf32>, tensor<64x3x3x256xf32>, tensor<64xf32>) -> tensor<1x27x27x64xf32>
    %117 = "tosa.equal"(%67, %68) : (tensor<1x256x27x27xf32>, tensor<1x256x27x27xf32>) -> tensor<1x256x27x27xi1>
    %118 = "tosa.select"(%117, %extracted_slice_3, %2) : (tensor<1x256x27x27xi1>, tensor<1x256x27x27xf32>, tensor<f32>) -> tensor<1x256x27x27xf32>
    %119 = "tosa.transpose"(%118, %3) : (tensor<1x256x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x256xf32>
    %120 = "tosa.transpose_conv2d"(%119, %100, %95) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 27, 27, 64>, stride = array<i64: 1, 1>} : (tensor<1x27x27x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x27x27x64xf32>
    %121 = "tosa.add"(%116, %120) : (tensor<1x27x27x64xf32>, tensor<1x27x27x64xf32>) -> tensor<1x27x27x64xf32>
    %122 = "tosa.transpose"(%121, %1) : (tensor<1x27x27x64xf32>, tensor<4xi32>) -> tensor<1x64x27x27xf32>
    %123 = "tosa.equal"(%65, %66) : (tensor<1x64x27x27xf32>, tensor<1x64x27x27xf32>) -> tensor<1x64x27x27xi1>
    %124 = "tosa.select"(%123, %122, %2) : (tensor<1x64x27x27xi1>, tensor<1x64x27x27xf32>, tensor<f32>) -> tensor<1x64x27x27xf32>
    %125 = "tosa.transpose"(%124, %3) : (tensor<1x64x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x64xf32>
    %126 = "tosa.transpose"(%9, %4) : (tensor<64x1x1x384xf32>, tensor<4xi64>) -> tensor<384x1x1x64xf32>
    %127 = tensor.empty() : tensor<384xf32>
    %128 = "tosa.transpose_conv2d"(%125, %126, %127) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 27, 27, 384>, stride = array<i64: 1, 1>} : (tensor<1x27x27x64xf32>, tensor<384x1x1x64xf32>, tensor<384xf32>) -> tensor<1x27x27x384xf32>
    %129 = "tosa.transpose"(%128, %1) : (tensor<1x27x27x384xf32>, tensor<4xi32>) -> tensor<1x384x27x27xf32>
    %extracted_slice_4 = tensor.extract_slice %129[0, 192, 0, 0] [1, 192, 27, 27] [1, 1, 1, 1] : tensor<1x384x27x27xf32> to tensor<1x192x27x27xf32>
    %extracted_slice_5 = tensor.extract_slice %129[0, 0, 0, 0] [1, 192, 27, 27] [1, 1, 1, 1] : tensor<1x384x27x27xf32> to tensor<1x192x27x27xf32>
    %130 = "tosa.equal"(%63, %64) : (tensor<1x192x27x27xf32>, tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xi1>
    %131 = "tosa.select"(%130, %extracted_slice_4, %2) : (tensor<1x192x27x27xi1>, tensor<1x192x27x27xf32>, tensor<f32>) -> tensor<1x192x27x27xf32>
    %132 = "tosa.transpose"(%131, %3) : (tensor<1x192x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x192xf32>
    %133 = "tosa.transpose"(%11, %4) : (tensor<192x3x3x48xf32>, tensor<4xi64>) -> tensor<48x3x3x192xf32>
    %134 = tensor.empty() : tensor<48xf32>
    %135 = "tosa.transpose_conv2d"(%132, %133, %134) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 27, 27, 48>, stride = array<i64: 1, 1>} : (tensor<1x27x27x192xf32>, tensor<48x3x3x192xf32>, tensor<48xf32>) -> tensor<1x27x27x48xf32>
    %136 = "tosa.equal"(%61, %62) : (tensor<1x192x27x27xf32>, tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xi1>
    %137 = "tosa.select"(%136, %extracted_slice_5, %2) : (tensor<1x192x27x27xi1>, tensor<1x192x27x27xf32>, tensor<f32>) -> tensor<1x192x27x27xf32>
    %138 = "tosa.transpose"(%137, %3) : (tensor<1x192x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x192xf32>
    %139 = "tosa.transpose"(%12, %4) : (tensor<192x1x1x48xf32>, tensor<4xi64>) -> tensor<48x1x1x192xf32>
    %140 = "tosa.transpose_conv2d"(%138, %139, %134) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 27, 27, 48>, stride = array<i64: 1, 1>} : (tensor<1x27x27x192xf32>, tensor<48x1x1x192xf32>, tensor<48xf32>) -> tensor<1x27x27x48xf32>
    %141 = "tosa.add"(%135, %140) : (tensor<1x27x27x48xf32>, tensor<1x27x27x48xf32>) -> tensor<1x27x27x48xf32>
    %142 = "tosa.transpose"(%141, %1) : (tensor<1x27x27x48xf32>, tensor<4xi32>) -> tensor<1x48x27x27xf32>
    %143 = "tosa.equal"(%59, %60) : (tensor<1x48x27x27xf32>, tensor<1x48x27x27xf32>) -> tensor<1x48x27x27xi1>
    %144 = "tosa.select"(%143, %142, %2) : (tensor<1x48x27x27xi1>, tensor<1x48x27x27xf32>, tensor<f32>) -> tensor<1x48x27x27xf32>
    %145 = "tosa.transpose"(%144, %3) : (tensor<1x48x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x48xf32>
    %146 = "tosa.transpose"(%10, %4) : (tensor<48x1x1x384xf32>, tensor<4xi64>) -> tensor<384x1x1x48xf32>
    %147 = "tosa.transpose_conv2d"(%145, %146, %127) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 27, 27, 384>, stride = array<i64: 1, 1>} : (tensor<1x27x27x48xf32>, tensor<384x1x1x48xf32>, tensor<384xf32>) -> tensor<1x27x27x384xf32>
    %148 = "tosa.transpose"(%147, %1) : (tensor<1x27x27x384xf32>, tensor<4xi32>) -> tensor<1x384x27x27xf32>
    %extracted_slice_6 = tensor.extract_slice %148[0, 192, 0, 0] [1, 192, 27, 27] [1, 1, 1, 1] : tensor<1x384x27x27xf32> to tensor<1x192x27x27xf32>
    %extracted_slice_7 = tensor.extract_slice %148[0, 0, 0, 0] [1, 192, 27, 27] [1, 1, 1, 1] : tensor<1x384x27x27xf32> to tensor<1x192x27x27xf32>
    %149 = "tosa.equal"(%57, %58) : (tensor<1x192x27x27xf32>, tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xi1>
    %150 = "tosa.select"(%149, %extracted_slice_6, %2) : (tensor<1x192x27x27xi1>, tensor<1x192x27x27xf32>, tensor<f32>) -> tensor<1x192x27x27xf32>
    %151 = "tosa.transpose"(%150, %3) : (tensor<1x192x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x192xf32>
    %152 = "tosa.transpose_conv2d"(%151, %133, %134) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 27, 27, 48>, stride = array<i64: 1, 1>} : (tensor<1x27x27x192xf32>, tensor<48x3x3x192xf32>, tensor<48xf32>) -> tensor<1x27x27x48xf32>
    %153 = "tosa.equal"(%55, %56) : (tensor<1x192x27x27xf32>, tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xi1>
    %154 = "tosa.select"(%153, %extracted_slice_7, %2) : (tensor<1x192x27x27xi1>, tensor<1x192x27x27xf32>, tensor<f32>) -> tensor<1x192x27x27xf32>
    %155 = "tosa.transpose"(%154, %3) : (tensor<1x192x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x192xf32>
    %156 = "tosa.transpose_conv2d"(%155, %139, %134) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 27, 27, 48>, stride = array<i64: 1, 1>} : (tensor<1x27x27x192xf32>, tensor<48x1x1x192xf32>, tensor<48xf32>) -> tensor<1x27x27x48xf32>
    %157 = "tosa.add"(%152, %156) : (tensor<1x27x27x48xf32>, tensor<1x27x27x48xf32>) -> tensor<1x27x27x48xf32>
    %158 = "tosa.transpose"(%157, %1) : (tensor<1x27x27x48xf32>, tensor<4xi32>) -> tensor<1x48x27x27xf32>
    %159 = "tosa.equal"(%53, %54) : (tensor<1x48x27x27xf32>, tensor<1x48x27x27xf32>) -> tensor<1x48x27x27xi1>
    %160 = "tosa.select"(%159, %158, %2) : (tensor<1x48x27x27xi1>, tensor<1x48x27x27xf32>, tensor<f32>) -> tensor<1x48x27x27xf32>
    %161 = "tosa.transpose"(%160, %3) : (tensor<1x48x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x48xf32>
    %162 = "tosa.transpose"(%13, %4) : (tensor<48x1x1x256xf32>, tensor<4xi64>) -> tensor<256x1x1x48xf32>
    %163 = tensor.empty() : tensor<256xf32>
    %164 = "tosa.transpose_conv2d"(%161, %162, %163) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 27, 27, 256>, stride = array<i64: 1, 1>} : (tensor<1x27x27x48xf32>, tensor<256x1x1x48xf32>, tensor<256xf32>) -> tensor<1x27x27x256xf32>
    %165 = "tosa.transpose"(%164, %1) : (tensor<1x27x27x256xf32>, tensor<4xi32>) -> tensor<1x256x27x27xf32>
    %extracted_slice_8 = tensor.extract_slice %165[0, 128, 0, 0] [1, 128, 27, 27] [1, 1, 1, 1] : tensor<1x256x27x27xf32> to tensor<1x128x27x27xf32>
    %extracted_slice_9 = tensor.extract_slice %165[0, 0, 0, 0] [1, 128, 27, 27] [1, 1, 1, 1] : tensor<1x256x27x27xf32> to tensor<1x128x27x27xf32>
    %166 = "tosa.equal"(%51, %52) : (tensor<1x128x27x27xf32>, tensor<1x128x27x27xf32>) -> tensor<1x128x27x27xi1>
    %167 = "tosa.select"(%166, %extracted_slice_8, %2) : (tensor<1x128x27x27xi1>, tensor<1x128x27x27xf32>, tensor<f32>) -> tensor<1x128x27x27xf32>
    %168 = "tosa.transpose"(%167, %3) : (tensor<1x128x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x128xf32>
    %169 = "tosa.transpose"(%15, %4) : (tensor<128x3x3x32xf32>, tensor<4xi64>) -> tensor<32x3x3x128xf32>
    %170 = tensor.empty() : tensor<32xf32>
    %171 = "tosa.transpose_conv2d"(%168, %169, %170) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 27, 27, 32>, stride = array<i64: 1, 1>} : (tensor<1x27x27x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x27x27x32xf32>
    %172 = "tosa.equal"(%49, %50) : (tensor<1x128x27x27xf32>, tensor<1x128x27x27xf32>) -> tensor<1x128x27x27xi1>
    %173 = "tosa.select"(%172, %extracted_slice_9, %2) : (tensor<1x128x27x27xi1>, tensor<1x128x27x27xf32>, tensor<f32>) -> tensor<1x128x27x27xf32>
    %174 = "tosa.transpose"(%173, %3) : (tensor<1x128x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x128xf32>
    %175 = "tosa.transpose"(%16, %4) : (tensor<128x1x1x32xf32>, tensor<4xi64>) -> tensor<32x1x1x128xf32>
    %176 = "tosa.transpose_conv2d"(%174, %175, %170) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 27, 27, 32>, stride = array<i64: 1, 1>} : (tensor<1x27x27x128xf32>, tensor<32x1x1x128xf32>, tensor<32xf32>) -> tensor<1x27x27x32xf32>
    %177 = "tosa.add"(%171, %176) : (tensor<1x27x27x32xf32>, tensor<1x27x27x32xf32>) -> tensor<1x27x27x32xf32>
    %178 = "tosa.transpose"(%177, %1) : (tensor<1x27x27x32xf32>, tensor<4xi32>) -> tensor<1x32x27x27xf32>
    %179 = "tosa.equal"(%47, %48) : (tensor<1x32x27x27xf32>, tensor<1x32x27x27xf32>) -> tensor<1x32x27x27xi1>
    %180 = "tosa.select"(%179, %178, %2) : (tensor<1x32x27x27xi1>, tensor<1x32x27x27xf32>, tensor<f32>) -> tensor<1x32x27x27xf32>
    %181 = "tosa.transpose"(%180, %3) : (tensor<1x32x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x32xf32>
    %182 = "tosa.transpose"(%14, %4) : (tensor<32x1x1x256xf32>, tensor<4xi64>) -> tensor<256x1x1x32xf32>
    %183 = "tosa.transpose_conv2d"(%181, %182, %163) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 27, 27, 256>, stride = array<i64: 1, 1>} : (tensor<1x27x27x32xf32>, tensor<256x1x1x32xf32>, tensor<256xf32>) -> tensor<1x27x27x256xf32>
    %padded = tensor.pad %45 low[0, 0, 0, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x54x54x256xf32> to tensor<1x55x55x256xf32>
    %184 = tensor.empty() : tensor<1x55x55x256xf32>
    %185 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded, %110, %46, %183 : tensor<1x55x55x256xf32>, tensor<3x3xf32>, tensor<1x27x27x256xf32>, tensor<1x27x27x256xf32>) outs(%184 : tensor<1x55x55x256xf32>) {
    ^bb0(%in: f32, %in_17: f32, %in_18: f32, %in_19: f32, %out: f32):
      %249 = arith.cmpf oge, %in, %in_18 : f32
      %250 = arith.select %249, %in_19, %cst : f32
      %251 = arith.addf %out, %250 : f32
      linalg.yield %251 : f32
    } -> tensor<1x55x55x256xf32>
    %extracted_slice_10 = tensor.extract_slice %185[0, 0, 0, 0] [1, 54, 54, 256] [1, 1, 1, 1] : tensor<1x55x55x256xf32> to tensor<1x54x54x256xf32>
    %186 = "tosa.transpose"(%extracted_slice_10, %1) : (tensor<1x54x54x256xf32>, tensor<4xi32>) -> tensor<1x256x54x54xf32>
    %extracted_slice_11 = tensor.extract_slice %186[0, 128, 0, 0] [1, 128, 54, 54] [1, 1, 1, 1] : tensor<1x256x54x54xf32> to tensor<1x128x54x54xf32>
    %extracted_slice_12 = tensor.extract_slice %186[0, 0, 0, 0] [1, 128, 54, 54] [1, 1, 1, 1] : tensor<1x256x54x54xf32> to tensor<1x128x54x54xf32>
    %187 = "tosa.equal"(%43, %44) : (tensor<1x128x54x54xf32>, tensor<1x128x54x54xf32>) -> tensor<1x128x54x54xi1>
    %188 = "tosa.select"(%187, %extracted_slice_11, %2) : (tensor<1x128x54x54xi1>, tensor<1x128x54x54xf32>, tensor<f32>) -> tensor<1x128x54x54xf32>
    %189 = "tosa.transpose"(%188, %3) : (tensor<1x128x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x128xf32>
    %190 = "tosa.transpose_conv2d"(%189, %169, %170) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 54, 54, 32>, stride = array<i64: 1, 1>} : (tensor<1x54x54x128xf32>, tensor<32x3x3x128xf32>, tensor<32xf32>) -> tensor<1x54x54x32xf32>
    %191 = "tosa.equal"(%41, %42) : (tensor<1x128x54x54xf32>, tensor<1x128x54x54xf32>) -> tensor<1x128x54x54xi1>
    %192 = "tosa.select"(%191, %extracted_slice_12, %2) : (tensor<1x128x54x54xi1>, tensor<1x128x54x54xf32>, tensor<f32>) -> tensor<1x128x54x54xf32>
    %193 = "tosa.transpose"(%192, %3) : (tensor<1x128x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x128xf32>
    %194 = "tosa.transpose_conv2d"(%193, %175, %170) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 54, 54, 32>, stride = array<i64: 1, 1>} : (tensor<1x54x54x128xf32>, tensor<32x1x1x128xf32>, tensor<32xf32>) -> tensor<1x54x54x32xf32>
    %195 = "tosa.add"(%190, %194) : (tensor<1x54x54x32xf32>, tensor<1x54x54x32xf32>) -> tensor<1x54x54x32xf32>
    %196 = "tosa.transpose"(%195, %1) : (tensor<1x54x54x32xf32>, tensor<4xi32>) -> tensor<1x32x54x54xf32>
    %197 = "tosa.equal"(%39, %40) : (tensor<1x32x54x54xf32>, tensor<1x32x54x54xf32>) -> tensor<1x32x54x54xi1>
    %198 = "tosa.select"(%197, %196, %2) : (tensor<1x32x54x54xi1>, tensor<1x32x54x54xf32>, tensor<f32>) -> tensor<1x32x54x54xf32>
    %199 = "tosa.transpose"(%198, %3) : (tensor<1x32x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x32xf32>
    %200 = "tosa.transpose"(%17, %4) : (tensor<32x1x1x128xf32>, tensor<4xi64>) -> tensor<128x1x1x32xf32>
    %201 = tensor.empty() : tensor<128xf32>
    %202 = "tosa.transpose_conv2d"(%199, %200, %201) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 54, 54, 128>, stride = array<i64: 1, 1>} : (tensor<1x54x54x32xf32>, tensor<128x1x1x32xf32>, tensor<128xf32>) -> tensor<1x54x54x128xf32>
    %203 = "tosa.transpose"(%202, %1) : (tensor<1x54x54x128xf32>, tensor<4xi32>) -> tensor<1x128x54x54xf32>
    %extracted_slice_13 = tensor.extract_slice %203[0, 64, 0, 0] [1, 64, 54, 54] [1, 1, 1, 1] : tensor<1x128x54x54xf32> to tensor<1x64x54x54xf32>
    %extracted_slice_14 = tensor.extract_slice %203[0, 0, 0, 0] [1, 64, 54, 54] [1, 1, 1, 1] : tensor<1x128x54x54xf32> to tensor<1x64x54x54xf32>
    %204 = "tosa.equal"(%37, %38) : (tensor<1x64x54x54xf32>, tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xi1>
    %205 = "tosa.select"(%204, %extracted_slice_13, %2) : (tensor<1x64x54x54xi1>, tensor<1x64x54x54xf32>, tensor<f32>) -> tensor<1x64x54x54xf32>
    %206 = "tosa.transpose"(%205, %3) : (tensor<1x64x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x64xf32>
    %207 = "tosa.transpose"(%19, %4) : (tensor<64x3x3x16xf32>, tensor<4xi64>) -> tensor<16x3x3x64xf32>
    %208 = tensor.empty() : tensor<16xf32>
    %209 = "tosa.transpose_conv2d"(%206, %207, %208) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 54, 54, 16>, stride = array<i64: 1, 1>} : (tensor<1x54x54x64xf32>, tensor<16x3x3x64xf32>, tensor<16xf32>) -> tensor<1x54x54x16xf32>
    %210 = "tosa.equal"(%35, %36) : (tensor<1x64x54x54xf32>, tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xi1>
    %211 = "tosa.select"(%210, %extracted_slice_14, %2) : (tensor<1x64x54x54xi1>, tensor<1x64x54x54xf32>, tensor<f32>) -> tensor<1x64x54x54xf32>
    %212 = "tosa.transpose"(%211, %3) : (tensor<1x64x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x64xf32>
    %213 = "tosa.transpose"(%20, %4) : (tensor<64x1x1x16xf32>, tensor<4xi64>) -> tensor<16x1x1x64xf32>
    %214 = "tosa.transpose_conv2d"(%212, %213, %208) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 54, 54, 16>, stride = array<i64: 1, 1>} : (tensor<1x54x54x64xf32>, tensor<16x1x1x64xf32>, tensor<16xf32>) -> tensor<1x54x54x16xf32>
    %215 = "tosa.add"(%209, %214) : (tensor<1x54x54x16xf32>, tensor<1x54x54x16xf32>) -> tensor<1x54x54x16xf32>
    %216 = "tosa.transpose"(%215, %1) : (tensor<1x54x54x16xf32>, tensor<4xi32>) -> tensor<1x16x54x54xf32>
    %217 = "tosa.equal"(%33, %34) : (tensor<1x16x54x54xf32>, tensor<1x16x54x54xf32>) -> tensor<1x16x54x54xi1>
    %218 = "tosa.select"(%217, %216, %2) : (tensor<1x16x54x54xi1>, tensor<1x16x54x54xf32>, tensor<f32>) -> tensor<1x16x54x54xf32>
    %219 = "tosa.transpose"(%218, %3) : (tensor<1x16x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x16xf32>
    %220 = "tosa.transpose"(%18, %4) : (tensor<16x1x1x128xf32>, tensor<4xi64>) -> tensor<128x1x1x16xf32>
    %221 = "tosa.transpose_conv2d"(%219, %220, %201) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 54, 54, 128>, stride = array<i64: 1, 1>} : (tensor<1x54x54x16xf32>, tensor<128x1x1x16xf32>, tensor<128xf32>) -> tensor<1x54x54x128xf32>
    %222 = "tosa.transpose"(%221, %1) : (tensor<1x54x54x128xf32>, tensor<4xi32>) -> tensor<1x128x54x54xf32>
    %extracted_slice_15 = tensor.extract_slice %222[0, 64, 0, 0] [1, 64, 54, 54] [1, 1, 1, 1] : tensor<1x128x54x54xf32> to tensor<1x64x54x54xf32>
    %extracted_slice_16 = tensor.extract_slice %222[0, 0, 0, 0] [1, 64, 54, 54] [1, 1, 1, 1] : tensor<1x128x54x54xf32> to tensor<1x64x54x54xf32>
    %223 = "tosa.equal"(%31, %32) : (tensor<1x64x54x54xf32>, tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xi1>
    %224 = "tosa.select"(%223, %extracted_slice_15, %2) : (tensor<1x64x54x54xi1>, tensor<1x64x54x54xf32>, tensor<f32>) -> tensor<1x64x54x54xf32>
    %225 = "tosa.transpose"(%224, %3) : (tensor<1x64x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x64xf32>
    %226 = "tosa.transpose_conv2d"(%225, %207, %208) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 54, 54, 16>, stride = array<i64: 1, 1>} : (tensor<1x54x54x64xf32>, tensor<16x3x3x64xf32>, tensor<16xf32>) -> tensor<1x54x54x16xf32>
    %227 = "tosa.equal"(%29, %30) : (tensor<1x64x54x54xf32>, tensor<1x64x54x54xf32>) -> tensor<1x64x54x54xi1>
    %228 = "tosa.select"(%227, %extracted_slice_16, %2) : (tensor<1x64x54x54xi1>, tensor<1x64x54x54xf32>, tensor<f32>) -> tensor<1x64x54x54xf32>
    %229 = "tosa.transpose"(%228, %3) : (tensor<1x64x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x64xf32>
    %230 = "tosa.transpose_conv2d"(%229, %213, %208) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 54, 54, 16>, stride = array<i64: 1, 1>} : (tensor<1x54x54x64xf32>, tensor<16x1x1x64xf32>, tensor<16xf32>) -> tensor<1x54x54x16xf32>
    %231 = "tosa.add"(%226, %230) : (tensor<1x54x54x16xf32>, tensor<1x54x54x16xf32>) -> tensor<1x54x54x16xf32>
    %232 = "tosa.transpose"(%231, %1) : (tensor<1x54x54x16xf32>, tensor<4xi32>) -> tensor<1x16x54x54xf32>
    %233 = "tosa.equal"(%27, %28) : (tensor<1x16x54x54xf32>, tensor<1x16x54x54xf32>) -> tensor<1x16x54x54xi1>
    %234 = "tosa.select"(%233, %232, %2) : (tensor<1x16x54x54xi1>, tensor<1x16x54x54xf32>, tensor<f32>) -> tensor<1x16x54x54xf32>
    %235 = "tosa.transpose"(%234, %3) : (tensor<1x16x54x54xf32>, tensor<4xi32>) -> tensor<1x54x54x16xf32>
    %236 = "tosa.transpose"(%21, %4) : (tensor<16x1x1x96xf32>, tensor<4xi64>) -> tensor<96x1x1x16xf32>
    %237 = tensor.empty() : tensor<96xf32>
    %238 = "tosa.transpose_conv2d"(%235, %236, %237) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 54, 54, 96>, stride = array<i64: 1, 1>} : (tensor<1x54x54x16xf32>, tensor<96x1x1x16xf32>, tensor<96xf32>) -> tensor<1x54x54x96xf32>
    %239 = tensor.empty() : tensor<1x109x109x96xf32>
    %240 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%25, %110, %26, %238 : tensor<1x109x109x96xf32>, tensor<3x3xf32>, tensor<1x54x54x96xf32>, tensor<1x54x54x96xf32>) outs(%239 : tensor<1x109x109x96xf32>) {
    ^bb0(%in: f32, %in_17: f32, %in_18: f32, %in_19: f32, %out: f32):
      %249 = arith.cmpf oge, %in, %in_18 : f32
      %250 = arith.select %249, %in_19, %cst : f32
      %251 = arith.addf %out, %250 : f32
      linalg.yield %251 : f32
    } -> tensor<1x109x109x96xf32>
    %241 = "tosa.transpose"(%240, %1) : (tensor<1x109x109x96xf32>, tensor<4xi32>) -> tensor<1x96x109x109xf32>
    %242 = "tosa.equal"(%23, %24) : (tensor<1x96x109x109xf32>, tensor<1x96x109x109xf32>) -> tensor<1x96x109x109xi1>
    %243 = "tosa.select"(%242, %241, %2) : (tensor<1x96x109x109xi1>, tensor<1x96x109x109xf32>, tensor<f32>) -> tensor<1x96x109x109xf32>
    %244 = "tosa.transpose"(%243, %3) : (tensor<1x96x109x109xf32>, tensor<4xi32>) -> tensor<1x109x109x96xf32>
    %245 = "tosa.transpose"(%22, %4) : (tensor<96x7x7x3xf32>, tensor<4xi64>) -> tensor<3x7x7x96xf32>
    %246 = tensor.empty() : tensor<3xf32>
    %247 = "tosa.transpose_conv2d"(%244, %245, %246) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 2, 2>} : (tensor<1x109x109x96xf32>, tensor<3x7x7x96xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %248 = "tosa.transpose"(%247, %1) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %248 : tensor<1x3x224x224xf32>
  }
}

