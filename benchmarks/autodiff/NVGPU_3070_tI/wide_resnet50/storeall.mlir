#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
module attributes {torch.debug_module_name = "ResNet"} {
  ml_program.global private mutable @global485 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global484 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global476 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global475 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global468 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global467 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global460 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global459 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global451 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global450 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global443 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global442 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global435 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global434 : tensor<1x2048x7x7xf32>
  ml_program.global private mutable @global424 : tensor<1x2048x1x1xf32>
  ml_program.global private mutable @global418 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global417 : tensor<1x1024x7x7xf32>
  ml_program.global private mutable @global410 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global409 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global402 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global401 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global393 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global392 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global385 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global384 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global377 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global376 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global368 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global367 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global360 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global359 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global352 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global351 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global343 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global342 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global335 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global334 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global327 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global326 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global318 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global317 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global310 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global309 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global302 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global301 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global293 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global292 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global285 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global284 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global277 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global276 : tensor<1x1024x14x14xf32>
  ml_program.global private mutable @global266 : tensor<1x1024x1x1xf32>
  ml_program.global private mutable @global260 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global259 : tensor<1x512x14x14xf32>
  ml_program.global private mutable @global252 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global251 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global244 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global243 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global235 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global234 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global227 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global226 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global219 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global218 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global210 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global209 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global202 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global201 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global194 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global193 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global185 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global184 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global177 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global176 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global169 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global168 : tensor<1x512x28x28xf32>
  ml_program.global private mutable @global158 : tensor<1x512x1x1xf32>
  ml_program.global private mutable @global152 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global151 : tensor<1x256x28x28xf32>
  ml_program.global private mutable @global144 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global143 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global136 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global135 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global127 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global126 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global119 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global118 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global111 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global110 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global102 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global101 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global94 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global93 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global86 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global85 : tensor<1x256x56x56xf32>
  ml_program.global private mutable @global75 : tensor<1x256x1x1xf32>
  ml_program.global private mutable @global69 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global68 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global61 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global60 : tensor<1x128x56x56xf32>
  ml_program.global private mutable @global57 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global52 : tensor<1x56x56x64xf32>
  ml_program.global private mutable @global51 : tensor<1x112x112x64xf32>
  ml_program.global private mutable @global50 : tensor<1x64x112x112xf32>
  ml_program.global private mutable @global49 : tensor<1x64x112x112xf32>
  ml_program.global private mutable @global46 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global40 : tensor<64x7x7x3xf32>
  ml_program.global private mutable @global39 : tensor<1x64x1x1xf32>
  ml_program.global private mutable @global37 : tensor<128x1x1x64xf32>
  ml_program.global private mutable @global36 : tensor<1x128x1x1xf32>
  ml_program.global private mutable @global34 : tensor<128x3x3x128xf32>
  ml_program.global private mutable @global33 : tensor<256x1x1x128xf32>
  ml_program.global private mutable @global32 : tensor<1x256x1x1xf32>
  ml_program.global private mutable @global30 : tensor<256x1x1x64xf32>
  ml_program.global private mutable @global29 : tensor<128x1x1x256xf32>
  ml_program.global private mutable @global28 : tensor<256x1x1x256xf32>
  ml_program.global private mutable @global27 : tensor<256x3x3x256xf32>
  ml_program.global private mutable @global26 : tensor<512x1x1x256xf32>
  ml_program.global private mutable @global25 : tensor<1x512x1x1xf32>
  ml_program.global private mutable @global23 : tensor<256x1x1x512xf32>
  ml_program.global private mutable @global22 : tensor<512x1x1x512xf32>
  ml_program.global private mutable @global21 : tensor<512x3x3x512xf32>
  ml_program.global private mutable @global20 : tensor<1024x1x1x512xf32>
  ml_program.global private mutable @global19 : tensor<1x1024x1x1xf32>
  ml_program.global private mutable @global17 : tensor<512x1x1x1024xf32>
  ml_program.global private mutable @global16 : tensor<1024x1x1x1024xf32>
  ml_program.global private mutable @global15 : tensor<1024x3x3x1024xf32>
  ml_program.global private mutable @global14 : tensor<2048x1x1x1024xf32>
  ml_program.global private mutable @global13 : tensor<1x2048x1x1xf32>
  ml_program.global private mutable @global11 : tensor<1024x1x1x2048xf32>
  ml_program.global private mutable @global10 : tensor<1x2048x1000xf32>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %0 = "tosa.const"() {value = dense<0.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %1 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3 = "tosa.const"() {value = dense<0.000000e+00> : tensor<128xf32>} : () -> tensor<128xf32>
    %4 = "tosa.const"() {value = dense<0.000000e+00> : tensor<256xf32>} : () -> tensor<256xf32>
    %5 = "tosa.const"() {value = dense<0.000000e+00> : tensor<512xf32>} : () -> tensor<512xf32>
    %6 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %7 = "tosa.const"() {value = dense<0.000000e+00> : tensor<2048xf32>} : () -> tensor<2048xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000xf32>} : () -> tensor<1x1000xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x2048x1000xf32>} : () -> tensor<1x2048x1000xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x2048xf32>} : () -> tensor<1024x1x1x2048xf32>
    %11 = "tosa.const"() {value = dense<7.778000e-02> : tensor<2048x1x1xf32>} : () -> tensor<2048x1x1xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x2048x1x1xf32>} : () -> tensor<1x2048x1x1xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<2048x1x1x1024xf32>} : () -> tensor<2048x1x1x1024xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x3x3x1024xf32>} : () -> tensor<1024x3x3x1024xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x1024xf32>} : () -> tensor<1024x1x1x1024xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x1024xf32>} : () -> tensor<512x1x1x1024xf32>
    %17 = "tosa.const"() {value = dense<7.778000e-02> : tensor<1024x1x1xf32>} : () -> tensor<1024x1x1xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1024x1x1xf32>} : () -> tensor<1x1024x1x1xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1024x1x1x512xf32>} : () -> tensor<1024x1x1x512xf32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x3x3x512xf32>} : () -> tensor<512x3x3x512xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x512xf32>} : () -> tensor<512x1x1x512xf32>
    %22 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x512xf32>} : () -> tensor<256x1x1x512xf32>
    %23 = "tosa.const"() {value = dense<7.778000e-02> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %24 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %25 = "tosa.const"() {value = dense<7.777000e-02> : tensor<512x1x1x256xf32>} : () -> tensor<512x1x1x256xf32>
    %26 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x3x3x256xf32>} : () -> tensor<256x3x3x256xf32>
    %27 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x256xf32>} : () -> tensor<256x1x1x256xf32>
    %28 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x256xf32>} : () -> tensor<128x1x1x256xf32>
    %29 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x64xf32>} : () -> tensor<256x1x1x64xf32>
    %30 = "tosa.const"() {value = dense<7.778000e-02> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %31 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %32 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x128xf32>} : () -> tensor<256x1x1x128xf32>
    %33 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x3x3x128xf32>} : () -> tensor<128x3x3x128xf32>
    %34 = "tosa.const"() {value = dense<7.778000e-02> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %35 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %36 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x64xf32>} : () -> tensor<128x1x1x64xf32>
    %37 = "tosa.const"() {value = dense<7.778000e-02> : tensor<64x1x1xf32>} : () -> tensor<64x1x1xf32>
    %38 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %39 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x7x7x3xf32>} : () -> tensor<64x7x7x3xf32>
    ml_program.global_store @global10 = %9 : tensor<1x2048x1000xf32>
    ml_program.global_store @global11 = %10 : tensor<1024x1x1x2048xf32>
    ml_program.global_store @global13 = %12 : tensor<1x2048x1x1xf32>
    ml_program.global_store @global14 = %13 : tensor<2048x1x1x1024xf32>
    ml_program.global_store @global15 = %14 : tensor<1024x3x3x1024xf32>
    ml_program.global_store @global16 = %15 : tensor<1024x1x1x1024xf32>
    ml_program.global_store @global17 = %16 : tensor<512x1x1x1024xf32>
    ml_program.global_store @global19 = %18 : tensor<1x1024x1x1xf32>
    ml_program.global_store @global20 = %19 : tensor<1024x1x1x512xf32>
    ml_program.global_store @global21 = %20 : tensor<512x3x3x512xf32>
    ml_program.global_store @global22 = %21 : tensor<512x1x1x512xf32>
    ml_program.global_store @global23 = %22 : tensor<256x1x1x512xf32>
    ml_program.global_store @global25 = %24 : tensor<1x512x1x1xf32>
    ml_program.global_store @global26 = %25 : tensor<512x1x1x256xf32>
    ml_program.global_store @global27 = %26 : tensor<256x3x3x256xf32>
    ml_program.global_store @global28 = %27 : tensor<256x1x1x256xf32>
    ml_program.global_store @global29 = %28 : tensor<128x1x1x256xf32>
    ml_program.global_store @global30 = %29 : tensor<256x1x1x64xf32>
    ml_program.global_store @global32 = %31 : tensor<1x256x1x1xf32>
    ml_program.global_store @global33 = %32 : tensor<256x1x1x128xf32>
    ml_program.global_store @global34 = %33 : tensor<128x3x3x128xf32>
    ml_program.global_store @global36 = %35 : tensor<1x128x1x1xf32>
    ml_program.global_store @global37 = %36 : tensor<128x1x1x64xf32>
    ml_program.global_store @global39 = %38 : tensor<1x64x1x1xf32>
    ml_program.global_store @global40 = %39 : tensor<64x7x7x3xf32>
    %40 = "tosa.transpose"(%arg0, %1) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %41 = "tosa.conv2d"(%40, %39, %0) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %42 = "tosa.transpose"(%41, %2) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %43 = "tosa.sub"(%42, %38) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %44 = "tosa.rsqrt"(%37) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %45 = "tosa.reshape"(%44) {new_shape = array<i64: 1, 64, 1, 1>} : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    ml_program.global_store @global46 = %45 : tensor<1x64x1x1xf32>
    %46 = "tosa.mul"(%43, %45) {shift = 0 : i8} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %47 = "tosa.mul"(%46, %38) {shift = 0 : i8} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %48 = "tosa.add"(%47, %38) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    ml_program.global_store @global49 = %48 : tensor<1x64x112x112xf32>
    %49 = "tosa.clamp"(%48) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    ml_program.global_store @global50 = %49 : tensor<1x64x112x112xf32>
    %50 = "tosa.transpose"(%49, %1) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    ml_program.global_store @global51 = %50 : tensor<1x112x112x64xf32>
    %51 = "tosa.max_pool2d"(%50) {kernel = array<i64: 3, 3>, pad = array<i64: 1, 0, 1, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    ml_program.global_store @global52 = %51 : tensor<1x56x56x64xf32>
    %52 = "tosa.conv2d"(%51, %36, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<128x1x1x64xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %53 = "tosa.transpose"(%52, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %54 = "tosa.sub"(%53, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %55 = "tosa.rsqrt"(%34) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %56 = "tosa.reshape"(%55) {new_shape = array<i64: 1, 128, 1, 1>} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    ml_program.global_store @global57 = %56 : tensor<1x128x1x1xf32>
    %57 = "tosa.mul"(%54, %56) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %58 = "tosa.mul"(%57, %35) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %59 = "tosa.add"(%58, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global60 = %59 : tensor<1x128x56x56xf32>
    %60 = "tosa.clamp"(%59) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global61 = %60 : tensor<1x128x56x56xf32>
    %61 = "tosa.transpose"(%60, %1) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %62 = "tosa.conv2d"(%61, %33, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %63 = "tosa.transpose"(%62, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %64 = "tosa.sub"(%63, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %65 = "tosa.mul"(%64, %56) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %66 = "tosa.mul"(%65, %35) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %67 = "tosa.add"(%66, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global68 = %67 : tensor<1x128x56x56xf32>
    %68 = "tosa.clamp"(%67) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global69 = %68 : tensor<1x128x56x56xf32>
    %69 = "tosa.transpose"(%68, %1) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %70 = "tosa.conv2d"(%69, %32, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %71 = "tosa.transpose"(%70, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %72 = "tosa.sub"(%71, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %73 = "tosa.rsqrt"(%30) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %74 = "tosa.reshape"(%73) {new_shape = array<i64: 1, 256, 1, 1>} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    ml_program.global_store @global75 = %74 : tensor<1x256x1x1xf32>
    %75 = "tosa.mul"(%72, %74) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %76 = "tosa.mul"(%75, %31) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %77 = "tosa.add"(%76, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %78 = "tosa.conv2d"(%51, %29, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %79 = "tosa.transpose"(%78, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %80 = "tosa.sub"(%79, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %81 = "tosa.mul"(%80, %74) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %82 = "tosa.mul"(%81, %31) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %83 = "tosa.add"(%82, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %84 = "tosa.add"(%77, %83) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global85 = %84 : tensor<1x256x56x56xf32>
    %85 = "tosa.clamp"(%84) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global86 = %85 : tensor<1x256x56x56xf32>
    %86 = "tosa.transpose"(%85, %1) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %87 = "tosa.conv2d"(%86, %28, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %88 = "tosa.transpose"(%87, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %89 = "tosa.sub"(%88, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %90 = "tosa.mul"(%89, %56) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %91 = "tosa.mul"(%90, %35) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %92 = "tosa.add"(%91, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global93 = %92 : tensor<1x128x56x56xf32>
    %93 = "tosa.clamp"(%92) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global94 = %93 : tensor<1x128x56x56xf32>
    %94 = "tosa.transpose"(%93, %1) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %95 = "tosa.conv2d"(%94, %33, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %96 = "tosa.transpose"(%95, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %97 = "tosa.sub"(%96, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %98 = "tosa.mul"(%97, %56) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %99 = "tosa.mul"(%98, %35) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %100 = "tosa.add"(%99, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global101 = %100 : tensor<1x128x56x56xf32>
    %101 = "tosa.clamp"(%100) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global102 = %101 : tensor<1x128x56x56xf32>
    %102 = "tosa.transpose"(%101, %1) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %103 = "tosa.conv2d"(%102, %32, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %104 = "tosa.transpose"(%103, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %105 = "tosa.sub"(%104, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %106 = "tosa.mul"(%105, %74) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %107 = "tosa.mul"(%106, %31) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %108 = "tosa.add"(%107, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %109 = "tosa.add"(%108, %85) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global110 = %109 : tensor<1x256x56x56xf32>
    %110 = "tosa.clamp"(%109) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global111 = %110 : tensor<1x256x56x56xf32>
    %111 = "tosa.transpose"(%110, %1) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %112 = "tosa.conv2d"(%111, %28, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %113 = "tosa.transpose"(%112, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %114 = "tosa.sub"(%113, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %115 = "tosa.mul"(%114, %56) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %116 = "tosa.mul"(%115, %35) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %117 = "tosa.add"(%116, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global118 = %117 : tensor<1x128x56x56xf32>
    %118 = "tosa.clamp"(%117) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global119 = %118 : tensor<1x128x56x56xf32>
    %119 = "tosa.transpose"(%118, %1) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %120 = "tosa.conv2d"(%119, %33, %3) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %121 = "tosa.transpose"(%120, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %122 = "tosa.sub"(%121, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %123 = "tosa.mul"(%122, %56) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %124 = "tosa.mul"(%123, %35) {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %125 = "tosa.add"(%124, %35) : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global126 = %125 : tensor<1x128x56x56xf32>
    %126 = "tosa.clamp"(%125) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    ml_program.global_store @global127 = %126 : tensor<1x128x56x56xf32>
    %127 = "tosa.transpose"(%126, %1) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %128 = "tosa.conv2d"(%127, %32, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %129 = "tosa.transpose"(%128, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %130 = "tosa.sub"(%129, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %131 = "tosa.mul"(%130, %74) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %132 = "tosa.mul"(%131, %31) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %133 = "tosa.add"(%132, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %134 = "tosa.add"(%133, %110) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global135 = %134 : tensor<1x256x56x56xf32>
    %135 = "tosa.clamp"(%134) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global136 = %135 : tensor<1x256x56x56xf32>
    %136 = "tosa.transpose"(%135, %1) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %137 = "tosa.conv2d"(%136, %27, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x1x1x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %138 = "tosa.transpose"(%137, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %139 = "tosa.sub"(%138, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %140 = "tosa.mul"(%139, %74) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %141 = "tosa.mul"(%140, %31) {shift = 0 : i8} : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %142 = "tosa.add"(%141, %31) : (tensor<1x256x56x56xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global143 = %142 : tensor<1x256x56x56xf32>
    %143 = "tosa.clamp"(%142) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    ml_program.global_store @global144 = %143 : tensor<1x256x56x56xf32>
    %144 = "tosa.transpose"(%143, %1) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %145 = "tosa.conv2d"(%144, %26, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %146 = "tosa.transpose"(%145, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %147 = "tosa.sub"(%146, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %148 = "tosa.mul"(%147, %74) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %149 = "tosa.mul"(%148, %31) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %150 = "tosa.add"(%149, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global151 = %150 : tensor<1x256x28x28xf32>
    %151 = "tosa.clamp"(%150) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global152 = %151 : tensor<1x256x28x28xf32>
    %152 = "tosa.transpose"(%151, %1) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %153 = "tosa.conv2d"(%152, %25, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %154 = "tosa.transpose"(%153, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %155 = "tosa.sub"(%154, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %156 = "tosa.rsqrt"(%23) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %157 = "tosa.reshape"(%156) {new_shape = array<i64: 1, 512, 1, 1>} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    ml_program.global_store @global158 = %157 : tensor<1x512x1x1xf32>
    %158 = "tosa.mul"(%155, %157) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %159 = "tosa.mul"(%158, %24) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %160 = "tosa.add"(%159, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %161 = "tosa.conv2d"(%136, %25, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %162 = "tosa.transpose"(%161, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %163 = "tosa.sub"(%162, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %164 = "tosa.mul"(%163, %157) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %165 = "tosa.mul"(%164, %24) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %166 = "tosa.add"(%165, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %167 = "tosa.add"(%160, %166) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global168 = %167 : tensor<1x512x28x28xf32>
    %168 = "tosa.clamp"(%167) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global169 = %168 : tensor<1x512x28x28xf32>
    %169 = "tosa.transpose"(%168, %1) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %170 = "tosa.conv2d"(%169, %22, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %171 = "tosa.transpose"(%170, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %172 = "tosa.sub"(%171, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %173 = "tosa.mul"(%172, %74) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %174 = "tosa.mul"(%173, %31) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %175 = "tosa.add"(%174, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global176 = %175 : tensor<1x256x28x28xf32>
    %176 = "tosa.clamp"(%175) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global177 = %176 : tensor<1x256x28x28xf32>
    %177 = "tosa.transpose"(%176, %1) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %178 = "tosa.conv2d"(%177, %26, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %179 = "tosa.transpose"(%178, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %180 = "tosa.sub"(%179, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %181 = "tosa.mul"(%180, %74) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %182 = "tosa.mul"(%181, %31) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %183 = "tosa.add"(%182, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global184 = %183 : tensor<1x256x28x28xf32>
    %184 = "tosa.clamp"(%183) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global185 = %184 : tensor<1x256x28x28xf32>
    %185 = "tosa.transpose"(%184, %1) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %186 = "tosa.conv2d"(%185, %25, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %187 = "tosa.transpose"(%186, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %188 = "tosa.sub"(%187, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %189 = "tosa.mul"(%188, %157) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %190 = "tosa.mul"(%189, %24) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %191 = "tosa.add"(%190, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %192 = "tosa.add"(%191, %168) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global193 = %192 : tensor<1x512x28x28xf32>
    %193 = "tosa.clamp"(%192) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global194 = %193 : tensor<1x512x28x28xf32>
    %194 = "tosa.transpose"(%193, %1) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %195 = "tosa.conv2d"(%194, %22, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %196 = "tosa.transpose"(%195, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %197 = "tosa.sub"(%196, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %198 = "tosa.mul"(%197, %74) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %199 = "tosa.mul"(%198, %31) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %200 = "tosa.add"(%199, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global201 = %200 : tensor<1x256x28x28xf32>
    %201 = "tosa.clamp"(%200) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global202 = %201 : tensor<1x256x28x28xf32>
    %202 = "tosa.transpose"(%201, %1) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %203 = "tosa.conv2d"(%202, %26, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %204 = "tosa.transpose"(%203, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %205 = "tosa.sub"(%204, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %206 = "tosa.mul"(%205, %74) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %207 = "tosa.mul"(%206, %31) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %208 = "tosa.add"(%207, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global209 = %208 : tensor<1x256x28x28xf32>
    %209 = "tosa.clamp"(%208) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global210 = %209 : tensor<1x256x28x28xf32>
    %210 = "tosa.transpose"(%209, %1) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %211 = "tosa.conv2d"(%210, %25, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %212 = "tosa.transpose"(%211, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %213 = "tosa.sub"(%212, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %214 = "tosa.mul"(%213, %157) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %215 = "tosa.mul"(%214, %24) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %216 = "tosa.add"(%215, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %217 = "tosa.add"(%216, %193) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global218 = %217 : tensor<1x512x28x28xf32>
    %218 = "tosa.clamp"(%217) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global219 = %218 : tensor<1x512x28x28xf32>
    %219 = "tosa.transpose"(%218, %1) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %220 = "tosa.conv2d"(%219, %22, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %221 = "tosa.transpose"(%220, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %222 = "tosa.sub"(%221, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %223 = "tosa.mul"(%222, %74) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %224 = "tosa.mul"(%223, %31) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %225 = "tosa.add"(%224, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global226 = %225 : tensor<1x256x28x28xf32>
    %226 = "tosa.clamp"(%225) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global227 = %226 : tensor<1x256x28x28xf32>
    %227 = "tosa.transpose"(%226, %1) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %228 = "tosa.conv2d"(%227, %26, %4) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %229 = "tosa.transpose"(%228, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %230 = "tosa.sub"(%229, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %231 = "tosa.mul"(%230, %74) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %232 = "tosa.mul"(%231, %31) {shift = 0 : i8} : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %233 = "tosa.add"(%232, %31) : (tensor<1x256x28x28xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global234 = %233 : tensor<1x256x28x28xf32>
    %234 = "tosa.clamp"(%233) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    ml_program.global_store @global235 = %234 : tensor<1x256x28x28xf32>
    %235 = "tosa.transpose"(%234, %1) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %236 = "tosa.conv2d"(%235, %25, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %237 = "tosa.transpose"(%236, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %238 = "tosa.sub"(%237, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %239 = "tosa.mul"(%238, %157) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %240 = "tosa.mul"(%239, %24) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %241 = "tosa.add"(%240, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %242 = "tosa.add"(%241, %218) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global243 = %242 : tensor<1x512x28x28xf32>
    %243 = "tosa.clamp"(%242) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global244 = %243 : tensor<1x512x28x28xf32>
    %244 = "tosa.transpose"(%243, %1) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %245 = "tosa.conv2d"(%244, %21, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x1x1x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %246 = "tosa.transpose"(%245, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %247 = "tosa.sub"(%246, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %248 = "tosa.mul"(%247, %157) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %249 = "tosa.mul"(%248, %24) {shift = 0 : i8} : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %250 = "tosa.add"(%249, %24) : (tensor<1x512x28x28xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global251 = %250 : tensor<1x512x28x28xf32>
    %251 = "tosa.clamp"(%250) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    ml_program.global_store @global252 = %251 : tensor<1x512x28x28xf32>
    %252 = "tosa.transpose"(%251, %1) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %253 = "tosa.conv2d"(%252, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %254 = "tosa.transpose"(%253, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %255 = "tosa.sub"(%254, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %256 = "tosa.mul"(%255, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %257 = "tosa.mul"(%256, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %258 = "tosa.add"(%257, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global259 = %258 : tensor<1x512x14x14xf32>
    %259 = "tosa.clamp"(%258) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global260 = %259 : tensor<1x512x14x14xf32>
    %260 = "tosa.transpose"(%259, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %261 = "tosa.conv2d"(%260, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %262 = "tosa.transpose"(%261, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %263 = "tosa.sub"(%262, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %264 = "tosa.rsqrt"(%17) : (tensor<1024x1x1xf32>) -> tensor<1024x1x1xf32>
    %265 = "tosa.reshape"(%264) {new_shape = array<i64: 1, 1024, 1, 1>} : (tensor<1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    ml_program.global_store @global266 = %265 : tensor<1x1024x1x1xf32>
    %266 = "tosa.mul"(%263, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %267 = "tosa.mul"(%266, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %268 = "tosa.add"(%267, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %269 = "tosa.conv2d"(%244, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %270 = "tosa.transpose"(%269, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %271 = "tosa.sub"(%270, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %272 = "tosa.mul"(%271, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %273 = "tosa.mul"(%272, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %274 = "tosa.add"(%273, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %275 = "tosa.add"(%268, %274) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global276 = %275 : tensor<1x1024x14x14xf32>
    %276 = "tosa.clamp"(%275) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global277 = %276 : tensor<1x1024x14x14xf32>
    %277 = "tosa.transpose"(%276, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %278 = "tosa.conv2d"(%277, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %279 = "tosa.transpose"(%278, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %280 = "tosa.sub"(%279, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %281 = "tosa.mul"(%280, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %282 = "tosa.mul"(%281, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %283 = "tosa.add"(%282, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global284 = %283 : tensor<1x512x14x14xf32>
    %284 = "tosa.clamp"(%283) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global285 = %284 : tensor<1x512x14x14xf32>
    %285 = "tosa.transpose"(%284, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %286 = "tosa.conv2d"(%285, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %287 = "tosa.transpose"(%286, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %288 = "tosa.sub"(%287, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %289 = "tosa.mul"(%288, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %290 = "tosa.mul"(%289, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %291 = "tosa.add"(%290, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global292 = %291 : tensor<1x512x14x14xf32>
    %292 = "tosa.clamp"(%291) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global293 = %292 : tensor<1x512x14x14xf32>
    %293 = "tosa.transpose"(%292, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %294 = "tosa.conv2d"(%293, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %295 = "tosa.transpose"(%294, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %296 = "tosa.sub"(%295, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %297 = "tosa.mul"(%296, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %298 = "tosa.mul"(%297, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %299 = "tosa.add"(%298, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %300 = "tosa.add"(%299, %276) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global301 = %300 : tensor<1x1024x14x14xf32>
    %301 = "tosa.clamp"(%300) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global302 = %301 : tensor<1x1024x14x14xf32>
    %302 = "tosa.transpose"(%301, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %303 = "tosa.conv2d"(%302, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %304 = "tosa.transpose"(%303, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %305 = "tosa.sub"(%304, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %306 = "tosa.mul"(%305, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %307 = "tosa.mul"(%306, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %308 = "tosa.add"(%307, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global309 = %308 : tensor<1x512x14x14xf32>
    %309 = "tosa.clamp"(%308) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global310 = %309 : tensor<1x512x14x14xf32>
    %310 = "tosa.transpose"(%309, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %311 = "tosa.conv2d"(%310, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %312 = "tosa.transpose"(%311, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %313 = "tosa.sub"(%312, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %314 = "tosa.mul"(%313, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %315 = "tosa.mul"(%314, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %316 = "tosa.add"(%315, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global317 = %316 : tensor<1x512x14x14xf32>
    %317 = "tosa.clamp"(%316) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global318 = %317 : tensor<1x512x14x14xf32>
    %318 = "tosa.transpose"(%317, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %319 = "tosa.conv2d"(%318, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %320 = "tosa.transpose"(%319, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %321 = "tosa.sub"(%320, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %322 = "tosa.mul"(%321, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %323 = "tosa.mul"(%322, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %324 = "tosa.add"(%323, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %325 = "tosa.add"(%324, %301) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global326 = %325 : tensor<1x1024x14x14xf32>
    %326 = "tosa.clamp"(%325) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global327 = %326 : tensor<1x1024x14x14xf32>
    %327 = "tosa.transpose"(%326, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %328 = "tosa.conv2d"(%327, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %329 = "tosa.transpose"(%328, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %330 = "tosa.sub"(%329, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %331 = "tosa.mul"(%330, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %332 = "tosa.mul"(%331, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %333 = "tosa.add"(%332, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global334 = %333 : tensor<1x512x14x14xf32>
    %334 = "tosa.clamp"(%333) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global335 = %334 : tensor<1x512x14x14xf32>
    %335 = "tosa.transpose"(%334, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %336 = "tosa.conv2d"(%335, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %337 = "tosa.transpose"(%336, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %338 = "tosa.sub"(%337, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %339 = "tosa.mul"(%338, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %340 = "tosa.mul"(%339, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %341 = "tosa.add"(%340, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global342 = %341 : tensor<1x512x14x14xf32>
    %342 = "tosa.clamp"(%341) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global343 = %342 : tensor<1x512x14x14xf32>
    %343 = "tosa.transpose"(%342, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %344 = "tosa.conv2d"(%343, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %345 = "tosa.transpose"(%344, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %346 = "tosa.sub"(%345, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %347 = "tosa.mul"(%346, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %348 = "tosa.mul"(%347, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %349 = "tosa.add"(%348, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %350 = "tosa.add"(%349, %326) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global351 = %350 : tensor<1x1024x14x14xf32>
    %351 = "tosa.clamp"(%350) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global352 = %351 : tensor<1x1024x14x14xf32>
    %352 = "tosa.transpose"(%351, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %353 = "tosa.conv2d"(%352, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %354 = "tosa.transpose"(%353, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %355 = "tosa.sub"(%354, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %356 = "tosa.mul"(%355, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %357 = "tosa.mul"(%356, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %358 = "tosa.add"(%357, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global359 = %358 : tensor<1x512x14x14xf32>
    %359 = "tosa.clamp"(%358) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global360 = %359 : tensor<1x512x14x14xf32>
    %360 = "tosa.transpose"(%359, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %361 = "tosa.conv2d"(%360, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %362 = "tosa.transpose"(%361, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %363 = "tosa.sub"(%362, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %364 = "tosa.mul"(%363, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %365 = "tosa.mul"(%364, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %366 = "tosa.add"(%365, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global367 = %366 : tensor<1x512x14x14xf32>
    %367 = "tosa.clamp"(%366) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global368 = %367 : tensor<1x512x14x14xf32>
    %368 = "tosa.transpose"(%367, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %369 = "tosa.conv2d"(%368, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %370 = "tosa.transpose"(%369, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %371 = "tosa.sub"(%370, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %372 = "tosa.mul"(%371, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %373 = "tosa.mul"(%372, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %374 = "tosa.add"(%373, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %375 = "tosa.add"(%374, %351) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global376 = %375 : tensor<1x1024x14x14xf32>
    %376 = "tosa.clamp"(%375) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global377 = %376 : tensor<1x1024x14x14xf32>
    %377 = "tosa.transpose"(%376, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %378 = "tosa.conv2d"(%377, %16, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %379 = "tosa.transpose"(%378, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %380 = "tosa.sub"(%379, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %381 = "tosa.mul"(%380, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %382 = "tosa.mul"(%381, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %383 = "tosa.add"(%382, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global384 = %383 : tensor<1x512x14x14xf32>
    %384 = "tosa.clamp"(%383) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global385 = %384 : tensor<1x512x14x14xf32>
    %385 = "tosa.transpose"(%384, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %386 = "tosa.conv2d"(%385, %20, %5) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %387 = "tosa.transpose"(%386, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %388 = "tosa.sub"(%387, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %389 = "tosa.mul"(%388, %157) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %390 = "tosa.mul"(%389, %24) {shift = 0 : i8} : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %391 = "tosa.add"(%390, %24) : (tensor<1x512x14x14xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global392 = %391 : tensor<1x512x14x14xf32>
    %392 = "tosa.clamp"(%391) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    ml_program.global_store @global393 = %392 : tensor<1x512x14x14xf32>
    %393 = "tosa.transpose"(%392, %1) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %394 = "tosa.conv2d"(%393, %19, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %395 = "tosa.transpose"(%394, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %396 = "tosa.sub"(%395, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %397 = "tosa.mul"(%396, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %398 = "tosa.mul"(%397, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %399 = "tosa.add"(%398, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %400 = "tosa.add"(%399, %376) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global401 = %400 : tensor<1x1024x14x14xf32>
    %401 = "tosa.clamp"(%400) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global402 = %401 : tensor<1x1024x14x14xf32>
    %402 = "tosa.transpose"(%401, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %403 = "tosa.conv2d"(%402, %15, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<1024x1x1x1024xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %404 = "tosa.transpose"(%403, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %405 = "tosa.sub"(%404, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %406 = "tosa.mul"(%405, %265) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %407 = "tosa.mul"(%406, %18) {shift = 0 : i8} : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %408 = "tosa.add"(%407, %18) : (tensor<1x1024x14x14xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global409 = %408 : tensor<1x1024x14x14xf32>
    %409 = "tosa.clamp"(%408) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    ml_program.global_store @global410 = %409 : tensor<1x1024x14x14xf32>
    %410 = "tosa.transpose"(%409, %1) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %411 = "tosa.conv2d"(%410, %14, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %412 = "tosa.transpose"(%411, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %413 = "tosa.sub"(%412, %18) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %414 = "tosa.mul"(%413, %265) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %415 = "tosa.mul"(%414, %18) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %416 = "tosa.add"(%415, %18) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global417 = %416 : tensor<1x1024x7x7xf32>
    %417 = "tosa.clamp"(%416) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global418 = %417 : tensor<1x1024x7x7xf32>
    %418 = "tosa.transpose"(%417, %1) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %419 = "tosa.conv2d"(%418, %13, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %420 = "tosa.transpose"(%419, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %421 = "tosa.sub"(%420, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %422 = "tosa.rsqrt"(%11) : (tensor<2048x1x1xf32>) -> tensor<2048x1x1xf32>
    %423 = "tosa.reshape"(%422) {new_shape = array<i64: 1, 2048, 1, 1>} : (tensor<2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    ml_program.global_store @global424 = %423 : tensor<1x2048x1x1xf32>
    %424 = "tosa.mul"(%421, %423) {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %425 = "tosa.mul"(%424, %12) {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %426 = "tosa.add"(%425, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %427 = "tosa.conv2d"(%402, %13, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %428 = "tosa.transpose"(%427, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %429 = "tosa.sub"(%428, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %430 = "tosa.mul"(%429, %423) {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %431 = "tosa.mul"(%430, %12) {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %432 = "tosa.add"(%431, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %433 = "tosa.add"(%426, %432) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global434 = %433 : tensor<1x2048x7x7xf32>
    %434 = "tosa.clamp"(%433) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global435 = %434 : tensor<1x2048x7x7xf32>
    %435 = "tosa.transpose"(%434, %1) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %436 = "tosa.conv2d"(%435, %10, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %437 = "tosa.transpose"(%436, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %438 = "tosa.sub"(%437, %18) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %439 = "tosa.mul"(%438, %265) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %440 = "tosa.mul"(%439, %18) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %441 = "tosa.add"(%440, %18) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global442 = %441 : tensor<1x1024x7x7xf32>
    %442 = "tosa.clamp"(%441) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global443 = %442 : tensor<1x1024x7x7xf32>
    %443 = "tosa.transpose"(%442, %1) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %444 = "tosa.conv2d"(%443, %14, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %445 = "tosa.transpose"(%444, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %446 = "tosa.sub"(%445, %18) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %447 = "tosa.mul"(%446, %265) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %448 = "tosa.mul"(%447, %18) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %449 = "tosa.add"(%448, %18) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global450 = %449 : tensor<1x1024x7x7xf32>
    %450 = "tosa.clamp"(%449) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global451 = %450 : tensor<1x1024x7x7xf32>
    %451 = "tosa.transpose"(%450, %1) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %452 = "tosa.conv2d"(%451, %13, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %453 = "tosa.transpose"(%452, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %454 = "tosa.sub"(%453, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %455 = "tosa.mul"(%454, %423) {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %456 = "tosa.mul"(%455, %12) {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %457 = "tosa.add"(%456, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %458 = "tosa.add"(%457, %434) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global459 = %458 : tensor<1x2048x7x7xf32>
    %459 = "tosa.clamp"(%458) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global460 = %459 : tensor<1x2048x7x7xf32>
    %460 = "tosa.transpose"(%459, %1) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %461 = "tosa.conv2d"(%460, %10, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %462 = "tosa.transpose"(%461, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %463 = "tosa.sub"(%462, %18) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %464 = "tosa.mul"(%463, %265) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %465 = "tosa.mul"(%464, %18) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %466 = "tosa.add"(%465, %18) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global467 = %466 : tensor<1x1024x7x7xf32>
    %467 = "tosa.clamp"(%466) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global468 = %467 : tensor<1x1024x7x7xf32>
    %468 = "tosa.transpose"(%467, %1) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %469 = "tosa.conv2d"(%468, %14, %6) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %470 = "tosa.transpose"(%469, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %471 = "tosa.sub"(%470, %18) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %472 = "tosa.mul"(%471, %265) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %473 = "tosa.mul"(%472, %18) {shift = 0 : i8} : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %474 = "tosa.add"(%473, %18) : (tensor<1x1024x7x7xf32>, tensor<1x1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global475 = %474 : tensor<1x1024x7x7xf32>
    %475 = "tosa.clamp"(%474) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    ml_program.global_store @global476 = %475 : tensor<1x1024x7x7xf32>
    %476 = "tosa.transpose"(%475, %1) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %477 = "tosa.conv2d"(%476, %13, %7) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %478 = "tosa.transpose"(%477, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %479 = "tosa.sub"(%478, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %480 = "tosa.mul"(%479, %423) {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %481 = "tosa.mul"(%480, %12) {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %482 = "tosa.add"(%481, %12) : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %483 = "tosa.add"(%482, %459) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global484 = %483 : tensor<1x2048x7x7xf32>
    %484 = "tosa.clamp"(%483) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    ml_program.global_store @global485 = %484 : tensor<1x2048x7x7xf32>
    %485 = "tosa.transpose"(%484, %1) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %486 = "tosa.avg_pool2d"(%485) {acc_type = f32, kernel = array<i64: 7, 7>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>) -> tensor<1x1x1x2048xf32>
    %487 = "tosa.reshape"(%486) {new_shape = array<i64: 1, 1, 2048>} : (tensor<1x1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %488 = "tosa.matmul"(%487, %9) : (tensor<1x1x2048xf32>, tensor<1x2048x1000xf32>) -> tensor<1x1x1000xf32>
    %489 = "tosa.reshape"(%488) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %490 = "tosa.add"(%489, %8) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %490 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %0 = "tosa.const"() {value = dense<[0, 2, 1]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1 = "tosa.const"() {value = dense<0.0204081628> : tensor<1x7x7x2048xf32>} : () -> tensor<1x7x7x2048xf32>
    %2 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %4 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5 = "tosa.const"() {value = dense<[3, 1, 2, 0]> : tensor<4xi64>} : () -> tensor<4xi64>
    %cst = arith.constant -3.40282347E+38 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %6 = ml_program.global_load @global10 : tensor<1x2048x1000xf32>
    %7 = ml_program.global_load @global11 : tensor<1024x1x1x2048xf32>
    %8 = ml_program.global_load @global13 : tensor<1x2048x1x1xf32>
    %9 = ml_program.global_load @global14 : tensor<2048x1x1x1024xf32>
    %10 = ml_program.global_load @global15 : tensor<1024x3x3x1024xf32>
    %11 = ml_program.global_load @global16 : tensor<1024x1x1x1024xf32>
    %12 = ml_program.global_load @global17 : tensor<512x1x1x1024xf32>
    %13 = ml_program.global_load @global19 : tensor<1x1024x1x1xf32>
    %14 = ml_program.global_load @global20 : tensor<1024x1x1x512xf32>
    %15 = ml_program.global_load @global21 : tensor<512x3x3x512xf32>
    %16 = ml_program.global_load @global22 : tensor<512x1x1x512xf32>
    %17 = ml_program.global_load @global23 : tensor<256x1x1x512xf32>
    %18 = ml_program.global_load @global25 : tensor<1x512x1x1xf32>
    %19 = ml_program.global_load @global26 : tensor<512x1x1x256xf32>
    %20 = ml_program.global_load @global27 : tensor<256x3x3x256xf32>
    %21 = ml_program.global_load @global28 : tensor<256x1x1x256xf32>
    %22 = ml_program.global_load @global29 : tensor<128x1x1x256xf32>
    %23 = ml_program.global_load @global30 : tensor<256x1x1x64xf32>
    %24 = ml_program.global_load @global32 : tensor<1x256x1x1xf32>
    %25 = ml_program.global_load @global33 : tensor<256x1x1x128xf32>
    %26 = ml_program.global_load @global34 : tensor<128x3x3x128xf32>
    %27 = ml_program.global_load @global36 : tensor<1x128x1x1xf32>
    %28 = ml_program.global_load @global37 : tensor<128x1x1x64xf32>
    %29 = ml_program.global_load @global39 : tensor<1x64x1x1xf32>
    %30 = ml_program.global_load @global40 : tensor<64x7x7x3xf32>
    %31 = ml_program.global_load @global46 : tensor<1x64x1x1xf32>
    %32 = ml_program.global_load @global49 : tensor<1x64x112x112xf32>
    %33 = ml_program.global_load @global50 : tensor<1x64x112x112xf32>
    %34 = ml_program.global_load @global51 : tensor<1x112x112x64xf32>
    %35 = ml_program.global_load @global52 : tensor<1x56x56x64xf32>
    %36 = ml_program.global_load @global57 : tensor<1x128x1x1xf32>
    %37 = ml_program.global_load @global60 : tensor<1x128x56x56xf32>
    %38 = ml_program.global_load @global61 : tensor<1x128x56x56xf32>
    %39 = ml_program.global_load @global68 : tensor<1x128x56x56xf32>
    %40 = ml_program.global_load @global69 : tensor<1x128x56x56xf32>
    %41 = ml_program.global_load @global75 : tensor<1x256x1x1xf32>
    %42 = ml_program.global_load @global85 : tensor<1x256x56x56xf32>
    %43 = ml_program.global_load @global86 : tensor<1x256x56x56xf32>
    %44 = ml_program.global_load @global93 : tensor<1x128x56x56xf32>
    %45 = ml_program.global_load @global94 : tensor<1x128x56x56xf32>
    %46 = ml_program.global_load @global101 : tensor<1x128x56x56xf32>
    %47 = ml_program.global_load @global102 : tensor<1x128x56x56xf32>
    %48 = ml_program.global_load @global110 : tensor<1x256x56x56xf32>
    %49 = ml_program.global_load @global111 : tensor<1x256x56x56xf32>
    %50 = ml_program.global_load @global118 : tensor<1x128x56x56xf32>
    %51 = ml_program.global_load @global119 : tensor<1x128x56x56xf32>
    %52 = ml_program.global_load @global126 : tensor<1x128x56x56xf32>
    %53 = ml_program.global_load @global127 : tensor<1x128x56x56xf32>
    %54 = ml_program.global_load @global135 : tensor<1x256x56x56xf32>
    %55 = ml_program.global_load @global136 : tensor<1x256x56x56xf32>
    %56 = ml_program.global_load @global143 : tensor<1x256x56x56xf32>
    %57 = ml_program.global_load @global144 : tensor<1x256x56x56xf32>
    %58 = ml_program.global_load @global151 : tensor<1x256x28x28xf32>
    %59 = ml_program.global_load @global152 : tensor<1x256x28x28xf32>
    %60 = ml_program.global_load @global158 : tensor<1x512x1x1xf32>
    %61 = ml_program.global_load @global168 : tensor<1x512x28x28xf32>
    %62 = ml_program.global_load @global169 : tensor<1x512x28x28xf32>
    %63 = ml_program.global_load @global176 : tensor<1x256x28x28xf32>
    %64 = ml_program.global_load @global177 : tensor<1x256x28x28xf32>
    %65 = ml_program.global_load @global184 : tensor<1x256x28x28xf32>
    %66 = ml_program.global_load @global185 : tensor<1x256x28x28xf32>
    %67 = ml_program.global_load @global193 : tensor<1x512x28x28xf32>
    %68 = ml_program.global_load @global194 : tensor<1x512x28x28xf32>
    %69 = ml_program.global_load @global201 : tensor<1x256x28x28xf32>
    %70 = ml_program.global_load @global202 : tensor<1x256x28x28xf32>
    %71 = ml_program.global_load @global209 : tensor<1x256x28x28xf32>
    %72 = ml_program.global_load @global210 : tensor<1x256x28x28xf32>
    %73 = ml_program.global_load @global218 : tensor<1x512x28x28xf32>
    %74 = ml_program.global_load @global219 : tensor<1x512x28x28xf32>
    %75 = ml_program.global_load @global226 : tensor<1x256x28x28xf32>
    %76 = ml_program.global_load @global227 : tensor<1x256x28x28xf32>
    %77 = ml_program.global_load @global234 : tensor<1x256x28x28xf32>
    %78 = ml_program.global_load @global235 : tensor<1x256x28x28xf32>
    %79 = ml_program.global_load @global243 : tensor<1x512x28x28xf32>
    %80 = ml_program.global_load @global244 : tensor<1x512x28x28xf32>
    %81 = ml_program.global_load @global251 : tensor<1x512x28x28xf32>
    %82 = ml_program.global_load @global252 : tensor<1x512x28x28xf32>
    %83 = ml_program.global_load @global259 : tensor<1x512x14x14xf32>
    %84 = ml_program.global_load @global260 : tensor<1x512x14x14xf32>
    %85 = ml_program.global_load @global266 : tensor<1x1024x1x1xf32>
    %86 = ml_program.global_load @global276 : tensor<1x1024x14x14xf32>
    %87 = ml_program.global_load @global277 : tensor<1x1024x14x14xf32>
    %88 = ml_program.global_load @global284 : tensor<1x512x14x14xf32>
    %89 = ml_program.global_load @global285 : tensor<1x512x14x14xf32>
    %90 = ml_program.global_load @global292 : tensor<1x512x14x14xf32>
    %91 = ml_program.global_load @global293 : tensor<1x512x14x14xf32>
    %92 = ml_program.global_load @global301 : tensor<1x1024x14x14xf32>
    %93 = ml_program.global_load @global302 : tensor<1x1024x14x14xf32>
    %94 = ml_program.global_load @global309 : tensor<1x512x14x14xf32>
    %95 = ml_program.global_load @global310 : tensor<1x512x14x14xf32>
    %96 = ml_program.global_load @global317 : tensor<1x512x14x14xf32>
    %97 = ml_program.global_load @global318 : tensor<1x512x14x14xf32>
    %98 = ml_program.global_load @global326 : tensor<1x1024x14x14xf32>
    %99 = ml_program.global_load @global327 : tensor<1x1024x14x14xf32>
    %100 = ml_program.global_load @global334 : tensor<1x512x14x14xf32>
    %101 = ml_program.global_load @global335 : tensor<1x512x14x14xf32>
    %102 = ml_program.global_load @global342 : tensor<1x512x14x14xf32>
    %103 = ml_program.global_load @global343 : tensor<1x512x14x14xf32>
    %104 = ml_program.global_load @global351 : tensor<1x1024x14x14xf32>
    %105 = ml_program.global_load @global352 : tensor<1x1024x14x14xf32>
    %106 = ml_program.global_load @global359 : tensor<1x512x14x14xf32>
    %107 = ml_program.global_load @global360 : tensor<1x512x14x14xf32>
    %108 = ml_program.global_load @global367 : tensor<1x512x14x14xf32>
    %109 = ml_program.global_load @global368 : tensor<1x512x14x14xf32>
    %110 = ml_program.global_load @global376 : tensor<1x1024x14x14xf32>
    %111 = ml_program.global_load @global377 : tensor<1x1024x14x14xf32>
    %112 = ml_program.global_load @global384 : tensor<1x512x14x14xf32>
    %113 = ml_program.global_load @global385 : tensor<1x512x14x14xf32>
    %114 = ml_program.global_load @global392 : tensor<1x512x14x14xf32>
    %115 = ml_program.global_load @global393 : tensor<1x512x14x14xf32>
    %116 = ml_program.global_load @global401 : tensor<1x1024x14x14xf32>
    %117 = ml_program.global_load @global402 : tensor<1x1024x14x14xf32>
    %118 = ml_program.global_load @global409 : tensor<1x1024x14x14xf32>
    %119 = ml_program.global_load @global410 : tensor<1x1024x14x14xf32>
    %120 = ml_program.global_load @global417 : tensor<1x1024x7x7xf32>
    %121 = ml_program.global_load @global418 : tensor<1x1024x7x7xf32>
    %122 = ml_program.global_load @global424 : tensor<1x2048x1x1xf32>
    %123 = ml_program.global_load @global434 : tensor<1x2048x7x7xf32>
    %124 = ml_program.global_load @global435 : tensor<1x2048x7x7xf32>
    %125 = ml_program.global_load @global442 : tensor<1x1024x7x7xf32>
    %126 = ml_program.global_load @global443 : tensor<1x1024x7x7xf32>
    %127 = ml_program.global_load @global450 : tensor<1x1024x7x7xf32>
    %128 = ml_program.global_load @global451 : tensor<1x1024x7x7xf32>
    %129 = ml_program.global_load @global459 : tensor<1x2048x7x7xf32>
    %130 = ml_program.global_load @global460 : tensor<1x2048x7x7xf32>
    %131 = ml_program.global_load @global467 : tensor<1x1024x7x7xf32>
    %132 = ml_program.global_load @global468 : tensor<1x1024x7x7xf32>
    %133 = ml_program.global_load @global475 : tensor<1x1024x7x7xf32>
    %134 = ml_program.global_load @global476 : tensor<1x1024x7x7xf32>
    %135 = ml_program.global_load @global484 : tensor<1x2048x7x7xf32>
    %136 = ml_program.global_load @global485 : tensor<1x2048x7x7xf32>
    %137 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %138 = "tosa.transpose"(%6, %0) : (tensor<1x2048x1000xf32>, tensor<3xi32>) -> tensor<1x1000x2048xf32>
    %139 = "tosa.matmul"(%137, %138) : (tensor<1x1x1000xf32>, tensor<1x1000x2048xf32>) -> tensor<1x1x2048xf32>
    %140 = "tosa.reshape"(%139) {new_shape = array<i64: 1, 1, 1, 2048>} : (tensor<1x1x2048xf32>) -> tensor<1x1x1x2048xf32>
    %141 = "tosa.mul"(%140, %1) {shift = 0 : i8} : (tensor<1x1x1x2048xf32>, tensor<1x7x7x2048xf32>) -> tensor<1x7x7x2048xf32>
    %142 = "tosa.transpose"(%141, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %143 = "tosa.equal"(%135, %136) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %144 = "tosa.select"(%143, %142, %3) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %145 = "tosa.mul"(%8, %144) {shift = 0 : i8} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %146 = "tosa.mul"(%122, %145) {shift = 0 : i8} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %147 = "tosa.transpose"(%146, %4) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %148 = "tosa.transpose"(%9, %5) : (tensor<2048x1x1x1024xf32>, tensor<4xi64>) -> tensor<1024x1x1x2048xf32>
    %149 = tensor.empty() : tensor<1024xf32>
    %150 = "tosa.transpose_conv2d"(%147, %148, %149) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 1024>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %151 = "tosa.transpose"(%150, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %152 = "tosa.equal"(%133, %134) : (tensor<1x1024x7x7xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xi1>
    %153 = "tosa.select"(%152, %151, %3) : (tensor<1x1024x7x7xi1>, tensor<1x1024x7x7xf32>, tensor<f32>) -> tensor<1x1024x7x7xf32>
    %154 = "tosa.mul"(%13, %153) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %155 = "tosa.mul"(%85, %154) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %156 = "tosa.transpose"(%155, %4) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %157 = "tosa.transpose"(%10, %5) : (tensor<1024x3x3x1024xf32>, tensor<4xi64>) -> tensor<1024x3x3x1024xf32>
    %158 = "tosa.transpose_conv2d"(%156, %157, %149) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 1024>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %159 = "tosa.transpose"(%158, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %160 = "tosa.equal"(%131, %132) : (tensor<1x1024x7x7xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xi1>
    %161 = "tosa.select"(%160, %159, %3) : (tensor<1x1024x7x7xi1>, tensor<1x1024x7x7xf32>, tensor<f32>) -> tensor<1x1024x7x7xf32>
    %162 = "tosa.mul"(%13, %161) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %163 = "tosa.mul"(%85, %162) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %164 = "tosa.transpose"(%163, %4) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %165 = "tosa.transpose"(%7, %5) : (tensor<1024x1x1x2048xf32>, tensor<4xi64>) -> tensor<2048x1x1x1024xf32>
    %166 = tensor.empty() : tensor<2048xf32>
    %167 = "tosa.transpose_conv2d"(%164, %165, %166) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 2048>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %168 = "tosa.transpose"(%167, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %169 = "tosa.add"(%144, %168) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %170 = "tosa.equal"(%129, %130) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %171 = "tosa.select"(%170, %169, %3) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %172 = "tosa.mul"(%8, %171) {shift = 0 : i8} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %173 = "tosa.mul"(%122, %172) {shift = 0 : i8} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %174 = "tosa.transpose"(%173, %4) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %175 = "tosa.transpose_conv2d"(%174, %148, %149) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 1024>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %176 = "tosa.transpose"(%175, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %177 = "tosa.equal"(%127, %128) : (tensor<1x1024x7x7xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xi1>
    %178 = "tosa.select"(%177, %176, %3) : (tensor<1x1024x7x7xi1>, tensor<1x1024x7x7xf32>, tensor<f32>) -> tensor<1x1024x7x7xf32>
    %179 = "tosa.mul"(%13, %178) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %180 = "tosa.mul"(%85, %179) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %181 = "tosa.transpose"(%180, %4) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %182 = "tosa.transpose_conv2d"(%181, %157, %149) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 7, 7, 1024>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %183 = "tosa.transpose"(%182, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %184 = "tosa.equal"(%125, %126) : (tensor<1x1024x7x7xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xi1>
    %185 = "tosa.select"(%184, %183, %3) : (tensor<1x1024x7x7xi1>, tensor<1x1024x7x7xf32>, tensor<f32>) -> tensor<1x1024x7x7xf32>
    %186 = "tosa.mul"(%13, %185) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %187 = "tosa.mul"(%85, %186) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %188 = "tosa.transpose"(%187, %4) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %189 = "tosa.transpose_conv2d"(%188, %165, %166) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 2048>, stride = array<i64: 1, 1>} : (tensor<1x7x7x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %190 = "tosa.transpose"(%189, %2) : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %191 = "tosa.add"(%171, %190) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %192 = "tosa.equal"(%123, %124) : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xi1>
    %193 = "tosa.select"(%192, %191, %3) : (tensor<1x2048x7x7xi1>, tensor<1x2048x7x7xf32>, tensor<f32>) -> tensor<1x2048x7x7xf32>
    %194 = "tosa.mul"(%8, %193) {shift = 0 : i8} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %195 = "tosa.mul"(%122, %194) {shift = 0 : i8} : (tensor<1x2048x1x1xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %196 = "tosa.transpose"(%195, %4) : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %197 = "tosa.transpose_conv2d"(%196, %148, %149) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 2, 2>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %198 = "tosa.transpose_conv2d"(%196, %148, %149) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 7, 7, 1024>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<1024x1x1x2048xf32>, tensor<1024xf32>) -> tensor<1x7x7x1024xf32>
    %199 = "tosa.transpose"(%198, %2) : (tensor<1x7x7x1024xf32>, tensor<4xi32>) -> tensor<1x1024x7x7xf32>
    %200 = "tosa.equal"(%120, %121) : (tensor<1x1024x7x7xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xi1>
    %201 = "tosa.select"(%200, %199, %3) : (tensor<1x1024x7x7xi1>, tensor<1x1024x7x7xf32>, tensor<f32>) -> tensor<1x1024x7x7xf32>
    %202 = "tosa.mul"(%13, %201) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %203 = "tosa.mul"(%85, %202) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %204 = "tosa.transpose"(%203, %4) : (tensor<1x1024x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x1024xf32>
    %205 = "tosa.transpose_conv2d"(%204, %157, %149) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 2, 2>} : (tensor<1x7x7x1024xf32>, tensor<1024x3x3x1024xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %206 = "tosa.transpose"(%205, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %207 = "tosa.equal"(%118, %119) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %208 = "tosa.select"(%207, %206, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %209 = "tosa.mul"(%13, %208) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %210 = "tosa.mul"(%85, %209) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %211 = "tosa.transpose"(%210, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %212 = "tosa.transpose"(%11, %5) : (tensor<1024x1x1x1024xf32>, tensor<4xi64>) -> tensor<1024x1x1x1024xf32>
    %213 = "tosa.transpose_conv2d"(%211, %212, %149) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<1024x1x1x1024xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %214 = "tosa.add"(%197, %213) : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %215 = "tosa.transpose"(%214, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %216 = "tosa.equal"(%116, %117) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %217 = "tosa.select"(%216, %215, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %218 = "tosa.mul"(%13, %217) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %219 = "tosa.mul"(%85, %218) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %220 = "tosa.transpose"(%219, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %221 = "tosa.transpose"(%14, %5) : (tensor<1024x1x1x512xf32>, tensor<4xi64>) -> tensor<512x1x1x1024xf32>
    %222 = tensor.empty() : tensor<512xf32>
    %223 = "tosa.transpose_conv2d"(%220, %221, %222) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %224 = "tosa.transpose"(%223, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %225 = "tosa.equal"(%114, %115) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %226 = "tosa.select"(%225, %224, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %227 = "tosa.mul"(%18, %226) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %228 = "tosa.mul"(%60, %227) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %229 = "tosa.transpose"(%228, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %230 = "tosa.transpose"(%15, %5) : (tensor<512x3x3x512xf32>, tensor<4xi64>) -> tensor<512x3x3x512xf32>
    %231 = "tosa.transpose_conv2d"(%229, %230, %222) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %232 = "tosa.transpose"(%231, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %233 = "tosa.equal"(%112, %113) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %234 = "tosa.select"(%233, %232, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %235 = "tosa.mul"(%18, %234) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %236 = "tosa.mul"(%60, %235) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %237 = "tosa.transpose"(%236, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %238 = "tosa.transpose"(%12, %5) : (tensor<512x1x1x1024xf32>, tensor<4xi64>) -> tensor<1024x1x1x512xf32>
    %239 = "tosa.transpose_conv2d"(%237, %238, %149) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %240 = "tosa.transpose"(%239, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %241 = "tosa.add"(%217, %240) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %242 = "tosa.equal"(%110, %111) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %243 = "tosa.select"(%242, %241, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %244 = "tosa.mul"(%13, %243) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %245 = "tosa.mul"(%85, %244) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %246 = "tosa.transpose"(%245, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %247 = "tosa.transpose_conv2d"(%246, %221, %222) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %248 = "tosa.transpose"(%247, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %249 = "tosa.equal"(%108, %109) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %250 = "tosa.select"(%249, %248, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %251 = "tosa.mul"(%18, %250) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %252 = "tosa.mul"(%60, %251) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %253 = "tosa.transpose"(%252, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %254 = "tosa.transpose_conv2d"(%253, %230, %222) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %255 = "tosa.transpose"(%254, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %256 = "tosa.equal"(%106, %107) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %257 = "tosa.select"(%256, %255, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %258 = "tosa.mul"(%18, %257) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %259 = "tosa.mul"(%60, %258) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %260 = "tosa.transpose"(%259, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %261 = "tosa.transpose_conv2d"(%260, %238, %149) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %262 = "tosa.transpose"(%261, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %263 = "tosa.add"(%243, %262) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %264 = "tosa.equal"(%104, %105) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %265 = "tosa.select"(%264, %263, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %266 = "tosa.mul"(%13, %265) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %267 = "tosa.mul"(%85, %266) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %268 = "tosa.transpose"(%267, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %269 = "tosa.transpose_conv2d"(%268, %221, %222) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %270 = "tosa.transpose"(%269, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %271 = "tosa.equal"(%102, %103) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %272 = "tosa.select"(%271, %270, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %273 = "tosa.mul"(%18, %272) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %274 = "tosa.mul"(%60, %273) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %275 = "tosa.transpose"(%274, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %276 = "tosa.transpose_conv2d"(%275, %230, %222) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %277 = "tosa.transpose"(%276, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %278 = "tosa.equal"(%100, %101) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %279 = "tosa.select"(%278, %277, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %280 = "tosa.mul"(%18, %279) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %281 = "tosa.mul"(%60, %280) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %282 = "tosa.transpose"(%281, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %283 = "tosa.transpose_conv2d"(%282, %238, %149) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %284 = "tosa.transpose"(%283, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %285 = "tosa.add"(%265, %284) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %286 = "tosa.equal"(%98, %99) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %287 = "tosa.select"(%286, %285, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %288 = "tosa.mul"(%13, %287) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %289 = "tosa.mul"(%85, %288) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %290 = "tosa.transpose"(%289, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %291 = "tosa.transpose_conv2d"(%290, %221, %222) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %292 = "tosa.transpose"(%291, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %293 = "tosa.equal"(%96, %97) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %294 = "tosa.select"(%293, %292, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %295 = "tosa.mul"(%18, %294) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %296 = "tosa.mul"(%60, %295) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %297 = "tosa.transpose"(%296, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %298 = "tosa.transpose_conv2d"(%297, %230, %222) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %299 = "tosa.transpose"(%298, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %300 = "tosa.equal"(%94, %95) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %301 = "tosa.select"(%300, %299, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %302 = "tosa.mul"(%18, %301) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %303 = "tosa.mul"(%60, %302) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %304 = "tosa.transpose"(%303, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %305 = "tosa.transpose_conv2d"(%304, %238, %149) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %306 = "tosa.transpose"(%305, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %307 = "tosa.add"(%287, %306) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %308 = "tosa.equal"(%92, %93) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %309 = "tosa.select"(%308, %307, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %310 = "tosa.mul"(%13, %309) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %311 = "tosa.mul"(%85, %310) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %312 = "tosa.transpose"(%311, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %313 = "tosa.transpose_conv2d"(%312, %221, %222) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %314 = "tosa.transpose"(%313, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %315 = "tosa.equal"(%90, %91) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %316 = "tosa.select"(%315, %314, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %317 = "tosa.mul"(%18, %316) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %318 = "tosa.mul"(%60, %317) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %319 = "tosa.transpose"(%318, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %320 = "tosa.transpose_conv2d"(%319, %230, %222) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %321 = "tosa.transpose"(%320, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %322 = "tosa.equal"(%88, %89) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %323 = "tosa.select"(%322, %321, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %324 = "tosa.mul"(%18, %323) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %325 = "tosa.mul"(%60, %324) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %326 = "tosa.transpose"(%325, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %327 = "tosa.transpose_conv2d"(%326, %238, %149) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 1024>, stride = array<i64: 1, 1>} : (tensor<1x14x14x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %328 = "tosa.transpose"(%327, %2) : (tensor<1x14x14x1024xf32>, tensor<4xi32>) -> tensor<1x1024x14x14xf32>
    %329 = "tosa.add"(%309, %328) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %330 = "tosa.equal"(%86, %87) : (tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xi1>
    %331 = "tosa.select"(%330, %329, %3) : (tensor<1x1024x14x14xi1>, tensor<1x1024x14x14xf32>, tensor<f32>) -> tensor<1x1024x14x14xf32>
    %332 = "tosa.mul"(%13, %331) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %333 = "tosa.mul"(%85, %332) {shift = 0 : i8} : (tensor<1x1024x1x1xf32>, tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %334 = "tosa.transpose"(%333, %4) : (tensor<1x1024x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x1024xf32>
    %335 = "tosa.transpose_conv2d"(%334, %221, %222) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %336 = "tosa.transpose_conv2d"(%334, %221, %222) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 14, 14, 512>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %337 = "tosa.transpose"(%336, %2) : (tensor<1x14x14x512xf32>, tensor<4xi32>) -> tensor<1x512x14x14xf32>
    %338 = "tosa.equal"(%83, %84) : (tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xi1>
    %339 = "tosa.select"(%338, %337, %3) : (tensor<1x512x14x14xi1>, tensor<1x512x14x14xf32>, tensor<f32>) -> tensor<1x512x14x14xf32>
    %340 = "tosa.mul"(%18, %339) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %341 = "tosa.mul"(%60, %340) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %342 = "tosa.transpose"(%341, %4) : (tensor<1x512x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x512xf32>
    %343 = "tosa.transpose_conv2d"(%342, %230, %222) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %344 = "tosa.transpose"(%343, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %345 = "tosa.equal"(%81, %82) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %346 = "tosa.select"(%345, %344, %3) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %347 = "tosa.mul"(%18, %346) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %348 = "tosa.mul"(%60, %347) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %349 = "tosa.transpose"(%348, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %350 = "tosa.transpose"(%16, %5) : (tensor<512x1x1x512xf32>, tensor<4xi64>) -> tensor<512x1x1x512xf32>
    %351 = "tosa.transpose_conv2d"(%349, %350, %222) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<512x1x1x512xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %352 = "tosa.add"(%335, %351) : (tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %353 = "tosa.transpose"(%352, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %354 = "tosa.equal"(%79, %80) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %355 = "tosa.select"(%354, %353, %3) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %356 = "tosa.mul"(%18, %355) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %357 = "tosa.mul"(%60, %356) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %358 = "tosa.transpose"(%357, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %359 = "tosa.transpose"(%19, %5) : (tensor<512x1x1x256xf32>, tensor<4xi64>) -> tensor<256x1x1x512xf32>
    %360 = tensor.empty() : tensor<256xf32>
    %361 = "tosa.transpose_conv2d"(%358, %359, %360) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %362 = "tosa.transpose"(%361, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %363 = "tosa.equal"(%77, %78) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %364 = "tosa.select"(%363, %362, %3) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %365 = "tosa.mul"(%24, %364) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %366 = "tosa.mul"(%41, %365) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %367 = "tosa.transpose"(%366, %4) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %368 = "tosa.transpose"(%20, %5) : (tensor<256x3x3x256xf32>, tensor<4xi64>) -> tensor<256x3x3x256xf32>
    %369 = "tosa.transpose_conv2d"(%367, %368, %360) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %370 = "tosa.transpose"(%369, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %371 = "tosa.equal"(%75, %76) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %372 = "tosa.select"(%371, %370, %3) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %373 = "tosa.mul"(%24, %372) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %374 = "tosa.mul"(%41, %373) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %375 = "tosa.transpose"(%374, %4) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %376 = "tosa.transpose"(%17, %5) : (tensor<256x1x1x512xf32>, tensor<4xi64>) -> tensor<512x1x1x256xf32>
    %377 = "tosa.transpose_conv2d"(%375, %376, %222) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %378 = "tosa.transpose"(%377, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %379 = "tosa.add"(%355, %378) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %380 = "tosa.equal"(%73, %74) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %381 = "tosa.select"(%380, %379, %3) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %382 = "tosa.mul"(%18, %381) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %383 = "tosa.mul"(%60, %382) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %384 = "tosa.transpose"(%383, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %385 = "tosa.transpose_conv2d"(%384, %359, %360) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %386 = "tosa.transpose"(%385, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %387 = "tosa.equal"(%71, %72) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %388 = "tosa.select"(%387, %386, %3) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %389 = "tosa.mul"(%24, %388) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %390 = "tosa.mul"(%41, %389) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %391 = "tosa.transpose"(%390, %4) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %392 = "tosa.transpose_conv2d"(%391, %368, %360) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %393 = "tosa.transpose"(%392, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %394 = "tosa.equal"(%69, %70) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %395 = "tosa.select"(%394, %393, %3) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %396 = "tosa.mul"(%24, %395) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %397 = "tosa.mul"(%41, %396) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %398 = "tosa.transpose"(%397, %4) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %399 = "tosa.transpose_conv2d"(%398, %376, %222) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %400 = "tosa.transpose"(%399, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %401 = "tosa.add"(%381, %400) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %402 = "tosa.equal"(%67, %68) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %403 = "tosa.select"(%402, %401, %3) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %404 = "tosa.mul"(%18, %403) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %405 = "tosa.mul"(%60, %404) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %406 = "tosa.transpose"(%405, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %407 = "tosa.transpose_conv2d"(%406, %359, %360) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %408 = "tosa.transpose"(%407, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %409 = "tosa.equal"(%65, %66) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %410 = "tosa.select"(%409, %408, %3) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %411 = "tosa.mul"(%24, %410) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %412 = "tosa.mul"(%41, %411) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %413 = "tosa.transpose"(%412, %4) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %414 = "tosa.transpose_conv2d"(%413, %368, %360) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %415 = "tosa.transpose"(%414, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %416 = "tosa.equal"(%63, %64) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %417 = "tosa.select"(%416, %415, %3) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %418 = "tosa.mul"(%24, %417) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %419 = "tosa.mul"(%41, %418) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %420 = "tosa.transpose"(%419, %4) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %421 = "tosa.transpose_conv2d"(%420, %376, %222) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 512>, stride = array<i64: 1, 1>} : (tensor<1x28x28x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %422 = "tosa.transpose"(%421, %2) : (tensor<1x28x28x512xf32>, tensor<4xi32>) -> tensor<1x512x28x28xf32>
    %423 = "tosa.add"(%403, %422) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %424 = "tosa.equal"(%61, %62) : (tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xi1>
    %425 = "tosa.select"(%424, %423, %3) : (tensor<1x512x28x28xi1>, tensor<1x512x28x28xf32>, tensor<f32>) -> tensor<1x512x28x28xf32>
    %426 = "tosa.mul"(%18, %425) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %427 = "tosa.mul"(%60, %426) {shift = 0 : i8} : (tensor<1x512x1x1xf32>, tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %428 = "tosa.transpose"(%427, %4) : (tensor<1x512x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x512xf32>
    %429 = "tosa.transpose_conv2d"(%428, %359, %360) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %430 = "tosa.transpose_conv2d"(%428, %359, %360) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 28, 28, 256>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %431 = "tosa.transpose"(%430, %2) : (tensor<1x28x28x256xf32>, tensor<4xi32>) -> tensor<1x256x28x28xf32>
    %432 = "tosa.equal"(%58, %59) : (tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xi1>
    %433 = "tosa.select"(%432, %431, %3) : (tensor<1x256x28x28xi1>, tensor<1x256x28x28xf32>, tensor<f32>) -> tensor<1x256x28x28xf32>
    %434 = "tosa.mul"(%24, %433) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %435 = "tosa.mul"(%41, %434) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %436 = "tosa.transpose"(%435, %4) : (tensor<1x256x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x256xf32>
    %437 = "tosa.transpose_conv2d"(%436, %368, %360) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 2, 2>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %438 = "tosa.transpose"(%437, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %439 = "tosa.equal"(%56, %57) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %440 = "tosa.select"(%439, %438, %3) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %441 = "tosa.mul"(%24, %440) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %442 = "tosa.mul"(%41, %441) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %443 = "tosa.transpose"(%442, %4) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %444 = "tosa.transpose"(%21, %5) : (tensor<256x1x1x256xf32>, tensor<4xi64>) -> tensor<256x1x1x256xf32>
    %445 = "tosa.transpose_conv2d"(%443, %444, %360) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<256x1x1x256xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %446 = "tosa.add"(%429, %445) : (tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %447 = "tosa.transpose"(%446, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %448 = "tosa.equal"(%54, %55) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %449 = "tosa.select"(%448, %447, %3) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %450 = "tosa.mul"(%24, %449) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %451 = "tosa.mul"(%41, %450) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %452 = "tosa.transpose"(%451, %4) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %453 = "tosa.transpose"(%25, %5) : (tensor<256x1x1x128xf32>, tensor<4xi64>) -> tensor<128x1x1x256xf32>
    %454 = tensor.empty() : tensor<128xf32>
    %455 = "tosa.transpose_conv2d"(%452, %453, %454) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %456 = "tosa.transpose"(%455, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %457 = "tosa.equal"(%52, %53) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %458 = "tosa.select"(%457, %456, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %459 = "tosa.mul"(%27, %458) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %460 = "tosa.mul"(%36, %459) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %461 = "tosa.transpose"(%460, %4) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %462 = "tosa.transpose"(%26, %5) : (tensor<128x3x3x128xf32>, tensor<4xi64>) -> tensor<128x3x3x128xf32>
    %463 = "tosa.transpose_conv2d"(%461, %462, %454) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %464 = "tosa.transpose"(%463, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %465 = "tosa.equal"(%50, %51) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %466 = "tosa.select"(%465, %464, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %467 = "tosa.mul"(%27, %466) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %468 = "tosa.mul"(%36, %467) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %469 = "tosa.transpose"(%468, %4) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %470 = "tosa.transpose"(%22, %5) : (tensor<128x1x1x256xf32>, tensor<4xi64>) -> tensor<256x1x1x128xf32>
    %471 = "tosa.transpose_conv2d"(%469, %470, %360) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %472 = "tosa.transpose"(%471, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %473 = "tosa.add"(%449, %472) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %474 = "tosa.equal"(%48, %49) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %475 = "tosa.select"(%474, %473, %3) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %476 = "tosa.mul"(%24, %475) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %477 = "tosa.mul"(%41, %476) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %478 = "tosa.transpose"(%477, %4) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %479 = "tosa.transpose_conv2d"(%478, %453, %454) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %480 = "tosa.transpose"(%479, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %481 = "tosa.equal"(%46, %47) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %482 = "tosa.select"(%481, %480, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %483 = "tosa.mul"(%27, %482) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %484 = "tosa.mul"(%36, %483) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %485 = "tosa.transpose"(%484, %4) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %486 = "tosa.transpose_conv2d"(%485, %462, %454) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %487 = "tosa.transpose"(%486, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %488 = "tosa.equal"(%44, %45) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %489 = "tosa.select"(%488, %487, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %490 = "tosa.mul"(%27, %489) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %491 = "tosa.mul"(%36, %490) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %492 = "tosa.transpose"(%491, %4) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %493 = "tosa.transpose_conv2d"(%492, %470, %360) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 256>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %494 = "tosa.transpose"(%493, %2) : (tensor<1x56x56x256xf32>, tensor<4xi32>) -> tensor<1x256x56x56xf32>
    %495 = "tosa.add"(%475, %494) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %496 = "tosa.equal"(%42, %43) : (tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xi1>
    %497 = "tosa.select"(%496, %495, %3) : (tensor<1x256x56x56xi1>, tensor<1x256x56x56xf32>, tensor<f32>) -> tensor<1x256x56x56xf32>
    %498 = "tosa.mul"(%24, %497) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %499 = "tosa.mul"(%41, %498) {shift = 0 : i8} : (tensor<1x256x1x1xf32>, tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %500 = "tosa.transpose"(%499, %4) : (tensor<1x256x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x256xf32>
    %501 = "tosa.transpose"(%23, %5) : (tensor<256x1x1x64xf32>, tensor<4xi64>) -> tensor<64x1x1x256xf32>
    %502 = tensor.empty() : tensor<64xf32>
    %503 = "tosa.transpose_conv2d"(%500, %501, %502) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %504 = "tosa.transpose_conv2d"(%500, %453, %454) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %505 = "tosa.transpose"(%504, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %506 = "tosa.equal"(%39, %40) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %507 = "tosa.select"(%506, %505, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %508 = "tosa.mul"(%27, %507) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %509 = "tosa.mul"(%36, %508) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %510 = "tosa.transpose"(%509, %4) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %511 = "tosa.transpose_conv2d"(%510, %462, %454) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 56, 56, 128>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %512 = "tosa.transpose"(%511, %2) : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %513 = "tosa.equal"(%37, %38) : (tensor<1x128x56x56xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xi1>
    %514 = "tosa.select"(%513, %512, %3) : (tensor<1x128x56x56xi1>, tensor<1x128x56x56xf32>, tensor<f32>) -> tensor<1x128x56x56xf32>
    %515 = "tosa.mul"(%27, %514) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %516 = "tosa.mul"(%36, %515) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %517 = "tosa.transpose"(%516, %4) : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %518 = "tosa.transpose"(%28, %5) : (tensor<128x1x1x64xf32>, tensor<4xi64>) -> tensor<64x1x1x128xf32>
    %519 = "tosa.transpose_conv2d"(%517, %518, %502) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 56, 56, 64>, stride = array<i64: 1, 1>} : (tensor<1x56x56x128xf32>, tensor<64x1x1x128xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %520 = "tosa.add"(%503, %519) : (tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %padded = tensor.pad %34 low[0, 1, 1, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst : f32
    } : tensor<1x112x112x64xf32> to tensor<1x113x113x64xf32>
    %521 = tensor.empty() : tensor<1x113x113x64xf32>
    %522 = tensor.empty() : tensor<3x3xf32>
    %523 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%padded, %522, %35, %520 : tensor<1x113x113x64xf32>, tensor<3x3xf32>, tensor<1x56x56x64xf32>, tensor<1x56x56x64xf32>) outs(%521 : tensor<1x113x113x64xf32>) {
    ^bb0(%in: f32, %in_1: f32, %in_2: f32, %in_3: f32, %out: f32):
      %534 = arith.cmpf oge, %in, %in_2 : f32
      %535 = arith.select %534, %in_3, %cst_0 : f32
      %536 = arith.addf %out, %535 : f32
      linalg.yield %536 : f32
    } -> tensor<1x113x113x64xf32>
    %extracted_slice = tensor.extract_slice %523[0, 1, 1, 0] [1, 112, 112, 64] [1, 1, 1, 1] : tensor<1x113x113x64xf32> to tensor<1x112x112x64xf32>
    %524 = "tosa.transpose"(%extracted_slice, %2) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %525 = "tosa.equal"(%32, %33) : (tensor<1x64x112x112xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xi1>
    %526 = "tosa.select"(%525, %524, %3) : (tensor<1x64x112x112xi1>, tensor<1x64x112x112xf32>, tensor<f32>) -> tensor<1x64x112x112xf32>
    %527 = "tosa.mul"(%29, %526) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %528 = "tosa.mul"(%31, %527) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %529 = "tosa.transpose"(%528, %4) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %530 = "tosa.transpose"(%30, %5) : (tensor<64x7x7x3xf32>, tensor<4xi64>) -> tensor<3x7x7x64xf32>
    %531 = tensor.empty() : tensor<3xf32>
    %532 = "tosa.transpose_conv2d"(%529, %530, %531) {out_pad = array<i64: -3, -3, -3, -3>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>, tensor<3x7x7x64xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %533 = "tosa.transpose"(%532, %2) : (tensor<1x224x224x3xf32>, tensor<4xi32>) -> tensor<1x3x224x224xf32>
    return %533 : tensor<1x3x224x224xf32>
  }
}

