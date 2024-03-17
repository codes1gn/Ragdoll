#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "AlexNet"} {
  ml_program.global private mutable @global51 : tensor<1x4096xf32>
  ml_program.global private mutable @global50 : tensor<1x4096xf32>
  ml_program.global private mutable @global46 : tensor<1x4096xf32>
  ml_program.global private mutable @global45 : tensor<1x4096xf32>
  ml_program.global private mutable @global40 : tensor<1x6x6x256xf32>
  ml_program.global private mutable @global39 : tensor<1x13x13x256xf32>
  ml_program.global private mutable @global38 : tensor<1x256x13x13xf32>
  ml_program.global private mutable @global37 : tensor<1x256x13x13xf32>
  ml_program.global private mutable @global34 : tensor<1x256x13x13xf32>
  ml_program.global private mutable @global33 : tensor<1x256x13x13xf32>
  ml_program.global private mutable @global30 : tensor<1x384x13x13xf32>
  ml_program.global private mutable @global29 : tensor<1x384x13x13xf32>
  ml_program.global private mutable @global27 : tensor<1x13x13x192xf32>
  ml_program.global private mutable @global26 : tensor<1x27x27x192xf32>
  ml_program.global private mutable @global25 : tensor<1x192x27x27xf32>
  ml_program.global private mutable @global24 : tensor<1x192x27x27xf32>
  ml_program.global private mutable @global22 : tensor<1x27x27x64xf32>
  ml_program.global private mutable @global21 : tensor<1x55x55x64xf32>
  ml_program.global private mutable @global20 : tensor<1x64x55x55xf32>
  ml_program.global private mutable @global19 : tensor<1x64x55x55xf32>
  ml_program.global private mutable @global16 : tensor<64x11x11x3xf32>
  ml_program.global private mutable @global15 : tensor<192x5x5x64xf32>
  ml_program.global private mutable @global14 : tensor<384x3x3x192xf32>
  ml_program.global private mutable @global13 : tensor<256x3x3x384xf32>
  ml_program.global private mutable @global12 : tensor<256x3x3x256xf32>
  ml_program.global private mutable @global11 : tensor<1x9216x4096xf32>
  ml_program.global private mutable @global9 : tensor<1x4096x4096xf32>
  ml_program.global private mutable @global8 : tensor<1x4096x1000xf32>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256xf32>} : () -> tensor<256xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384xf32>} : () -> tensor<384xf32>
    %2 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192xf32>} : () -> tensor<192xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64xf32>} : () -> tensor<64xf32>
    %4 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000xf32>} : () -> tensor<1x1000xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096x1000xf32>} : () -> tensor<1x4096x1000xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096x4096xf32>} : () -> tensor<1x4096x4096xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096xf32>} : () -> tensor<1x4096xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x9216x4096xf32>} : () -> tensor<1x9216x4096xf32>
    %11 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x384xf32>} : () -> tensor<256x3x3x384xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x3x3x192xf32>} : () -> tensor<384x3x3x192xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x5x5x64xf32>} : () -> tensor<192x5x5x64xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x11x11x3xf32>} : () -> tensor<64x11x11x3xf32>
    ml_program.global_store @global8 = %7 : tensor<1x4096x1000xf32>
    ml_program.global_store @global9 = %8 : tensor<1x4096x4096xf32>
    ml_program.global_store @global11 = %10 : tensor<1x9216x4096xf32>
    ml_program.global_store @global12 = %11 : tensor<256x3x3x256xf32>
    ml_program.global_store @global13 = %12 : tensor<256x3x3x384xf32>
    ml_program.global_store @global14 = %13 : tensor<384x3x3x192xf32>
    ml_program.global_store @global15 = %14 : tensor<192x5x5x64xf32>
    ml_program.global_store @global16 = %15 : tensor<64x11x11x3xf32>
    %16 = "tosa.transpose"(%arg0, %4) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %17 = "tosa.conv2d"(%16, %15, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 4, 4>} : (tensor<1x224x224x3xf32>, tensor<64x11x11x3xf32>, tensor<64xf32>) -> tensor<1x55x55x64xf32>
    %18 = "tosa.transpose"(%17, %5) : (tensor<1x55x55x64xf32>, tensor<4xi32>) -> tensor<1x64x55x55xf32>
    ml_program.global_store @global19 = %18 : tensor<1x64x55x55xf32>
    %19 = "tosa.clamp"(%18) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x55x55xf32>) -> tensor<1x64x55x55xf32>
    ml_program.global_store @global20 = %19 : tensor<1x64x55x55xf32>
    %20 = "tosa.transpose"(%19, %4) : (tensor<1x64x55x55xf32>, tensor<4xi32>) -> tensor<1x55x55x64xf32>
    ml_program.global_store @global21 = %20 : tensor<1x55x55x64xf32>
    %21 = "tosa.max_pool2d"(%20) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x55x55x64xf32>) -> tensor<1x27x27x64xf32>
    ml_program.global_store @global22 = %21 : tensor<1x27x27x64xf32>
    %22 = "tosa.conv2d"(%21, %14, %2) {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 1, 1>} : (tensor<1x27x27x64xf32>, tensor<192x5x5x64xf32>, tensor<192xf32>) -> tensor<1x27x27x192xf32>
    %23 = "tosa.transpose"(%22, %5) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    ml_program.global_store @global24 = %23 : tensor<1x192x27x27xf32>
    %24 = "tosa.clamp"(%23) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    ml_program.global_store @global25 = %24 : tensor<1x192x27x27xf32>
    %25 = "tosa.transpose"(%24, %4) : (tensor<1x192x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x192xf32>
    ml_program.global_store @global26 = %25 : tensor<1x27x27x192xf32>
    %26 = "tosa.max_pool2d"(%25) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x27x27x192xf32>) -> tensor<1x13x13x192xf32>
    ml_program.global_store @global27 = %26 : tensor<1x13x13x192xf32>
    %27 = "tosa.conv2d"(%26, %13, %1) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x13x13x192xf32>, tensor<384x3x3x192xf32>, tensor<384xf32>) -> tensor<1x13x13x384xf32>
    %28 = "tosa.transpose"(%27, %5) : (tensor<1x13x13x384xf32>, tensor<4xi32>) -> tensor<1x384x13x13xf32>
    ml_program.global_store @global29 = %28 : tensor<1x384x13x13xf32>
    %29 = "tosa.clamp"(%28) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x13x13xf32>) -> tensor<1x384x13x13xf32>
    ml_program.global_store @global30 = %29 : tensor<1x384x13x13xf32>
    %30 = "tosa.transpose"(%29, %4) : (tensor<1x384x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x384xf32>
    %31 = "tosa.conv2d"(%30, %12, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x13x13x384xf32>, tensor<256x3x3x384xf32>, tensor<256xf32>) -> tensor<1x13x13x256xf32>
    %32 = "tosa.transpose"(%31, %5) : (tensor<1x13x13x256xf32>, tensor<4xi32>) -> tensor<1x256x13x13xf32>
    ml_program.global_store @global33 = %32 : tensor<1x256x13x13xf32>
    %33 = "tosa.clamp"(%32) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    ml_program.global_store @global34 = %33 : tensor<1x256x13x13xf32>
    %34 = "tosa.transpose"(%33, %4) : (tensor<1x256x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x256xf32>
    %35 = "tosa.conv2d"(%34, %11, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x13x13x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x13x13x256xf32>
    %36 = "tosa.transpose"(%35, %5) : (tensor<1x13x13x256xf32>, tensor<4xi32>) -> tensor<1x256x13x13xf32>
    ml_program.global_store @global37 = %36 : tensor<1x256x13x13xf32>
    %37 = "tosa.clamp"(%36) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    ml_program.global_store @global38 = %37 : tensor<1x256x13x13xf32>
    %38 = "tosa.transpose"(%37, %4) : (tensor<1x256x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x256xf32>
    ml_program.global_store @global39 = %38 : tensor<1x13x13x256xf32>
    %39 = "tosa.max_pool2d"(%38) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x13x13x256xf32>) -> tensor<1x6x6x256xf32>
    ml_program.global_store @global40 = %39 : tensor<1x6x6x256xf32>
    %40 = "tosa.transpose"(%39, %5) : (tensor<1x6x6x256xf32>, tensor<4xi32>) -> tensor<1x256x6x6xf32>
    %41 = "tosa.reshape"(%40) {new_shape = array<i64: 1, 1, 9216>} : (tensor<1x256x6x6xf32>) -> tensor<1x1x9216xf32>
    %42 = "tosa.matmul"(%41, %10) : (tensor<1x1x9216xf32>, tensor<1x9216x4096xf32>) -> tensor<1x1x4096xf32>
    %43 = "tosa.reshape"(%42) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %44 = "tosa.add"(%43, %9) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global45 = %44 : tensor<1x4096xf32>
    %45 = "tosa.clamp"(%44) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global46 = %45 : tensor<1x4096xf32>
    %46 = "tosa.reshape"(%45) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %47 = "tosa.matmul"(%46, %8) : (tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) -> tensor<1x1x4096xf32>
    %48 = "tosa.reshape"(%47) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %49 = "tosa.add"(%48, %9) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global50 = %49 : tensor<1x4096xf32>
    %50 = "tosa.clamp"(%49) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    ml_program.global_store @global51 = %50 : tensor<1x4096xf32>
    %51 = "tosa.reshape"(%50) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %52 = "tosa.matmul"(%51, %7) : (tensor<1x1x4096xf32>, tensor<1x4096x1000xf32>) -> tensor<1x1x1000xf32>
    %53 = "tosa.reshape"(%52) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %54 = "tosa.add"(%53, %6) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %54 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %0 = "tosa.const"() {value = dense<[0, 2, 1]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %2 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %cst = arith.constant 0.000000e+00 : f32
    %3 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4 = "tosa.const"() {value = dense<[3, 1, 2, 0]> : tensor<4xi64>} : () -> tensor<4xi64>
    %5 = ml_program.global_load @global8 : tensor<1x4096x1000xf32>
    %6 = ml_program.global_load @global9 : tensor<1x4096x4096xf32>
    %7 = ml_program.global_load @global11 : tensor<1x9216x4096xf32>
    %8 = ml_program.global_load @global12 : tensor<256x3x3x256xf32>
    %9 = ml_program.global_load @global13 : tensor<256x3x3x384xf32>
    %10 = ml_program.global_load @global14 : tensor<384x3x3x192xf32>
    %11 = ml_program.global_load @global15 : tensor<192x5x5x64xf32>
    %12 = ml_program.global_load @global16 : tensor<64x11x11x3xf32>
    %13 = ml_program.global_load @global19 : tensor<1x64x55x55xf32>
    %14 = ml_program.global_load @global20 : tensor<1x64x55x55xf32>
    %15 = ml_program.global_load @global21 : tensor<1x55x55x64xf32>
    %16 = ml_program.global_load @global22 : tensor<1x27x27x64xf32>
    %17 = ml_program.global_load @global24 : tensor<1x192x27x27xf32>
    %18 = ml_program.global_load @global25 : tensor<1x192x27x27xf32>
    %19 = ml_program.global_load @global26 : tensor<1x27x27x192xf32>
    %20 = ml_program.global_load @global27 : tensor<1x13x13x192xf32>
    %21 = ml_program.global_load @global29 : tensor<1x384x13x13xf32>
    %22 = ml_program.global_load @global30 : tensor<1x384x13x13xf32>
    %23 = ml_program.global_load @global33 : tensor<1x256x13x13xf32>
    %24 = ml_program.global_load @global34 : tensor<1x256x13x13xf32>
    %25 = ml_program.global_load @global37 : tensor<1x256x13x13xf32>
    %26 = ml_program.global_load @global38 : tensor<1x256x13x13xf32>
    %27 = ml_program.global_load @global39 : tensor<1x13x13x256xf32>
    %28 = ml_program.global_load @global40 : tensor<1x6x6x256xf32>
    %29 = ml_program.global_load @global45 : tensor<1x4096xf32>
    %30 = ml_program.global_load @global46 : tensor<1x4096xf32>
    %31 = ml_program.global_load @global50 : tensor<1x4096xf32>
    %32 = ml_program.global_load @global51 : tensor<1x4096xf32>
    %33 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %34 = "tosa.transpose"(%5, %0) : (tensor<1x4096x1000xf32>, tensor<3xi32>) -> tensor<1x1000x4096xf32>
    %35 = "tosa.matmul"(%33, %34) : (tensor<1x1x1000xf32>, tensor<1x1000x4096xf32>) -> tensor<1x1x4096xf32>
    %36 = "tosa.reshape"(%35) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %37 = "tosa.equal"(%31, %32) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %38 = "tosa.select"(%37, %36, %1) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %39 = "tosa.reshape"(%38) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %40 = "tosa.transpose"(%6, %0) : (tensor<1x4096x4096xf32>, tensor<3xi32>) -> tensor<1x4096x4096xf32>
    %41 = "tosa.matmul"(%39, %40) : (tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) -> tensor<1x1x4096xf32>
    %42 = "tosa.reshape"(%41) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %43 = "tosa.equal"(%29, %30) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %44 = "tosa.select"(%43, %42, %1) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %45 = "tosa.reshape"(%44) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %46 = "tosa.transpose"(%7, %0) : (tensor<1x9216x4096xf32>, tensor<3xi32>) -> tensor<1x4096x9216xf32>
    %47 = "tosa.matmul"(%45, %46) : (tensor<1x1x4096xf32>, tensor<1x4096x9216xf32>) -> tensor<1x1x9216xf32>
    %48 = "tosa.reshape"(%47) {new_shape = array<i64: 1, 256, 6, 6>} : (tensor<1x1x9216xf32>) -> tensor<1x256x6x6xf32>
    %49 = "tosa.transpose"(%48, %2) : (tensor<1x256x6x6xf32>, tensor<4xi32>) -> tensor<1x6x6x256xf32>
    %50 = tensor.empty() : tensor<1x13x13x256xf32>
    %51 = tensor.empty() : tensor<3x3xf32>
    %52 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%27, %51, %28, %49 : tensor<1x13x13x256xf32>, tensor<3x3xf32>, tensor<1x6x6x256xf32>, tensor<1x6x6x256xf32>) outs(%50 : tensor<1x13x13x256xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %93 = arith.cmpf oge, %in, %in_1 : f32
      %94 = arith.select %93, %in_2, %cst : f32
      %95 = arith.addf %out, %94 : f32
      linalg.yield %95 : f32
    } -> tensor<1x13x13x256xf32>
    %53 = "tosa.transpose"(%52, %3) : (tensor<1x13x13x256xf32>, tensor<4xi32>) -> tensor<1x256x13x13xf32>
    %54 = "tosa.equal"(%25, %26) : (tensor<1x256x13x13xf32>, tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xi1>
    %55 = "tosa.select"(%54, %53, %1) : (tensor<1x256x13x13xi1>, tensor<1x256x13x13xf32>, tensor<f32>) -> tensor<1x256x13x13xf32>
    %56 = "tosa.transpose"(%55, %2) : (tensor<1x256x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x256xf32>
    %57 = "tosa.transpose"(%8, %4) : (tensor<256x3x3x256xf32>, tensor<4xi64>) -> tensor<256x3x3x256xf32>
    %58 = tensor.empty() : tensor<256xf32>
    %59 = "tosa.transpose_conv2d"(%56, %57, %58) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 13, 13, 256>, stride = array<i64: 1, 1>} : (tensor<1x13x13x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x13x13x256xf32>
    %60 = "tosa.transpose"(%59, %3) : (tensor<1x13x13x256xf32>, tensor<4xi32>) -> tensor<1x256x13x13xf32>
    %61 = "tosa.equal"(%23, %24) : (tensor<1x256x13x13xf32>, tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xi1>
    %62 = "tosa.select"(%61, %60, %1) : (tensor<1x256x13x13xi1>, tensor<1x256x13x13xf32>, tensor<f32>) -> tensor<1x256x13x13xf32>
    %63 = "tosa.transpose"(%62, %2) : (tensor<1x256x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x256xf32>
    %64 = "tosa.transpose"(%9, %4) : (tensor<256x3x3x384xf32>, tensor<4xi64>) -> tensor<384x3x3x256xf32>
    %65 = tensor.empty() : tensor<384xf32>
    %66 = "tosa.transpose_conv2d"(%63, %64, %65) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 13, 13, 384>, stride = array<i64: 1, 1>} : (tensor<1x13x13x256xf32>, tensor<384x3x3x256xf32>, tensor<384xf32>) -> tensor<1x13x13x384xf32>
    %67 = "tosa.transpose"(%66, %3) : (tensor<1x13x13x384xf32>, tensor<4xi32>) -> tensor<1x384x13x13xf32>
    %68 = "tosa.equal"(%21, %22) : (tensor<1x384x13x13xf32>, tensor<1x384x13x13xf32>) -> tensor<1x384x13x13xi1>
    %69 = "tosa.select"(%68, %67, %1) : (tensor<1x384x13x13xi1>, tensor<1x384x13x13xf32>, tensor<f32>) -> tensor<1x384x13x13xf32>
    %70 = "tosa.transpose"(%69, %2) : (tensor<1x384x13x13xf32>, tensor<4xi32>) -> tensor<1x13x13x384xf32>
    %71 = "tosa.transpose"(%10, %4) : (tensor<384x3x3x192xf32>, tensor<4xi64>) -> tensor<192x3x3x384xf32>
    %72 = tensor.empty() : tensor<192xf32>
    %73 = "tosa.transpose_conv2d"(%70, %71, %72) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 13, 13, 192>, stride = array<i64: 1, 1>} : (tensor<1x13x13x384xf32>, tensor<192x3x3x384xf32>, tensor<192xf32>) -> tensor<1x13x13x192xf32>
    %74 = tensor.empty() : tensor<1x27x27x192xf32>
    %75 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%19, %51, %20, %73 : tensor<1x27x27x192xf32>, tensor<3x3xf32>, tensor<1x13x13x192xf32>, tensor<1x13x13x192xf32>) outs(%74 : tensor<1x27x27x192xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %93 = arith.cmpf oge, %in, %in_1 : f32
      %94 = arith.select %93, %in_2, %cst : f32
      %95 = arith.addf %out, %94 : f32
      linalg.yield %95 : f32
    } -> tensor<1x27x27x192xf32>
    %76 = "tosa.transpose"(%75, %3) : (tensor<1x27x27x192xf32>, tensor<4xi32>) -> tensor<1x192x27x27xf32>
    %77 = "tosa.equal"(%17, %18) : (tensor<1x192x27x27xf32>, tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xi1>
    %78 = "tosa.select"(%77, %76, %1) : (tensor<1x192x27x27xi1>, tensor<1x192x27x27xf32>, tensor<f32>) -> tensor<1x192x27x27xf32>
    %79 = "tosa.transpose"(%78, %2) : (tensor<1x192x27x27xf32>, tensor<4xi32>) -> tensor<1x27x27x192xf32>
    %80 = "tosa.transpose"(%11, %4) : (tensor<192x5x5x64xf32>, tensor<4xi64>) -> tensor<64x5x5x192xf32>
    %81 = tensor.empty() : tensor<64xf32>
    %82 = "tosa.transpose_conv2d"(%79, %80, %81) {out_pad = array<i64: -2, -2, -2, -2>, out_shape = array<i64: 1, 27, 27, 64>, stride = array<i64: 1, 1>} : (tensor<1x27x27x192xf32>, tensor<64x5x5x192xf32>, tensor<64xf32>) -> tensor<1x27x27x64xf32>
    %83 = tensor.empty() : tensor<1x55x55x64xf32>
    %84 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%15, %51, %16, %82 : tensor<1x55x55x64xf32>, tensor<3x3xf32>, tensor<1x27x27x64xf32>, tensor<1x27x27x64xf32>) outs(%83 : tensor<1x55x55x64xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %93 = arith.cmpf oge, %in, %in_1 : f32
      %94 = arith.select %93, %in_2, %cst : f32
      %95 = arith.addf %out, %94 : f32
      linalg.yield %95 : f32
    } -> tensor<1x55x55x64xf32>
    %85 = "tosa.transpose"(%84, %3) : (tensor<1x55x55x64xf32>, tensor<4xi32>) -> tensor<1x64x55x55xf32>
    %86 = "tosa.equal"(%13, %14) : (tensor<1x64x55x55xf32>, tensor<1x64x55x55xf32>) -> tensor<1x64x55x55xi1>
    %87 = "tosa.select"(%86, %85, %1) : (tensor<1x64x55x55xi1>, tensor<1x64x55x55xf32>, tensor<f32>) -> tensor<1x64x55x55xf32>
    %88 = "tosa.transpose"(%87, %2) : (tensor<1x64x55x55xf32>, tensor<4xi32>) -> tensor<1x55x55x64xf32>
    %89 = "tosa.transpose"(%12, %4) : (tensor<64x11x11x3xf32>, tensor<4xi64>) -> tensor<3x11x11x64xf32>
    %90 = tensor.empty() : tensor<3xf32>
    %91 = "tosa.transpose_conv2d"(%88, %89, %90) {out_pad = array<i64: -2, -2, -2, -2>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 4, 4>} : (tensor<1x55x55x64xf32>, tensor<3x11x11x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %92 = "tosa.transpose"(%91, %3) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %92 : tensor<1x3x224x224xf32>
  }
}

