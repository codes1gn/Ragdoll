#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 + d4, d2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
module {
  ml_program.global private mutable @global0 : tensor<1x3x224x224xf32>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense<0.000000e+00> : tensor<1x256x25x25xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1x288x25x25xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1x768x12x12xf32>
    %cst_2 = arith.constant dense<0.000000e+00> : tensor<1x1280x5x5xf32>
    %cst_3 = arith.constant dense<0.000000e+00> : tensor<1x768x5x5xf32>
    %cst_4 = arith.constant dense<0.000000e+00> : tensor<1x2048x5x5xf32>
    %0 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1000xf32>} : () -> tensor<1000xf32>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x2048x1000xf32>} : () -> tensor<1x2048x1000xf32>
    %2 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %3 = "tosa.const"() {value = dense<"0x3D6BD0785C2F95B8BA4AC1421817B9FEB7A6A3EA51D067EBB31C70AA4C9C0C9D2008E6E59D00568CF66D81028B7072D29B20021D897DD288E069D7F6791693AF2101483DA26D20DF7D2D793E87EF873188E31D6E57519A2BFA4DC36F766D122331950859F8F513A4C39C3E8BBB2EA66D4E598286A94DF7C4F4390A9AAEF5126CD995FCA13841F1F67A8FD5455C3D9B24B733D650984EF30ED57BB8EDE1DA7E559E9E7A4105D7739F7660B1D3AA85E42774D01D269757BEAF77003552617B655EEB71B0CE30058A420AFBD204359CB1EFA77A67B4D6795CD13A65CD23BC0F8E6D990356E01A92450F939F8433780C2090074C9015DB003EEC3AB39A626E9898F9"> : tensor<1x2048x1x1xi1>} : () -> tensor<1x2048x1x1xi1>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x1x2048xf32>} : () -> tensor<192x1x1x2048xf32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<448x1x1x2048xf32>} : () -> tensor<448x1x1x2048xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x1x1x2048xf32>} : () -> tensor<384x1x1x2048xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<320x1x1x2048xf32>} : () -> tensor<320x1x1x2048xf32>
    %8 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x1x1280xf32>} : () -> tensor<192x1x1x1280xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x3x3x448xf32>} : () -> tensor<384x3x3x448xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x448x1x1xf32>} : () -> tensor<1x448x1x1xf32>
    %11 = "tosa.const"() {value = dense<0.000000e+00> : tensor<448xf32>} : () -> tensor<448xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<448x1x1x1280xf32>} : () -> tensor<448x1x1x1280xf32>
    %13 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x3x1x384xf32>} : () -> tensor<384x3x1x384xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x1x3x384xf32>} : () -> tensor<384x1x3x384xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x1x1x1280xf32>} : () -> tensor<384x1x1x1280xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<320x1x1x1280xf32>} : () -> tensor<320x1x1x1280xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x3x3x192xf32>} : () -> tensor<192x3x3x192xf32>
    %18 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x320x1x1xf32>} : () -> tensor<1x320x1x1xf32>
    %19 = "tosa.const"() {value = dense<0.000000e+00> : tensor<320xf32>} : () -> tensor<320xf32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<320x3x3x192xf32>} : () -> tensor<320x3x3x192xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x7x1x192xf32>} : () -> tensor<192x7x1x192xf32>
    %22 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x7x192xf32>} : () -> tensor<192x1x7x192xf32>
    %23 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x7x160xf32>} : () -> tensor<192x1x7x160xf32>
    %24 = "tosa.const"() {value = dense<7.777000e-02> : tensor<160x7x1x160xf32>} : () -> tensor<160x7x1x160xf32>
    %25 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x7x1x160xf32>} : () -> tensor<192x7x1x160xf32>
    %26 = "tosa.const"() {value = dense<7.777000e-02> : tensor<160x1x7x160xf32>} : () -> tensor<160x1x7x160xf32>
    %27 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x160x1x1xf32>} : () -> tensor<1x160x1x1xf32>
    %28 = "tosa.const"() {value = dense<0.000000e+00> : tensor<160xf32>} : () -> tensor<160xf32>
    %29 = "tosa.const"() {value = dense<7.777000e-02> : tensor<160x1x1x768xf32>} : () -> tensor<160x1x1x768xf32>
    %30 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x7x128xf32>} : () -> tensor<192x1x7x128xf32>
    %31 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x7x1x128xf32>} : () -> tensor<128x7x1x128xf32>
    %32 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x7x1x128xf32>} : () -> tensor<192x7x1x128xf32>
    %33 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x7x128xf32>} : () -> tensor<128x1x7x128xf32>
    %34 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %35 = "tosa.const"() {value = dense<0.000000e+00> : tensor<128xf32>} : () -> tensor<128xf32>
    %36 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x768xf32>} : () -> tensor<128x1x1x768xf32>
    %37 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x1x768xf32>} : () -> tensor<192x1x1x768xf32>
    %38 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x384x1x1xf32>} : () -> tensor<1x384x1x1xf32>
    %39 = "tosa.const"() {value = dense<0.000000e+00> : tensor<384xf32>} : () -> tensor<384xf32>
    %40 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x3x3x288xf32>} : () -> tensor<384x3x3x288xf32>
    %41 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48x1x1x288xf32>} : () -> tensor<48x1x1x288xf32>
    %42 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x288xf32>} : () -> tensor<64x1x1x288xf32>
    %43 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48x1x1x256xf32>} : () -> tensor<48x1x1x256xf32>
    %44 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x256xf32>} : () -> tensor<64x1x1x256xf32>
    %45 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32x1x1x192xf32>} : () -> tensor<32x1x1x192xf32>
    %46 = "tosa.const"() {value = dense<7.777000e-02> : tensor<96x3x3x96xf32>} : () -> tensor<96x3x3x96xf32>
    %47 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x96x1x1xf32>} : () -> tensor<1x96x1x1xf32>
    %48 = "tosa.const"() {value = dense<0.000000e+00> : tensor<96xf32>} : () -> tensor<96xf32>
    %49 = "tosa.const"() {value = dense<7.777000e-02> : tensor<96x3x3x64xf32>} : () -> tensor<96x3x3x64xf32>
    %50 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x5x5x48xf32>} : () -> tensor<64x5x5x48xf32>
    %51 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x48x1x1xf32>} : () -> tensor<1x48x1x1xf32>
    %52 = "tosa.const"() {value = dense<0.000000e+00> : tensor<48xf32>} : () -> tensor<48xf32>
    %53 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48x1x1x192xf32>} : () -> tensor<48x1x1x192xf32>
    %54 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x192xf32>} : () -> tensor<64x1x1x192xf32>
    %55 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x192x1x1xf32>} : () -> tensor<1x192x1x1xf32>
    %56 = "tosa.const"() {value = dense<0.000000e+00> : tensor<192xf32>} : () -> tensor<192xf32>
    %57 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x3x3x80xf32>} : () -> tensor<192x3x3x80xf32>
    %58 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x80x1x1xf32>} : () -> tensor<1x80x1x1xf32>
    %59 = "tosa.const"() {value = dense<0.000000e+00> : tensor<80xf32>} : () -> tensor<80xf32>
    %60 = "tosa.const"() {value = dense<7.777000e-02> : tensor<80x1x1x64xf32>} : () -> tensor<80x1x1x64xf32>
    %61 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %62 = "tosa.const"() {value = dense<0.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %63 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x32xf32>} : () -> tensor<64x3x3x32xf32>
    %64 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32x3x3x32xf32>} : () -> tensor<32x3x3x32xf32>
    %65 = "tosa.const"() {value = dense<1.000000e-03> : tensor<f32>} : () -> tensor<f32>
    %66 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x32x1x1xf32>} : () -> tensor<1x32x1x1xf32>
    %67 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi64>} : () -> tensor<4xi64>
    %68 = "tosa.const"() {value = dense<0.000000e+00> : tensor<32xf32>} : () -> tensor<32xf32>
    %69 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi64>} : () -> tensor<4xi64>
    %70 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32x3x3x3xf32>} : () -> tensor<32x3x3x3xf32>
    ml_program.global_store @global0 = %arg0 : tensor<1x3x224x224xf32>
    %71 = "tosa.transpose"(%arg0, %69) : (tensor<1x3x224x224xf32>, tensor<4xi64>) -> tensor<1x224x224x3xf32>
    %72 = "tosa.conv2d"(%71, %70, %68) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<32x3x3x3xf32>, tensor<32xf32>) -> tensor<1x111x111x32xf32>
    %73 = "tosa.transpose"(%72, %67) : (tensor<1x111x111x32xf32>, tensor<4xi64>) -> tensor<1x32x111x111xf32>
    %74 = "tosa.sub"(%73, %66) : (tensor<1x32x111x111xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x111x111xf32>
    %75 = "tosa.add"(%66, %65) : (tensor<1x32x1x1xf32>, tensor<f32>) -> tensor<1x32x1x1xf32>
    %76 = "tosa.rsqrt"(%75) : (tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %77 = "tosa.mul"(%74, %76) {shift = 0 : i8} : (tensor<1x32x111x111xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x111x111xf32>
    %78 = "tosa.mul"(%77, %66) {shift = 0 : i8} : (tensor<1x32x111x111xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x111x111xf32>
    %79 = "tosa.add"(%78, %66) : (tensor<1x32x111x111xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x111x111xf32>
    %80 = "tosa.clamp"(%79) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x111x111xf32>) -> tensor<1x32x111x111xf32>
    %81 = "tosa.transpose"(%80, %69) : (tensor<1x32x111x111xf32>, tensor<4xi64>) -> tensor<1x111x111x32xf32>
    %82 = "tosa.conv2d"(%81, %64, %68) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x111x111x32xf32>, tensor<32x3x3x32xf32>, tensor<32xf32>) -> tensor<1x109x109x32xf32>
    %83 = "tosa.transpose"(%82, %67) : (tensor<1x109x109x32xf32>, tensor<4xi64>) -> tensor<1x32x109x109xf32>
    %84 = "tosa.sub"(%83, %66) : (tensor<1x32x109x109xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x109x109xf32>
    %85 = "tosa.mul"(%84, %76) {shift = 0 : i8} : (tensor<1x32x109x109xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x109x109xf32>
    %86 = "tosa.mul"(%85, %66) {shift = 0 : i8} : (tensor<1x32x109x109xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x109x109xf32>
    %87 = "tosa.add"(%86, %66) : (tensor<1x32x109x109xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x109x109xf32>
    %88 = "tosa.clamp"(%87) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x109x109xf32>) -> tensor<1x32x109x109xf32>
    %89 = "tosa.transpose"(%88, %69) : (tensor<1x32x109x109xf32>, tensor<4xi64>) -> tensor<1x109x109x32xf32>
    %90 = "tosa.conv2d"(%89, %63, %62) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x109x109x32xf32>, tensor<64x3x3x32xf32>, tensor<64xf32>) -> tensor<1x109x109x64xf32>
    %91 = "tosa.transpose"(%90, %67) : (tensor<1x109x109x64xf32>, tensor<4xi64>) -> tensor<1x64x109x109xf32>
    %92 = "tosa.sub"(%91, %61) : (tensor<1x64x109x109xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x109x109xf32>
    %93 = "tosa.add"(%61, %65) : (tensor<1x64x1x1xf32>, tensor<f32>) -> tensor<1x64x1x1xf32>
    %94 = "tosa.rsqrt"(%93) : (tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %95 = "tosa.mul"(%92, %94) {shift = 0 : i8} : (tensor<1x64x109x109xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x109x109xf32>
    %96 = "tosa.mul"(%95, %61) {shift = 0 : i8} : (tensor<1x64x109x109xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x109x109xf32>
    %97 = "tosa.add"(%96, %61) : (tensor<1x64x109x109xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x109x109xf32>
    %98 = "tosa.clamp"(%97) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x109x109xf32>) -> tensor<1x64x109x109xf32>
    %99 = "tosa.transpose"(%98, %69) : (tensor<1x64x109x109xf32>, tensor<4xi64>) -> tensor<1x109x109x64xf32>
    %100 = "tosa.max_pool2d"(%99) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x109x109x64xf32>) -> tensor<1x54x54x64xf32>
    %101 = "tosa.conv2d"(%100, %60, %59) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x64xf32>, tensor<80x1x1x64xf32>, tensor<80xf32>) -> tensor<1x54x54x80xf32>
    %102 = "tosa.transpose"(%101, %67) : (tensor<1x54x54x80xf32>, tensor<4xi64>) -> tensor<1x80x54x54xf32>
    %103 = "tosa.sub"(%102, %58) : (tensor<1x80x54x54xf32>, tensor<1x80x1x1xf32>) -> tensor<1x80x54x54xf32>
    %104 = "tosa.add"(%58, %65) : (tensor<1x80x1x1xf32>, tensor<f32>) -> tensor<1x80x1x1xf32>
    %105 = "tosa.rsqrt"(%104) : (tensor<1x80x1x1xf32>) -> tensor<1x80x1x1xf32>
    %106 = "tosa.mul"(%103, %105) {shift = 0 : i8} : (tensor<1x80x54x54xf32>, tensor<1x80x1x1xf32>) -> tensor<1x80x54x54xf32>
    %107 = "tosa.mul"(%106, %58) {shift = 0 : i8} : (tensor<1x80x54x54xf32>, tensor<1x80x1x1xf32>) -> tensor<1x80x54x54xf32>
    %108 = "tosa.add"(%107, %58) : (tensor<1x80x54x54xf32>, tensor<1x80x1x1xf32>) -> tensor<1x80x54x54xf32>
    %109 = "tosa.clamp"(%108) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x80x54x54xf32>) -> tensor<1x80x54x54xf32>
    %110 = "tosa.transpose"(%109, %69) : (tensor<1x80x54x54xf32>, tensor<4xi64>) -> tensor<1x54x54x80xf32>
    %111 = "tosa.conv2d"(%110, %57, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x80xf32>, tensor<192x3x3x80xf32>, tensor<192xf32>) -> tensor<1x52x52x192xf32>
    %112 = "tosa.transpose"(%111, %67) : (tensor<1x52x52x192xf32>, tensor<4xi64>) -> tensor<1x192x52x52xf32>
    %113 = "tosa.sub"(%112, %55) : (tensor<1x192x52x52xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x52x52xf32>
    %114 = "tosa.add"(%55, %65) : (tensor<1x192x1x1xf32>, tensor<f32>) -> tensor<1x192x1x1xf32>
    %115 = "tosa.rsqrt"(%114) : (tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %116 = "tosa.mul"(%113, %115) {shift = 0 : i8} : (tensor<1x192x52x52xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x52x52xf32>
    %117 = "tosa.mul"(%116, %55) {shift = 0 : i8} : (tensor<1x192x52x52xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x52x52xf32>
    %118 = "tosa.add"(%117, %55) : (tensor<1x192x52x52xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x52x52xf32>
    %119 = "tosa.clamp"(%118) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x52x52xf32>) -> tensor<1x192x52x52xf32>
    %120 = "tosa.transpose"(%119, %69) : (tensor<1x192x52x52xf32>, tensor<4xi64>) -> tensor<1x52x52x192xf32>
    %121 = "tosa.max_pool2d"(%120) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x52x52x192xf32>) -> tensor<1x25x25x192xf32>
    %122 = "tosa.conv2d"(%121, %54, %62) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x192xf32>, tensor<64x1x1x192xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %123 = "tosa.transpose"(%122, %67) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %124 = "tosa.sub"(%123, %61) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %125 = "tosa.mul"(%124, %94) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %126 = "tosa.mul"(%125, %61) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %127 = "tosa.add"(%126, %61) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %128 = "tosa.clamp"(%127) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %129 = "tosa.conv2d"(%121, %53, %52) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x192xf32>, tensor<48x1x1x192xf32>, tensor<48xf32>) -> tensor<1x25x25x48xf32>
    %130 = "tosa.transpose"(%129, %67) : (tensor<1x25x25x48xf32>, tensor<4xi64>) -> tensor<1x48x25x25xf32>
    %131 = "tosa.sub"(%130, %51) : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %132 = "tosa.add"(%51, %65) : (tensor<1x48x1x1xf32>, tensor<f32>) -> tensor<1x48x1x1xf32>
    %133 = "tosa.rsqrt"(%132) : (tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %134 = "tosa.mul"(%131, %133) {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %135 = "tosa.mul"(%134, %51) {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %136 = "tosa.add"(%135, %51) : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %137 = "tosa.clamp"(%136) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    %138 = "tosa.transpose"(%137, %69) : (tensor<1x48x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x48xf32>
    %139 = "tosa.conv2d"(%138, %50, %62) {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 1, 1>} : (tensor<1x25x25x48xf32>, tensor<64x5x5x48xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %140 = "tosa.transpose"(%139, %67) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %141 = "tosa.sub"(%140, %61) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %142 = "tosa.mul"(%141, %94) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %143 = "tosa.mul"(%142, %61) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %144 = "tosa.add"(%143, %61) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %145 = "tosa.clamp"(%144) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %146 = "tosa.transpose"(%128, %69) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %147 = "tosa.conv2d"(%146, %49, %48) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<96x3x3x64xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %148 = "tosa.transpose"(%147, %67) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %149 = "tosa.sub"(%148, %47) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %150 = "tosa.add"(%47, %65) : (tensor<1x96x1x1xf32>, tensor<f32>) -> tensor<1x96x1x1xf32>
    %151 = "tosa.rsqrt"(%150) : (tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %152 = "tosa.mul"(%149, %151) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %153 = "tosa.mul"(%152, %47) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %154 = "tosa.add"(%153, %47) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %155 = "tosa.clamp"(%154) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %156 = "tosa.transpose"(%155, %69) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %157 = "tosa.conv2d"(%156, %46, %48) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %158 = "tosa.transpose"(%157, %67) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %159 = "tosa.sub"(%158, %47) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %160 = "tosa.mul"(%159, %151) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %161 = "tosa.mul"(%160, %47) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %162 = "tosa.add"(%161, %47) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %163 = "tosa.clamp"(%162) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %164 = "tosa.avg_pool2d"(%121) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x192xf32>) -> tensor<1x25x25x192xf32>
    %165 = "tosa.conv2d"(%164, %45, %68) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x192xf32>, tensor<32x1x1x192xf32>, tensor<32xf32>) -> tensor<1x25x25x32xf32>
    %166 = "tosa.transpose"(%165, %67) : (tensor<1x25x25x32xf32>, tensor<4xi64>) -> tensor<1x32x25x25xf32>
    %167 = "tosa.sub"(%166, %66) : (tensor<1x32x25x25xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x25x25xf32>
    %168 = "tosa.mul"(%167, %76) {shift = 0 : i8} : (tensor<1x32x25x25xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x25x25xf32>
    %169 = "tosa.mul"(%168, %66) {shift = 0 : i8} : (tensor<1x32x25x25xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x25x25xf32>
    %170 = "tosa.add"(%169, %66) : (tensor<1x32x25x25xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x25x25xf32>
    %171 = "tosa.clamp"(%170) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x25x25xf32>) -> tensor<1x32x25x25xf32>
    %inserted_slice = tensor.insert_slice %128 into %cst[0, 0, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x256x25x25xf32>
    %inserted_slice_5 = tensor.insert_slice %145 into %inserted_slice[0, 64, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x256x25x25xf32>
    %inserted_slice_6 = tensor.insert_slice %163 into %inserted_slice_5[0, 128, 0, 0] [1, 96, 25, 25] [1, 1, 1, 1] : tensor<1x96x25x25xf32> into tensor<1x256x25x25xf32>
    %inserted_slice_7 = tensor.insert_slice %171 into %inserted_slice_6[0, 224, 0, 0] [1, 32, 25, 25] [1, 1, 1, 1] : tensor<1x32x25x25xf32> into tensor<1x256x25x25xf32>
    %172 = "tosa.transpose"(%inserted_slice_7, %69) : (tensor<1x256x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x256xf32>
    %173 = "tosa.conv2d"(%172, %44, %62) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %174 = "tosa.transpose"(%173, %67) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %175 = "tosa.sub"(%174, %61) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %176 = "tosa.mul"(%175, %94) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %177 = "tosa.mul"(%176, %61) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %178 = "tosa.add"(%177, %61) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %179 = "tosa.clamp"(%178) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %180 = "tosa.conv2d"(%172, %43, %52) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x256xf32>, tensor<48x1x1x256xf32>, tensor<48xf32>) -> tensor<1x25x25x48xf32>
    %181 = "tosa.transpose"(%180, %67) : (tensor<1x25x25x48xf32>, tensor<4xi64>) -> tensor<1x48x25x25xf32>
    %182 = "tosa.sub"(%181, %51) : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %183 = "tosa.mul"(%182, %133) {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %184 = "tosa.mul"(%183, %51) {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %185 = "tosa.add"(%184, %51) : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %186 = "tosa.clamp"(%185) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    %187 = "tosa.transpose"(%186, %69) : (tensor<1x48x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x48xf32>
    %188 = "tosa.conv2d"(%187, %50, %62) {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 1, 1>} : (tensor<1x25x25x48xf32>, tensor<64x5x5x48xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %189 = "tosa.transpose"(%188, %67) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %190 = "tosa.sub"(%189, %61) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %191 = "tosa.mul"(%190, %94) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %192 = "tosa.mul"(%191, %61) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %193 = "tosa.add"(%192, %61) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %194 = "tosa.clamp"(%193) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %195 = "tosa.transpose"(%179, %69) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %196 = "tosa.conv2d"(%195, %49, %48) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<96x3x3x64xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %197 = "tosa.transpose"(%196, %67) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %198 = "tosa.sub"(%197, %47) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %199 = "tosa.mul"(%198, %151) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %200 = "tosa.mul"(%199, %47) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %201 = "tosa.add"(%200, %47) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %202 = "tosa.clamp"(%201) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %203 = "tosa.transpose"(%202, %69) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %204 = "tosa.conv2d"(%203, %46, %48) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %205 = "tosa.transpose"(%204, %67) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %206 = "tosa.sub"(%205, %47) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %207 = "tosa.mul"(%206, %151) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %208 = "tosa.mul"(%207, %47) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %209 = "tosa.add"(%208, %47) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %210 = "tosa.clamp"(%209) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %211 = "tosa.avg_pool2d"(%172) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x256xf32>) -> tensor<1x25x25x256xf32>
    %212 = "tosa.conv2d"(%211, %44, %62) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %213 = "tosa.transpose"(%212, %67) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %214 = "tosa.sub"(%213, %61) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %215 = "tosa.mul"(%214, %94) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %216 = "tosa.mul"(%215, %61) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %217 = "tosa.add"(%216, %61) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %218 = "tosa.clamp"(%217) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %inserted_slice_8 = tensor.insert_slice %179 into %cst_0[0, 0, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_9 = tensor.insert_slice %194 into %inserted_slice_8[0, 64, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_10 = tensor.insert_slice %210 into %inserted_slice_9[0, 128, 0, 0] [1, 96, 25, 25] [1, 1, 1, 1] : tensor<1x96x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_11 = tensor.insert_slice %218 into %inserted_slice_10[0, 224, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %219 = "tosa.transpose"(%inserted_slice_11, %69) : (tensor<1x288x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x288xf32>
    %220 = "tosa.conv2d"(%219, %42, %62) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x288xf32>, tensor<64x1x1x288xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %221 = "tosa.transpose"(%220, %67) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %222 = "tosa.sub"(%221, %61) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %223 = "tosa.mul"(%222, %94) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %224 = "tosa.mul"(%223, %61) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %225 = "tosa.add"(%224, %61) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %226 = "tosa.clamp"(%225) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %227 = "tosa.conv2d"(%219, %41, %52) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x288xf32>, tensor<48x1x1x288xf32>, tensor<48xf32>) -> tensor<1x25x25x48xf32>
    %228 = "tosa.transpose"(%227, %67) : (tensor<1x25x25x48xf32>, tensor<4xi64>) -> tensor<1x48x25x25xf32>
    %229 = "tosa.sub"(%228, %51) : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %230 = "tosa.mul"(%229, %133) {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %231 = "tosa.mul"(%230, %51) {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %232 = "tosa.add"(%231, %51) : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %233 = "tosa.clamp"(%232) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    %234 = "tosa.transpose"(%233, %69) : (tensor<1x48x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x48xf32>
    %235 = "tosa.conv2d"(%234, %50, %62) {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 1, 1>} : (tensor<1x25x25x48xf32>, tensor<64x5x5x48xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %236 = "tosa.transpose"(%235, %67) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %237 = "tosa.sub"(%236, %61) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %238 = "tosa.mul"(%237, %94) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %239 = "tosa.mul"(%238, %61) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %240 = "tosa.add"(%239, %61) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %241 = "tosa.clamp"(%240) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %242 = "tosa.transpose"(%226, %69) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %243 = "tosa.conv2d"(%242, %49, %48) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<96x3x3x64xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %244 = "tosa.transpose"(%243, %67) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %245 = "tosa.sub"(%244, %47) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %246 = "tosa.mul"(%245, %151) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %247 = "tosa.mul"(%246, %47) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %248 = "tosa.add"(%247, %47) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %249 = "tosa.clamp"(%248) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %250 = "tosa.transpose"(%249, %69) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %251 = "tosa.conv2d"(%250, %46, %48) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %252 = "tosa.transpose"(%251, %67) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %253 = "tosa.sub"(%252, %47) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %254 = "tosa.mul"(%253, %151) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %255 = "tosa.mul"(%254, %47) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %256 = "tosa.add"(%255, %47) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %257 = "tosa.clamp"(%256) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %258 = "tosa.avg_pool2d"(%219) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x288xf32>) -> tensor<1x25x25x288xf32>
    %259 = "tosa.conv2d"(%258, %42, %62) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x288xf32>, tensor<64x1x1x288xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %260 = "tosa.transpose"(%259, %67) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %261 = "tosa.sub"(%260, %61) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %262 = "tosa.mul"(%261, %94) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %263 = "tosa.mul"(%262, %61) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %264 = "tosa.add"(%263, %61) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %265 = "tosa.clamp"(%264) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %inserted_slice_12 = tensor.insert_slice %226 into %cst_0[0, 0, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_13 = tensor.insert_slice %241 into %inserted_slice_12[0, 64, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_14 = tensor.insert_slice %257 into %inserted_slice_13[0, 128, 0, 0] [1, 96, 25, 25] [1, 1, 1, 1] : tensor<1x96x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_15 = tensor.insert_slice %265 into %inserted_slice_14[0, 224, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %266 = "tosa.transpose"(%inserted_slice_15, %69) : (tensor<1x288x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x288xf32>
    %267 = "tosa.conv2d"(%266, %40, %39) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x25x25x288xf32>, tensor<384x3x3x288xf32>, tensor<384xf32>) -> tensor<1x12x12x384xf32>
    %268 = "tosa.transpose"(%267, %67) : (tensor<1x12x12x384xf32>, tensor<4xi64>) -> tensor<1x384x12x12xf32>
    %269 = "tosa.sub"(%268, %38) : (tensor<1x384x12x12xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x12x12xf32>
    %270 = "tosa.add"(%38, %65) : (tensor<1x384x1x1xf32>, tensor<f32>) -> tensor<1x384x1x1xf32>
    %271 = "tosa.rsqrt"(%270) : (tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %272 = "tosa.mul"(%269, %271) {shift = 0 : i8} : (tensor<1x384x12x12xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x12x12xf32>
    %273 = "tosa.mul"(%272, %38) {shift = 0 : i8} : (tensor<1x384x12x12xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x12x12xf32>
    %274 = "tosa.add"(%273, %38) : (tensor<1x384x12x12xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x12x12xf32>
    %275 = "tosa.clamp"(%274) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x12x12xf32>) -> tensor<1x384x12x12xf32>
    %276 = "tosa.conv2d"(%266, %42, %62) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x288xf32>, tensor<64x1x1x288xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %277 = "tosa.transpose"(%276, %67) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %278 = "tosa.sub"(%277, %61) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %279 = "tosa.mul"(%278, %94) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %280 = "tosa.mul"(%279, %61) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %281 = "tosa.add"(%280, %61) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %282 = "tosa.clamp"(%281) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %283 = "tosa.transpose"(%282, %69) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %284 = "tosa.conv2d"(%283, %49, %48) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<96x3x3x64xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %285 = "tosa.transpose"(%284, %67) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %286 = "tosa.sub"(%285, %47) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %287 = "tosa.mul"(%286, %151) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %288 = "tosa.mul"(%287, %47) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %289 = "tosa.add"(%288, %47) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %290 = "tosa.clamp"(%289) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %291 = "tosa.transpose"(%290, %69) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %292 = "tosa.conv2d"(%291, %46, %48) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x12x12x96xf32>
    %293 = "tosa.transpose"(%292, %67) : (tensor<1x12x12x96xf32>, tensor<4xi64>) -> tensor<1x96x12x12xf32>
    %294 = "tosa.sub"(%293, %47) : (tensor<1x96x12x12xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x12x12xf32>
    %295 = "tosa.mul"(%294, %151) {shift = 0 : i8} : (tensor<1x96x12x12xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x12x12xf32>
    %296 = "tosa.mul"(%295, %47) {shift = 0 : i8} : (tensor<1x96x12x12xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x12x12xf32>
    %297 = "tosa.add"(%296, %47) : (tensor<1x96x12x12xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x12x12xf32>
    %298 = "tosa.clamp"(%297) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x12x12xf32>) -> tensor<1x96x12x12xf32>
    %299 = "tosa.max_pool2d"(%266) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x25x25x288xf32>) -> tensor<1x12x12x288xf32>
    %300 = "tosa.transpose"(%299, %67) : (tensor<1x12x12x288xf32>, tensor<4xi64>) -> tensor<1x288x12x12xf32>
    %inserted_slice_16 = tensor.insert_slice %275 into %cst_1[0, 0, 0, 0] [1, 384, 12, 12] [1, 1, 1, 1] : tensor<1x384x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_17 = tensor.insert_slice %298 into %inserted_slice_16[0, 384, 0, 0] [1, 96, 12, 12] [1, 1, 1, 1] : tensor<1x96x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_18 = tensor.insert_slice %300 into %inserted_slice_17[0, 480, 0, 0] [1, 288, 12, 12] [1, 1, 1, 1] : tensor<1x288x12x12xf32> into tensor<1x768x12x12xf32>
    %301 = "tosa.transpose"(%inserted_slice_18, %69) : (tensor<1x768x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x768xf32>
    %302 = "tosa.conv2d"(%301, %37, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %303 = "tosa.transpose"(%302, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %304 = "tosa.sub"(%303, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %305 = "tosa.mul"(%304, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %306 = "tosa.mul"(%305, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %307 = "tosa.add"(%306, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %308 = "tosa.clamp"(%307) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %309 = "tosa.conv2d"(%301, %36, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<128x1x1x768xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %310 = "tosa.transpose"(%309, %67) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %311 = "tosa.sub"(%310, %34) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %312 = "tosa.add"(%34, %65) : (tensor<1x128x1x1xf32>, tensor<f32>) -> tensor<1x128x1x1xf32>
    %313 = "tosa.rsqrt"(%312) : (tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %314 = "tosa.mul"(%311, %313) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %315 = "tosa.mul"(%314, %34) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %316 = "tosa.add"(%315, %34) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %317 = "tosa.clamp"(%316) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %318 = "tosa.transpose"(%317, %69) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %319 = "tosa.conv2d"(%318, %33, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x1x7x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %320 = "tosa.transpose"(%319, %67) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %321 = "tosa.sub"(%320, %34) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %322 = "tosa.mul"(%321, %313) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %323 = "tosa.mul"(%322, %34) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %324 = "tosa.add"(%323, %34) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %325 = "tosa.clamp"(%324) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %326 = "tosa.transpose"(%325, %69) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %327 = "tosa.conv2d"(%326, %32, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<192x7x1x128xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %328 = "tosa.transpose"(%327, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %329 = "tosa.sub"(%328, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %330 = "tosa.mul"(%329, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %331 = "tosa.mul"(%330, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %332 = "tosa.add"(%331, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %333 = "tosa.clamp"(%332) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %334 = "tosa.conv2d"(%318, %31, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x7x1x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %335 = "tosa.transpose"(%334, %67) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %336 = "tosa.sub"(%335, %34) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %337 = "tosa.mul"(%336, %313) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %338 = "tosa.mul"(%337, %34) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %339 = "tosa.add"(%338, %34) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %340 = "tosa.clamp"(%339) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %341 = "tosa.transpose"(%340, %69) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %342 = "tosa.conv2d"(%341, %33, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x1x7x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %343 = "tosa.transpose"(%342, %67) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %344 = "tosa.sub"(%343, %34) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %345 = "tosa.mul"(%344, %313) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %346 = "tosa.mul"(%345, %34) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %347 = "tosa.add"(%346, %34) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %348 = "tosa.clamp"(%347) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %349 = "tosa.transpose"(%348, %69) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %350 = "tosa.conv2d"(%349, %31, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x7x1x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %351 = "tosa.transpose"(%350, %67) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %352 = "tosa.sub"(%351, %34) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %353 = "tosa.mul"(%352, %313) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %354 = "tosa.mul"(%353, %34) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %355 = "tosa.add"(%354, %34) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %356 = "tosa.clamp"(%355) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %357 = "tosa.transpose"(%356, %69) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %358 = "tosa.conv2d"(%357, %30, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<192x1x7x128xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %359 = "tosa.transpose"(%358, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %360 = "tosa.sub"(%359, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %361 = "tosa.mul"(%360, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %362 = "tosa.mul"(%361, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %363 = "tosa.add"(%362, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %364 = "tosa.clamp"(%363) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %365 = "tosa.avg_pool2d"(%301) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>) -> tensor<1x12x12x768xf32>
    %366 = "tosa.conv2d"(%365, %37, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %367 = "tosa.transpose"(%366, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %368 = "tosa.sub"(%367, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %369 = "tosa.mul"(%368, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %370 = "tosa.mul"(%369, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %371 = "tosa.add"(%370, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %372 = "tosa.clamp"(%371) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %inserted_slice_19 = tensor.insert_slice %308 into %cst_1[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_20 = tensor.insert_slice %333 into %inserted_slice_19[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_21 = tensor.insert_slice %364 into %inserted_slice_20[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_22 = tensor.insert_slice %372 into %inserted_slice_21[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %373 = "tosa.transpose"(%inserted_slice_22, %69) : (tensor<1x768x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x768xf32>
    %374 = "tosa.conv2d"(%373, %37, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %375 = "tosa.transpose"(%374, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %376 = "tosa.sub"(%375, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %377 = "tosa.mul"(%376, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %378 = "tosa.mul"(%377, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %379 = "tosa.add"(%378, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %380 = "tosa.clamp"(%379) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %381 = "tosa.conv2d"(%373, %29, %28) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<160x1x1x768xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %382 = "tosa.transpose"(%381, %67) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %383 = "tosa.sub"(%382, %27) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %384 = "tosa.add"(%27, %65) : (tensor<1x160x1x1xf32>, tensor<f32>) -> tensor<1x160x1x1xf32>
    %385 = "tosa.rsqrt"(%384) : (tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %386 = "tosa.mul"(%383, %385) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %387 = "tosa.mul"(%386, %27) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %388 = "tosa.add"(%387, %27) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %389 = "tosa.clamp"(%388) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %390 = "tosa.transpose"(%389, %69) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %391 = "tosa.conv2d"(%390, %26, %28) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %392 = "tosa.transpose"(%391, %67) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %393 = "tosa.sub"(%392, %27) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %394 = "tosa.mul"(%393, %385) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %395 = "tosa.mul"(%394, %27) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %396 = "tosa.add"(%395, %27) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %397 = "tosa.clamp"(%396) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %398 = "tosa.transpose"(%397, %69) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %399 = "tosa.conv2d"(%398, %25, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<192x7x1x160xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %400 = "tosa.transpose"(%399, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %401 = "tosa.sub"(%400, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %402 = "tosa.mul"(%401, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %403 = "tosa.mul"(%402, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %404 = "tosa.add"(%403, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %405 = "tosa.clamp"(%404) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %406 = "tosa.conv2d"(%390, %24, %28) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %407 = "tosa.transpose"(%406, %67) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %408 = "tosa.sub"(%407, %27) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %409 = "tosa.mul"(%408, %385) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %410 = "tosa.mul"(%409, %27) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %411 = "tosa.add"(%410, %27) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %412 = "tosa.clamp"(%411) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %413 = "tosa.transpose"(%412, %69) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %414 = "tosa.conv2d"(%413, %26, %28) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %415 = "tosa.transpose"(%414, %67) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %416 = "tosa.sub"(%415, %27) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %417 = "tosa.mul"(%416, %385) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %418 = "tosa.mul"(%417, %27) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %419 = "tosa.add"(%418, %27) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %420 = "tosa.clamp"(%419) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %421 = "tosa.transpose"(%420, %69) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %422 = "tosa.conv2d"(%421, %24, %28) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %423 = "tosa.transpose"(%422, %67) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %424 = "tosa.sub"(%423, %27) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %425 = "tosa.mul"(%424, %385) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %426 = "tosa.mul"(%425, %27) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %427 = "tosa.add"(%426, %27) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %428 = "tosa.clamp"(%427) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %429 = "tosa.transpose"(%428, %69) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %430 = "tosa.conv2d"(%429, %23, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<192x1x7x160xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %431 = "tosa.transpose"(%430, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %432 = "tosa.sub"(%431, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %433 = "tosa.mul"(%432, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %434 = "tosa.mul"(%433, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %435 = "tosa.add"(%434, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %436 = "tosa.clamp"(%435) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %437 = "tosa.avg_pool2d"(%373) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>) -> tensor<1x12x12x768xf32>
    %438 = "tosa.conv2d"(%437, %37, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %439 = "tosa.transpose"(%438, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %440 = "tosa.sub"(%439, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %441 = "tosa.mul"(%440, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %442 = "tosa.mul"(%441, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %443 = "tosa.add"(%442, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %444 = "tosa.clamp"(%443) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %inserted_slice_23 = tensor.insert_slice %380 into %cst_1[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_24 = tensor.insert_slice %405 into %inserted_slice_23[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_25 = tensor.insert_slice %436 into %inserted_slice_24[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_26 = tensor.insert_slice %444 into %inserted_slice_25[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %445 = "tosa.transpose"(%inserted_slice_26, %69) : (tensor<1x768x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x768xf32>
    %446 = "tosa.conv2d"(%445, %37, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %447 = "tosa.transpose"(%446, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %448 = "tosa.sub"(%447, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %449 = "tosa.mul"(%448, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %450 = "tosa.mul"(%449, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %451 = "tosa.add"(%450, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %452 = "tosa.clamp"(%451) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %453 = "tosa.conv2d"(%445, %29, %28) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<160x1x1x768xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %454 = "tosa.transpose"(%453, %67) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %455 = "tosa.sub"(%454, %27) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %456 = "tosa.mul"(%455, %385) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %457 = "tosa.mul"(%456, %27) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %458 = "tosa.add"(%457, %27) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %459 = "tosa.clamp"(%458) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %460 = "tosa.transpose"(%459, %69) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %461 = "tosa.conv2d"(%460, %26, %28) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %462 = "tosa.transpose"(%461, %67) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %463 = "tosa.sub"(%462, %27) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %464 = "tosa.mul"(%463, %385) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %465 = "tosa.mul"(%464, %27) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %466 = "tosa.add"(%465, %27) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %467 = "tosa.clamp"(%466) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %468 = "tosa.transpose"(%467, %69) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %469 = "tosa.conv2d"(%468, %25, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<192x7x1x160xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %470 = "tosa.transpose"(%469, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %471 = "tosa.sub"(%470, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %472 = "tosa.mul"(%471, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %473 = "tosa.mul"(%472, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %474 = "tosa.add"(%473, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %475 = "tosa.clamp"(%474) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %476 = "tosa.conv2d"(%460, %24, %28) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %477 = "tosa.transpose"(%476, %67) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %478 = "tosa.sub"(%477, %27) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %479 = "tosa.mul"(%478, %385) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %480 = "tosa.mul"(%479, %27) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %481 = "tosa.add"(%480, %27) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %482 = "tosa.clamp"(%481) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %483 = "tosa.transpose"(%482, %69) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %484 = "tosa.conv2d"(%483, %26, %28) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %485 = "tosa.transpose"(%484, %67) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %486 = "tosa.sub"(%485, %27) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %487 = "tosa.mul"(%486, %385) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %488 = "tosa.mul"(%487, %27) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %489 = "tosa.add"(%488, %27) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %490 = "tosa.clamp"(%489) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %491 = "tosa.transpose"(%490, %69) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %492 = "tosa.conv2d"(%491, %24, %28) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %493 = "tosa.transpose"(%492, %67) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %494 = "tosa.sub"(%493, %27) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %495 = "tosa.mul"(%494, %385) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %496 = "tosa.mul"(%495, %27) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %497 = "tosa.add"(%496, %27) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %498 = "tosa.clamp"(%497) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %499 = "tosa.transpose"(%498, %69) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %500 = "tosa.conv2d"(%499, %23, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<192x1x7x160xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %501 = "tosa.transpose"(%500, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %502 = "tosa.sub"(%501, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %503 = "tosa.mul"(%502, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %504 = "tosa.mul"(%503, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %505 = "tosa.add"(%504, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %506 = "tosa.clamp"(%505) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %507 = "tosa.avg_pool2d"(%445) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>) -> tensor<1x12x12x768xf32>
    %508 = "tosa.conv2d"(%507, %37, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %509 = "tosa.transpose"(%508, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %510 = "tosa.sub"(%509, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %511 = "tosa.mul"(%510, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %512 = "tosa.mul"(%511, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %513 = "tosa.add"(%512, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %514 = "tosa.clamp"(%513) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %inserted_slice_27 = tensor.insert_slice %452 into %cst_1[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_28 = tensor.insert_slice %475 into %inserted_slice_27[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_29 = tensor.insert_slice %506 into %inserted_slice_28[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_30 = tensor.insert_slice %514 into %inserted_slice_29[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %515 = "tosa.transpose"(%inserted_slice_30, %69) : (tensor<1x768x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x768xf32>
    %516 = "tosa.conv2d"(%515, %37, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %517 = "tosa.transpose"(%516, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %518 = "tosa.sub"(%517, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %519 = "tosa.mul"(%518, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %520 = "tosa.mul"(%519, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %521 = "tosa.add"(%520, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %522 = "tosa.clamp"(%521) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %523 = "tosa.transpose"(%522, %69) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %524 = "tosa.conv2d"(%523, %22, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %525 = "tosa.transpose"(%524, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %526 = "tosa.sub"(%525, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %527 = "tosa.mul"(%526, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %528 = "tosa.mul"(%527, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %529 = "tosa.add"(%528, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %530 = "tosa.clamp"(%529) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %531 = "tosa.transpose"(%530, %69) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %532 = "tosa.conv2d"(%531, %21, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %533 = "tosa.transpose"(%532, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %534 = "tosa.sub"(%533, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %535 = "tosa.mul"(%534, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %536 = "tosa.mul"(%535, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %537 = "tosa.add"(%536, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %538 = "tosa.clamp"(%537) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %539 = "tosa.conv2d"(%523, %21, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %540 = "tosa.transpose"(%539, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %541 = "tosa.sub"(%540, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %542 = "tosa.mul"(%541, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %543 = "tosa.mul"(%542, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %544 = "tosa.add"(%543, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %545 = "tosa.clamp"(%544) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %546 = "tosa.transpose"(%545, %69) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %547 = "tosa.conv2d"(%546, %22, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %548 = "tosa.transpose"(%547, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %549 = "tosa.sub"(%548, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %550 = "tosa.mul"(%549, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %551 = "tosa.mul"(%550, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %552 = "tosa.add"(%551, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %553 = "tosa.clamp"(%552) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %554 = "tosa.transpose"(%553, %69) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %555 = "tosa.conv2d"(%554, %21, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %556 = "tosa.transpose"(%555, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %557 = "tosa.sub"(%556, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %558 = "tosa.mul"(%557, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %559 = "tosa.mul"(%558, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %560 = "tosa.add"(%559, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %561 = "tosa.clamp"(%560) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %562 = "tosa.transpose"(%561, %69) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %563 = "tosa.conv2d"(%562, %22, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %564 = "tosa.transpose"(%563, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %565 = "tosa.sub"(%564, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %566 = "tosa.mul"(%565, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %567 = "tosa.mul"(%566, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %568 = "tosa.add"(%567, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %569 = "tosa.clamp"(%568) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %570 = "tosa.avg_pool2d"(%515) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>) -> tensor<1x12x12x768xf32>
    %571 = "tosa.conv2d"(%570, %37, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %572 = "tosa.transpose"(%571, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %573 = "tosa.sub"(%572, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %574 = "tosa.mul"(%573, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %575 = "tosa.mul"(%574, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %576 = "tosa.add"(%575, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %577 = "tosa.clamp"(%576) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %inserted_slice_31 = tensor.insert_slice %522 into %cst_1[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_32 = tensor.insert_slice %538 into %inserted_slice_31[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_33 = tensor.insert_slice %569 into %inserted_slice_32[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_34 = tensor.insert_slice %577 into %inserted_slice_33[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %578 = "tosa.transpose"(%inserted_slice_34, %69) : (tensor<1x768x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x768xf32>
    %579 = "tosa.conv2d"(%578, %37, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %580 = "tosa.transpose"(%579, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %581 = "tosa.sub"(%580, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %582 = "tosa.mul"(%581, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %583 = "tosa.mul"(%582, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %584 = "tosa.add"(%583, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %585 = "tosa.clamp"(%584) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %586 = "tosa.transpose"(%585, %69) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %587 = "tosa.conv2d"(%586, %20, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x12x12x192xf32>, tensor<320x3x3x192xf32>, tensor<320xf32>) -> tensor<1x5x5x320xf32>
    %588 = "tosa.transpose"(%587, %67) : (tensor<1x5x5x320xf32>, tensor<4xi64>) -> tensor<1x320x5x5xf32>
    %589 = "tosa.sub"(%588, %18) : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %590 = "tosa.add"(%18, %65) : (tensor<1x320x1x1xf32>, tensor<f32>) -> tensor<1x320x1x1xf32>
    %591 = "tosa.rsqrt"(%590) : (tensor<1x320x1x1xf32>) -> tensor<1x320x1x1xf32>
    %592 = "tosa.mul"(%589, %591) {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %593 = "tosa.mul"(%592, %18) {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %594 = "tosa.add"(%593, %18) : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %595 = "tosa.clamp"(%594) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    %596 = "tosa.conv2d"(%586, %22, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %597 = "tosa.transpose"(%596, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %598 = "tosa.sub"(%597, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %599 = "tosa.mul"(%598, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %600 = "tosa.mul"(%599, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %601 = "tosa.add"(%600, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %602 = "tosa.clamp"(%601) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %603 = "tosa.transpose"(%602, %69) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %604 = "tosa.conv2d"(%603, %21, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %605 = "tosa.transpose"(%604, %67) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %606 = "tosa.sub"(%605, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %607 = "tosa.mul"(%606, %115) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %608 = "tosa.mul"(%607, %55) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %609 = "tosa.add"(%608, %55) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %610 = "tosa.clamp"(%609) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %611 = "tosa.transpose"(%610, %69) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %612 = "tosa.conv2d"(%611, %17, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x12x12x192xf32>, tensor<192x3x3x192xf32>, tensor<192xf32>) -> tensor<1x5x5x192xf32>
    %613 = "tosa.transpose"(%612, %67) : (tensor<1x5x5x192xf32>, tensor<4xi64>) -> tensor<1x192x5x5xf32>
    %614 = "tosa.sub"(%613, %55) : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %615 = "tosa.mul"(%614, %115) {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %616 = "tosa.mul"(%615, %55) {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %617 = "tosa.add"(%616, %55) : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %618 = "tosa.clamp"(%617) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %619 = "tosa.max_pool2d"(%578) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x12x12x768xf32>) -> tensor<1x5x5x768xf32>
    %620 = "tosa.transpose"(%619, %67) : (tensor<1x5x5x768xf32>, tensor<4xi64>) -> tensor<1x768x5x5xf32>
    %inserted_slice_35 = tensor.insert_slice %595 into %cst_2[0, 0, 0, 0] [1, 320, 5, 5] [1, 1, 1, 1] : tensor<1x320x5x5xf32> into tensor<1x1280x5x5xf32>
    %inserted_slice_36 = tensor.insert_slice %618 into %inserted_slice_35[0, 320, 0, 0] [1, 192, 5, 5] [1, 1, 1, 1] : tensor<1x192x5x5xf32> into tensor<1x1280x5x5xf32>
    %inserted_slice_37 = tensor.insert_slice %620 into %inserted_slice_36[0, 512, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> into tensor<1x1280x5x5xf32>
    %621 = "tosa.transpose"(%inserted_slice_37, %69) : (tensor<1x1280x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x1280xf32>
    %622 = "tosa.conv2d"(%621, %16, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x1280xf32>, tensor<320x1x1x1280xf32>, tensor<320xf32>) -> tensor<1x5x5x320xf32>
    %623 = "tosa.transpose"(%622, %67) : (tensor<1x5x5x320xf32>, tensor<4xi64>) -> tensor<1x320x5x5xf32>
    %624 = "tosa.sub"(%623, %18) : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %625 = "tosa.mul"(%624, %591) {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %626 = "tosa.mul"(%625, %18) {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %627 = "tosa.add"(%626, %18) : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %628 = "tosa.clamp"(%627) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    %629 = "tosa.conv2d"(%621, %15, %39) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x1280xf32>, tensor<384x1x1x1280xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %630 = "tosa.transpose"(%629, %67) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %631 = "tosa.sub"(%630, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %632 = "tosa.mul"(%631, %271) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %633 = "tosa.mul"(%632, %38) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %634 = "tosa.add"(%633, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %635 = "tosa.clamp"(%634) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %636 = "tosa.transpose"(%635, %69) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %637 = "tosa.conv2d"(%636, %14, %39) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %638 = "tosa.transpose"(%637, %67) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %639 = "tosa.sub"(%638, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %640 = "tosa.mul"(%639, %271) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %641 = "tosa.mul"(%640, %38) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %642 = "tosa.add"(%641, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %643 = "tosa.clamp"(%642) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %644 = "tosa.conv2d"(%636, %13, %39) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %645 = "tosa.transpose"(%644, %67) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %646 = "tosa.sub"(%645, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %647 = "tosa.mul"(%646, %271) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %648 = "tosa.mul"(%647, %38) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %649 = "tosa.add"(%648, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %650 = "tosa.clamp"(%649) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %inserted_slice_38 = tensor.insert_slice %643 into %cst_3[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %inserted_slice_39 = tensor.insert_slice %650 into %inserted_slice_38[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %651 = "tosa.conv2d"(%621, %12, %11) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x1280xf32>, tensor<448x1x1x1280xf32>, tensor<448xf32>) -> tensor<1x5x5x448xf32>
    %652 = "tosa.transpose"(%651, %67) : (tensor<1x5x5x448xf32>, tensor<4xi64>) -> tensor<1x448x5x5xf32>
    %653 = "tosa.sub"(%652, %10) : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %654 = "tosa.add"(%10, %65) : (tensor<1x448x1x1xf32>, tensor<f32>) -> tensor<1x448x1x1xf32>
    %655 = "tosa.rsqrt"(%654) : (tensor<1x448x1x1xf32>) -> tensor<1x448x1x1xf32>
    %656 = "tosa.mul"(%653, %655) {shift = 0 : i8} : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %657 = "tosa.mul"(%656, %10) {shift = 0 : i8} : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %658 = "tosa.add"(%657, %10) : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %659 = "tosa.clamp"(%658) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x448x5x5xf32>) -> tensor<1x448x5x5xf32>
    %660 = "tosa.transpose"(%659, %69) : (tensor<1x448x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x448xf32>
    %661 = "tosa.conv2d"(%660, %9, %39) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x448xf32>, tensor<384x3x3x448xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %662 = "tosa.transpose"(%661, %67) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %663 = "tosa.sub"(%662, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %664 = "tosa.mul"(%663, %271) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %665 = "tosa.mul"(%664, %38) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %666 = "tosa.add"(%665, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %667 = "tosa.clamp"(%666) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %668 = "tosa.transpose"(%667, %69) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %669 = "tosa.conv2d"(%668, %14, %39) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %670 = "tosa.transpose"(%669, %67) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %671 = "tosa.sub"(%670, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %672 = "tosa.mul"(%671, %271) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %673 = "tosa.mul"(%672, %38) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %674 = "tosa.add"(%673, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %675 = "tosa.clamp"(%674) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %676 = "tosa.conv2d"(%668, %13, %39) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %677 = "tosa.transpose"(%676, %67) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %678 = "tosa.sub"(%677, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %679 = "tosa.mul"(%678, %271) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %680 = "tosa.mul"(%679, %38) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %681 = "tosa.add"(%680, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %682 = "tosa.clamp"(%681) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %inserted_slice_40 = tensor.insert_slice %675 into %cst_3[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %inserted_slice_41 = tensor.insert_slice %682 into %inserted_slice_40[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %683 = "tosa.avg_pool2d"(%621) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x1280xf32>) -> tensor<1x5x5x1280xf32>
    %684 = "tosa.conv2d"(%683, %8, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x1280xf32>, tensor<192x1x1x1280xf32>, tensor<192xf32>) -> tensor<1x5x5x192xf32>
    %685 = "tosa.transpose"(%684, %67) : (tensor<1x5x5x192xf32>, tensor<4xi64>) -> tensor<1x192x5x5xf32>
    %686 = "tosa.sub"(%685, %55) : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %687 = "tosa.mul"(%686, %115) {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %688 = "tosa.mul"(%687, %55) {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %689 = "tosa.add"(%688, %55) : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %690 = "tosa.clamp"(%689) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %inserted_slice_42 = tensor.insert_slice %628 into %cst_4[0, 0, 0, 0] [1, 320, 5, 5] [1, 1, 1, 1] : tensor<1x320x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_43 = tensor.insert_slice %inserted_slice_39 into %inserted_slice_42[0, 320, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_44 = tensor.insert_slice %inserted_slice_41 into %inserted_slice_43[0, 1088, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_45 = tensor.insert_slice %690 into %inserted_slice_44[0, 1856, 0, 0] [1, 192, 5, 5] [1, 1, 1, 1] : tensor<1x192x5x5xf32> into tensor<1x2048x5x5xf32>
    %691 = "tosa.transpose"(%inserted_slice_45, %69) : (tensor<1x2048x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x2048xf32>
    %692 = "tosa.conv2d"(%691, %7, %19) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>, tensor<320x1x1x2048xf32>, tensor<320xf32>) -> tensor<1x5x5x320xf32>
    %693 = "tosa.transpose"(%692, %67) : (tensor<1x5x5x320xf32>, tensor<4xi64>) -> tensor<1x320x5x5xf32>
    %694 = "tosa.sub"(%693, %18) : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %695 = "tosa.mul"(%694, %591) {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %696 = "tosa.mul"(%695, %18) {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %697 = "tosa.add"(%696, %18) : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %698 = "tosa.clamp"(%697) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    %699 = "tosa.conv2d"(%691, %6, %39) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>, tensor<384x1x1x2048xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %700 = "tosa.transpose"(%699, %67) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %701 = "tosa.sub"(%700, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %702 = "tosa.mul"(%701, %271) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %703 = "tosa.mul"(%702, %38) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %704 = "tosa.add"(%703, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %705 = "tosa.clamp"(%704) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %706 = "tosa.transpose"(%705, %69) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %707 = "tosa.conv2d"(%706, %14, %39) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %708 = "tosa.transpose"(%707, %67) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %709 = "tosa.sub"(%708, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %710 = "tosa.mul"(%709, %271) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %711 = "tosa.mul"(%710, %38) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %712 = "tosa.add"(%711, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %713 = "tosa.clamp"(%712) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %714 = "tosa.conv2d"(%706, %13, %39) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %715 = "tosa.transpose"(%714, %67) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %716 = "tosa.sub"(%715, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %717 = "tosa.mul"(%716, %271) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %718 = "tosa.mul"(%717, %38) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %719 = "tosa.add"(%718, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %720 = "tosa.clamp"(%719) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %inserted_slice_46 = tensor.insert_slice %713 into %cst_3[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %inserted_slice_47 = tensor.insert_slice %720 into %inserted_slice_46[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %721 = "tosa.conv2d"(%691, %5, %11) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>, tensor<448x1x1x2048xf32>, tensor<448xf32>) -> tensor<1x5x5x448xf32>
    %722 = "tosa.transpose"(%721, %67) : (tensor<1x5x5x448xf32>, tensor<4xi64>) -> tensor<1x448x5x5xf32>
    %723 = "tosa.sub"(%722, %10) : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %724 = "tosa.mul"(%723, %655) {shift = 0 : i8} : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %725 = "tosa.mul"(%724, %10) {shift = 0 : i8} : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %726 = "tosa.add"(%725, %10) : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %727 = "tosa.clamp"(%726) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x448x5x5xf32>) -> tensor<1x448x5x5xf32>
    %728 = "tosa.transpose"(%727, %69) : (tensor<1x448x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x448xf32>
    %729 = "tosa.conv2d"(%728, %9, %39) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x448xf32>, tensor<384x3x3x448xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %730 = "tosa.transpose"(%729, %67) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %731 = "tosa.sub"(%730, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %732 = "tosa.mul"(%731, %271) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %733 = "tosa.mul"(%732, %38) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %734 = "tosa.add"(%733, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %735 = "tosa.clamp"(%734) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %736 = "tosa.transpose"(%735, %69) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %737 = "tosa.conv2d"(%736, %14, %39) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %738 = "tosa.transpose"(%737, %67) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %739 = "tosa.sub"(%738, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %740 = "tosa.mul"(%739, %271) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %741 = "tosa.mul"(%740, %38) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %742 = "tosa.add"(%741, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %743 = "tosa.clamp"(%742) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %744 = "tosa.conv2d"(%736, %13, %39) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %745 = "tosa.transpose"(%744, %67) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %746 = "tosa.sub"(%745, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %747 = "tosa.mul"(%746, %271) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %748 = "tosa.mul"(%747, %38) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %749 = "tosa.add"(%748, %38) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %750 = "tosa.clamp"(%749) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %inserted_slice_48 = tensor.insert_slice %743 into %cst_3[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %inserted_slice_49 = tensor.insert_slice %750 into %inserted_slice_48[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %751 = "tosa.avg_pool2d"(%691) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>) -> tensor<1x5x5x2048xf32>
    %752 = "tosa.conv2d"(%751, %4, %56) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>, tensor<192x1x1x2048xf32>, tensor<192xf32>) -> tensor<1x5x5x192xf32>
    %753 = "tosa.transpose"(%752, %67) : (tensor<1x5x5x192xf32>, tensor<4xi64>) -> tensor<1x192x5x5xf32>
    %754 = "tosa.sub"(%753, %55) : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %755 = "tosa.mul"(%754, %115) {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %756 = "tosa.mul"(%755, %55) {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %757 = "tosa.add"(%756, %55) : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %758 = "tosa.clamp"(%757) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %inserted_slice_50 = tensor.insert_slice %698 into %cst_4[0, 0, 0, 0] [1, 320, 5, 5] [1, 1, 1, 1] : tensor<1x320x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_51 = tensor.insert_slice %inserted_slice_47 into %inserted_slice_50[0, 320, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_52 = tensor.insert_slice %inserted_slice_49 into %inserted_slice_51[0, 1088, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_53 = tensor.insert_slice %758 into %inserted_slice_52[0, 1856, 0, 0] [1, 192, 5, 5] [1, 1, 1, 1] : tensor<1x192x5x5xf32> into tensor<1x2048x5x5xf32>
    %759 = "tosa.transpose"(%inserted_slice_53, %69) : (tensor<1x2048x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x2048xf32>
    %760 = "tosa.avg_pool2d"(%759) {acc_type = f32, kernel = array<i64: 5, 5>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>) -> tensor<1x1x1x2048xf32>
    %761 = "tosa.reshape"(%760) {new_shape = array<i64: 1, 2048, 1, 1>} : (tensor<1x1x1x2048xf32>) -> tensor<1x2048x1x1xf32>
    %762 = "tosa.select"(%3, %761, %2) : (tensor<1x2048x1x1xi1>, tensor<1x2048x1x1xf32>, tensor<f32>) -> tensor<1x2048x1x1xf32>
    %763 = "tosa.reshape"(%762) {new_shape = array<i64: 1, 1, 2048>} : (tensor<1x2048x1x1xf32>) -> tensor<1x1x2048xf32>
    %764 = "tosa.matmul"(%763, %1) : (tensor<1x1x2048xf32>, tensor<1x2048x1000xf32>) -> tensor<1x1x1000xf32>
    %765 = "tosa.add"(%764, %0) : (tensor<1x1x1000xf32>, tensor<1000xf32>) -> tensor<1x1x1000xf32>
    %766 = "tosa.reshape"(%765) {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    return %766 : tensor<1x1000xf32>
  }
  func.func @dforward(%arg0: tensor<1x1000xf32>) -> tensor<1x3x224x224xf32> {
    %cst = arith.constant dense<0.000000e+00> : tensor<1x256x25x25xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1x288x25x25xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1x768x12x12xf32>
    %cst_2 = arith.constant dense<0.000000e+00> : tensor<1x1280x5x5xf32>
    %cst_3 = arith.constant dense<0.000000e+00> : tensor<1x768x5x5xf32>
    %cst_4 = arith.constant dense<0.000000e+00> : tensor<1x2048x5x5xf32>
    %cst_5 = arith.constant dense<0.000000e+00> : tensor<1x5x5x2048xf32>
    %cst_6 = arith.constant dense<0.000000e+00> : tensor<5x5xf32>
    %cst_7 = arith.constant dense<0.000000e+00> : tensor<2048xf32>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<1x7x7x2048xf32>
    %cst_9 = arith.constant dense<0.000000e+00> : tensor<3x3xf32>
    %cst_10 = arith.constant dense<0.000000e+00> : tensor<384xf32>
    %cst_11 = arith.constant dense<0.000000e+00> : tensor<448xf32>
    %cst_12 = arith.constant dense<0.000000e+00> : tensor<1280xf32>
    %cst_13 = arith.constant dense<0.000000e+00> : tensor<1x7x7x1280xf32>
    %cst_14 = arith.constant dense<0.000000e+00> : tensor<1x12x12x768xf32>
    %cst_15 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_16 = arith.constant dense<0.000000e+00> : tensor<768xf32>
    %cst_17 = arith.constant dense<0.000000e+00> : tensor<1x14x14x768xf32>
    %cst_18 = arith.constant dense<0.000000e+00> : tensor<160xf32>
    %cst_19 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_20 = arith.constant dense<0.000000e+00> : tensor<1x25x25x288xf32>
    %cst_21 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_22 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_23 = arith.constant dense<0.000000e+00> : tensor<288xf32>
    %cst_24 = arith.constant dense<0.000000e+00> : tensor<1x27x27x288xf32>
    %cst_25 = arith.constant dense<0.000000e+00> : tensor<48xf32>
    %cst_26 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_27 = arith.constant dense<0.000000e+00> : tensor<1x27x27x256xf32>
    %cst_28 = arith.constant dense<0.000000e+00> : tensor<1x27x27x192xf32>
    %cst_29 = arith.constant dense<0.000000e+00> : tensor<1x52x52x192xf32>
    %cst_30 = arith.constant dense<0.000000e+00> : tensor<80xf32>
    %cst_31 = arith.constant dense<0.000000e+00> : tensor<1x109x109x64xf32>
    %cst_32 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_33 = arith.constant dense<0.000000e+00> : tensor<3xf32>
    %0 = "tosa.const"() {value = dense<"0x3D6BD0785C2F95B8BA4AC1421817B9FEB7A6A3EA51D067EBB31C70AA4C9C0C9D2008E6E59D00568CF66D81028B7072D29B20021D897DD288E069D7F6791693AF2101483DA26D20DF7D2D793E87EF873188E31D6E57519A2BFA4DC36F766D122331950859F8F513A4C39C3E8BBB2EA66D4E598286A94DF7C4F4390A9AAEF5126CD995FCA13841F1F67A8FD5455C3D9B24B733D650984EF30ED57BB8EDE1DA7E559E9E7A4105D7739F7660B1D3AA85E42774D01D269757BEAF77003552617B655EEB71B0CE30058A420AFBD204359CB1EFA77A67B4D6795CD13A65CD23BC0F8E6D990356E01A92450F939F8433780C2090074C9015DB003EEC3AB39A626E9898F9"> : tensor<1x2048x1x1xi1>} : () -> tensor<1x2048x1x1xi1>
    %1 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x1x2048xf32>} : () -> tensor<192x1x1x2048xf32>
    %2 = "tosa.const"() {value = dense<7.777000e-02> : tensor<448x1x1x2048xf32>} : () -> tensor<448x1x1x2048xf32>
    %3 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x1x1x2048xf32>} : () -> tensor<384x1x1x2048xf32>
    %4 = "tosa.const"() {value = dense<7.777000e-02> : tensor<320x1x1x2048xf32>} : () -> tensor<320x1x1x2048xf32>
    %5 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x1x1280xf32>} : () -> tensor<192x1x1x1280xf32>
    %6 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x3x3x448xf32>} : () -> tensor<384x3x3x448xf32>
    %7 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x448x1x1xf32>} : () -> tensor<1x448x1x1xf32>
    %8 = "tosa.const"() {value = dense<0.000000e+00> : tensor<448xf32>} : () -> tensor<448xf32>
    %9 = "tosa.const"() {value = dense<7.777000e-02> : tensor<448x1x1x1280xf32>} : () -> tensor<448x1x1x1280xf32>
    %10 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x1x1x1280xf32>} : () -> tensor<384x1x1x1280xf32>
    %11 = "tosa.const"() {value = dense<7.777000e-02> : tensor<320x1x1x1280xf32>} : () -> tensor<320x1x1x1280xf32>
    %12 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x320x1x1xf32>} : () -> tensor<1x320x1x1xf32>
    %13 = "tosa.const"() {value = dense<0.000000e+00> : tensor<320xf32>} : () -> tensor<320xf32>
    %14 = "tosa.const"() {value = dense<7.777000e-02> : tensor<320x3x3x192xf32>} : () -> tensor<320x3x3x192xf32>
    %15 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x7x160xf32>} : () -> tensor<192x1x7x160xf32>
    %16 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x7x1x160xf32>} : () -> tensor<192x7x1x160xf32>
    %17 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x160x1x1xf32>} : () -> tensor<1x160x1x1xf32>
    %18 = "tosa.const"() {value = dense<0.000000e+00> : tensor<160xf32>} : () -> tensor<160xf32>
    %19 = "tosa.const"() {value = dense<7.777000e-02> : tensor<160x1x1x768xf32>} : () -> tensor<160x1x1x768xf32>
    %20 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x7x128xf32>} : () -> tensor<192x1x7x128xf32>
    %21 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x7x1x128xf32>} : () -> tensor<192x7x1x128xf32>
    %22 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %23 = "tosa.const"() {value = dense<0.000000e+00> : tensor<128xf32>} : () -> tensor<128xf32>
    %24 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x1x768xf32>} : () -> tensor<128x1x1x768xf32>
    %25 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x1x768xf32>} : () -> tensor<192x1x1x768xf32>
    %26 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x384x1x1xf32>} : () -> tensor<1x384x1x1xf32>
    %27 = "tosa.const"() {value = dense<0.000000e+00> : tensor<384xf32>} : () -> tensor<384xf32>
    %28 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x3x3x288xf32>} : () -> tensor<384x3x3x288xf32>
    %29 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48x1x1x288xf32>} : () -> tensor<48x1x1x288xf32>
    %30 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x288xf32>} : () -> tensor<64x1x1x288xf32>
    %31 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48x1x1x256xf32>} : () -> tensor<48x1x1x256xf32>
    %32 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x256xf32>} : () -> tensor<64x1x1x256xf32>
    %33 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32x1x1x192xf32>} : () -> tensor<32x1x1x192xf32>
    %34 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x96x1x1xf32>} : () -> tensor<1x96x1x1xf32>
    %35 = "tosa.const"() {value = dense<0.000000e+00> : tensor<96xf32>} : () -> tensor<96xf32>
    %36 = "tosa.const"() {value = dense<7.777000e-02> : tensor<96x3x3x64xf32>} : () -> tensor<96x3x3x64xf32>
    %37 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x5x5x48xf32>} : () -> tensor<64x5x5x48xf32>
    %38 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x48x1x1xf32>} : () -> tensor<1x48x1x1xf32>
    %39 = "tosa.const"() {value = dense<0.000000e+00> : tensor<48xf32>} : () -> tensor<48xf32>
    %40 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48x1x1x192xf32>} : () -> tensor<48x1x1x192xf32>
    %41 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x192xf32>} : () -> tensor<64x1x1x192xf32>
    %42 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x192x1x1xf32>} : () -> tensor<1x192x1x1xf32>
    %43 = "tosa.const"() {value = dense<0.000000e+00> : tensor<192xf32>} : () -> tensor<192xf32>
    %44 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x3x3x80xf32>} : () -> tensor<192x3x3x80xf32>
    %45 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x80x1x1xf32>} : () -> tensor<1x80x1x1xf32>
    %46 = "tosa.const"() {value = dense<0.000000e+00> : tensor<80xf32>} : () -> tensor<80xf32>
    %47 = "tosa.const"() {value = dense<7.777000e-02> : tensor<80x1x1x64xf32>} : () -> tensor<80x1x1x64xf32>
    %48 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %49 = "tosa.const"() {value = dense<0.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %50 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x32xf32>} : () -> tensor<64x3x3x32xf32>
    %51 = "tosa.const"() {value = dense<1.000000e-03> : tensor<f32>} : () -> tensor<f32>
    %52 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x32x1x1xf32>} : () -> tensor<1x32x1x1xf32>
    %53 = "tosa.const"() {value = dense<0.000000e+00> : tensor<32xf32>} : () -> tensor<32xf32>
    %54 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32x3x3x3xf32>} : () -> tensor<32x3x3x3xf32>
    %55 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1x1000x2048xf32>} : () -> tensor<1x1000x2048xf32>
    %56 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %57 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi64>} : () -> tensor<4xi64>
    %cst_34 = arith.constant 4.000000e-02 : f32
    %58 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi64>} : () -> tensor<4xi64>
    %59 = "tosa.const"() {value = dense<7.777000e-02> : tensor<2048x1x1x192xf32>} : () -> tensor<2048x1x1x192xf32>
    %cst_35 = arith.constant 0.000000e+00 : f32
    %cst_36 = arith.constant 0.111111112 : f32
    %60 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x3x1x384xf32>} : () -> tensor<384x3x1x384xf32>
    %61 = "tosa.const"() {value = dense<7.777000e-02> : tensor<384x1x3x384xf32>} : () -> tensor<384x1x3x384xf32>
    %62 = "tosa.const"() {value = dense<7.777000e-02> : tensor<448x3x3x384xf32>} : () -> tensor<448x3x3x384xf32>
    %63 = "tosa.const"() {value = dense<7.777000e-02> : tensor<2048x1x1x448xf32>} : () -> tensor<2048x1x1x448xf32>
    %64 = "tosa.const"() {value = dense<7.777000e-02> : tensor<2048x1x1x384xf32>} : () -> tensor<2048x1x1x384xf32>
    %65 = "tosa.const"() {value = dense<7.777000e-02> : tensor<2048x1x1x320xf32>} : () -> tensor<2048x1x1x320xf32>
    %66 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1280x1x1x192xf32>} : () -> tensor<1280x1x1x192xf32>
    %67 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1280x1x1x448xf32>} : () -> tensor<1280x1x1x448xf32>
    %68 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1280x1x1x384xf32>} : () -> tensor<1280x1x1x384xf32>
    %69 = "tosa.const"() {value = dense<7.777000e-02> : tensor<1280x1x1x320xf32>} : () -> tensor<1280x1x1x320xf32>
    %70 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x3x3x192xf32>} : () -> tensor<192x3x3x192xf32>
    %71 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x7x1x192xf32>} : () -> tensor<192x7x1x192xf32>
    %72 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x7x192xf32>} : () -> tensor<192x1x7x192xf32>
    %73 = "tosa.const"() {value = dense<7.777000e-02> : tensor<768x1x1x192xf32>} : () -> tensor<768x1x1x192xf32>
    %74 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x3x3x320xf32>} : () -> tensor<192x3x3x320xf32>
    %75 = "tosa.const"() {value = dense<7.777000e-02> : tensor<160x1x7x192xf32>} : () -> tensor<160x1x7x192xf32>
    %76 = "tosa.const"() {value = dense<7.777000e-02> : tensor<160x7x1x160xf32>} : () -> tensor<160x7x1x160xf32>
    %77 = "tosa.const"() {value = dense<7.777000e-02> : tensor<160x1x7x160xf32>} : () -> tensor<160x1x7x160xf32>
    %78 = "tosa.const"() {value = dense<7.777000e-02> : tensor<768x1x1x160xf32>} : () -> tensor<768x1x1x160xf32>
    %79 = "tosa.const"() {value = dense<7.777000e-02> : tensor<160x7x1x192xf32>} : () -> tensor<160x7x1x192xf32>
    %80 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x7x192xf32>} : () -> tensor<128x1x7x192xf32>
    %81 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x7x1x128xf32>} : () -> tensor<128x7x1x128xf32>
    %82 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x1x7x128xf32>} : () -> tensor<128x1x7x128xf32>
    %83 = "tosa.const"() {value = dense<7.777000e-02> : tensor<768x1x1x128xf32>} : () -> tensor<768x1x1x128xf32>
    %84 = "tosa.const"() {value = dense<7.777000e-02> : tensor<128x7x1x192xf32>} : () -> tensor<128x7x1x192xf32>
    %85 = "tosa.const"() {value = dense<7.777000e-02> : tensor<96x3x3x96xf32>} : () -> tensor<96x3x3x96xf32>
    %86 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x3x3x96xf32>} : () -> tensor<64x3x3x96xf32>
    %87 = "tosa.const"() {value = dense<7.777000e-02> : tensor<288x1x1x64xf32>} : () -> tensor<288x1x1x64xf32>
    %88 = "tosa.const"() {value = dense<7.777000e-02> : tensor<288x3x3x384xf32>} : () -> tensor<288x3x3x384xf32>
    %89 = "tosa.const"() {value = dense<7.777000e-02> : tensor<48x5x5x64xf32>} : () -> tensor<48x5x5x64xf32>
    %90 = "tosa.const"() {value = dense<7.777000e-02> : tensor<288x1x1x48xf32>} : () -> tensor<288x1x1x48xf32>
    %91 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x64xf32>} : () -> tensor<256x1x1x64xf32>
    %92 = "tosa.const"() {value = dense<7.777000e-02> : tensor<256x1x1x48xf32>} : () -> tensor<256x1x1x48xf32>
    %93 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x1x32xf32>} : () -> tensor<192x1x1x32xf32>
    %94 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x1x64xf32>} : () -> tensor<192x1x1x64xf32>
    %95 = "tosa.const"() {value = dense<7.777000e-02> : tensor<192x1x1x48xf32>} : () -> tensor<192x1x1x48xf32>
    %96 = "tosa.const"() {value = dense<7.777000e-02> : tensor<80x3x3x192xf32>} : () -> tensor<80x3x3x192xf32>
    %97 = "tosa.const"() {value = dense<7.777000e-02> : tensor<64x1x1x80xf32>} : () -> tensor<64x1x1x80xf32>
    %98 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32x3x3x64xf32>} : () -> tensor<32x3x3x64xf32>
    %99 = "tosa.const"() {value = dense<7.777000e-02> : tensor<32x3x3x32xf32>} : () -> tensor<32x3x3x32xf32>
    %100 = "tosa.const"() {value = dense<7.777000e-02> : tensor<3x3x3x32xf32>} : () -> tensor<3x3x3x32xf32>
    %101 = ml_program.global_load @global0 : tensor<1x3x224x224xf32>
    %102 = "tosa.transpose"(%101, %57) : (tensor<1x3x224x224xf32>, tensor<4xi64>) -> tensor<1x224x224x3xf32>
    %103 = "tosa.conv2d"(%102, %54, %53) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<32x3x3x3xf32>, tensor<32xf32>) -> tensor<1x111x111x32xf32>
    %104 = "tosa.transpose"(%103, %58) : (tensor<1x111x111x32xf32>, tensor<4xi64>) -> tensor<1x32x111x111xf32>
    %105 = "tosa.sub"(%104, %52) : (tensor<1x32x111x111xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x111x111xf32>
    %106 = "tosa.add"(%52, %51) : (tensor<1x32x1x1xf32>, tensor<f32>) -> tensor<1x32x1x1xf32>
    %107 = "tosa.rsqrt"(%106) : (tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %108 = "tosa.mul"(%105, %107) {shift = 0 : i8} : (tensor<1x32x111x111xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x111x111xf32>
    %109 = "tosa.mul"(%108, %52) {shift = 0 : i8} : (tensor<1x32x111x111xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x111x111xf32>
    %110 = "tosa.add"(%109, %52) : (tensor<1x32x111x111xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x111x111xf32>
    %111 = "tosa.clamp"(%110) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x111x111xf32>) -> tensor<1x32x111x111xf32>
    %112 = "tosa.transpose"(%111, %57) : (tensor<1x32x111x111xf32>, tensor<4xi64>) -> tensor<1x111x111x32xf32>
    %113 = "tosa.conv2d"(%112, %99, %53) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x111x111x32xf32>, tensor<32x3x3x32xf32>, tensor<32xf32>) -> tensor<1x109x109x32xf32>
    %114 = "tosa.transpose"(%113, %58) : (tensor<1x109x109x32xf32>, tensor<4xi64>) -> tensor<1x32x109x109xf32>
    %115 = "tosa.sub"(%114, %52) : (tensor<1x32x109x109xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x109x109xf32>
    %116 = "tosa.mul"(%115, %107) {shift = 0 : i8} : (tensor<1x32x109x109xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x109x109xf32>
    %117 = "tosa.mul"(%116, %52) {shift = 0 : i8} : (tensor<1x32x109x109xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x109x109xf32>
    %118 = "tosa.add"(%117, %52) : (tensor<1x32x109x109xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x109x109xf32>
    %119 = "tosa.clamp"(%118) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x109x109xf32>) -> tensor<1x32x109x109xf32>
    %120 = "tosa.transpose"(%119, %57) : (tensor<1x32x109x109xf32>, tensor<4xi64>) -> tensor<1x109x109x32xf32>
    %121 = "tosa.conv2d"(%120, %50, %49) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x109x109x32xf32>, tensor<64x3x3x32xf32>, tensor<64xf32>) -> tensor<1x109x109x64xf32>
    %122 = "tosa.transpose"(%121, %58) : (tensor<1x109x109x64xf32>, tensor<4xi64>) -> tensor<1x64x109x109xf32>
    %123 = "tosa.sub"(%122, %48) : (tensor<1x64x109x109xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x109x109xf32>
    %124 = "tosa.add"(%48, %51) : (tensor<1x64x1x1xf32>, tensor<f32>) -> tensor<1x64x1x1xf32>
    %125 = "tosa.rsqrt"(%124) : (tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %126 = "tosa.mul"(%123, %125) {shift = 0 : i8} : (tensor<1x64x109x109xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x109x109xf32>
    %127 = "tosa.mul"(%126, %48) {shift = 0 : i8} : (tensor<1x64x109x109xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x109x109xf32>
    %128 = "tosa.add"(%127, %48) : (tensor<1x64x109x109xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x109x109xf32>
    %129 = "tosa.clamp"(%128) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x109x109xf32>) -> tensor<1x64x109x109xf32>
    %130 = "tosa.transpose"(%129, %57) : (tensor<1x64x109x109xf32>, tensor<4xi64>) -> tensor<1x109x109x64xf32>
    %131 = "tosa.max_pool2d"(%130) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x109x109x64xf32>) -> tensor<1x54x54x64xf32>
    %132 = "tosa.conv2d"(%131, %47, %46) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x64xf32>, tensor<80x1x1x64xf32>, tensor<80xf32>) -> tensor<1x54x54x80xf32>
    %133 = "tosa.transpose"(%132, %58) : (tensor<1x54x54x80xf32>, tensor<4xi64>) -> tensor<1x80x54x54xf32>
    %134 = "tosa.sub"(%133, %45) : (tensor<1x80x54x54xf32>, tensor<1x80x1x1xf32>) -> tensor<1x80x54x54xf32>
    %135 = "tosa.add"(%45, %51) : (tensor<1x80x1x1xf32>, tensor<f32>) -> tensor<1x80x1x1xf32>
    %136 = "tosa.rsqrt"(%135) : (tensor<1x80x1x1xf32>) -> tensor<1x80x1x1xf32>
    %137 = "tosa.mul"(%134, %136) {shift = 0 : i8} : (tensor<1x80x54x54xf32>, tensor<1x80x1x1xf32>) -> tensor<1x80x54x54xf32>
    %138 = "tosa.mul"(%137, %45) {shift = 0 : i8} : (tensor<1x80x54x54xf32>, tensor<1x80x1x1xf32>) -> tensor<1x80x54x54xf32>
    %139 = "tosa.add"(%138, %45) : (tensor<1x80x54x54xf32>, tensor<1x80x1x1xf32>) -> tensor<1x80x54x54xf32>
    %140 = "tosa.clamp"(%139) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x80x54x54xf32>) -> tensor<1x80x54x54xf32>
    %141 = "tosa.transpose"(%140, %57) : (tensor<1x80x54x54xf32>, tensor<4xi64>) -> tensor<1x54x54x80xf32>
    %142 = "tosa.conv2d"(%141, %44, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x80xf32>, tensor<192x3x3x80xf32>, tensor<192xf32>) -> tensor<1x52x52x192xf32>
    %143 = "tosa.transpose"(%142, %58) : (tensor<1x52x52x192xf32>, tensor<4xi64>) -> tensor<1x192x52x52xf32>
    %144 = "tosa.sub"(%143, %42) : (tensor<1x192x52x52xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x52x52xf32>
    %145 = "tosa.add"(%42, %51) : (tensor<1x192x1x1xf32>, tensor<f32>) -> tensor<1x192x1x1xf32>
    %146 = "tosa.rsqrt"(%145) : (tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %147 = "tosa.mul"(%144, %146) {shift = 0 : i8} : (tensor<1x192x52x52xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x52x52xf32>
    %148 = "tosa.mul"(%147, %42) {shift = 0 : i8} : (tensor<1x192x52x52xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x52x52xf32>
    %149 = "tosa.add"(%148, %42) : (tensor<1x192x52x52xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x52x52xf32>
    %150 = "tosa.clamp"(%149) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x52x52xf32>) -> tensor<1x192x52x52xf32>
    %151 = "tosa.transpose"(%150, %57) : (tensor<1x192x52x52xf32>, tensor<4xi64>) -> tensor<1x52x52x192xf32>
    %152 = "tosa.max_pool2d"(%151) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x52x52x192xf32>) -> tensor<1x25x25x192xf32>
    %153 = "tosa.conv2d"(%152, %41, %49) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x192xf32>, tensor<64x1x1x192xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %154 = "tosa.transpose"(%153, %58) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %155 = "tosa.sub"(%154, %48) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %156 = "tosa.mul"(%155, %125) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %157 = "tosa.mul"(%156, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %158 = "tosa.add"(%157, %48) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %159 = "tosa.clamp"(%158) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %160 = "tosa.conv2d"(%152, %40, %39) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x192xf32>, tensor<48x1x1x192xf32>, tensor<48xf32>) -> tensor<1x25x25x48xf32>
    %161 = "tosa.transpose"(%160, %58) : (tensor<1x25x25x48xf32>, tensor<4xi64>) -> tensor<1x48x25x25xf32>
    %162 = "tosa.sub"(%161, %38) : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %163 = "tosa.add"(%38, %51) : (tensor<1x48x1x1xf32>, tensor<f32>) -> tensor<1x48x1x1xf32>
    %164 = "tosa.rsqrt"(%163) : (tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %165 = "tosa.mul"(%162, %164) {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %166 = "tosa.mul"(%165, %38) {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %167 = "tosa.add"(%166, %38) : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %168 = "tosa.clamp"(%167) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    %169 = "tosa.transpose"(%168, %57) : (tensor<1x48x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x48xf32>
    %170 = "tosa.conv2d"(%169, %37, %49) {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 1, 1>} : (tensor<1x25x25x48xf32>, tensor<64x5x5x48xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %171 = "tosa.transpose"(%170, %58) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %172 = "tosa.sub"(%171, %48) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %173 = "tosa.mul"(%172, %125) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %174 = "tosa.mul"(%173, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %175 = "tosa.add"(%174, %48) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %176 = "tosa.clamp"(%175) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %177 = "tosa.transpose"(%159, %57) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %178 = "tosa.conv2d"(%177, %36, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<96x3x3x64xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %179 = "tosa.transpose"(%178, %58) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %180 = "tosa.sub"(%179, %34) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %181 = "tosa.add"(%34, %51) : (tensor<1x96x1x1xf32>, tensor<f32>) -> tensor<1x96x1x1xf32>
    %182 = "tosa.rsqrt"(%181) : (tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %183 = "tosa.mul"(%180, %182) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %184 = "tosa.mul"(%183, %34) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %185 = "tosa.add"(%184, %34) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %186 = "tosa.clamp"(%185) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %187 = "tosa.transpose"(%186, %57) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %188 = "tosa.conv2d"(%187, %85, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %189 = "tosa.transpose"(%188, %58) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %190 = "tosa.sub"(%189, %34) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %191 = "tosa.mul"(%190, %182) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %192 = "tosa.mul"(%191, %34) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %193 = "tosa.add"(%192, %34) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %194 = "tosa.clamp"(%193) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %195 = "tosa.avg_pool2d"(%152) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x192xf32>) -> tensor<1x25x25x192xf32>
    %196 = "tosa.conv2d"(%195, %33, %53) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x192xf32>, tensor<32x1x1x192xf32>, tensor<32xf32>) -> tensor<1x25x25x32xf32>
    %197 = "tosa.transpose"(%196, %58) : (tensor<1x25x25x32xf32>, tensor<4xi64>) -> tensor<1x32x25x25xf32>
    %198 = "tosa.sub"(%197, %52) : (tensor<1x32x25x25xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x25x25xf32>
    %199 = "tosa.mul"(%198, %107) {shift = 0 : i8} : (tensor<1x32x25x25xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x25x25xf32>
    %200 = "tosa.mul"(%199, %52) {shift = 0 : i8} : (tensor<1x32x25x25xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x25x25xf32>
    %201 = "tosa.add"(%200, %52) : (tensor<1x32x25x25xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x25x25xf32>
    %202 = "tosa.clamp"(%201) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x25x25xf32>) -> tensor<1x32x25x25xf32>
    %inserted_slice = tensor.insert_slice %159 into %cst[0, 0, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x256x25x25xf32>
    %inserted_slice_37 = tensor.insert_slice %176 into %inserted_slice[0, 64, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x256x25x25xf32>
    %inserted_slice_38 = tensor.insert_slice %194 into %inserted_slice_37[0, 128, 0, 0] [1, 96, 25, 25] [1, 1, 1, 1] : tensor<1x96x25x25xf32> into tensor<1x256x25x25xf32>
    %inserted_slice_39 = tensor.insert_slice %202 into %inserted_slice_38[0, 224, 0, 0] [1, 32, 25, 25] [1, 1, 1, 1] : tensor<1x32x25x25xf32> into tensor<1x256x25x25xf32>
    %203 = "tosa.transpose"(%inserted_slice_39, %57) : (tensor<1x256x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x256xf32>
    %204 = "tosa.conv2d"(%203, %32, %49) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %205 = "tosa.transpose"(%204, %58) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %206 = "tosa.sub"(%205, %48) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %207 = "tosa.mul"(%206, %125) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %208 = "tosa.mul"(%207, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %209 = "tosa.add"(%208, %48) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %210 = "tosa.clamp"(%209) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %211 = "tosa.conv2d"(%203, %31, %39) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x256xf32>, tensor<48x1x1x256xf32>, tensor<48xf32>) -> tensor<1x25x25x48xf32>
    %212 = "tosa.transpose"(%211, %58) : (tensor<1x25x25x48xf32>, tensor<4xi64>) -> tensor<1x48x25x25xf32>
    %213 = "tosa.sub"(%212, %38) : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %214 = "tosa.mul"(%213, %164) {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %215 = "tosa.mul"(%214, %38) {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %216 = "tosa.add"(%215, %38) : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %217 = "tosa.clamp"(%216) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    %218 = "tosa.transpose"(%217, %57) : (tensor<1x48x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x48xf32>
    %219 = "tosa.conv2d"(%218, %37, %49) {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 1, 1>} : (tensor<1x25x25x48xf32>, tensor<64x5x5x48xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %220 = "tosa.transpose"(%219, %58) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %221 = "tosa.sub"(%220, %48) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %222 = "tosa.mul"(%221, %125) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %223 = "tosa.mul"(%222, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %224 = "tosa.add"(%223, %48) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %225 = "tosa.clamp"(%224) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %226 = "tosa.transpose"(%210, %57) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %227 = "tosa.conv2d"(%226, %36, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<96x3x3x64xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %228 = "tosa.transpose"(%227, %58) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %229 = "tosa.sub"(%228, %34) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %230 = "tosa.mul"(%229, %182) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %231 = "tosa.mul"(%230, %34) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %232 = "tosa.add"(%231, %34) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %233 = "tosa.clamp"(%232) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %234 = "tosa.transpose"(%233, %57) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %235 = "tosa.conv2d"(%234, %85, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %236 = "tosa.transpose"(%235, %58) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %237 = "tosa.sub"(%236, %34) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %238 = "tosa.mul"(%237, %182) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %239 = "tosa.mul"(%238, %34) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %240 = "tosa.add"(%239, %34) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %241 = "tosa.clamp"(%240) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %242 = "tosa.avg_pool2d"(%203) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x256xf32>) -> tensor<1x25x25x256xf32>
    %243 = "tosa.conv2d"(%242, %32, %49) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %244 = "tosa.transpose"(%243, %58) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %245 = "tosa.sub"(%244, %48) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %246 = "tosa.mul"(%245, %125) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %247 = "tosa.mul"(%246, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %248 = "tosa.add"(%247, %48) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %249 = "tosa.clamp"(%248) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %inserted_slice_40 = tensor.insert_slice %210 into %cst_0[0, 0, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_41 = tensor.insert_slice %225 into %inserted_slice_40[0, 64, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_42 = tensor.insert_slice %241 into %inserted_slice_41[0, 128, 0, 0] [1, 96, 25, 25] [1, 1, 1, 1] : tensor<1x96x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_43 = tensor.insert_slice %249 into %inserted_slice_42[0, 224, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %250 = "tosa.transpose"(%inserted_slice_43, %57) : (tensor<1x288x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x288xf32>
    %251 = "tosa.conv2d"(%250, %30, %49) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x288xf32>, tensor<64x1x1x288xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %252 = "tosa.transpose"(%251, %58) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %253 = "tosa.sub"(%252, %48) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %254 = "tosa.mul"(%253, %125) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %255 = "tosa.mul"(%254, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %256 = "tosa.add"(%255, %48) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %257 = "tosa.clamp"(%256) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %258 = "tosa.conv2d"(%250, %29, %39) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x288xf32>, tensor<48x1x1x288xf32>, tensor<48xf32>) -> tensor<1x25x25x48xf32>
    %259 = "tosa.transpose"(%258, %58) : (tensor<1x25x25x48xf32>, tensor<4xi64>) -> tensor<1x48x25x25xf32>
    %260 = "tosa.sub"(%259, %38) : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %261 = "tosa.mul"(%260, %164) {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %262 = "tosa.mul"(%261, %38) {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %263 = "tosa.add"(%262, %38) : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %264 = "tosa.clamp"(%263) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    %265 = "tosa.transpose"(%264, %57) : (tensor<1x48x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x48xf32>
    %266 = "tosa.conv2d"(%265, %37, %49) {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 1, 1>} : (tensor<1x25x25x48xf32>, tensor<64x5x5x48xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %267 = "tosa.transpose"(%266, %58) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %268 = "tosa.sub"(%267, %48) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %269 = "tosa.mul"(%268, %125) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %270 = "tosa.mul"(%269, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %271 = "tosa.add"(%270, %48) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %272 = "tosa.clamp"(%271) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %273 = "tosa.transpose"(%257, %57) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %274 = "tosa.conv2d"(%273, %36, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<96x3x3x64xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %275 = "tosa.transpose"(%274, %58) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %276 = "tosa.sub"(%275, %34) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %277 = "tosa.mul"(%276, %182) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %278 = "tosa.mul"(%277, %34) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %279 = "tosa.add"(%278, %34) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %280 = "tosa.clamp"(%279) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %281 = "tosa.transpose"(%280, %57) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %282 = "tosa.conv2d"(%281, %85, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %283 = "tosa.transpose"(%282, %58) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %284 = "tosa.sub"(%283, %34) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %285 = "tosa.mul"(%284, %182) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %286 = "tosa.mul"(%285, %34) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %287 = "tosa.add"(%286, %34) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %288 = "tosa.clamp"(%287) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %289 = "tosa.avg_pool2d"(%250) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x288xf32>) -> tensor<1x25x25x288xf32>
    %290 = "tosa.conv2d"(%289, %30, %49) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x288xf32>, tensor<64x1x1x288xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %291 = "tosa.transpose"(%290, %58) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %292 = "tosa.sub"(%291, %48) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %293 = "tosa.mul"(%292, %125) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %294 = "tosa.mul"(%293, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %295 = "tosa.add"(%294, %48) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %296 = "tosa.clamp"(%295) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %inserted_slice_44 = tensor.insert_slice %257 into %cst_0[0, 0, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_45 = tensor.insert_slice %272 into %inserted_slice_44[0, 64, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_46 = tensor.insert_slice %288 into %inserted_slice_45[0, 128, 0, 0] [1, 96, 25, 25] [1, 1, 1, 1] : tensor<1x96x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_47 = tensor.insert_slice %296 into %inserted_slice_46[0, 224, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %297 = "tosa.transpose"(%inserted_slice_47, %57) : (tensor<1x288x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x288xf32>
    %298 = "tosa.conv2d"(%297, %28, %27) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x25x25x288xf32>, tensor<384x3x3x288xf32>, tensor<384xf32>) -> tensor<1x12x12x384xf32>
    %299 = "tosa.transpose"(%298, %58) : (tensor<1x12x12x384xf32>, tensor<4xi64>) -> tensor<1x384x12x12xf32>
    %300 = "tosa.sub"(%299, %26) : (tensor<1x384x12x12xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x12x12xf32>
    %301 = "tosa.add"(%26, %51) : (tensor<1x384x1x1xf32>, tensor<f32>) -> tensor<1x384x1x1xf32>
    %302 = "tosa.rsqrt"(%301) : (tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %303 = "tosa.mul"(%300, %302) {shift = 0 : i8} : (tensor<1x384x12x12xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x12x12xf32>
    %304 = "tosa.mul"(%303, %26) {shift = 0 : i8} : (tensor<1x384x12x12xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x12x12xf32>
    %305 = "tosa.add"(%304, %26) : (tensor<1x384x12x12xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x12x12xf32>
    %306 = "tosa.clamp"(%305) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x12x12xf32>) -> tensor<1x384x12x12xf32>
    %307 = "tosa.conv2d"(%297, %30, %49) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x288xf32>, tensor<64x1x1x288xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %308 = "tosa.transpose"(%307, %58) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %309 = "tosa.sub"(%308, %48) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %310 = "tosa.mul"(%309, %125) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %311 = "tosa.mul"(%310, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %312 = "tosa.add"(%311, %48) : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %313 = "tosa.clamp"(%312) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %314 = "tosa.transpose"(%313, %57) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %315 = "tosa.conv2d"(%314, %36, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<96x3x3x64xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %316 = "tosa.transpose"(%315, %58) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %317 = "tosa.sub"(%316, %34) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %318 = "tosa.mul"(%317, %182) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %319 = "tosa.mul"(%318, %34) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %320 = "tosa.add"(%319, %34) : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %321 = "tosa.clamp"(%320) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %322 = "tosa.transpose"(%321, %57) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %323 = "tosa.conv2d"(%322, %85, %35) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x12x12x96xf32>
    %324 = "tosa.transpose"(%323, %58) : (tensor<1x12x12x96xf32>, tensor<4xi64>) -> tensor<1x96x12x12xf32>
    %325 = "tosa.sub"(%324, %34) : (tensor<1x96x12x12xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x12x12xf32>
    %326 = "tosa.mul"(%325, %182) {shift = 0 : i8} : (tensor<1x96x12x12xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x12x12xf32>
    %327 = "tosa.mul"(%326, %34) {shift = 0 : i8} : (tensor<1x96x12x12xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x12x12xf32>
    %328 = "tosa.add"(%327, %34) : (tensor<1x96x12x12xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x12x12xf32>
    %329 = "tosa.clamp"(%328) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x12x12xf32>) -> tensor<1x96x12x12xf32>
    %330 = "tosa.max_pool2d"(%297) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x25x25x288xf32>) -> tensor<1x12x12x288xf32>
    %331 = "tosa.transpose"(%330, %58) : (tensor<1x12x12x288xf32>, tensor<4xi64>) -> tensor<1x288x12x12xf32>
    %inserted_slice_48 = tensor.insert_slice %306 into %cst_1[0, 0, 0, 0] [1, 384, 12, 12] [1, 1, 1, 1] : tensor<1x384x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_49 = tensor.insert_slice %329 into %inserted_slice_48[0, 384, 0, 0] [1, 96, 12, 12] [1, 1, 1, 1] : tensor<1x96x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_50 = tensor.insert_slice %331 into %inserted_slice_49[0, 480, 0, 0] [1, 288, 12, 12] [1, 1, 1, 1] : tensor<1x288x12x12xf32> into tensor<1x768x12x12xf32>
    %332 = "tosa.transpose"(%inserted_slice_50, %57) : (tensor<1x768x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x768xf32>
    %333 = "tosa.conv2d"(%332, %25, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %334 = "tosa.transpose"(%333, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %335 = "tosa.sub"(%334, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %336 = "tosa.mul"(%335, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %337 = "tosa.mul"(%336, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %338 = "tosa.add"(%337, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %339 = "tosa.clamp"(%338) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %340 = "tosa.conv2d"(%332, %24, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<128x1x1x768xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %341 = "tosa.transpose"(%340, %58) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %342 = "tosa.sub"(%341, %22) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %343 = "tosa.add"(%22, %51) : (tensor<1x128x1x1xf32>, tensor<f32>) -> tensor<1x128x1x1xf32>
    %344 = "tosa.rsqrt"(%343) : (tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %345 = "tosa.mul"(%342, %344) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %346 = "tosa.mul"(%345, %22) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %347 = "tosa.add"(%346, %22) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %348 = "tosa.clamp"(%347) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %349 = "tosa.transpose"(%348, %57) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %350 = "tosa.conv2d"(%349, %82, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x1x7x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %351 = "tosa.transpose"(%350, %58) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %352 = "tosa.sub"(%351, %22) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %353 = "tosa.mul"(%352, %344) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %354 = "tosa.mul"(%353, %22) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %355 = "tosa.add"(%354, %22) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %356 = "tosa.clamp"(%355) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %357 = "tosa.transpose"(%356, %57) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %358 = "tosa.conv2d"(%357, %21, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<192x7x1x128xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %359 = "tosa.transpose"(%358, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %360 = "tosa.sub"(%359, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %361 = "tosa.mul"(%360, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %362 = "tosa.mul"(%361, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %363 = "tosa.add"(%362, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %364 = "tosa.clamp"(%363) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %365 = "tosa.conv2d"(%349, %81, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x7x1x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %366 = "tosa.transpose"(%365, %58) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %367 = "tosa.sub"(%366, %22) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %368 = "tosa.mul"(%367, %344) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %369 = "tosa.mul"(%368, %22) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %370 = "tosa.add"(%369, %22) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %371 = "tosa.clamp"(%370) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %372 = "tosa.transpose"(%371, %57) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %373 = "tosa.conv2d"(%372, %82, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x1x7x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %374 = "tosa.transpose"(%373, %58) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %375 = "tosa.sub"(%374, %22) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %376 = "tosa.mul"(%375, %344) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %377 = "tosa.mul"(%376, %22) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %378 = "tosa.add"(%377, %22) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %379 = "tosa.clamp"(%378) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %380 = "tosa.transpose"(%379, %57) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %381 = "tosa.conv2d"(%380, %81, %23) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x7x1x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %382 = "tosa.transpose"(%381, %58) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %383 = "tosa.sub"(%382, %22) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %384 = "tosa.mul"(%383, %344) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %385 = "tosa.mul"(%384, %22) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %386 = "tosa.add"(%385, %22) : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %387 = "tosa.clamp"(%386) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %388 = "tosa.transpose"(%387, %57) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %389 = "tosa.conv2d"(%388, %20, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<192x1x7x128xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %390 = "tosa.transpose"(%389, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %391 = "tosa.sub"(%390, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %392 = "tosa.mul"(%391, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %393 = "tosa.mul"(%392, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %394 = "tosa.add"(%393, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %395 = "tosa.clamp"(%394) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %396 = "tosa.avg_pool2d"(%332) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>) -> tensor<1x12x12x768xf32>
    %397 = "tosa.conv2d"(%396, %25, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %398 = "tosa.transpose"(%397, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %399 = "tosa.sub"(%398, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %400 = "tosa.mul"(%399, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %401 = "tosa.mul"(%400, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %402 = "tosa.add"(%401, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %403 = "tosa.clamp"(%402) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %inserted_slice_51 = tensor.insert_slice %339 into %cst_1[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_52 = tensor.insert_slice %364 into %inserted_slice_51[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_53 = tensor.insert_slice %395 into %inserted_slice_52[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_54 = tensor.insert_slice %403 into %inserted_slice_53[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %404 = "tosa.transpose"(%inserted_slice_54, %57) : (tensor<1x768x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x768xf32>
    %405 = "tosa.conv2d"(%404, %25, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %406 = "tosa.transpose"(%405, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %407 = "tosa.sub"(%406, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %408 = "tosa.mul"(%407, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %409 = "tosa.mul"(%408, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %410 = "tosa.add"(%409, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %411 = "tosa.clamp"(%410) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %412 = "tosa.conv2d"(%404, %19, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<160x1x1x768xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %413 = "tosa.transpose"(%412, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %414 = "tosa.sub"(%413, %17) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %415 = "tosa.add"(%17, %51) : (tensor<1x160x1x1xf32>, tensor<f32>) -> tensor<1x160x1x1xf32>
    %416 = "tosa.rsqrt"(%415) : (tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %417 = "tosa.mul"(%414, %416) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %418 = "tosa.mul"(%417, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %419 = "tosa.add"(%418, %17) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %420 = "tosa.clamp"(%419) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %421 = "tosa.transpose"(%420, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %422 = "tosa.conv2d"(%421, %77, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %423 = "tosa.transpose"(%422, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %424 = "tosa.sub"(%423, %17) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %425 = "tosa.mul"(%424, %416) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %426 = "tosa.mul"(%425, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %427 = "tosa.add"(%426, %17) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %428 = "tosa.clamp"(%427) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %429 = "tosa.transpose"(%428, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %430 = "tosa.conv2d"(%429, %16, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<192x7x1x160xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %431 = "tosa.transpose"(%430, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %432 = "tosa.sub"(%431, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %433 = "tosa.mul"(%432, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %434 = "tosa.mul"(%433, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %435 = "tosa.add"(%434, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %436 = "tosa.clamp"(%435) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %437 = "tosa.conv2d"(%421, %76, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %438 = "tosa.transpose"(%437, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %439 = "tosa.sub"(%438, %17) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %440 = "tosa.mul"(%439, %416) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %441 = "tosa.mul"(%440, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %442 = "tosa.add"(%441, %17) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %443 = "tosa.clamp"(%442) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %444 = "tosa.transpose"(%443, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %445 = "tosa.conv2d"(%444, %77, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %446 = "tosa.transpose"(%445, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %447 = "tosa.sub"(%446, %17) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %448 = "tosa.mul"(%447, %416) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %449 = "tosa.mul"(%448, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %450 = "tosa.add"(%449, %17) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %451 = "tosa.clamp"(%450) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %452 = "tosa.transpose"(%451, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %453 = "tosa.conv2d"(%452, %76, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %454 = "tosa.transpose"(%453, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %455 = "tosa.sub"(%454, %17) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %456 = "tosa.mul"(%455, %416) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %457 = "tosa.mul"(%456, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %458 = "tosa.add"(%457, %17) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %459 = "tosa.clamp"(%458) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %460 = "tosa.transpose"(%459, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %461 = "tosa.conv2d"(%460, %15, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<192x1x7x160xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %462 = "tosa.transpose"(%461, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %463 = "tosa.sub"(%462, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %464 = "tosa.mul"(%463, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %465 = "tosa.mul"(%464, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %466 = "tosa.add"(%465, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %467 = "tosa.clamp"(%466) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %468 = "tosa.avg_pool2d"(%404) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>) -> tensor<1x12x12x768xf32>
    %469 = "tosa.conv2d"(%468, %25, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %470 = "tosa.transpose"(%469, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %471 = "tosa.sub"(%470, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %472 = "tosa.mul"(%471, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %473 = "tosa.mul"(%472, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %474 = "tosa.add"(%473, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %475 = "tosa.clamp"(%474) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %inserted_slice_55 = tensor.insert_slice %411 into %cst_1[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_56 = tensor.insert_slice %436 into %inserted_slice_55[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_57 = tensor.insert_slice %467 into %inserted_slice_56[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_58 = tensor.insert_slice %475 into %inserted_slice_57[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %476 = "tosa.transpose"(%inserted_slice_58, %57) : (tensor<1x768x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x768xf32>
    %477 = "tosa.conv2d"(%476, %25, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %478 = "tosa.transpose"(%477, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %479 = "tosa.sub"(%478, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %480 = "tosa.mul"(%479, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %481 = "tosa.mul"(%480, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %482 = "tosa.add"(%481, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %483 = "tosa.clamp"(%482) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %484 = "tosa.conv2d"(%476, %19, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<160x1x1x768xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %485 = "tosa.transpose"(%484, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %486 = "tosa.sub"(%485, %17) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %487 = "tosa.mul"(%486, %416) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %488 = "tosa.mul"(%487, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %489 = "tosa.add"(%488, %17) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %490 = "tosa.clamp"(%489) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %491 = "tosa.transpose"(%490, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %492 = "tosa.conv2d"(%491, %77, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %493 = "tosa.transpose"(%492, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %494 = "tosa.sub"(%493, %17) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %495 = "tosa.mul"(%494, %416) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %496 = "tosa.mul"(%495, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %497 = "tosa.add"(%496, %17) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %498 = "tosa.clamp"(%497) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %499 = "tosa.transpose"(%498, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %500 = "tosa.conv2d"(%499, %16, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<192x7x1x160xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %501 = "tosa.transpose"(%500, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %502 = "tosa.sub"(%501, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %503 = "tosa.mul"(%502, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %504 = "tosa.mul"(%503, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %505 = "tosa.add"(%504, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %506 = "tosa.clamp"(%505) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %507 = "tosa.conv2d"(%491, %76, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %508 = "tosa.transpose"(%507, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %509 = "tosa.sub"(%508, %17) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %510 = "tosa.mul"(%509, %416) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %511 = "tosa.mul"(%510, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %512 = "tosa.add"(%511, %17) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %513 = "tosa.clamp"(%512) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %514 = "tosa.transpose"(%513, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %515 = "tosa.conv2d"(%514, %77, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %516 = "tosa.transpose"(%515, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %517 = "tosa.sub"(%516, %17) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %518 = "tosa.mul"(%517, %416) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %519 = "tosa.mul"(%518, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %520 = "tosa.add"(%519, %17) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %521 = "tosa.clamp"(%520) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %522 = "tosa.transpose"(%521, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %523 = "tosa.conv2d"(%522, %76, %18) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %524 = "tosa.transpose"(%523, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %525 = "tosa.sub"(%524, %17) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %526 = "tosa.mul"(%525, %416) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %527 = "tosa.mul"(%526, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %528 = "tosa.add"(%527, %17) : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %529 = "tosa.clamp"(%528) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %530 = "tosa.transpose"(%529, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %531 = "tosa.conv2d"(%530, %15, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<192x1x7x160xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %532 = "tosa.transpose"(%531, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %533 = "tosa.sub"(%532, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %534 = "tosa.mul"(%533, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %535 = "tosa.mul"(%534, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %536 = "tosa.add"(%535, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %537 = "tosa.clamp"(%536) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %538 = "tosa.avg_pool2d"(%476) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>) -> tensor<1x12x12x768xf32>
    %539 = "tosa.conv2d"(%538, %25, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %540 = "tosa.transpose"(%539, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %541 = "tosa.sub"(%540, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %542 = "tosa.mul"(%541, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %543 = "tosa.mul"(%542, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %544 = "tosa.add"(%543, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %545 = "tosa.clamp"(%544) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %inserted_slice_59 = tensor.insert_slice %483 into %cst_1[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_60 = tensor.insert_slice %506 into %inserted_slice_59[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_61 = tensor.insert_slice %537 into %inserted_slice_60[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_62 = tensor.insert_slice %545 into %inserted_slice_61[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %546 = "tosa.transpose"(%inserted_slice_62, %57) : (tensor<1x768x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x768xf32>
    %547 = "tosa.conv2d"(%546, %25, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %548 = "tosa.transpose"(%547, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %549 = "tosa.sub"(%548, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %550 = "tosa.mul"(%549, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %551 = "tosa.mul"(%550, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %552 = "tosa.add"(%551, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %553 = "tosa.clamp"(%552) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %554 = "tosa.transpose"(%553, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %555 = "tosa.conv2d"(%554, %72, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %556 = "tosa.transpose"(%555, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %557 = "tosa.sub"(%556, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %558 = "tosa.mul"(%557, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %559 = "tosa.mul"(%558, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %560 = "tosa.add"(%559, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %561 = "tosa.clamp"(%560) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %562 = "tosa.transpose"(%561, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %563 = "tosa.conv2d"(%562, %71, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %564 = "tosa.transpose"(%563, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %565 = "tosa.sub"(%564, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %566 = "tosa.mul"(%565, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %567 = "tosa.mul"(%566, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %568 = "tosa.add"(%567, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %569 = "tosa.clamp"(%568) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %570 = "tosa.conv2d"(%554, %71, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %571 = "tosa.transpose"(%570, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %572 = "tosa.sub"(%571, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %573 = "tosa.mul"(%572, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %574 = "tosa.mul"(%573, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %575 = "tosa.add"(%574, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %576 = "tosa.clamp"(%575) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %577 = "tosa.transpose"(%576, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %578 = "tosa.conv2d"(%577, %72, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %579 = "tosa.transpose"(%578, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %580 = "tosa.sub"(%579, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %581 = "tosa.mul"(%580, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %582 = "tosa.mul"(%581, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %583 = "tosa.add"(%582, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %584 = "tosa.clamp"(%583) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %585 = "tosa.transpose"(%584, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %586 = "tosa.conv2d"(%585, %71, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %587 = "tosa.transpose"(%586, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %588 = "tosa.sub"(%587, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %589 = "tosa.mul"(%588, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %590 = "tosa.mul"(%589, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %591 = "tosa.add"(%590, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %592 = "tosa.clamp"(%591) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %593 = "tosa.transpose"(%592, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %594 = "tosa.conv2d"(%593, %72, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %595 = "tosa.transpose"(%594, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %596 = "tosa.sub"(%595, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %597 = "tosa.mul"(%596, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %598 = "tosa.mul"(%597, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %599 = "tosa.add"(%598, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %600 = "tosa.clamp"(%599) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %601 = "tosa.avg_pool2d"(%546) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>) -> tensor<1x12x12x768xf32>
    %602 = "tosa.conv2d"(%601, %25, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %603 = "tosa.transpose"(%602, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %604 = "tosa.sub"(%603, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %605 = "tosa.mul"(%604, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %606 = "tosa.mul"(%605, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %607 = "tosa.add"(%606, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %608 = "tosa.clamp"(%607) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %inserted_slice_63 = tensor.insert_slice %553 into %cst_1[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_64 = tensor.insert_slice %569 into %inserted_slice_63[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_65 = tensor.insert_slice %600 into %inserted_slice_64[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_66 = tensor.insert_slice %608 into %inserted_slice_65[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %609 = "tosa.transpose"(%inserted_slice_66, %57) : (tensor<1x768x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x768xf32>
    %610 = "tosa.conv2d"(%609, %25, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %611 = "tosa.transpose"(%610, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %612 = "tosa.sub"(%611, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %613 = "tosa.mul"(%612, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %614 = "tosa.mul"(%613, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %615 = "tosa.add"(%614, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %616 = "tosa.clamp"(%615) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %617 = "tosa.transpose"(%616, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %618 = "tosa.conv2d"(%617, %14, %13) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x12x12x192xf32>, tensor<320x3x3x192xf32>, tensor<320xf32>) -> tensor<1x5x5x320xf32>
    %619 = "tosa.transpose"(%618, %58) : (tensor<1x5x5x320xf32>, tensor<4xi64>) -> tensor<1x320x5x5xf32>
    %620 = "tosa.sub"(%619, %12) : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %621 = "tosa.add"(%12, %51) : (tensor<1x320x1x1xf32>, tensor<f32>) -> tensor<1x320x1x1xf32>
    %622 = "tosa.rsqrt"(%621) : (tensor<1x320x1x1xf32>) -> tensor<1x320x1x1xf32>
    %623 = "tosa.mul"(%620, %622) {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %624 = "tosa.mul"(%623, %12) {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %625 = "tosa.add"(%624, %12) : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %626 = "tosa.clamp"(%625) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    %627 = "tosa.conv2d"(%617, %72, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %628 = "tosa.transpose"(%627, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %629 = "tosa.sub"(%628, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %630 = "tosa.mul"(%629, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %631 = "tosa.mul"(%630, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %632 = "tosa.add"(%631, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %633 = "tosa.clamp"(%632) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %634 = "tosa.transpose"(%633, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %635 = "tosa.conv2d"(%634, %71, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %636 = "tosa.transpose"(%635, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %637 = "tosa.sub"(%636, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %638 = "tosa.mul"(%637, %146) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %639 = "tosa.mul"(%638, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %640 = "tosa.add"(%639, %42) : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %641 = "tosa.clamp"(%640) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %642 = "tosa.transpose"(%641, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %643 = "tosa.conv2d"(%642, %70, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x12x12x192xf32>, tensor<192x3x3x192xf32>, tensor<192xf32>) -> tensor<1x5x5x192xf32>
    %644 = "tosa.transpose"(%643, %58) : (tensor<1x5x5x192xf32>, tensor<4xi64>) -> tensor<1x192x5x5xf32>
    %645 = "tosa.sub"(%644, %42) : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %646 = "tosa.mul"(%645, %146) {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %647 = "tosa.mul"(%646, %42) {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %648 = "tosa.add"(%647, %42) : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %649 = "tosa.clamp"(%648) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %650 = "tosa.max_pool2d"(%609) {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x12x12x768xf32>) -> tensor<1x5x5x768xf32>
    %651 = "tosa.transpose"(%650, %58) : (tensor<1x5x5x768xf32>, tensor<4xi64>) -> tensor<1x768x5x5xf32>
    %inserted_slice_67 = tensor.insert_slice %626 into %cst_2[0, 0, 0, 0] [1, 320, 5, 5] [1, 1, 1, 1] : tensor<1x320x5x5xf32> into tensor<1x1280x5x5xf32>
    %inserted_slice_68 = tensor.insert_slice %649 into %inserted_slice_67[0, 320, 0, 0] [1, 192, 5, 5] [1, 1, 1, 1] : tensor<1x192x5x5xf32> into tensor<1x1280x5x5xf32>
    %inserted_slice_69 = tensor.insert_slice %651 into %inserted_slice_68[0, 512, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> into tensor<1x1280x5x5xf32>
    %652 = "tosa.transpose"(%inserted_slice_69, %57) : (tensor<1x1280x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x1280xf32>
    %653 = "tosa.conv2d"(%652, %11, %13) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x1280xf32>, tensor<320x1x1x1280xf32>, tensor<320xf32>) -> tensor<1x5x5x320xf32>
    %654 = "tosa.transpose"(%653, %58) : (tensor<1x5x5x320xf32>, tensor<4xi64>) -> tensor<1x320x5x5xf32>
    %655 = "tosa.sub"(%654, %12) : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %656 = "tosa.mul"(%655, %622) {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %657 = "tosa.mul"(%656, %12) {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %658 = "tosa.add"(%657, %12) : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %659 = "tosa.clamp"(%658) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    %660 = "tosa.conv2d"(%652, %10, %27) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x1280xf32>, tensor<384x1x1x1280xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %661 = "tosa.transpose"(%660, %58) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %662 = "tosa.sub"(%661, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %663 = "tosa.mul"(%662, %302) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %664 = "tosa.mul"(%663, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %665 = "tosa.add"(%664, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %666 = "tosa.clamp"(%665) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %667 = "tosa.transpose"(%666, %57) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %668 = "tosa.conv2d"(%667, %61, %27) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %669 = "tosa.transpose"(%668, %58) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %670 = "tosa.sub"(%669, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %671 = "tosa.mul"(%670, %302) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %672 = "tosa.mul"(%671, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %673 = "tosa.add"(%672, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %674 = "tosa.clamp"(%673) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %675 = "tosa.conv2d"(%667, %60, %27) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %676 = "tosa.transpose"(%675, %58) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %677 = "tosa.sub"(%676, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %678 = "tosa.mul"(%677, %302) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %679 = "tosa.mul"(%678, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %680 = "tosa.add"(%679, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %681 = "tosa.clamp"(%680) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %inserted_slice_70 = tensor.insert_slice %674 into %cst_3[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %inserted_slice_71 = tensor.insert_slice %681 into %inserted_slice_70[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %682 = "tosa.conv2d"(%652, %9, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x1280xf32>, tensor<448x1x1x1280xf32>, tensor<448xf32>) -> tensor<1x5x5x448xf32>
    %683 = "tosa.transpose"(%682, %58) : (tensor<1x5x5x448xf32>, tensor<4xi64>) -> tensor<1x448x5x5xf32>
    %684 = "tosa.sub"(%683, %7) : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %685 = "tosa.add"(%7, %51) : (tensor<1x448x1x1xf32>, tensor<f32>) -> tensor<1x448x1x1xf32>
    %686 = "tosa.rsqrt"(%685) : (tensor<1x448x1x1xf32>) -> tensor<1x448x1x1xf32>
    %687 = "tosa.mul"(%684, %686) {shift = 0 : i8} : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %688 = "tosa.mul"(%687, %7) {shift = 0 : i8} : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %689 = "tosa.add"(%688, %7) : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %690 = "tosa.clamp"(%689) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x448x5x5xf32>) -> tensor<1x448x5x5xf32>
    %691 = "tosa.transpose"(%690, %57) : (tensor<1x448x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x448xf32>
    %692 = "tosa.conv2d"(%691, %6, %27) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x448xf32>, tensor<384x3x3x448xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %693 = "tosa.transpose"(%692, %58) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %694 = "tosa.sub"(%693, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %695 = "tosa.mul"(%694, %302) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %696 = "tosa.mul"(%695, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %697 = "tosa.add"(%696, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %698 = "tosa.clamp"(%697) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %699 = "tosa.transpose"(%698, %57) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %700 = "tosa.conv2d"(%699, %61, %27) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %701 = "tosa.transpose"(%700, %58) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %702 = "tosa.sub"(%701, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %703 = "tosa.mul"(%702, %302) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %704 = "tosa.mul"(%703, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %705 = "tosa.add"(%704, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %706 = "tosa.clamp"(%705) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %707 = "tosa.conv2d"(%699, %60, %27) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %708 = "tosa.transpose"(%707, %58) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %709 = "tosa.sub"(%708, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %710 = "tosa.mul"(%709, %302) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %711 = "tosa.mul"(%710, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %712 = "tosa.add"(%711, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %713 = "tosa.clamp"(%712) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %inserted_slice_72 = tensor.insert_slice %706 into %cst_3[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %inserted_slice_73 = tensor.insert_slice %713 into %inserted_slice_72[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %714 = "tosa.avg_pool2d"(%652) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x1280xf32>) -> tensor<1x5x5x1280xf32>
    %715 = "tosa.conv2d"(%714, %5, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x1280xf32>, tensor<192x1x1x1280xf32>, tensor<192xf32>) -> tensor<1x5x5x192xf32>
    %716 = "tosa.transpose"(%715, %58) : (tensor<1x5x5x192xf32>, tensor<4xi64>) -> tensor<1x192x5x5xf32>
    %717 = "tosa.sub"(%716, %42) : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %718 = "tosa.mul"(%717, %146) {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %719 = "tosa.mul"(%718, %42) {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %720 = "tosa.add"(%719, %42) : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %721 = "tosa.clamp"(%720) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %inserted_slice_74 = tensor.insert_slice %659 into %cst_4[0, 0, 0, 0] [1, 320, 5, 5] [1, 1, 1, 1] : tensor<1x320x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_75 = tensor.insert_slice %inserted_slice_71 into %inserted_slice_74[0, 320, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_76 = tensor.insert_slice %inserted_slice_73 into %inserted_slice_75[0, 1088, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_77 = tensor.insert_slice %721 into %inserted_slice_76[0, 1856, 0, 0] [1, 192, 5, 5] [1, 1, 1, 1] : tensor<1x192x5x5xf32> into tensor<1x2048x5x5xf32>
    %722 = "tosa.transpose"(%inserted_slice_77, %57) : (tensor<1x2048x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x2048xf32>
    %723 = "tosa.conv2d"(%722, %4, %13) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>, tensor<320x1x1x2048xf32>, tensor<320xf32>) -> tensor<1x5x5x320xf32>
    %724 = "tosa.transpose"(%723, %58) : (tensor<1x5x5x320xf32>, tensor<4xi64>) -> tensor<1x320x5x5xf32>
    %725 = "tosa.sub"(%724, %12) : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %726 = "tosa.mul"(%725, %622) {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %727 = "tosa.mul"(%726, %12) {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %728 = "tosa.add"(%727, %12) : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %729 = "tosa.clamp"(%728) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    %730 = "tosa.conv2d"(%722, %3, %27) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>, tensor<384x1x1x2048xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %731 = "tosa.transpose"(%730, %58) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %732 = "tosa.sub"(%731, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %733 = "tosa.mul"(%732, %302) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %734 = "tosa.mul"(%733, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %735 = "tosa.add"(%734, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %736 = "tosa.clamp"(%735) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %737 = "tosa.transpose"(%736, %57) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %738 = "tosa.conv2d"(%737, %61, %27) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %739 = "tosa.transpose"(%738, %58) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %740 = "tosa.sub"(%739, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %741 = "tosa.mul"(%740, %302) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %742 = "tosa.mul"(%741, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %743 = "tosa.add"(%742, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %744 = "tosa.clamp"(%743) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %745 = "tosa.conv2d"(%737, %60, %27) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %746 = "tosa.transpose"(%745, %58) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %747 = "tosa.sub"(%746, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %748 = "tosa.mul"(%747, %302) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %749 = "tosa.mul"(%748, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %750 = "tosa.add"(%749, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %751 = "tosa.clamp"(%750) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %inserted_slice_78 = tensor.insert_slice %744 into %cst_3[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %inserted_slice_79 = tensor.insert_slice %751 into %inserted_slice_78[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %752 = "tosa.conv2d"(%722, %2, %8) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>, tensor<448x1x1x2048xf32>, tensor<448xf32>) -> tensor<1x5x5x448xf32>
    %753 = "tosa.transpose"(%752, %58) : (tensor<1x5x5x448xf32>, tensor<4xi64>) -> tensor<1x448x5x5xf32>
    %754 = "tosa.sub"(%753, %7) : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %755 = "tosa.mul"(%754, %686) {shift = 0 : i8} : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %756 = "tosa.mul"(%755, %7) {shift = 0 : i8} : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %757 = "tosa.add"(%756, %7) : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %758 = "tosa.clamp"(%757) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x448x5x5xf32>) -> tensor<1x448x5x5xf32>
    %759 = "tosa.transpose"(%758, %57) : (tensor<1x448x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x448xf32>
    %760 = "tosa.conv2d"(%759, %6, %27) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x448xf32>, tensor<384x3x3x448xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %761 = "tosa.transpose"(%760, %58) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %762 = "tosa.sub"(%761, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %763 = "tosa.mul"(%762, %302) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %764 = "tosa.mul"(%763, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %765 = "tosa.add"(%764, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %766 = "tosa.clamp"(%765) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %767 = "tosa.transpose"(%766, %57) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %768 = "tosa.conv2d"(%767, %61, %27) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %769 = "tosa.transpose"(%768, %58) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %770 = "tosa.sub"(%769, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %771 = "tosa.mul"(%770, %302) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %772 = "tosa.mul"(%771, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %773 = "tosa.add"(%772, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %774 = "tosa.clamp"(%773) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %775 = "tosa.conv2d"(%767, %60, %27) {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %776 = "tosa.transpose"(%775, %58) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %777 = "tosa.sub"(%776, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %778 = "tosa.mul"(%777, %302) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %779 = "tosa.mul"(%778, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %780 = "tosa.add"(%779, %26) : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %781 = "tosa.clamp"(%780) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %inserted_slice_80 = tensor.insert_slice %774 into %cst_3[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %inserted_slice_81 = tensor.insert_slice %781 into %inserted_slice_80[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %782 = "tosa.avg_pool2d"(%722) {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>) -> tensor<1x5x5x2048xf32>
    %783 = "tosa.conv2d"(%782, %1, %43) {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>, tensor<192x1x1x2048xf32>, tensor<192xf32>) -> tensor<1x5x5x192xf32>
    %784 = "tosa.transpose"(%783, %58) : (tensor<1x5x5x192xf32>, tensor<4xi64>) -> tensor<1x192x5x5xf32>
    %785 = "tosa.sub"(%784, %42) : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %786 = "tosa.mul"(%785, %146) {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %787 = "tosa.mul"(%786, %42) {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %788 = "tosa.add"(%787, %42) : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %789 = "tosa.clamp"(%788) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %inserted_slice_82 = tensor.insert_slice %729 into %cst_4[0, 0, 0, 0] [1, 320, 5, 5] [1, 1, 1, 1] : tensor<1x320x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_83 = tensor.insert_slice %inserted_slice_79 into %inserted_slice_82[0, 320, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_84 = tensor.insert_slice %inserted_slice_81 into %inserted_slice_83[0, 1088, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_85 = tensor.insert_slice %789 into %inserted_slice_84[0, 1856, 0, 0] [1, 192, 5, 5] [1, 1, 1, 1] : tensor<1x192x5x5xf32> into tensor<1x2048x5x5xf32>
    %790 = "tosa.transpose"(%inserted_slice_85, %57) : (tensor<1x2048x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x2048xf32>
    %791 = "tosa.reshape"(%arg0) {new_shape = array<i64: 1, 1, 1000>} : (tensor<1x1000xf32>) -> tensor<1x1x1000xf32>
    %792 = "tosa.matmul"(%791, %55) : (tensor<1x1x1000xf32>, tensor<1x1000x2048xf32>) -> tensor<1x1x2048xf32>
    %793 = "tosa.reshape"(%792) {new_shape = array<i64: 1, 2048, 1, 1>} : (tensor<1x1x2048xf32>) -> tensor<1x2048x1x1xf32>
    %794 = "tosa.select"(%0, %793, %56) : (tensor<1x2048x1x1xi1>, tensor<1x2048x1x1xf32>, tensor<f32>) -> tensor<1x2048x1x1xf32>
    %795 = "tosa.reshape"(%794) {new_shape = array<i64: 1, 1, 1, 2048>} : (tensor<1x2048x1x1xf32>) -> tensor<1x1x1x2048xf32>
    %796 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%790, %cst_6, %795 : tensor<1x5x5x2048xf32>, tensor<5x5xf32>, tensor<1x1x1x2048xf32>) outs(%cst_5 : tensor<1x5x5x2048xf32>) {
    ^bb0(%in: f32, %in_152: f32, %in_153: f32, %out: f32):
      %1501 = arith.mulf %in_153, %cst_34 : f32
      %1502 = arith.addf %1501, %out : f32
      linalg.yield %1502 : f32
    } -> tensor<1x5x5x2048xf32>
    %797 = "tosa.transpose"(%796, %58) : (tensor<1x5x5x2048xf32>, tensor<4xi64>) -> tensor<1x2048x5x5xf32>
    %extracted_slice = tensor.extract_slice %797[0, 1856, 0, 0] [1, 192, 5, 5] [1, 1, 1, 1] : tensor<1x2048x5x5xf32> to tensor<1x192x5x5xf32>
    %extracted_slice_86 = tensor.extract_slice %797[0, 1088, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x2048x5x5xf32> to tensor<1x768x5x5xf32>
    %extracted_slice_87 = tensor.extract_slice %797[0, 320, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x2048x5x5xf32> to tensor<1x768x5x5xf32>
    %extracted_slice_88 = tensor.extract_slice %797[0, 0, 0, 0] [1, 320, 5, 5] [1, 1, 1, 1] : tensor<1x2048x5x5xf32> to tensor<1x320x5x5xf32>
    %798 = "tosa.equal"(%788, %789) : (tensor<1x192x5x5xf32>, tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xi1>
    %799 = "tosa.select"(%798, %extracted_slice, %56) : (tensor<1x192x5x5xi1>, tensor<1x192x5x5xf32>, tensor<f32>) -> tensor<1x192x5x5xf32>
    %800 = "tosa.mul"(%799, %42) {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %801 = "tosa.mul"(%146, %800) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %802 = "tosa.transpose"(%801, %57) : (tensor<1x192x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x192xf32>
    %803 = "tosa.transpose_conv2d"(%802, %59, %cst_7) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 5, 5, 2048>, stride = array<i64: 1, 1>} : (tensor<1x5x5x192xf32>, tensor<2048x1x1x192xf32>, tensor<2048xf32>) -> tensor<1x5x5x2048xf32>
    %padded = tensor.pad %722 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_35 : f32
    } : tensor<1x5x5x2048xf32> to tensor<1x7x7x2048xf32>
    %804 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%padded, %cst_9, %803 : tensor<1x7x7x2048xf32>, tensor<3x3xf32>, tensor<1x5x5x2048xf32>) outs(%cst_8 : tensor<1x7x7x2048xf32>) {
    ^bb0(%in: f32, %in_152: f32, %in_153: f32, %out: f32):
      %1501 = arith.mulf %in_153, %cst_36 : f32
      %1502 = arith.addf %1501, %out : f32
      linalg.yield %1502 : f32
    } -> tensor<1x7x7x2048xf32>
    %extracted_slice_89 = tensor.extract_slice %804[0, 1, 1, 0] [1, 5, 5, 2048] [1, 1, 1, 1] : tensor<1x7x7x2048xf32> to tensor<1x5x5x2048xf32>
    %805 = "tosa.transpose"(%extracted_slice_89, %58) : (tensor<1x5x5x2048xf32>, tensor<4xi64>) -> tensor<1x2048x5x5xf32>
    %extracted_slice_90 = tensor.extract_slice %extracted_slice_86[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> to tensor<1x384x5x5xf32>
    %extracted_slice_91 = tensor.extract_slice %extracted_slice_86[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> to tensor<1x384x5x5xf32>
    %806 = "tosa.equal"(%780, %781) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %807 = "tosa.select"(%806, %extracted_slice_90, %56) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %808 = "tosa.mul"(%807, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %809 = "tosa.mul"(%302, %808) {shift = 0 : i8} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %810 = "tosa.transpose"(%809, %57) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %811 = "tosa.transpose_conv2d"(%810, %60, %cst_10) {out_pad = array<i64: -1, -1, 0, 0>, out_shape = array<i64: 1, 5, 5, 384>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %812 = "tosa.transpose"(%811, %58) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %813 = "tosa.equal"(%773, %774) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %814 = "tosa.select"(%813, %extracted_slice_91, %56) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %815 = "tosa.mul"(%814, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %816 = "tosa.mul"(%302, %815) {shift = 0 : i8} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %817 = "tosa.transpose"(%816, %57) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %818 = "tosa.transpose_conv2d"(%817, %61, %cst_10) {out_pad = array<i64: 0, 0, -1, -1>, out_shape = array<i64: 1, 5, 5, 384>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %819 = "tosa.transpose"(%818, %58) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %820 = "tosa.add"(%812, %819) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %821 = "tosa.equal"(%765, %766) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %822 = "tosa.select"(%821, %820, %56) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %823 = "tosa.mul"(%822, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %824 = "tosa.mul"(%302, %823) {shift = 0 : i8} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %825 = "tosa.transpose"(%824, %57) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %826 = "tosa.transpose_conv2d"(%825, %62, %cst_11) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 5, 5, 448>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<448x3x3x384xf32>, tensor<448xf32>) -> tensor<1x5x5x448xf32>
    %827 = "tosa.transpose"(%826, %58) : (tensor<1x5x5x448xf32>, tensor<4xi64>) -> tensor<1x448x5x5xf32>
    %828 = "tosa.equal"(%757, %758) : (tensor<1x448x5x5xf32>, tensor<1x448x5x5xf32>) -> tensor<1x448x5x5xi1>
    %829 = "tosa.select"(%828, %827, %56) : (tensor<1x448x5x5xi1>, tensor<1x448x5x5xf32>, tensor<f32>) -> tensor<1x448x5x5xf32>
    %830 = "tosa.mul"(%829, %7) {shift = 0 : i8} : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %831 = "tosa.mul"(%686, %830) {shift = 0 : i8} : (tensor<1x448x1x1xf32>, tensor<1x448x5x5xf32>) -> tensor<1x448x5x5xf32>
    %832 = "tosa.transpose"(%831, %57) : (tensor<1x448x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x448xf32>
    %833 = "tosa.transpose_conv2d"(%832, %63, %cst_7) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 5, 5, 2048>, stride = array<i64: 1, 1>} : (tensor<1x5x5x448xf32>, tensor<2048x1x1x448xf32>, tensor<2048xf32>) -> tensor<1x5x5x2048xf32>
    %834 = "tosa.transpose"(%833, %58) : (tensor<1x5x5x2048xf32>, tensor<4xi64>) -> tensor<1x2048x5x5xf32>
    %835 = "tosa.add"(%805, %834) : (tensor<1x2048x5x5xf32>, tensor<1x2048x5x5xf32>) -> tensor<1x2048x5x5xf32>
    %extracted_slice_92 = tensor.extract_slice %extracted_slice_87[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> to tensor<1x384x5x5xf32>
    %extracted_slice_93 = tensor.extract_slice %extracted_slice_87[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> to tensor<1x384x5x5xf32>
    %836 = "tosa.equal"(%750, %751) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %837 = "tosa.select"(%836, %extracted_slice_92, %56) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %838 = "tosa.mul"(%837, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %839 = "tosa.mul"(%302, %838) {shift = 0 : i8} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %840 = "tosa.transpose"(%839, %57) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %841 = "tosa.transpose_conv2d"(%840, %60, %cst_10) {out_pad = array<i64: -1, -1, 0, 0>, out_shape = array<i64: 1, 5, 5, 384>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %842 = "tosa.transpose"(%841, %58) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %843 = "tosa.equal"(%743, %744) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %844 = "tosa.select"(%843, %extracted_slice_93, %56) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %845 = "tosa.mul"(%844, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %846 = "tosa.mul"(%302, %845) {shift = 0 : i8} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %847 = "tosa.transpose"(%846, %57) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %848 = "tosa.transpose_conv2d"(%847, %61, %cst_10) {out_pad = array<i64: 0, 0, -1, -1>, out_shape = array<i64: 1, 5, 5, 384>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %849 = "tosa.transpose"(%848, %58) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %850 = "tosa.add"(%842, %849) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %851 = "tosa.equal"(%735, %736) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %852 = "tosa.select"(%851, %850, %56) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %853 = "tosa.mul"(%852, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %854 = "tosa.mul"(%302, %853) {shift = 0 : i8} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %855 = "tosa.transpose"(%854, %57) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %856 = "tosa.transpose_conv2d"(%855, %64, %cst_7) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 5, 5, 2048>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<2048x1x1x384xf32>, tensor<2048xf32>) -> tensor<1x5x5x2048xf32>
    %857 = "tosa.transpose"(%856, %58) : (tensor<1x5x5x2048xf32>, tensor<4xi64>) -> tensor<1x2048x5x5xf32>
    %858 = "tosa.add"(%835, %857) : (tensor<1x2048x5x5xf32>, tensor<1x2048x5x5xf32>) -> tensor<1x2048x5x5xf32>
    %859 = "tosa.equal"(%728, %729) : (tensor<1x320x5x5xf32>, tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xi1>
    %860 = "tosa.select"(%859, %extracted_slice_88, %56) : (tensor<1x320x5x5xi1>, tensor<1x320x5x5xf32>, tensor<f32>) -> tensor<1x320x5x5xf32>
    %861 = "tosa.mul"(%860, %12) {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %862 = "tosa.mul"(%622, %861) {shift = 0 : i8} : (tensor<1x320x1x1xf32>, tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    %863 = "tosa.transpose"(%862, %57) : (tensor<1x320x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x320xf32>
    %864 = "tosa.transpose_conv2d"(%863, %65, %cst_7) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 5, 5, 2048>, stride = array<i64: 1, 1>} : (tensor<1x5x5x320xf32>, tensor<2048x1x1x320xf32>, tensor<2048xf32>) -> tensor<1x5x5x2048xf32>
    %865 = "tosa.transpose"(%864, %58) : (tensor<1x5x5x2048xf32>, tensor<4xi64>) -> tensor<1x2048x5x5xf32>
    %866 = "tosa.add"(%858, %865) : (tensor<1x2048x5x5xf32>, tensor<1x2048x5x5xf32>) -> tensor<1x2048x5x5xf32>
    %extracted_slice_94 = tensor.extract_slice %866[0, 1856, 0, 0] [1, 192, 5, 5] [1, 1, 1, 1] : tensor<1x2048x5x5xf32> to tensor<1x192x5x5xf32>
    %extracted_slice_95 = tensor.extract_slice %866[0, 1088, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x2048x5x5xf32> to tensor<1x768x5x5xf32>
    %extracted_slice_96 = tensor.extract_slice %866[0, 320, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x2048x5x5xf32> to tensor<1x768x5x5xf32>
    %extracted_slice_97 = tensor.extract_slice %866[0, 0, 0, 0] [1, 320, 5, 5] [1, 1, 1, 1] : tensor<1x2048x5x5xf32> to tensor<1x320x5x5xf32>
    %867 = "tosa.equal"(%720, %721) : (tensor<1x192x5x5xf32>, tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xi1>
    %868 = "tosa.select"(%867, %extracted_slice_94, %56) : (tensor<1x192x5x5xi1>, tensor<1x192x5x5xf32>, tensor<f32>) -> tensor<1x192x5x5xf32>
    %869 = "tosa.mul"(%868, %42) {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %870 = "tosa.mul"(%146, %869) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %871 = "tosa.transpose"(%870, %57) : (tensor<1x192x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x192xf32>
    %872 = "tosa.transpose_conv2d"(%871, %66, %cst_12) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 5, 5, 1280>, stride = array<i64: 1, 1>} : (tensor<1x5x5x192xf32>, tensor<1280x1x1x192xf32>, tensor<1280xf32>) -> tensor<1x5x5x1280xf32>
    %padded_98 = tensor.pad %652 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_35 : f32
    } : tensor<1x5x5x1280xf32> to tensor<1x7x7x1280xf32>
    %873 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%padded_98, %cst_9, %872 : tensor<1x7x7x1280xf32>, tensor<3x3xf32>, tensor<1x5x5x1280xf32>) outs(%cst_13 : tensor<1x7x7x1280xf32>) {
    ^bb0(%in: f32, %in_152: f32, %in_153: f32, %out: f32):
      %1501 = arith.mulf %in_153, %cst_36 : f32
      %1502 = arith.addf %1501, %out : f32
      linalg.yield %1502 : f32
    } -> tensor<1x7x7x1280xf32>
    %extracted_slice_99 = tensor.extract_slice %873[0, 1, 1, 0] [1, 5, 5, 1280] [1, 1, 1, 1] : tensor<1x7x7x1280xf32> to tensor<1x5x5x1280xf32>
    %874 = "tosa.transpose"(%extracted_slice_99, %58) : (tensor<1x5x5x1280xf32>, tensor<4xi64>) -> tensor<1x1280x5x5xf32>
    %extracted_slice_100 = tensor.extract_slice %extracted_slice_95[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> to tensor<1x384x5x5xf32>
    %extracted_slice_101 = tensor.extract_slice %extracted_slice_95[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> to tensor<1x384x5x5xf32>
    %875 = "tosa.equal"(%712, %713) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %876 = "tosa.select"(%875, %extracted_slice_100, %56) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %877 = "tosa.mul"(%876, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %878 = "tosa.mul"(%302, %877) {shift = 0 : i8} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %879 = "tosa.transpose"(%878, %57) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %880 = "tosa.transpose_conv2d"(%879, %60, %cst_10) {out_pad = array<i64: -1, -1, 0, 0>, out_shape = array<i64: 1, 5, 5, 384>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %881 = "tosa.transpose"(%880, %58) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %882 = "tosa.equal"(%705, %706) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %883 = "tosa.select"(%882, %extracted_slice_101, %56) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %884 = "tosa.mul"(%883, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %885 = "tosa.mul"(%302, %884) {shift = 0 : i8} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %886 = "tosa.transpose"(%885, %57) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %887 = "tosa.transpose_conv2d"(%886, %61, %cst_10) {out_pad = array<i64: 0, 0, -1, -1>, out_shape = array<i64: 1, 5, 5, 384>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %888 = "tosa.transpose"(%887, %58) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %889 = "tosa.add"(%881, %888) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %890 = "tosa.equal"(%697, %698) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %891 = "tosa.select"(%890, %889, %56) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %892 = "tosa.mul"(%891, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %893 = "tosa.mul"(%302, %892) {shift = 0 : i8} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %894 = "tosa.transpose"(%893, %57) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %895 = "tosa.transpose_conv2d"(%894, %62, %cst_11) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 5, 5, 448>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<448x3x3x384xf32>, tensor<448xf32>) -> tensor<1x5x5x448xf32>
    %896 = "tosa.transpose"(%895, %58) : (tensor<1x5x5x448xf32>, tensor<4xi64>) -> tensor<1x448x5x5xf32>
    %897 = "tosa.equal"(%689, %690) : (tensor<1x448x5x5xf32>, tensor<1x448x5x5xf32>) -> tensor<1x448x5x5xi1>
    %898 = "tosa.select"(%897, %896, %56) : (tensor<1x448x5x5xi1>, tensor<1x448x5x5xf32>, tensor<f32>) -> tensor<1x448x5x5xf32>
    %899 = "tosa.mul"(%898, %7) {shift = 0 : i8} : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %900 = "tosa.mul"(%686, %899) {shift = 0 : i8} : (tensor<1x448x1x1xf32>, tensor<1x448x5x5xf32>) -> tensor<1x448x5x5xf32>
    %901 = "tosa.transpose"(%900, %57) : (tensor<1x448x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x448xf32>
    %902 = "tosa.transpose_conv2d"(%901, %67, %cst_12) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 5, 5, 1280>, stride = array<i64: 1, 1>} : (tensor<1x5x5x448xf32>, tensor<1280x1x1x448xf32>, tensor<1280xf32>) -> tensor<1x5x5x1280xf32>
    %903 = "tosa.transpose"(%902, %58) : (tensor<1x5x5x1280xf32>, tensor<4xi64>) -> tensor<1x1280x5x5xf32>
    %904 = "tosa.add"(%874, %903) : (tensor<1x1280x5x5xf32>, tensor<1x1280x5x5xf32>) -> tensor<1x1280x5x5xf32>
    %extracted_slice_102 = tensor.extract_slice %extracted_slice_96[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> to tensor<1x384x5x5xf32>
    %extracted_slice_103 = tensor.extract_slice %extracted_slice_96[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> to tensor<1x384x5x5xf32>
    %905 = "tosa.equal"(%680, %681) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %906 = "tosa.select"(%905, %extracted_slice_102, %56) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %907 = "tosa.mul"(%906, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %908 = "tosa.mul"(%302, %907) {shift = 0 : i8} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %909 = "tosa.transpose"(%908, %57) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %910 = "tosa.transpose_conv2d"(%909, %60, %cst_10) {out_pad = array<i64: -1, -1, 0, 0>, out_shape = array<i64: 1, 5, 5, 384>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %911 = "tosa.transpose"(%910, %58) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %912 = "tosa.equal"(%673, %674) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %913 = "tosa.select"(%912, %extracted_slice_103, %56) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %914 = "tosa.mul"(%913, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %915 = "tosa.mul"(%302, %914) {shift = 0 : i8} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %916 = "tosa.transpose"(%915, %57) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %917 = "tosa.transpose_conv2d"(%916, %61, %cst_10) {out_pad = array<i64: 0, 0, -1, -1>, out_shape = array<i64: 1, 5, 5, 384>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %918 = "tosa.transpose"(%917, %58) : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %919 = "tosa.add"(%911, %918) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %920 = "tosa.equal"(%665, %666) : (tensor<1x384x5x5xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xi1>
    %921 = "tosa.select"(%920, %919, %56) : (tensor<1x384x5x5xi1>, tensor<1x384x5x5xf32>, tensor<f32>) -> tensor<1x384x5x5xf32>
    %922 = "tosa.mul"(%921, %26) {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %923 = "tosa.mul"(%302, %922) {shift = 0 : i8} : (tensor<1x384x1x1xf32>, tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %924 = "tosa.transpose"(%923, %57) : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %925 = "tosa.transpose_conv2d"(%924, %68, %cst_12) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 5, 5, 1280>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<1280x1x1x384xf32>, tensor<1280xf32>) -> tensor<1x5x5x1280xf32>
    %926 = "tosa.transpose"(%925, %58) : (tensor<1x5x5x1280xf32>, tensor<4xi64>) -> tensor<1x1280x5x5xf32>
    %927 = "tosa.add"(%904, %926) : (tensor<1x1280x5x5xf32>, tensor<1x1280x5x5xf32>) -> tensor<1x1280x5x5xf32>
    %928 = "tosa.equal"(%658, %659) : (tensor<1x320x5x5xf32>, tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xi1>
    %929 = "tosa.select"(%928, %extracted_slice_97, %56) : (tensor<1x320x5x5xi1>, tensor<1x320x5x5xf32>, tensor<f32>) -> tensor<1x320x5x5xf32>
    %930 = "tosa.mul"(%929, %12) {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %931 = "tosa.mul"(%622, %930) {shift = 0 : i8} : (tensor<1x320x1x1xf32>, tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    %932 = "tosa.transpose"(%931, %57) : (tensor<1x320x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x320xf32>
    %933 = "tosa.transpose_conv2d"(%932, %69, %cst_12) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 5, 5, 1280>, stride = array<i64: 1, 1>} : (tensor<1x5x5x320xf32>, tensor<1280x1x1x320xf32>, tensor<1280xf32>) -> tensor<1x5x5x1280xf32>
    %934 = "tosa.transpose"(%933, %58) : (tensor<1x5x5x1280xf32>, tensor<4xi64>) -> tensor<1x1280x5x5xf32>
    %935 = "tosa.add"(%927, %934) : (tensor<1x1280x5x5xf32>, tensor<1x1280x5x5xf32>) -> tensor<1x1280x5x5xf32>
    %extracted_slice_104 = tensor.extract_slice %935[0, 512, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x1280x5x5xf32> to tensor<1x768x5x5xf32>
    %extracted_slice_105 = tensor.extract_slice %935[0, 320, 0, 0] [1, 192, 5, 5] [1, 1, 1, 1] : tensor<1x1280x5x5xf32> to tensor<1x192x5x5xf32>
    %extracted_slice_106 = tensor.extract_slice %935[0, 0, 0, 0] [1, 320, 5, 5] [1, 1, 1, 1] : tensor<1x1280x5x5xf32> to tensor<1x320x5x5xf32>
    %936 = "tosa.transpose"(%extracted_slice_104, %57) : (tensor<1x768x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x768xf32>
    %937 = linalg.generic {indexing_maps = [#map3, #map1, #map2, #map2, #map3], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%609, %cst_9, %650, %936 : tensor<1x12x12x768xf32>, tensor<3x3xf32>, tensor<1x5x5x768xf32>, tensor<1x5x5x768xf32>) outs(%cst_14 : tensor<1x12x12x768xf32>) {
    ^bb0(%in: f32, %in_152: f32, %in_153: f32, %in_154: f32, %out: f32):
      %1501 = arith.cmpf oge, %in, %in_153 : f32
      %1502 = arith.select %1501, %in_154, %cst_35 : f32
      %1503 = arith.addf %out, %1502 : f32
      linalg.yield %1503 : f32
    } -> tensor<1x12x12x768xf32>
    %938 = "tosa.transpose"(%937, %58) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %939 = "tosa.equal"(%648, %649) : (tensor<1x192x5x5xf32>, tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xi1>
    %940 = "tosa.select"(%939, %extracted_slice_105, %56) : (tensor<1x192x5x5xi1>, tensor<1x192x5x5xf32>, tensor<f32>) -> tensor<1x192x5x5xf32>
    %941 = "tosa.mul"(%940, %42) {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %942 = "tosa.mul"(%146, %941) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %943 = "tosa.transpose"(%942, %57) : (tensor<1x192x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x192xf32>
    %944 = "tosa.transpose_conv2d"(%943, %70, %cst_15) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 192>, stride = array<i64: 2, 2>} : (tensor<1x5x5x192xf32>, tensor<192x3x3x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %945 = "tosa.transpose"(%944, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %946 = "tosa.equal"(%640, %641) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %947 = "tosa.select"(%946, %945, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %948 = "tosa.mul"(%947, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %949 = "tosa.mul"(%146, %948) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %950 = "tosa.transpose"(%949, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %951 = "tosa.transpose_conv2d"(%950, %71, %cst_15) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 192>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %952 = "tosa.transpose"(%951, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %953 = "tosa.equal"(%632, %633) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %954 = "tosa.select"(%953, %952, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %955 = "tosa.mul"(%954, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %956 = "tosa.mul"(%146, %955) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %957 = "tosa.transpose"(%956, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %958 = "tosa.transpose_conv2d"(%957, %72, %cst_15) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 192>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %959 = "tosa.transpose"(%958, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %960 = "tosa.equal"(%615, %616) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %961 = "tosa.select"(%960, %959, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %962 = "tosa.mul"(%961, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %963 = "tosa.mul"(%146, %962) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %964 = "tosa.transpose"(%963, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %965 = "tosa.transpose_conv2d"(%964, %73, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %966 = "tosa.transpose"(%965, %58) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %967 = "tosa.add"(%938, %966) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %968 = "tosa.equal"(%625, %626) : (tensor<1x320x5x5xf32>, tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xi1>
    %969 = "tosa.select"(%968, %extracted_slice_106, %56) : (tensor<1x320x5x5xi1>, tensor<1x320x5x5xf32>, tensor<f32>) -> tensor<1x320x5x5xf32>
    %970 = "tosa.mul"(%969, %12) {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %971 = "tosa.mul"(%622, %970) {shift = 0 : i8} : (tensor<1x320x1x1xf32>, tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    %972 = "tosa.transpose"(%971, %57) : (tensor<1x320x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x320xf32>
    %973 = "tosa.transpose_conv2d"(%972, %74, %cst_15) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 192>, stride = array<i64: 2, 2>} : (tensor<1x5x5x320xf32>, tensor<192x3x3x320xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %974 = "tosa.transpose"(%973, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %975 = "tosa.select"(%960, %974, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %976 = "tosa.mul"(%975, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %977 = "tosa.mul"(%146, %976) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %978 = "tosa.transpose"(%977, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %979 = "tosa.transpose_conv2d"(%978, %73, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %980 = "tosa.transpose"(%979, %58) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %981 = "tosa.add"(%967, %980) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %extracted_slice_107 = tensor.extract_slice %981[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_108 = tensor.extract_slice %981[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_109 = tensor.extract_slice %981[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_110 = tensor.extract_slice %981[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %982 = "tosa.equal"(%607, %608) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %983 = "tosa.select"(%982, %extracted_slice_107, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %984 = "tosa.mul"(%983, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %985 = "tosa.mul"(%146, %984) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %986 = "tosa.transpose"(%985, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %987 = "tosa.transpose_conv2d"(%986, %73, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %padded_111 = tensor.pad %546 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_35 : f32
    } : tensor<1x12x12x768xf32> to tensor<1x14x14x768xf32>
    %988 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%padded_111, %cst_9, %987 : tensor<1x14x14x768xf32>, tensor<3x3xf32>, tensor<1x12x12x768xf32>) outs(%cst_17 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_152: f32, %in_153: f32, %out: f32):
      %1501 = arith.mulf %in_153, %cst_36 : f32
      %1502 = arith.addf %1501, %out : f32
      linalg.yield %1502 : f32
    } -> tensor<1x14x14x768xf32>
    %extracted_slice_112 = tensor.extract_slice %988[0, 1, 1, 0] [1, 12, 12, 768] [1, 1, 1, 1] : tensor<1x14x14x768xf32> to tensor<1x12x12x768xf32>
    %989 = "tosa.transpose"(%extracted_slice_112, %58) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %990 = "tosa.equal"(%599, %600) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %991 = "tosa.select"(%990, %extracted_slice_108, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %992 = "tosa.mul"(%991, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %993 = "tosa.mul"(%146, %992) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %994 = "tosa.transpose"(%993, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %995 = "tosa.transpose_conv2d"(%994, %72, %cst_15) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 192>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %996 = "tosa.transpose"(%995, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %997 = "tosa.equal"(%591, %592) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %998 = "tosa.select"(%997, %996, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %999 = "tosa.mul"(%998, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %1000 = "tosa.mul"(%146, %999) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %1001 = "tosa.transpose"(%1000, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %1002 = "tosa.transpose_conv2d"(%1001, %71, %cst_15) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 192>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %1003 = "tosa.transpose"(%1002, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %1004 = "tosa.equal"(%583, %584) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %1005 = "tosa.select"(%1004, %1003, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %1006 = "tosa.mul"(%1005, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %1007 = "tosa.mul"(%146, %1006) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %1008 = "tosa.transpose"(%1007, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %1009 = "tosa.transpose_conv2d"(%1008, %72, %cst_15) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 192>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %1010 = "tosa.transpose"(%1009, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %1011 = "tosa.equal"(%575, %576) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %1012 = "tosa.select"(%1011, %1010, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %1013 = "tosa.mul"(%1012, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %1014 = "tosa.mul"(%146, %1013) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %1015 = "tosa.transpose"(%1014, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %1016 = "tosa.transpose_conv2d"(%1015, %71, %cst_15) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 192>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %1017 = "tosa.transpose"(%1016, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %1018 = "tosa.equal"(%552, %553) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %1019 = "tosa.select"(%1018, %1017, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %1020 = "tosa.mul"(%1019, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %1021 = "tosa.mul"(%146, %1020) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %1022 = "tosa.transpose"(%1021, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %1023 = "tosa.transpose_conv2d"(%1022, %73, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %1024 = "tosa.transpose"(%1023, %58) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %1025 = "tosa.add"(%989, %1024) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %1026 = "tosa.equal"(%568, %569) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %1027 = "tosa.select"(%1026, %extracted_slice_109, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %1028 = "tosa.mul"(%1027, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %1029 = "tosa.mul"(%146, %1028) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %1030 = "tosa.transpose"(%1029, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %1031 = "tosa.transpose_conv2d"(%1030, %71, %cst_15) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 192>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %1032 = "tosa.transpose"(%1031, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %1033 = "tosa.equal"(%560, %561) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %1034 = "tosa.select"(%1033, %1032, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %1035 = "tosa.mul"(%1034, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %1036 = "tosa.mul"(%146, %1035) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %1037 = "tosa.transpose"(%1036, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %1038 = "tosa.transpose_conv2d"(%1037, %72, %cst_15) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 192>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %1039 = "tosa.transpose"(%1038, %58) : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %1040 = "tosa.select"(%1018, %1039, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %1041 = "tosa.mul"(%1040, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %1042 = "tosa.mul"(%146, %1041) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %1043 = "tosa.transpose"(%1042, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %1044 = "tosa.transpose_conv2d"(%1043, %73, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %1045 = "tosa.transpose"(%1044, %58) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %1046 = "tosa.add"(%1025, %1045) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %1047 = "tosa.select"(%1018, %extracted_slice_110, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %1048 = "tosa.mul"(%1047, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %1049 = "tosa.mul"(%146, %1048) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %1050 = "tosa.transpose"(%1049, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %1051 = "tosa.transpose_conv2d"(%1050, %73, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %1052 = "tosa.transpose"(%1051, %58) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %1053 = "tosa.add"(%1046, %1052) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %extracted_slice_113 = tensor.extract_slice %1053[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_114 = tensor.extract_slice %1053[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_115 = tensor.extract_slice %1053[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_116 = tensor.extract_slice %1053[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %1054 = "tosa.equal"(%544, %545) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %1055 = "tosa.select"(%1054, %extracted_slice_113, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %1056 = "tosa.mul"(%1055, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %1057 = "tosa.mul"(%146, %1056) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %1058 = "tosa.transpose"(%1057, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %1059 = "tosa.transpose_conv2d"(%1058, %73, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %padded_117 = tensor.pad %476 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_35 : f32
    } : tensor<1x12x12x768xf32> to tensor<1x14x14x768xf32>
    %1060 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%padded_117, %cst_9, %1059 : tensor<1x14x14x768xf32>, tensor<3x3xf32>, tensor<1x12x12x768xf32>) outs(%cst_17 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_152: f32, %in_153: f32, %out: f32):
      %1501 = arith.mulf %in_153, %cst_36 : f32
      %1502 = arith.addf %1501, %out : f32
      linalg.yield %1502 : f32
    } -> tensor<1x14x14x768xf32>
    %extracted_slice_118 = tensor.extract_slice %1060[0, 1, 1, 0] [1, 12, 12, 768] [1, 1, 1, 1] : tensor<1x14x14x768xf32> to tensor<1x12x12x768xf32>
    %1061 = "tosa.transpose"(%extracted_slice_118, %58) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %1062 = "tosa.equal"(%536, %537) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %1063 = "tosa.select"(%1062, %extracted_slice_114, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %1064 = "tosa.mul"(%1063, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %1065 = "tosa.mul"(%146, %1064) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %1066 = "tosa.transpose"(%1065, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %1067 = "tosa.transpose_conv2d"(%1066, %75, %cst_18) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<160x1x7x192xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %1068 = "tosa.transpose"(%1067, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %1069 = "tosa.equal"(%528, %529) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %1070 = "tosa.select"(%1069, %1068, %56) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %1071 = "tosa.mul"(%1070, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %1072 = "tosa.mul"(%416, %1071) {shift = 0 : i8} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %1073 = "tosa.transpose"(%1072, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %1074 = "tosa.transpose_conv2d"(%1073, %76, %cst_18) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %1075 = "tosa.transpose"(%1074, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %1076 = "tosa.equal"(%520, %521) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %1077 = "tosa.select"(%1076, %1075, %56) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %1078 = "tosa.mul"(%1077, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %1079 = "tosa.mul"(%416, %1078) {shift = 0 : i8} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %1080 = "tosa.transpose"(%1079, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %1081 = "tosa.transpose_conv2d"(%1080, %77, %cst_18) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %1082 = "tosa.transpose"(%1081, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %1083 = "tosa.equal"(%512, %513) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %1084 = "tosa.select"(%1083, %1082, %56) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %1085 = "tosa.mul"(%1084, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %1086 = "tosa.mul"(%416, %1085) {shift = 0 : i8} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %1087 = "tosa.transpose"(%1086, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %1088 = "tosa.transpose_conv2d"(%1087, %76, %cst_18) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %1089 = "tosa.transpose"(%1088, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %1090 = "tosa.equal"(%489, %490) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %1091 = "tosa.select"(%1090, %1089, %56) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %1092 = "tosa.mul"(%1091, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %1093 = "tosa.mul"(%416, %1092) {shift = 0 : i8} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %1094 = "tosa.transpose"(%1093, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %1095 = "tosa.transpose_conv2d"(%1094, %78, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<768x1x1x160xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %1096 = "tosa.transpose"(%1095, %58) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %1097 = "tosa.add"(%1061, %1096) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %1098 = "tosa.equal"(%505, %506) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %1099 = "tosa.select"(%1098, %extracted_slice_115, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %1100 = "tosa.mul"(%1099, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %1101 = "tosa.mul"(%146, %1100) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %1102 = "tosa.transpose"(%1101, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %1103 = "tosa.transpose_conv2d"(%1102, %79, %cst_18) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<160x7x1x192xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %1104 = "tosa.transpose"(%1103, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %1105 = "tosa.equal"(%497, %498) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %1106 = "tosa.select"(%1105, %1104, %56) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %1107 = "tosa.mul"(%1106, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %1108 = "tosa.mul"(%416, %1107) {shift = 0 : i8} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %1109 = "tosa.transpose"(%1108, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %1110 = "tosa.transpose_conv2d"(%1109, %77, %cst_18) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %1111 = "tosa.transpose"(%1110, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %1112 = "tosa.select"(%1090, %1111, %56) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %1113 = "tosa.mul"(%1112, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %1114 = "tosa.mul"(%416, %1113) {shift = 0 : i8} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %1115 = "tosa.transpose"(%1114, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %1116 = "tosa.transpose_conv2d"(%1115, %78, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<768x1x1x160xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %1117 = "tosa.transpose"(%1116, %58) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %1118 = "tosa.add"(%1097, %1117) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %1119 = "tosa.equal"(%482, %483) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %1120 = "tosa.select"(%1119, %extracted_slice_116, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %1121 = "tosa.mul"(%1120, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %1122 = "tosa.mul"(%146, %1121) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %1123 = "tosa.transpose"(%1122, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %1124 = "tosa.transpose_conv2d"(%1123, %73, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %1125 = "tosa.transpose"(%1124, %58) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %1126 = "tosa.add"(%1118, %1125) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %extracted_slice_119 = tensor.extract_slice %1126[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_120 = tensor.extract_slice %1126[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_121 = tensor.extract_slice %1126[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_122 = tensor.extract_slice %1126[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %1127 = "tosa.equal"(%474, %475) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %1128 = "tosa.select"(%1127, %extracted_slice_119, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %1129 = "tosa.mul"(%1128, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %1130 = "tosa.mul"(%146, %1129) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %1131 = "tosa.transpose"(%1130, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %1132 = "tosa.transpose_conv2d"(%1131, %73, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %padded_123 = tensor.pad %404 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_35 : f32
    } : tensor<1x12x12x768xf32> to tensor<1x14x14x768xf32>
    %1133 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%padded_123, %cst_9, %1132 : tensor<1x14x14x768xf32>, tensor<3x3xf32>, tensor<1x12x12x768xf32>) outs(%cst_17 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_152: f32, %in_153: f32, %out: f32):
      %1501 = arith.mulf %in_153, %cst_36 : f32
      %1502 = arith.addf %1501, %out : f32
      linalg.yield %1502 : f32
    } -> tensor<1x14x14x768xf32>
    %extracted_slice_124 = tensor.extract_slice %1133[0, 1, 1, 0] [1, 12, 12, 768] [1, 1, 1, 1] : tensor<1x14x14x768xf32> to tensor<1x12x12x768xf32>
    %1134 = "tosa.transpose"(%extracted_slice_124, %58) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %1135 = "tosa.equal"(%466, %467) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %1136 = "tosa.select"(%1135, %extracted_slice_120, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %1137 = "tosa.mul"(%1136, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %1138 = "tosa.mul"(%146, %1137) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %1139 = "tosa.transpose"(%1138, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %1140 = "tosa.transpose_conv2d"(%1139, %75, %cst_18) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<160x1x7x192xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %1141 = "tosa.transpose"(%1140, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %1142 = "tosa.equal"(%458, %459) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %1143 = "tosa.select"(%1142, %1141, %56) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %1144 = "tosa.mul"(%1143, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %1145 = "tosa.mul"(%416, %1144) {shift = 0 : i8} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %1146 = "tosa.transpose"(%1145, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %1147 = "tosa.transpose_conv2d"(%1146, %76, %cst_18) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %1148 = "tosa.transpose"(%1147, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %1149 = "tosa.equal"(%450, %451) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %1150 = "tosa.select"(%1149, %1148, %56) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %1151 = "tosa.mul"(%1150, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %1152 = "tosa.mul"(%416, %1151) {shift = 0 : i8} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %1153 = "tosa.transpose"(%1152, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %1154 = "tosa.transpose_conv2d"(%1153, %77, %cst_18) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %1155 = "tosa.transpose"(%1154, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %1156 = "tosa.equal"(%442, %443) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %1157 = "tosa.select"(%1156, %1155, %56) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %1158 = "tosa.mul"(%1157, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %1159 = "tosa.mul"(%416, %1158) {shift = 0 : i8} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %1160 = "tosa.transpose"(%1159, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %1161 = "tosa.transpose_conv2d"(%1160, %76, %cst_18) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %1162 = "tosa.transpose"(%1161, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %1163 = "tosa.equal"(%419, %420) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %1164 = "tosa.select"(%1163, %1162, %56) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %1165 = "tosa.mul"(%1164, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %1166 = "tosa.mul"(%416, %1165) {shift = 0 : i8} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %1167 = "tosa.transpose"(%1166, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %1168 = "tosa.transpose_conv2d"(%1167, %78, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<768x1x1x160xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %1169 = "tosa.transpose"(%1168, %58) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %1170 = "tosa.add"(%1134, %1169) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %1171 = "tosa.equal"(%435, %436) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %1172 = "tosa.select"(%1171, %extracted_slice_121, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %1173 = "tosa.mul"(%1172, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %1174 = "tosa.mul"(%146, %1173) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %1175 = "tosa.transpose"(%1174, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %1176 = "tosa.transpose_conv2d"(%1175, %79, %cst_18) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<160x7x1x192xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %1177 = "tosa.transpose"(%1176, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %1178 = "tosa.equal"(%427, %428) : (tensor<1x160x12x12xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xi1>
    %1179 = "tosa.select"(%1178, %1177, %56) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %1180 = "tosa.mul"(%1179, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %1181 = "tosa.mul"(%416, %1180) {shift = 0 : i8} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %1182 = "tosa.transpose"(%1181, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %1183 = "tosa.transpose_conv2d"(%1182, %77, %cst_18) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 160>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %1184 = "tosa.transpose"(%1183, %58) : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %1185 = "tosa.select"(%1163, %1184, %56) : (tensor<1x160x12x12xi1>, tensor<1x160x12x12xf32>, tensor<f32>) -> tensor<1x160x12x12xf32>
    %1186 = "tosa.mul"(%1185, %17) {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %1187 = "tosa.mul"(%416, %1186) {shift = 0 : i8} : (tensor<1x160x1x1xf32>, tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %1188 = "tosa.transpose"(%1187, %57) : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %1189 = "tosa.transpose_conv2d"(%1188, %78, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<768x1x1x160xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %1190 = "tosa.transpose"(%1189, %58) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %1191 = "tosa.add"(%1170, %1190) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %1192 = "tosa.equal"(%410, %411) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %1193 = "tosa.select"(%1192, %extracted_slice_122, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %1194 = "tosa.mul"(%1193, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %1195 = "tosa.mul"(%146, %1194) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %1196 = "tosa.transpose"(%1195, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %1197 = "tosa.transpose_conv2d"(%1196, %73, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %1198 = "tosa.transpose"(%1197, %58) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %1199 = "tosa.add"(%1191, %1198) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %extracted_slice_125 = tensor.extract_slice %1199[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_126 = tensor.extract_slice %1199[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_127 = tensor.extract_slice %1199[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %extracted_slice_128 = tensor.extract_slice %1199[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x192x12x12xf32>
    %1200 = "tosa.equal"(%402, %403) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %1201 = "tosa.select"(%1200, %extracted_slice_125, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %1202 = "tosa.mul"(%1201, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %1203 = "tosa.mul"(%146, %1202) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %1204 = "tosa.transpose"(%1203, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %1205 = "tosa.transpose_conv2d"(%1204, %73, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %padded_129 = tensor.pad %332 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_35 : f32
    } : tensor<1x12x12x768xf32> to tensor<1x14x14x768xf32>
    %1206 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%padded_129, %cst_9, %1205 : tensor<1x14x14x768xf32>, tensor<3x3xf32>, tensor<1x12x12x768xf32>) outs(%cst_17 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_152: f32, %in_153: f32, %out: f32):
      %1501 = arith.mulf %in_153, %cst_36 : f32
      %1502 = arith.addf %1501, %out : f32
      linalg.yield %1502 : f32
    } -> tensor<1x14x14x768xf32>
    %extracted_slice_130 = tensor.extract_slice %1206[0, 1, 1, 0] [1, 12, 12, 768] [1, 1, 1, 1] : tensor<1x14x14x768xf32> to tensor<1x12x12x768xf32>
    %1207 = "tosa.transpose"(%extracted_slice_130, %58) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %1208 = "tosa.equal"(%394, %395) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %1209 = "tosa.select"(%1208, %extracted_slice_126, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %1210 = "tosa.mul"(%1209, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %1211 = "tosa.mul"(%146, %1210) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %1212 = "tosa.transpose"(%1211, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %1213 = "tosa.transpose_conv2d"(%1212, %80, %cst_19) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 128>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<128x1x7x192xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %1214 = "tosa.transpose"(%1213, %58) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %1215 = "tosa.equal"(%386, %387) : (tensor<1x128x12x12xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xi1>
    %1216 = "tosa.select"(%1215, %1214, %56) : (tensor<1x128x12x12xi1>, tensor<1x128x12x12xf32>, tensor<f32>) -> tensor<1x128x12x12xf32>
    %1217 = "tosa.mul"(%1216, %22) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %1218 = "tosa.mul"(%344, %1217) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %1219 = "tosa.transpose"(%1218, %57) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %1220 = "tosa.transpose_conv2d"(%1219, %81, %cst_19) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 128>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x7x1x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %1221 = "tosa.transpose"(%1220, %58) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %1222 = "tosa.equal"(%378, %379) : (tensor<1x128x12x12xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xi1>
    %1223 = "tosa.select"(%1222, %1221, %56) : (tensor<1x128x12x12xi1>, tensor<1x128x12x12xf32>, tensor<f32>) -> tensor<1x128x12x12xf32>
    %1224 = "tosa.mul"(%1223, %22) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %1225 = "tosa.mul"(%344, %1224) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %1226 = "tosa.transpose"(%1225, %57) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %1227 = "tosa.transpose_conv2d"(%1226, %82, %cst_19) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 128>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x1x7x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %1228 = "tosa.transpose"(%1227, %58) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %1229 = "tosa.equal"(%370, %371) : (tensor<1x128x12x12xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xi1>
    %1230 = "tosa.select"(%1229, %1228, %56) : (tensor<1x128x12x12xi1>, tensor<1x128x12x12xf32>, tensor<f32>) -> tensor<1x128x12x12xf32>
    %1231 = "tosa.mul"(%1230, %22) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %1232 = "tosa.mul"(%344, %1231) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %1233 = "tosa.transpose"(%1232, %57) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %1234 = "tosa.transpose_conv2d"(%1233, %81, %cst_19) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 128>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x7x1x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %1235 = "tosa.transpose"(%1234, %58) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %1236 = "tosa.equal"(%347, %348) : (tensor<1x128x12x12xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xi1>
    %1237 = "tosa.select"(%1236, %1235, %56) : (tensor<1x128x12x12xi1>, tensor<1x128x12x12xf32>, tensor<f32>) -> tensor<1x128x12x12xf32>
    %1238 = "tosa.mul"(%1237, %22) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %1239 = "tosa.mul"(%344, %1238) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %1240 = "tosa.transpose"(%1239, %57) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %1241 = "tosa.transpose_conv2d"(%1240, %83, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<768x1x1x128xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %1242 = "tosa.transpose"(%1241, %58) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %1243 = "tosa.add"(%1207, %1242) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %1244 = "tosa.equal"(%363, %364) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %1245 = "tosa.select"(%1244, %extracted_slice_127, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %1246 = "tosa.mul"(%1245, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %1247 = "tosa.mul"(%146, %1246) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %1248 = "tosa.transpose"(%1247, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %1249 = "tosa.transpose_conv2d"(%1248, %84, %cst_19) {out_pad = array<i64: -3, -3, 0, 0>, out_shape = array<i64: 1, 12, 12, 128>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<128x7x1x192xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %1250 = "tosa.transpose"(%1249, %58) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %1251 = "tosa.equal"(%355, %356) : (tensor<1x128x12x12xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xi1>
    %1252 = "tosa.select"(%1251, %1250, %56) : (tensor<1x128x12x12xi1>, tensor<1x128x12x12xf32>, tensor<f32>) -> tensor<1x128x12x12xf32>
    %1253 = "tosa.mul"(%1252, %22) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %1254 = "tosa.mul"(%344, %1253) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %1255 = "tosa.transpose"(%1254, %57) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %1256 = "tosa.transpose_conv2d"(%1255, %82, %cst_19) {out_pad = array<i64: 0, 0, -3, -3>, out_shape = array<i64: 1, 12, 12, 128>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x1x7x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %1257 = "tosa.transpose"(%1256, %58) : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %1258 = "tosa.select"(%1236, %1257, %56) : (tensor<1x128x12x12xi1>, tensor<1x128x12x12xf32>, tensor<f32>) -> tensor<1x128x12x12xf32>
    %1259 = "tosa.mul"(%1258, %22) {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %1260 = "tosa.mul"(%344, %1259) {shift = 0 : i8} : (tensor<1x128x1x1xf32>, tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %1261 = "tosa.transpose"(%1260, %57) : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %1262 = "tosa.transpose_conv2d"(%1261, %83, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<768x1x1x128xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %1263 = "tosa.transpose"(%1262, %58) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %1264 = "tosa.add"(%1243, %1263) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %1265 = "tosa.equal"(%338, %339) : (tensor<1x192x12x12xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xi1>
    %1266 = "tosa.select"(%1265, %extracted_slice_128, %56) : (tensor<1x192x12x12xi1>, tensor<1x192x12x12xf32>, tensor<f32>) -> tensor<1x192x12x12xf32>
    %1267 = "tosa.mul"(%1266, %42) {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %1268 = "tosa.mul"(%146, %1267) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %1269 = "tosa.transpose"(%1268, %57) : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %1270 = "tosa.transpose_conv2d"(%1269, %73, %cst_16) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 12, 12, 768>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<768x1x1x192xf32>, tensor<768xf32>) -> tensor<1x12x12x768xf32>
    %1271 = "tosa.transpose"(%1270, %58) : (tensor<1x12x12x768xf32>, tensor<4xi64>) -> tensor<1x768x12x12xf32>
    %1272 = "tosa.add"(%1264, %1271) : (tensor<1x768x12x12xf32>, tensor<1x768x12x12xf32>) -> tensor<1x768x12x12xf32>
    %extracted_slice_131 = tensor.extract_slice %1272[0, 480, 0, 0] [1, 288, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x288x12x12xf32>
    %extracted_slice_132 = tensor.extract_slice %1272[0, 384, 0, 0] [1, 96, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x96x12x12xf32>
    %extracted_slice_133 = tensor.extract_slice %1272[0, 0, 0, 0] [1, 384, 12, 12] [1, 1, 1, 1] : tensor<1x768x12x12xf32> to tensor<1x384x12x12xf32>
    %1273 = "tosa.transpose"(%extracted_slice_131, %57) : (tensor<1x288x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x288xf32>
    %1274 = linalg.generic {indexing_maps = [#map3, #map1, #map2, #map2, #map3], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%297, %cst_9, %330, %1273 : tensor<1x25x25x288xf32>, tensor<3x3xf32>, tensor<1x12x12x288xf32>, tensor<1x12x12x288xf32>) outs(%cst_20 : tensor<1x25x25x288xf32>) {
    ^bb0(%in: f32, %in_152: f32, %in_153: f32, %in_154: f32, %out: f32):
      %1501 = arith.cmpf oge, %in, %in_153 : f32
      %1502 = arith.select %1501, %in_154, %cst_35 : f32
      %1503 = arith.addf %out, %1502 : f32
      linalg.yield %1503 : f32
    } -> tensor<1x25x25x288xf32>
    %1275 = "tosa.transpose"(%1274, %58) : (tensor<1x25x25x288xf32>, tensor<4xi64>) -> tensor<1x288x25x25xf32>
    %1276 = "tosa.equal"(%328, %329) : (tensor<1x96x12x12xf32>, tensor<1x96x12x12xf32>) -> tensor<1x96x12x12xi1>
    %1277 = "tosa.select"(%1276, %extracted_slice_132, %56) : (tensor<1x96x12x12xi1>, tensor<1x96x12x12xf32>, tensor<f32>) -> tensor<1x96x12x12xf32>
    %1278 = "tosa.mul"(%1277, %34) {shift = 0 : i8} : (tensor<1x96x12x12xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x12x12xf32>
    %1279 = "tosa.mul"(%182, %1278) {shift = 0 : i8} : (tensor<1x96x1x1xf32>, tensor<1x96x12x12xf32>) -> tensor<1x96x12x12xf32>
    %1280 = "tosa.transpose"(%1279, %57) : (tensor<1x96x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x96xf32>
    %1281 = "tosa.transpose_conv2d"(%1280, %85, %cst_21) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 96>, stride = array<i64: 2, 2>} : (tensor<1x12x12x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %1282 = "tosa.transpose"(%1281, %58) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %1283 = "tosa.equal"(%320, %321) : (tensor<1x96x25x25xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xi1>
    %1284 = "tosa.select"(%1283, %1282, %56) : (tensor<1x96x25x25xi1>, tensor<1x96x25x25xf32>, tensor<f32>) -> tensor<1x96x25x25xf32>
    %1285 = "tosa.mul"(%1284, %34) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %1286 = "tosa.mul"(%182, %1285) {shift = 0 : i8} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %1287 = "tosa.transpose"(%1286, %57) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %1288 = "tosa.transpose_conv2d"(%1287, %86, %cst_22) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 25, 25, 64>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<64x3x3x96xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %1289 = "tosa.transpose"(%1288, %58) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %1290 = "tosa.equal"(%312, %313) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %1291 = "tosa.select"(%1290, %1289, %56) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %1292 = "tosa.mul"(%1291, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %1293 = "tosa.mul"(%125, %1292) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1294 = "tosa.transpose"(%1293, %57) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %1295 = "tosa.transpose_conv2d"(%1294, %87, %cst_23) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 288>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<288x1x1x64xf32>, tensor<288xf32>) -> tensor<1x25x25x288xf32>
    %1296 = "tosa.transpose"(%1295, %58) : (tensor<1x25x25x288xf32>, tensor<4xi64>) -> tensor<1x288x25x25xf32>
    %1297 = "tosa.add"(%1275, %1296) : (tensor<1x288x25x25xf32>, tensor<1x288x25x25xf32>) -> tensor<1x288x25x25xf32>
    %1298 = "tosa.equal"(%305, %306) : (tensor<1x384x12x12xf32>, tensor<1x384x12x12xf32>) -> tensor<1x384x12x12xi1>
    %1299 = "tosa.select"(%1298, %extracted_slice_133, %56) : (tensor<1x384x12x12xi1>, tensor<1x384x12x12xf32>, tensor<f32>) -> tensor<1x384x12x12xf32>
    %1300 = "tosa.mul"(%1299, %26) {shift = 0 : i8} : (tensor<1x384x12x12xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x12x12xf32>
    %1301 = "tosa.mul"(%302, %1300) {shift = 0 : i8} : (tensor<1x384x1x1xf32>, tensor<1x384x12x12xf32>) -> tensor<1x384x12x12xf32>
    %1302 = "tosa.transpose"(%1301, %57) : (tensor<1x384x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x384xf32>
    %1303 = "tosa.transpose_conv2d"(%1302, %88, %cst_23) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 288>, stride = array<i64: 2, 2>} : (tensor<1x12x12x384xf32>, tensor<288x3x3x384xf32>, tensor<288xf32>) -> tensor<1x25x25x288xf32>
    %1304 = "tosa.transpose"(%1303, %58) : (tensor<1x25x25x288xf32>, tensor<4xi64>) -> tensor<1x288x25x25xf32>
    %1305 = "tosa.add"(%1297, %1304) : (tensor<1x288x25x25xf32>, tensor<1x288x25x25xf32>) -> tensor<1x288x25x25xf32>
    %extracted_slice_134 = tensor.extract_slice %1305[0, 224, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x288x25x25xf32> to tensor<1x64x25x25xf32>
    %extracted_slice_135 = tensor.extract_slice %1305[0, 128, 0, 0] [1, 96, 25, 25] [1, 1, 1, 1] : tensor<1x288x25x25xf32> to tensor<1x96x25x25xf32>
    %extracted_slice_136 = tensor.extract_slice %1305[0, 64, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x288x25x25xf32> to tensor<1x64x25x25xf32>
    %extracted_slice_137 = tensor.extract_slice %1305[0, 0, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x288x25x25xf32> to tensor<1x64x25x25xf32>
    %1306 = "tosa.equal"(%295, %296) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %1307 = "tosa.select"(%1306, %extracted_slice_134, %56) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %1308 = "tosa.mul"(%1307, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %1309 = "tosa.mul"(%125, %1308) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1310 = "tosa.transpose"(%1309, %57) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %1311 = "tosa.transpose_conv2d"(%1310, %87, %cst_23) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 288>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<288x1x1x64xf32>, tensor<288xf32>) -> tensor<1x25x25x288xf32>
    %padded_138 = tensor.pad %250 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_35 : f32
    } : tensor<1x25x25x288xf32> to tensor<1x27x27x288xf32>
    %1312 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%padded_138, %cst_9, %1311 : tensor<1x27x27x288xf32>, tensor<3x3xf32>, tensor<1x25x25x288xf32>) outs(%cst_24 : tensor<1x27x27x288xf32>) {
    ^bb0(%in: f32, %in_152: f32, %in_153: f32, %out: f32):
      %1501 = arith.mulf %in_153, %cst_36 : f32
      %1502 = arith.addf %1501, %out : f32
      linalg.yield %1502 : f32
    } -> tensor<1x27x27x288xf32>
    %extracted_slice_139 = tensor.extract_slice %1312[0, 1, 1, 0] [1, 25, 25, 288] [1, 1, 1, 1] : tensor<1x27x27x288xf32> to tensor<1x25x25x288xf32>
    %1313 = "tosa.transpose"(%extracted_slice_139, %58) : (tensor<1x25x25x288xf32>, tensor<4xi64>) -> tensor<1x288x25x25xf32>
    %1314 = "tosa.equal"(%287, %288) : (tensor<1x96x25x25xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xi1>
    %1315 = "tosa.select"(%1314, %extracted_slice_135, %56) : (tensor<1x96x25x25xi1>, tensor<1x96x25x25xf32>, tensor<f32>) -> tensor<1x96x25x25xf32>
    %1316 = "tosa.mul"(%1315, %34) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %1317 = "tosa.mul"(%182, %1316) {shift = 0 : i8} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %1318 = "tosa.transpose"(%1317, %57) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %1319 = "tosa.transpose_conv2d"(%1318, %85, %cst_21) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 25, 25, 96>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %1320 = "tosa.transpose"(%1319, %58) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %1321 = "tosa.equal"(%279, %280) : (tensor<1x96x25x25xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xi1>
    %1322 = "tosa.select"(%1321, %1320, %56) : (tensor<1x96x25x25xi1>, tensor<1x96x25x25xf32>, tensor<f32>) -> tensor<1x96x25x25xf32>
    %1323 = "tosa.mul"(%1322, %34) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %1324 = "tosa.mul"(%182, %1323) {shift = 0 : i8} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %1325 = "tosa.transpose"(%1324, %57) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %1326 = "tosa.transpose_conv2d"(%1325, %86, %cst_22) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 25, 25, 64>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<64x3x3x96xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %1327 = "tosa.transpose"(%1326, %58) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %1328 = "tosa.equal"(%256, %257) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %1329 = "tosa.select"(%1328, %1327, %56) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %1330 = "tosa.mul"(%1329, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %1331 = "tosa.mul"(%125, %1330) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1332 = "tosa.transpose"(%1331, %57) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %1333 = "tosa.transpose_conv2d"(%1332, %87, %cst_23) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 288>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<288x1x1x64xf32>, tensor<288xf32>) -> tensor<1x25x25x288xf32>
    %1334 = "tosa.transpose"(%1333, %58) : (tensor<1x25x25x288xf32>, tensor<4xi64>) -> tensor<1x288x25x25xf32>
    %1335 = "tosa.add"(%1313, %1334) : (tensor<1x288x25x25xf32>, tensor<1x288x25x25xf32>) -> tensor<1x288x25x25xf32>
    %1336 = "tosa.equal"(%271, %272) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %1337 = "tosa.select"(%1336, %extracted_slice_136, %56) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %1338 = "tosa.mul"(%1337, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %1339 = "tosa.mul"(%125, %1338) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1340 = "tosa.transpose"(%1339, %57) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %1341 = "tosa.transpose_conv2d"(%1340, %89, %cst_25) {out_pad = array<i64: -2, -2, -2, -2>, out_shape = array<i64: 1, 25, 25, 48>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<48x5x5x64xf32>, tensor<48xf32>) -> tensor<1x25x25x48xf32>
    %1342 = "tosa.transpose"(%1341, %58) : (tensor<1x25x25x48xf32>, tensor<4xi64>) -> tensor<1x48x25x25xf32>
    %1343 = "tosa.equal"(%263, %264) : (tensor<1x48x25x25xf32>, tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xi1>
    %1344 = "tosa.select"(%1343, %1342, %56) : (tensor<1x48x25x25xi1>, tensor<1x48x25x25xf32>, tensor<f32>) -> tensor<1x48x25x25xf32>
    %1345 = "tosa.mul"(%1344, %38) {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %1346 = "tosa.mul"(%164, %1345) {shift = 0 : i8} : (tensor<1x48x1x1xf32>, tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    %1347 = "tosa.transpose"(%1346, %57) : (tensor<1x48x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x48xf32>
    %1348 = "tosa.transpose_conv2d"(%1347, %90, %cst_23) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 288>, stride = array<i64: 1, 1>} : (tensor<1x25x25x48xf32>, tensor<288x1x1x48xf32>, tensor<288xf32>) -> tensor<1x25x25x288xf32>
    %1349 = "tosa.transpose"(%1348, %58) : (tensor<1x25x25x288xf32>, tensor<4xi64>) -> tensor<1x288x25x25xf32>
    %1350 = "tosa.add"(%1335, %1349) : (tensor<1x288x25x25xf32>, tensor<1x288x25x25xf32>) -> tensor<1x288x25x25xf32>
    %1351 = "tosa.select"(%1328, %extracted_slice_137, %56) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %1352 = "tosa.mul"(%1351, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %1353 = "tosa.mul"(%125, %1352) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1354 = "tosa.transpose"(%1353, %57) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %1355 = "tosa.transpose_conv2d"(%1354, %87, %cst_23) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 288>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<288x1x1x64xf32>, tensor<288xf32>) -> tensor<1x25x25x288xf32>
    %1356 = "tosa.transpose"(%1355, %58) : (tensor<1x25x25x288xf32>, tensor<4xi64>) -> tensor<1x288x25x25xf32>
    %1357 = "tosa.add"(%1350, %1356) : (tensor<1x288x25x25xf32>, tensor<1x288x25x25xf32>) -> tensor<1x288x25x25xf32>
    %extracted_slice_140 = tensor.extract_slice %1357[0, 224, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x288x25x25xf32> to tensor<1x64x25x25xf32>
    %extracted_slice_141 = tensor.extract_slice %1357[0, 128, 0, 0] [1, 96, 25, 25] [1, 1, 1, 1] : tensor<1x288x25x25xf32> to tensor<1x96x25x25xf32>
    %extracted_slice_142 = tensor.extract_slice %1357[0, 64, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x288x25x25xf32> to tensor<1x64x25x25xf32>
    %extracted_slice_143 = tensor.extract_slice %1357[0, 0, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x288x25x25xf32> to tensor<1x64x25x25xf32>
    %1358 = "tosa.equal"(%248, %249) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %1359 = "tosa.select"(%1358, %extracted_slice_140, %56) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %1360 = "tosa.mul"(%1359, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %1361 = "tosa.mul"(%125, %1360) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1362 = "tosa.transpose"(%1361, %57) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %1363 = "tosa.transpose_conv2d"(%1362, %91, %cst_26) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 256>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x25x25x256xf32>
    %padded_144 = tensor.pad %203 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_35 : f32
    } : tensor<1x25x25x256xf32> to tensor<1x27x27x256xf32>
    %1364 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%padded_144, %cst_9, %1363 : tensor<1x27x27x256xf32>, tensor<3x3xf32>, tensor<1x25x25x256xf32>) outs(%cst_27 : tensor<1x27x27x256xf32>) {
    ^bb0(%in: f32, %in_152: f32, %in_153: f32, %out: f32):
      %1501 = arith.mulf %in_153, %cst_36 : f32
      %1502 = arith.addf %1501, %out : f32
      linalg.yield %1502 : f32
    } -> tensor<1x27x27x256xf32>
    %extracted_slice_145 = tensor.extract_slice %1364[0, 1, 1, 0] [1, 25, 25, 256] [1, 1, 1, 1] : tensor<1x27x27x256xf32> to tensor<1x25x25x256xf32>
    %1365 = "tosa.transpose"(%extracted_slice_145, %58) : (tensor<1x25x25x256xf32>, tensor<4xi64>) -> tensor<1x256x25x25xf32>
    %1366 = "tosa.equal"(%240, %241) : (tensor<1x96x25x25xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xi1>
    %1367 = "tosa.select"(%1366, %extracted_slice_141, %56) : (tensor<1x96x25x25xi1>, tensor<1x96x25x25xf32>, tensor<f32>) -> tensor<1x96x25x25xf32>
    %1368 = "tosa.mul"(%1367, %34) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %1369 = "tosa.mul"(%182, %1368) {shift = 0 : i8} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %1370 = "tosa.transpose"(%1369, %57) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %1371 = "tosa.transpose_conv2d"(%1370, %85, %cst_21) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 25, 25, 96>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %1372 = "tosa.transpose"(%1371, %58) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %1373 = "tosa.equal"(%232, %233) : (tensor<1x96x25x25xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xi1>
    %1374 = "tosa.select"(%1373, %1372, %56) : (tensor<1x96x25x25xi1>, tensor<1x96x25x25xf32>, tensor<f32>) -> tensor<1x96x25x25xf32>
    %1375 = "tosa.mul"(%1374, %34) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %1376 = "tosa.mul"(%182, %1375) {shift = 0 : i8} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %1377 = "tosa.transpose"(%1376, %57) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %1378 = "tosa.transpose_conv2d"(%1377, %86, %cst_22) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 25, 25, 64>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<64x3x3x96xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %1379 = "tosa.transpose"(%1378, %58) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %1380 = "tosa.equal"(%209, %210) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %1381 = "tosa.select"(%1380, %1379, %56) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %1382 = "tosa.mul"(%1381, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %1383 = "tosa.mul"(%125, %1382) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1384 = "tosa.transpose"(%1383, %57) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %1385 = "tosa.transpose_conv2d"(%1384, %91, %cst_26) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 256>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x25x25x256xf32>
    %1386 = "tosa.transpose"(%1385, %58) : (tensor<1x25x25x256xf32>, tensor<4xi64>) -> tensor<1x256x25x25xf32>
    %1387 = "tosa.add"(%1365, %1386) : (tensor<1x256x25x25xf32>, tensor<1x256x25x25xf32>) -> tensor<1x256x25x25xf32>
    %1388 = "tosa.equal"(%224, %225) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %1389 = "tosa.select"(%1388, %extracted_slice_142, %56) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %1390 = "tosa.mul"(%1389, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %1391 = "tosa.mul"(%125, %1390) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1392 = "tosa.transpose"(%1391, %57) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %1393 = "tosa.transpose_conv2d"(%1392, %89, %cst_25) {out_pad = array<i64: -2, -2, -2, -2>, out_shape = array<i64: 1, 25, 25, 48>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<48x5x5x64xf32>, tensor<48xf32>) -> tensor<1x25x25x48xf32>
    %1394 = "tosa.transpose"(%1393, %58) : (tensor<1x25x25x48xf32>, tensor<4xi64>) -> tensor<1x48x25x25xf32>
    %1395 = "tosa.equal"(%216, %217) : (tensor<1x48x25x25xf32>, tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xi1>
    %1396 = "tosa.select"(%1395, %1394, %56) : (tensor<1x48x25x25xi1>, tensor<1x48x25x25xf32>, tensor<f32>) -> tensor<1x48x25x25xf32>
    %1397 = "tosa.mul"(%1396, %38) {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %1398 = "tosa.mul"(%164, %1397) {shift = 0 : i8} : (tensor<1x48x1x1xf32>, tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    %1399 = "tosa.transpose"(%1398, %57) : (tensor<1x48x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x48xf32>
    %1400 = "tosa.transpose_conv2d"(%1399, %92, %cst_26) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 256>, stride = array<i64: 1, 1>} : (tensor<1x25x25x48xf32>, tensor<256x1x1x48xf32>, tensor<256xf32>) -> tensor<1x25x25x256xf32>
    %1401 = "tosa.transpose"(%1400, %58) : (tensor<1x25x25x256xf32>, tensor<4xi64>) -> tensor<1x256x25x25xf32>
    %1402 = "tosa.add"(%1387, %1401) : (tensor<1x256x25x25xf32>, tensor<1x256x25x25xf32>) -> tensor<1x256x25x25xf32>
    %1403 = "tosa.select"(%1380, %extracted_slice_143, %56) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %1404 = "tosa.mul"(%1403, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %1405 = "tosa.mul"(%125, %1404) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1406 = "tosa.transpose"(%1405, %57) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %1407 = "tosa.transpose_conv2d"(%1406, %91, %cst_26) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 256>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x25x25x256xf32>
    %1408 = "tosa.transpose"(%1407, %58) : (tensor<1x25x25x256xf32>, tensor<4xi64>) -> tensor<1x256x25x25xf32>
    %1409 = "tosa.add"(%1402, %1408) : (tensor<1x256x25x25xf32>, tensor<1x256x25x25xf32>) -> tensor<1x256x25x25xf32>
    %extracted_slice_146 = tensor.extract_slice %1409[0, 224, 0, 0] [1, 32, 25, 25] [1, 1, 1, 1] : tensor<1x256x25x25xf32> to tensor<1x32x25x25xf32>
    %extracted_slice_147 = tensor.extract_slice %1409[0, 128, 0, 0] [1, 96, 25, 25] [1, 1, 1, 1] : tensor<1x256x25x25xf32> to tensor<1x96x25x25xf32>
    %extracted_slice_148 = tensor.extract_slice %1409[0, 64, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x256x25x25xf32> to tensor<1x64x25x25xf32>
    %extracted_slice_149 = tensor.extract_slice %1409[0, 0, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x256x25x25xf32> to tensor<1x64x25x25xf32>
    %1410 = "tosa.equal"(%201, %202) : (tensor<1x32x25x25xf32>, tensor<1x32x25x25xf32>) -> tensor<1x32x25x25xi1>
    %1411 = "tosa.select"(%1410, %extracted_slice_146, %56) : (tensor<1x32x25x25xi1>, tensor<1x32x25x25xf32>, tensor<f32>) -> tensor<1x32x25x25xf32>
    %1412 = "tosa.mul"(%1411, %52) {shift = 0 : i8} : (tensor<1x32x25x25xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x25x25xf32>
    %1413 = "tosa.mul"(%107, %1412) {shift = 0 : i8} : (tensor<1x32x1x1xf32>, tensor<1x32x25x25xf32>) -> tensor<1x32x25x25xf32>
    %1414 = "tosa.transpose"(%1413, %57) : (tensor<1x32x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x32xf32>
    %1415 = "tosa.transpose_conv2d"(%1414, %93, %cst_15) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 192>, stride = array<i64: 1, 1>} : (tensor<1x25x25x32xf32>, tensor<192x1x1x32xf32>, tensor<192xf32>) -> tensor<1x25x25x192xf32>
    %padded_150 = tensor.pad %152 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_35 : f32
    } : tensor<1x25x25x192xf32> to tensor<1x27x27x192xf32>
    %1416 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%padded_150, %cst_9, %1415 : tensor<1x27x27x192xf32>, tensor<3x3xf32>, tensor<1x25x25x192xf32>) outs(%cst_28 : tensor<1x27x27x192xf32>) {
    ^bb0(%in: f32, %in_152: f32, %in_153: f32, %out: f32):
      %1501 = arith.mulf %in_153, %cst_36 : f32
      %1502 = arith.addf %1501, %out : f32
      linalg.yield %1502 : f32
    } -> tensor<1x27x27x192xf32>
    %extracted_slice_151 = tensor.extract_slice %1416[0, 1, 1, 0] [1, 25, 25, 192] [1, 1, 1, 1] : tensor<1x27x27x192xf32> to tensor<1x25x25x192xf32>
    %1417 = "tosa.transpose"(%extracted_slice_151, %58) : (tensor<1x25x25x192xf32>, tensor<4xi64>) -> tensor<1x192x25x25xf32>
    %1418 = "tosa.equal"(%193, %194) : (tensor<1x96x25x25xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xi1>
    %1419 = "tosa.select"(%1418, %extracted_slice_147, %56) : (tensor<1x96x25x25xi1>, tensor<1x96x25x25xf32>, tensor<f32>) -> tensor<1x96x25x25xf32>
    %1420 = "tosa.mul"(%1419, %34) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %1421 = "tosa.mul"(%182, %1420) {shift = 0 : i8} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %1422 = "tosa.transpose"(%1421, %57) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %1423 = "tosa.transpose_conv2d"(%1422, %85, %cst_21) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 25, 25, 96>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %1424 = "tosa.transpose"(%1423, %58) : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %1425 = "tosa.equal"(%185, %186) : (tensor<1x96x25x25xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xi1>
    %1426 = "tosa.select"(%1425, %1424, %56) : (tensor<1x96x25x25xi1>, tensor<1x96x25x25xf32>, tensor<f32>) -> tensor<1x96x25x25xf32>
    %1427 = "tosa.mul"(%1426, %34) {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %1428 = "tosa.mul"(%182, %1427) {shift = 0 : i8} : (tensor<1x96x1x1xf32>, tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %1429 = "tosa.transpose"(%1428, %57) : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %1430 = "tosa.transpose_conv2d"(%1429, %86, %cst_22) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 25, 25, 64>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<64x3x3x96xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %1431 = "tosa.transpose"(%1430, %58) : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %1432 = "tosa.equal"(%158, %159) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %1433 = "tosa.select"(%1432, %1431, %56) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %1434 = "tosa.mul"(%1433, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %1435 = "tosa.mul"(%125, %1434) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1436 = "tosa.transpose"(%1435, %57) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %1437 = "tosa.transpose_conv2d"(%1436, %94, %cst_15) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 192>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<192x1x1x64xf32>, tensor<192xf32>) -> tensor<1x25x25x192xf32>
    %1438 = "tosa.transpose"(%1437, %58) : (tensor<1x25x25x192xf32>, tensor<4xi64>) -> tensor<1x192x25x25xf32>
    %1439 = "tosa.add"(%1417, %1438) : (tensor<1x192x25x25xf32>, tensor<1x192x25x25xf32>) -> tensor<1x192x25x25xf32>
    %1440 = "tosa.equal"(%175, %176) : (tensor<1x64x25x25xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xi1>
    %1441 = "tosa.select"(%1440, %extracted_slice_148, %56) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %1442 = "tosa.mul"(%1441, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %1443 = "tosa.mul"(%125, %1442) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1444 = "tosa.transpose"(%1443, %57) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %1445 = "tosa.transpose_conv2d"(%1444, %89, %cst_25) {out_pad = array<i64: -2, -2, -2, -2>, out_shape = array<i64: 1, 25, 25, 48>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<48x5x5x64xf32>, tensor<48xf32>) -> tensor<1x25x25x48xf32>
    %1446 = "tosa.transpose"(%1445, %58) : (tensor<1x25x25x48xf32>, tensor<4xi64>) -> tensor<1x48x25x25xf32>
    %1447 = "tosa.equal"(%167, %168) : (tensor<1x48x25x25xf32>, tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xi1>
    %1448 = "tosa.select"(%1447, %1446, %56) : (tensor<1x48x25x25xi1>, tensor<1x48x25x25xf32>, tensor<f32>) -> tensor<1x48x25x25xf32>
    %1449 = "tosa.mul"(%1448, %38) {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %1450 = "tosa.mul"(%164, %1449) {shift = 0 : i8} : (tensor<1x48x1x1xf32>, tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    %1451 = "tosa.transpose"(%1450, %57) : (tensor<1x48x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x48xf32>
    %1452 = "tosa.transpose_conv2d"(%1451, %95, %cst_15) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 192>, stride = array<i64: 1, 1>} : (tensor<1x25x25x48xf32>, tensor<192x1x1x48xf32>, tensor<192xf32>) -> tensor<1x25x25x192xf32>
    %1453 = "tosa.transpose"(%1452, %58) : (tensor<1x25x25x192xf32>, tensor<4xi64>) -> tensor<1x192x25x25xf32>
    %1454 = "tosa.add"(%1439, %1453) : (tensor<1x192x25x25xf32>, tensor<1x192x25x25xf32>) -> tensor<1x192x25x25xf32>
    %1455 = "tosa.select"(%1432, %extracted_slice_149, %56) : (tensor<1x64x25x25xi1>, tensor<1x64x25x25xf32>, tensor<f32>) -> tensor<1x64x25x25xf32>
    %1456 = "tosa.mul"(%1455, %48) {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %1457 = "tosa.mul"(%125, %1456) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %1458 = "tosa.transpose"(%1457, %57) : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %1459 = "tosa.transpose_conv2d"(%1458, %94, %cst_15) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 25, 25, 192>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<192x1x1x64xf32>, tensor<192xf32>) -> tensor<1x25x25x192xf32>
    %1460 = "tosa.transpose"(%1459, %58) : (tensor<1x25x25x192xf32>, tensor<4xi64>) -> tensor<1x192x25x25xf32>
    %1461 = "tosa.add"(%1454, %1460) : (tensor<1x192x25x25xf32>, tensor<1x192x25x25xf32>) -> tensor<1x192x25x25xf32>
    %1462 = "tosa.transpose"(%1461, %57) : (tensor<1x192x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x192xf32>
    %1463 = linalg.generic {indexing_maps = [#map3, #map1, #map2, #map2, #map3], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%151, %cst_9, %152, %1462 : tensor<1x52x52x192xf32>, tensor<3x3xf32>, tensor<1x25x25x192xf32>, tensor<1x25x25x192xf32>) outs(%cst_29 : tensor<1x52x52x192xf32>) {
    ^bb0(%in: f32, %in_152: f32, %in_153: f32, %in_154: f32, %out: f32):
      %1501 = arith.cmpf oge, %in, %in_153 : f32
      %1502 = arith.select %1501, %in_154, %cst_35 : f32
      %1503 = arith.addf %out, %1502 : f32
      linalg.yield %1503 : f32
    } -> tensor<1x52x52x192xf32>
    %1464 = "tosa.transpose"(%1463, %58) : (tensor<1x52x52x192xf32>, tensor<4xi64>) -> tensor<1x192x52x52xf32>
    %1465 = "tosa.equal"(%149, %150) : (tensor<1x192x52x52xf32>, tensor<1x192x52x52xf32>) -> tensor<1x192x52x52xi1>
    %1466 = "tosa.select"(%1465, %1464, %56) : (tensor<1x192x52x52xi1>, tensor<1x192x52x52xf32>, tensor<f32>) -> tensor<1x192x52x52xf32>
    %1467 = "tosa.mul"(%1466, %42) {shift = 0 : i8} : (tensor<1x192x52x52xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x52x52xf32>
    %1468 = "tosa.mul"(%146, %1467) {shift = 0 : i8} : (tensor<1x192x1x1xf32>, tensor<1x192x52x52xf32>) -> tensor<1x192x52x52xf32>
    %1469 = "tosa.transpose"(%1468, %57) : (tensor<1x192x52x52xf32>, tensor<4xi64>) -> tensor<1x52x52x192xf32>
    %1470 = "tosa.transpose_conv2d"(%1469, %96, %cst_30) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 54, 54, 80>, stride = array<i64: 1, 1>} : (tensor<1x52x52x192xf32>, tensor<80x3x3x192xf32>, tensor<80xf32>) -> tensor<1x54x54x80xf32>
    %1471 = "tosa.transpose"(%1470, %58) : (tensor<1x54x54x80xf32>, tensor<4xi64>) -> tensor<1x80x54x54xf32>
    %1472 = "tosa.equal"(%139, %140) : (tensor<1x80x54x54xf32>, tensor<1x80x54x54xf32>) -> tensor<1x80x54x54xi1>
    %1473 = "tosa.select"(%1472, %1471, %56) : (tensor<1x80x54x54xi1>, tensor<1x80x54x54xf32>, tensor<f32>) -> tensor<1x80x54x54xf32>
    %1474 = "tosa.mul"(%1473, %45) {shift = 0 : i8} : (tensor<1x80x54x54xf32>, tensor<1x80x1x1xf32>) -> tensor<1x80x54x54xf32>
    %1475 = "tosa.mul"(%136, %1474) {shift = 0 : i8} : (tensor<1x80x1x1xf32>, tensor<1x80x54x54xf32>) -> tensor<1x80x54x54xf32>
    %1476 = "tosa.transpose"(%1475, %57) : (tensor<1x80x54x54xf32>, tensor<4xi64>) -> tensor<1x54x54x80xf32>
    %1477 = "tosa.transpose_conv2d"(%1476, %97, %cst_22) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 54, 54, 64>, stride = array<i64: 1, 1>} : (tensor<1x54x54x80xf32>, tensor<64x1x1x80xf32>, tensor<64xf32>) -> tensor<1x54x54x64xf32>
    %1478 = linalg.generic {indexing_maps = [#map3, #map1, #map2, #map2, #map3], iterator_types = ["parallel", "reduction", "reduction", "parallel", "reduction", "reduction"]} ins(%130, %cst_9, %131, %1477 : tensor<1x109x109x64xf32>, tensor<3x3xf32>, tensor<1x54x54x64xf32>, tensor<1x54x54x64xf32>) outs(%cst_31 : tensor<1x109x109x64xf32>) {
    ^bb0(%in: f32, %in_152: f32, %in_153: f32, %in_154: f32, %out: f32):
      %1501 = arith.cmpf oge, %in, %in_153 : f32
      %1502 = arith.select %1501, %in_154, %cst_35 : f32
      %1503 = arith.addf %out, %1502 : f32
      linalg.yield %1503 : f32
    } -> tensor<1x109x109x64xf32>
    %1479 = "tosa.transpose"(%1478, %58) : (tensor<1x109x109x64xf32>, tensor<4xi64>) -> tensor<1x64x109x109xf32>
    %1480 = "tosa.equal"(%128, %129) : (tensor<1x64x109x109xf32>, tensor<1x64x109x109xf32>) -> tensor<1x64x109x109xi1>
    %1481 = "tosa.select"(%1480, %1479, %56) : (tensor<1x64x109x109xi1>, tensor<1x64x109x109xf32>, tensor<f32>) -> tensor<1x64x109x109xf32>
    %1482 = "tosa.mul"(%1481, %48) {shift = 0 : i8} : (tensor<1x64x109x109xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x109x109xf32>
    %1483 = "tosa.mul"(%125, %1482) {shift = 0 : i8} : (tensor<1x64x1x1xf32>, tensor<1x64x109x109xf32>) -> tensor<1x64x109x109xf32>
    %1484 = "tosa.transpose"(%1483, %57) : (tensor<1x64x109x109xf32>, tensor<4xi64>) -> tensor<1x109x109x64xf32>
    %1485 = "tosa.transpose_conv2d"(%1484, %98, %cst_32) {out_pad = array<i64: -1, -1, -1, -1>, out_shape = array<i64: 1, 109, 109, 32>, stride = array<i64: 1, 1>} : (tensor<1x109x109x64xf32>, tensor<32x3x3x64xf32>, tensor<32xf32>) -> tensor<1x109x109x32xf32>
    %1486 = "tosa.transpose"(%1485, %58) : (tensor<1x109x109x32xf32>, tensor<4xi64>) -> tensor<1x32x109x109xf32>
    %1487 = "tosa.equal"(%118, %119) : (tensor<1x32x109x109xf32>, tensor<1x32x109x109xf32>) -> tensor<1x32x109x109xi1>
    %1488 = "tosa.select"(%1487, %1486, %56) : (tensor<1x32x109x109xi1>, tensor<1x32x109x109xf32>, tensor<f32>) -> tensor<1x32x109x109xf32>
    %1489 = "tosa.mul"(%1488, %52) {shift = 0 : i8} : (tensor<1x32x109x109xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x109x109xf32>
    %1490 = "tosa.mul"(%107, %1489) {shift = 0 : i8} : (tensor<1x32x1x1xf32>, tensor<1x32x109x109xf32>) -> tensor<1x32x109x109xf32>
    %1491 = "tosa.transpose"(%1490, %57) : (tensor<1x32x109x109xf32>, tensor<4xi64>) -> tensor<1x109x109x32xf32>
    %1492 = "tosa.transpose_conv2d"(%1491, %99, %cst_32) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 111, 111, 32>, stride = array<i64: 1, 1>} : (tensor<1x109x109x32xf32>, tensor<32x3x3x32xf32>, tensor<32xf32>) -> tensor<1x111x111x32xf32>
    %1493 = "tosa.transpose"(%1492, %58) : (tensor<1x111x111x32xf32>, tensor<4xi64>) -> tensor<1x32x111x111xf32>
    %1494 = "tosa.equal"(%110, %111) : (tensor<1x32x111x111xf32>, tensor<1x32x111x111xf32>) -> tensor<1x32x111x111xi1>
    %1495 = "tosa.select"(%1494, %1493, %56) : (tensor<1x32x111x111xi1>, tensor<1x32x111x111xf32>, tensor<f32>) -> tensor<1x32x111x111xf32>
    %1496 = "tosa.mul"(%1495, %52) {shift = 0 : i8} : (tensor<1x32x111x111xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x111x111xf32>
    %1497 = "tosa.mul"(%107, %1496) {shift = 0 : i8} : (tensor<1x32x1x1xf32>, tensor<1x32x111x111xf32>) -> tensor<1x32x111x111xf32>
    %1498 = "tosa.transpose"(%1497, %57) : (tensor<1x32x111x111xf32>, tensor<4xi64>) -> tensor<1x111x111x32xf32>
    %1499 = "tosa.transpose_conv2d"(%1498, %100, %cst_33) {out_pad = array<i64: 0, 0, 0, 0>, out_shape = array<i64: 1, 224, 224, 3>, stride = array<i64: 2, 2>} : (tensor<1x111x111x32xf32>, tensor<3x3x3x32xf32>, tensor<3xf32>) -> tensor<1x224x224x3xf32>
    %1500 = "tosa.transpose"(%1499, %58) : (tensor<1x224x224x3xf32>, tensor<4xi64>) -> tensor<1x3x224x224xf32>
    return %1500 : tensor<1x3x224x224xf32>
  }
}

