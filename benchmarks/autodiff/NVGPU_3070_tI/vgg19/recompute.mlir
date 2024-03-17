#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>

module attributes {torch.debug_module_name = "VGG"} {
  ml_program.global private mutable @global0 : tensor<1x3x224x224xf32>

  func.func private @dropout(%t : tensor<1x4096xf32>) -> tensor<1x4096xf32> {
    %zeros = arith.constant dense<0.0> : tensor<1x4096xf32>
    %window = tensor.empty() : tensor<1x2048xf32>
    %res = linalg.generic {
      indexing_maps = [
        affine_map<(i, j) -> (i, 2 * j)>,
        affine_map<(i, j) -> (i, j)>,
        affine_map<(i, j) -> (i, 2 * j)>
      ],
      iterator_types = ["parallel", "parallel"]
    } ins(%t, %window : tensor<1x4096xf32>, tensor<1x2048xf32>) outs(%zeros : tensor<1x4096xf32>) {
      ^bb0(%i : f32, %j : f32, %k : f32):
        linalg.yield %i : f32
    } -> tensor<1x4096xf32>
    return %res : tensor<1x4096xf32>
  }
  
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x3xf32>} : () -> tensor<64x3x3x3xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x64xf32>} : () -> tensor<64x3x3x64xf32>
    %2 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x64xf32>} : () -> tensor<128x3x3x64xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x128xf32>} : () -> tensor<128x3x3x128xf32>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x128xf32>} : () -> tensor<256x3x3x128xf32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x256xf32>} : () -> tensor<512x3x3x256xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x512xf32>} : () -> tensor<512x3x3x512xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x25088x4096xf32>} : () -> tensor<1x25088x4096xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096xf32>} : () -> tensor<1x4096xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096x4096xf32>} : () -> tensor<1x4096x4096xf32>
    %11 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096x1000xf32>} : () -> tensor<1x4096x1000xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000xf32>} : () -> tensor<1x1000xf32>
    %13 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %14 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64xf32>} : () -> tensor<64xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128xf32>} : () -> tensor<128xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256xf32>} : () -> tensor<256xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512xf32>} : () -> tensor<512xf32>
    ml_program.global_store @global0 = %arg0 : tensor<1x3x224x224xf32>
    %19 = "tosa.transpose"(%arg0, %14) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %20 = "tosa.conv2d"(%19, %0, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x224x224x3xf32>, tensor<64x3x3x3xf32>, tensor<64xf32>) -> tensor<1x224x224x64xf32>
    %21 = "tosa.transpose"(%20, %13) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    %22 = "tosa.clamp"(%21) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    %23 = "tosa.transpose"(%22, %14) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    %24 = "tosa.conv2d"(%23, %1, %15) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x224x224x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x224x224x64xf32>
    %25 = "tosa.transpose"(%24, %13) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    %26 = "tosa.clamp"(%25) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    %27 = "tosa.transpose"(%26, %14) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    %28 = "tosa.max_pool2d"(%27) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x224x224x64xf32>) -> tensor<1x112x112x64xf32>
    %29 = "tosa.conv2d"(%28, %2, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x112x112x64xf32>, tensor<128x3x3x64xf32>, tensor<128xf32>) -> tensor<1x112x112x128xf32>
    %30 = "tosa.transpose"(%29, %13) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    %31 = "tosa.clamp"(%30) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    %32 = "tosa.transpose"(%31, %14) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    %33 = "tosa.conv2d"(%32, %3, %16) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x112x112x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x112x112x128xf32>
    %34 = "tosa.transpose"(%33, %13) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    %35 = "tosa.clamp"(%34) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    %36 = "tosa.transpose"(%35, %14) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    %37 = "tosa.max_pool2d"(%36) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x128xf32>) -> tensor<1x56x56x128xf32>
    %38 = "tosa.conv2d"(%37, %4, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x3x3x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %39 = "tosa.transpose"(%38, %13) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %40 = "tosa.clamp"(%39) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %41 = "tosa.transpose"(%40, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %42 = "tosa.conv2d"(%41, %5, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %43 = "tosa.transpose"(%42, %13) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %44 = "tosa.clamp"(%43) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %45 = "tosa.transpose"(%44, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %46 = "tosa.conv2d"(%45, %5, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %47 = "tosa.transpose"(%46, %13) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %48 = "tosa.clamp"(%47) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %49 = "tosa.transpose"(%48, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %50 = "tosa.conv2d"(%49, %5, %17) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %51 = "tosa.transpose"(%50, %13) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %52 = "tosa.clamp"(%51) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %53 = "tosa.transpose"(%52, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %54 = "tosa.max_pool2d"(%53) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>) -> tensor<1x28x28x256xf32>
    %55 = "tosa.conv2d"(%54, %6, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x3x3x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %56 = "tosa.transpose"(%55, %13) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %57 = "tosa.clamp"(%56) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %58 = "tosa.transpose"(%57, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %59 = "tosa.conv2d"(%58, %7, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %60 = "tosa.transpose"(%59, %13) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %61 = "tosa.clamp"(%60) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %62 = "tosa.transpose"(%61, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %63 = "tosa.conv2d"(%62, %7, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %64 = "tosa.transpose"(%63, %13) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %65 = "tosa.clamp"(%64) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %66 = "tosa.transpose"(%65, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %67 = "tosa.conv2d"(%66, %7, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %68 = "tosa.transpose"(%67, %13) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %69 = "tosa.clamp"(%68) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %70 = "tosa.transpose"(%69, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %71 = "tosa.max_pool2d"(%70) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>) -> tensor<1x14x14x512xf32>
    %72 = "tosa.conv2d"(%71, %7, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %73 = "tosa.transpose"(%72, %13) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %74 = "tosa.clamp"(%73) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %75 = "tosa.transpose"(%74, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %76 = "tosa.conv2d"(%75, %7, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %77 = "tosa.transpose"(%76, %13) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %78 = "tosa.clamp"(%77) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %79 = "tosa.transpose"(%78, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %80 = "tosa.conv2d"(%79, %7, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %81 = "tosa.transpose"(%80, %13) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %82 = "tosa.clamp"(%81) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %83 = "tosa.transpose"(%82, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %84 = "tosa.conv2d"(%83, %7, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %85 = "tosa.transpose"(%84, %13) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %86 = "tosa.clamp"(%85) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %87 = "tosa.transpose"(%86, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %88 = "tosa.max_pool2d"(%87) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>) -> tensor<1x7x7x512xf32>
    %89 = "tosa.transpose"(%88, %13) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %90 = "tosa.reshape"(%89) {new_shape = array<i64: 1, 1, 25088>} : (tensor<1x512x7x7xf32>) -> tensor<1x1x25088xf32>
    %91 = "tosa.matmul"(%90, %8) : (tensor<1x1x25088xf32>, tensor<1x25088x4096xf32>) -> tensor<1x1x4096xf32>
    %92 = "tosa.reshape"(%91) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %93 = "tosa.add"(%92, %9) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %94 = "tosa.clamp"(%93) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %95 = call @dropout(%94) : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %96 = "tosa.reshape"(%95) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %97 = "tosa.matmul"(%96, %10) : (tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) -> tensor<1x1x4096xf32>
    %98 = "tosa.reshape"(%97) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %99 = "tosa.add"(%98, %9) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %100 = "tosa.clamp"(%99) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %101 = call @dropout(%100) : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %102 = "tosa.reshape"(%101) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %103 = "tosa.matmul"(%102, %11) : (tensor<1x1x4096xf32>, tensor<1x4096x1000xf32>) -> tensor<1x1x1000xf32>
    %104 = "tosa.reshape"(%103) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %105 = "tosa.add"(%104, %12) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %105 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x3xf32>} : () -> tensor<64x3x3x3xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x64xf32>} : () -> tensor<128x3x3x64xf32>
    %2 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x128xf32>} : () -> tensor<256x3x3x128xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x256xf32>} : () -> tensor<512x3x3x256xf32>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x25088x4096xf32>} : () -> tensor<1x25088x4096xf32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096xf32>} : () -> tensor<1x4096xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64xf32>} : () -> tensor<64xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128xf32>} : () -> tensor<128xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256xf32>} : () -> tensor<256xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512xf32>} : () -> tensor<512xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000x4096xf32>} : () -> tensor<1x1000x4096xf32>
    %11 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096x4096xf32>} : () -> tensor<1x4096x4096xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x4096x25088xf32>} : () -> tensor<1x4096x25088xf32>
    %14 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %cst = arith.constant 0.000000e+00 : f32
    %15 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x512xf32>} : () -> tensor<512x3x3x512xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x512xf32>} : () -> tensor<256x3x3x512xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x256xf32>} : () -> tensor<128x3x3x256xf32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x128xf32>} : () -> tensor<128x3x3x128xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x128xf32>} : () -> tensor<64x3x3x128xf32>
    %22 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x64xf32>} : () -> tensor<64x3x3x64xf32>
    %23 = "tosa.const"() {value = dense<7.777000e-02> : tensor<3x3x3x64xf32>} : () -> tensor<3x3x3x64xf32>
    %24 = ml_program.global_load @global0 : tensor<1x3x224x224xf32>
    %25 = "tosa.transpose"(%24, %14) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %26 = "tosa.conv2d"(%25, %0, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x224x224x3xf32>, tensor<64x3x3x3xf32>, tensor<64xf32>) -> tensor<1x224x224x64xf32>
    %27 = "tosa.transpose"(%26, %15) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    %28 = "tosa.clamp"(%27) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    %29 = "tosa.transpose"(%28, %14) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    %30 = "tosa.conv2d"(%29, %22, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x224x224x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x224x224x64xf32>
    %31 = "tosa.transpose"(%30, %15) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    %32 = "tosa.clamp"(%31) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    %33 = "tosa.transpose"(%32, %14) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    %34 = "tosa.max_pool2d"(%33) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x224x224x64xf32>) -> tensor<1x112x112x64xf32>
    %35 = "tosa.conv2d"(%34, %1, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x112x112x64xf32>, tensor<128x3x3x64xf32>, tensor<128xf32>) -> tensor<1x112x112x128xf32>
    %36 = "tosa.transpose"(%35, %15) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    %37 = "tosa.clamp"(%36) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    %38 = "tosa.transpose"(%37, %14) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    %39 = "tosa.conv2d"(%38, %20, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x112x112x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x112x112x128xf32>
    %40 = "tosa.transpose"(%39, %15) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    %41 = "tosa.clamp"(%40) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    %42 = "tosa.transpose"(%41, %14) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    %43 = "tosa.max_pool2d"(%42) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x128xf32>) -> tensor<1x56x56x128xf32>
    %44 = "tosa.conv2d"(%43, %2, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x3x3x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %45 = "tosa.transpose"(%44, %15) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %46 = "tosa.clamp"(%45) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %47 = "tosa.transpose"(%46, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %48 = "tosa.conv2d"(%47, %18, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %49 = "tosa.transpose"(%48, %15) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %50 = "tosa.clamp"(%49) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %51 = "tosa.transpose"(%50, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %52 = "tosa.conv2d"(%51, %18, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %53 = "tosa.transpose"(%52, %15) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %54 = "tosa.clamp"(%53) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %55 = "tosa.transpose"(%54, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %56 = "tosa.conv2d"(%55, %18, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %57 = "tosa.transpose"(%56, %15) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %58 = "tosa.clamp"(%57) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %59 = "tosa.transpose"(%58, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %60 = "tosa.max_pool2d"(%59) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>) -> tensor<1x28x28x256xf32>
    %61 = "tosa.conv2d"(%60, %3, %9) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x3x3x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %62 = "tosa.transpose"(%61, %15) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %63 = "tosa.clamp"(%62) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %64 = "tosa.transpose"(%63, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %65 = "tosa.conv2d"(%64, %16, %9) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %66 = "tosa.transpose"(%65, %15) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %67 = "tosa.clamp"(%66) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %68 = "tosa.transpose"(%67, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %69 = "tosa.conv2d"(%68, %16, %9) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %70 = "tosa.transpose"(%69, %15) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %71 = "tosa.clamp"(%70) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %72 = "tosa.transpose"(%71, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %73 = "tosa.conv2d"(%72, %16, %9) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %74 = "tosa.transpose"(%73, %15) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %75 = "tosa.clamp"(%74) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %76 = "tosa.transpose"(%75, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %77 = "tosa.max_pool2d"(%76) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>) -> tensor<1x14x14x512xf32>
    %78 = "tosa.conv2d"(%77, %16, %9) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %79 = "tosa.transpose"(%78, %15) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %80 = "tosa.clamp"(%79) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %81 = "tosa.transpose"(%80, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %82 = "tosa.conv2d"(%81, %16, %9) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %83 = "tosa.transpose"(%82, %15) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %84 = "tosa.clamp"(%83) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %85 = "tosa.transpose"(%84, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %86 = "tosa.conv2d"(%85, %16, %9) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %87 = "tosa.transpose"(%86, %15) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %88 = "tosa.clamp"(%87) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %89 = "tosa.transpose"(%88, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %90 = "tosa.conv2d"(%89, %16, %9) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %91 = "tosa.transpose"(%90, %15) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %92 = "tosa.clamp"(%91) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %93 = "tosa.transpose"(%92, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %94 = "tosa.max_pool2d"(%93) {kernel = array<i64: 2, 2>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>) -> tensor<1x7x7x512xf32>
    %95 = "tosa.transpose"(%94, %15) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %96 = "tosa.reshape"(%95) {new_shape = array<i64: 1, 1, 25088>} : (tensor<1x512x7x7xf32>) -> tensor<1x1x25088xf32>
    %97 = "tosa.matmul"(%96, %4) : (tensor<1x1x25088xf32>, tensor<1x25088x4096xf32>) -> tensor<1x1x4096xf32>
    %98 = "tosa.reshape"(%97) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %99 = "tosa.add"(%98, %5) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %100 = "tosa.clamp"(%99) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %101 = call @dropout(%100) : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %102 = "tosa.reshape"(%101) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %103 = "tosa.matmul"(%102, %12) : (tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) -> tensor<1x1x4096xf32>
    %104 = "tosa.reshape"(%103) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %105 = "tosa.add"(%104, %5) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %106 = "tosa.clamp"(%105) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %107 = call @dropout(%106) : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %108 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %109 = "tosa.matmul"(%108, %10) : (tensor<1x1x1000xf32>, tensor<1x1000x4096xf32>) -> tensor<1x1x4096xf32>
    %110 = "tosa.reshape"(%109) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %111 = "tosa.equal"(%106, %107) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %112 = "tosa.select"(%111, %110, %11) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %113 = "tosa.equal"(%105, %106) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %114 = "tosa.select"(%113, %112, %11) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %115 = "tosa.reshape"(%114) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %116 = "tosa.matmul"(%115, %12) : (tensor<1x1x4096xf32>, tensor<1x4096x4096xf32>) -> tensor<1x1x4096xf32>
    %117 = "tosa.reshape"(%116) {new_shape = array<i64: 1, 4096>} : (tensor<1x1x4096xf32>) -> tensor<1x4096xf32>
    %118 = "tosa.equal"(%100, %101) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %119 = "tosa.select"(%118, %117, %11) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %120 = "tosa.equal"(%99, %100) : (tensor<1x4096xf32>, tensor<1x4096xf32>) -> tensor<1x4096xi1>
    %121 = "tosa.select"(%120, %119, %11) : (tensor<1x4096xi1>, tensor<1x4096xf32>, tensor<f32>) -> tensor<1x4096xf32>
    %122 = "tosa.reshape"(%121) {new_shape = array<i64: 1, 1, 4096>} : (tensor<1x4096xf32>) -> tensor<1x1x4096xf32>
    %123 = "tosa.matmul"(%122, %13) : (tensor<1x1x4096xf32>, tensor<1x4096x25088xf32>) -> tensor<1x1x25088xf32>
    %124 = "tosa.reshape"(%123) {new_shape = array<i64: 1, 512, 7, 7>} : (tensor<1x1x25088xf32>) -> tensor<1x512x7x7xf32>
    %125 = "tosa.transpose"(%124, %14) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %126 = tensor.empty() : tensor<1x14x14x512xf32>
    %127 = tensor.empty() : tensor<2x2xf32>
    %128 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%93, %127, %94, %125 : tensor<1x14x14x512xf32>, tensor<2x2xf32>, tensor<1x7x7x512xf32>, tensor<1x7x7x512xf32>) outs(%126 : tensor<1x14x14x512xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %223 = arith.cmpf oge, %in, %in_1 : f32
      %224 = arith.select %223, %in_2, %cst : f32
      %225 = arith.addf %out, %224 : f32
      linalg.yield %225 : f32
    } -> tensor<1x14x14x512xf32>
    %129 = "tosa.transpose"(%128, %15) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %130 = "tosa.equal"(%91, %92) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %131 = "tosa.select"(%130, %129, %11) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %132 = "tosa.transpose"(%131, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %133 = tensor.empty() : tensor<512xf32>
    %134 = "tosa.transpose_conv2d"(%132, %16, %133) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %135 = "tosa.transpose"(%134, %15) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %136 = "tosa.equal"(%87, %88) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %137 = "tosa.select"(%136, %135, %11) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %138 = "tosa.transpose"(%137, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %139 = "tosa.transpose_conv2d"(%138, %16, %133) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %140 = "tosa.transpose"(%139, %15) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %141 = "tosa.equal"(%83, %84) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %142 = "tosa.select"(%141, %140, %11) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %143 = "tosa.transpose"(%142, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %144 = "tosa.transpose_conv2d"(%143, %16, %133) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %145 = "tosa.transpose"(%144, %15) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %146 = "tosa.equal"(%79, %80) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %147 = "tosa.select"(%146, %145, %11) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %148 = "tosa.transpose"(%147, %14) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %149 = "tosa.transpose_conv2d"(%148, %16, %133) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %150 = tensor.empty() : tensor<1x28x28x512xf32>
    %151 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%76, %127, %77, %149 : tensor<1x28x28x512xf32>, tensor<2x2xf32>, tensor<1x14x14x512xf32>, tensor<1x14x14x512xf32>) outs(%150 : tensor<1x28x28x512xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %223 = arith.cmpf oge, %in, %in_1 : f32
      %224 = arith.select %223, %in_2, %cst : f32
      %225 = arith.addf %out, %224 : f32
      linalg.yield %225 : f32
    } -> tensor<1x28x28x512xf32>
    %152 = "tosa.transpose"(%151, %15) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %153 = "tosa.equal"(%74, %75) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %154 = "tosa.select"(%153, %152, %11) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %155 = "tosa.transpose"(%154, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %156 = "tosa.transpose_conv2d"(%155, %16, %133) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %157 = "tosa.transpose"(%156, %15) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %158 = "tosa.equal"(%70, %71) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %159 = "tosa.select"(%158, %157, %11) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %160 = "tosa.transpose"(%159, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %161 = "tosa.transpose_conv2d"(%160, %16, %133) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %162 = "tosa.transpose"(%161, %15) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %163 = "tosa.equal"(%66, %67) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %164 = "tosa.select"(%163, %162, %11) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %165 = "tosa.transpose"(%164, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %166 = "tosa.transpose_conv2d"(%165, %16, %133) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %167 = "tosa.transpose"(%166, %15) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %168 = "tosa.equal"(%62, %63) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %169 = "tosa.select"(%168, %167, %11) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %170 = "tosa.transpose"(%169, %14) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %171 = tensor.empty() : tensor<256xf32>
    %172 = "tosa.transpose_conv2d"(%170, %17, %171) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x3x3x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %173 = tensor.empty() : tensor<1x56x56x256xf32>
    %174 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%59, %127, %60, %172 : tensor<1x56x56x256xf32>, tensor<2x2xf32>, tensor<1x28x28x256xf32>, tensor<1x28x28x256xf32>) outs(%173 : tensor<1x56x56x256xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %223 = arith.cmpf oge, %in, %in_1 : f32
      %224 = arith.select %223, %in_2, %cst : f32
      %225 = arith.addf %out, %224 : f32
      linalg.yield %225 : f32
    } -> tensor<1x56x56x256xf32>
    %175 = "tosa.transpose"(%174, %15) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %176 = "tosa.equal"(%57, %58) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %177 = "tosa.select"(%176, %175, %11) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %178 = "tosa.transpose"(%177, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %179 = "tosa.transpose_conv2d"(%178, %18, %171) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %180 = "tosa.transpose"(%179, %15) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %181 = "tosa.equal"(%53, %54) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %182 = "tosa.select"(%181, %180, %11) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %183 = "tosa.transpose"(%182, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %184 = "tosa.transpose_conv2d"(%183, %18, %171) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %185 = "tosa.transpose"(%184, %15) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %186 = "tosa.equal"(%49, %50) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %187 = "tosa.select"(%186, %185, %11) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %188 = "tosa.transpose"(%187, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %189 = "tosa.transpose_conv2d"(%188, %18, %171) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %190 = "tosa.transpose"(%189, %15) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %191 = "tosa.equal"(%45, %46) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %192 = "tosa.select"(%191, %190, %11) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %193 = "tosa.transpose"(%192, %14) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %194 = tensor.empty() : tensor<128xf32>
    %195 = "tosa.transpose_conv2d"(%193, %19, %194) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x3x3x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %196 = tensor.empty() : tensor<1x112x112x128xf32>
    %197 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%42, %127, %43, %195 : tensor<1x112x112x128xf32>, tensor<2x2xf32>, tensor<1x56x56x128xf32>, tensor<1x56x56x128xf32>) outs(%196 : tensor<1x112x112x128xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %223 = arith.cmpf oge, %in, %in_1 : f32
      %224 = arith.select %223, %in_2, %cst : f32
      %225 = arith.addf %out, %224 : f32
      linalg.yield %225 : f32
    } -> tensor<1x112x112x128xf32>
    %198 = "tosa.transpose"(%197, %15) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    %199 = "tosa.equal"(%40, %41) : (tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xi1>
    %200 = "tosa.select"(%199, %198, %11) : (tensor<1x128x112x112xi1>, tensor<1x128x112x112xf32>, tensor<f32>) -> tensor<1x128x112x112xf32>
    %201 = "tosa.transpose"(%200, %14) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    %202 = "tosa.transpose_conv2d"(%201, %20, %194) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 112, 112, 128>, stride = array<i64: 1, 1>} : (tensor<1x112x112x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x112x112x128xf32>
    %203 = "tosa.transpose"(%202, %15) : (tensor<1x112x112x128xf32>, tensor<4xi32>) -> tensor<1x128x112x112xf32>
    %204 = "tosa.equal"(%36, %37) : (tensor<1x128x112x112xf32>, tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xi1>
    %205 = "tosa.select"(%204, %203, %11) : (tensor<1x128x112x112xi1>, tensor<1x128x112x112xf32>, tensor<f32>) -> tensor<1x128x112x112xf32>
    %206 = "tosa.transpose"(%205, %14) : (tensor<1x128x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x128xf32>
    %207 = tensor.empty() : tensor<64xf32>
    %208 = "tosa.transpose_conv2d"(%206, %21, %207) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 112, 112, 64>, stride = array<i64: 1, 1>} : (tensor<1x112x112x128xf32>, tensor<64x3x3x128xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %209 = tensor.empty() : tensor<1x224x224x64xf32>
    %210 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%33, %127, %34, %208 : tensor<1x224x224x64xf32>, tensor<2x2xf32>, tensor<1x112x112x64xf32>, tensor<1x112x112x64xf32>) outs(%209 : tensor<1x224x224x64xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %in_2: f32, %out: f32):
      %223 = arith.cmpf oge, %in, %in_1 : f32
      %224 = arith.select %223, %in_2, %cst : f32
      %225 = arith.addf %out, %224 : f32
      linalg.yield %225 : f32
    } -> tensor<1x224x224x64xf32>
    %211 = "tosa.transpose"(%210, %15) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    %212 = "tosa.equal"(%31, %32) : (tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xi1>
    %213 = "tosa.select"(%212, %211, %11) : (tensor<1x64x224x224xi1>, tensor<1x64x224x224xf32>, tensor<f32>) -> tensor<1x64x224x224xf32>
    %214 = "tosa.transpose"(%213, %14) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    %215 = "tosa.transpose_conv2d"(%214, %22, %207) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 224, 224, 64>, stride = array<i64: 1, 1>} : (tensor<1x224x224x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x224x224x64xf32>
    %216 = "tosa.transpose"(%215, %15) : (tensor<1x224x224x64xf32>, tensor<4xi32>) -> tensor<1x64x224x224xf32>
    %217 = "tosa.equal"(%27, %28) : (tensor<1x64x224x224xf32>, tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xi1>
    %218 = "tosa.select"(%217, %216, %11) : (tensor<1x64x224x224xi1>, tensor<1x64x224x224xf32>, tensor<f32>) -> tensor<1x64x224x224xf32>
    %219 = "tosa.transpose"(%218, %14) : (tensor<1x64x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x64xf32>
    %220 = tensor.empty() : tensor<3xf32>
    %221 = "tosa.transpose_conv2d"(%219, %23, %220) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 1, 1>} : (tensor<1x224x224x64xf32>, tensor<3x3x3x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %222 = "tosa.transpose"(%221, %15) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %222 : tensor<1x3x224x224xf32>
  }
}

