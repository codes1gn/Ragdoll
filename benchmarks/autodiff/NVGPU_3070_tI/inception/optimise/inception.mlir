module {
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %0 = "tosa.const"() <{value = dense<0.0787700042> : tensor<1x448x1x1xf32>}> : () -> tensor<1x448x1x1xf32>
    %1 = "tosa.const"() <{value = dense<0.0787700042> : tensor<1x320x1x1xf32>}> : () -> tensor<1x320x1x1xf32>
    %2 = "tosa.const"() <{value = dense<0.0787700042> : tensor<1x160x1x1xf32>}> : () -> tensor<1x160x1x1xf32>
    %3 = "tosa.const"() <{value = dense<0.0787700042> : tensor<1x128x1x1xf32>}> : () -> tensor<1x128x1x1xf32>
    %4 = "tosa.const"() <{value = dense<0.0787700042> : tensor<1x384x1x1xf32>}> : () -> tensor<1x384x1x1xf32>
    %5 = "tosa.const"() <{value = dense<0.0787700042> : tensor<1x96x1x1xf32>}> : () -> tensor<1x96x1x1xf32>
    %6 = "tosa.const"() <{value = dense<0.0787700042> : tensor<1x48x1x1xf32>}> : () -> tensor<1x48x1x1xf32>
    %7 = "tosa.const"() <{value = dense<0.0787700042> : tensor<1x192x1x1xf32>}> : () -> tensor<1x192x1x1xf32>
    %8 = "tosa.const"() <{value = dense<0.0787700042> : tensor<1x80x1x1xf32>}> : () -> tensor<1x80x1x1xf32>
    %9 = "tosa.const"() <{value = dense<0.0787700042> : tensor<1x64x1x1xf32>}> : () -> tensor<1x64x1x1xf32>
    %10 = "tosa.const"() <{value = dense<0.0787700042> : tensor<1x32x1x1xf32>}> : () -> tensor<1x32x1x1xf32>
    %cst = arith.constant dense<0.000000e+00> : tensor<1x256x25x25xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1x288x25x25xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1x768x12x12xf32>
    %cst_2 = arith.constant dense<0.000000e+00> : tensor<1x1280x5x5xf32>
    %cst_3 = arith.constant dense<0.000000e+00> : tensor<1x768x5x5xf32>
    %cst_4 = arith.constant dense<0.000000e+00> : tensor<1x2048x5x5xf32>
    %11 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<32x3x3x3xf32>}> : () -> tensor<32x3x3x3xf32>
    %12 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi64>}> : () -> tensor<4xi64>
    %13 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<32xf32>}> : () -> tensor<32xf32>
    %14 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi64>}> : () -> tensor<4xi64>
    %15 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x32x1x1xf32>}> : () -> tensor<1x32x1x1xf32>
    %16 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<32x3x3x32xf32>}> : () -> tensor<32x3x3x32xf32>
    %17 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<64x3x3x32xf32>}> : () -> tensor<64x3x3x32xf32>
    %18 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<64xf32>}> : () -> tensor<64xf32>
    %19 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x64x1x1xf32>}> : () -> tensor<1x64x1x1xf32>
    %20 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<80x1x1x64xf32>}> : () -> tensor<80x1x1x64xf32>
    %21 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<80xf32>}> : () -> tensor<80xf32>
    %22 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x80x1x1xf32>}> : () -> tensor<1x80x1x1xf32>
    %23 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<192x3x3x80xf32>}> : () -> tensor<192x3x3x80xf32>
    %24 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<192xf32>}> : () -> tensor<192xf32>
    %25 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x192x1x1xf32>}> : () -> tensor<1x192x1x1xf32>
    %26 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<64x1x1x192xf32>}> : () -> tensor<64x1x1x192xf32>
    %27 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<48x1x1x192xf32>}> : () -> tensor<48x1x1x192xf32>
    %28 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<48xf32>}> : () -> tensor<48xf32>
    %29 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x48x1x1xf32>}> : () -> tensor<1x48x1x1xf32>
    %30 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<64x5x5x48xf32>}> : () -> tensor<64x5x5x48xf32>
    %31 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<96x3x3x64xf32>}> : () -> tensor<96x3x3x64xf32>
    %32 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<96xf32>}> : () -> tensor<96xf32>
    %33 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x96x1x1xf32>}> : () -> tensor<1x96x1x1xf32>
    %34 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<96x3x3x96xf32>}> : () -> tensor<96x3x3x96xf32>
    %35 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<32x1x1x192xf32>}> : () -> tensor<32x1x1x192xf32>
    %36 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<64x1x1x256xf32>}> : () -> tensor<64x1x1x256xf32>
    %37 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<48x1x1x256xf32>}> : () -> tensor<48x1x1x256xf32>
    %38 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<64x1x1x288xf32>}> : () -> tensor<64x1x1x288xf32>
    %39 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<48x1x1x288xf32>}> : () -> tensor<48x1x1x288xf32>
    %40 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<384x3x3x288xf32>}> : () -> tensor<384x3x3x288xf32>
    %41 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<384xf32>}> : () -> tensor<384xf32>
    %42 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x384x1x1xf32>}> : () -> tensor<1x384x1x1xf32>
    %43 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<192x1x1x768xf32>}> : () -> tensor<192x1x1x768xf32>
    %44 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x768xf32>}> : () -> tensor<128x1x1x768xf32>
    %45 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<128xf32>}> : () -> tensor<128xf32>
    %46 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x128x1x1xf32>}> : () -> tensor<1x128x1x1xf32>
    %47 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x7x128xf32>}> : () -> tensor<128x1x7x128xf32>
    %48 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<192x7x1x128xf32>}> : () -> tensor<192x7x1x128xf32>
    %49 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x7x1x128xf32>}> : () -> tensor<128x7x1x128xf32>
    %50 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<192x1x7x128xf32>}> : () -> tensor<192x1x7x128xf32>
    %51 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<160x1x1x768xf32>}> : () -> tensor<160x1x1x768xf32>
    %52 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<160xf32>}> : () -> tensor<160xf32>
    %53 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x160x1x1xf32>}> : () -> tensor<1x160x1x1xf32>
    %54 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<160x1x7x160xf32>}> : () -> tensor<160x1x7x160xf32>
    %55 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<192x7x1x160xf32>}> : () -> tensor<192x7x1x160xf32>
    %56 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<160x7x1x160xf32>}> : () -> tensor<160x7x1x160xf32>
    %57 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<192x1x7x160xf32>}> : () -> tensor<192x1x7x160xf32>
    %58 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<192x1x7x192xf32>}> : () -> tensor<192x1x7x192xf32>
    %59 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<192x7x1x192xf32>}> : () -> tensor<192x7x1x192xf32>
    %60 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<320x3x3x192xf32>}> : () -> tensor<320x3x3x192xf32>
    %61 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<320xf32>}> : () -> tensor<320xf32>
    %62 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x320x1x1xf32>}> : () -> tensor<1x320x1x1xf32>
    %63 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<192x3x3x192xf32>}> : () -> tensor<192x3x3x192xf32>
    %64 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<320x1x1x1280xf32>}> : () -> tensor<320x1x1x1280xf32>
    %65 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<384x1x1x1280xf32>}> : () -> tensor<384x1x1x1280xf32>
    %66 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<384x1x3x384xf32>}> : () -> tensor<384x1x3x384xf32>
    %67 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<384x3x1x384xf32>}> : () -> tensor<384x3x1x384xf32>
    %68 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<448x1x1x1280xf32>}> : () -> tensor<448x1x1x1280xf32>
    %69 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<448xf32>}> : () -> tensor<448xf32>
    %70 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x448x1x1xf32>}> : () -> tensor<1x448x1x1xf32>
    %71 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<384x3x3x448xf32>}> : () -> tensor<384x3x3x448xf32>
    %72 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<192x1x1x1280xf32>}> : () -> tensor<192x1x1x1280xf32>
    %73 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<320x1x1x2048xf32>}> : () -> tensor<320x1x1x2048xf32>
    %74 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<384x1x1x2048xf32>}> : () -> tensor<384x1x1x2048xf32>
    %75 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<448x1x1x2048xf32>}> : () -> tensor<448x1x1x2048xf32>
    %76 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<192x1x1x2048xf32>}> : () -> tensor<192x1x1x2048xf32>
    %77 = "tosa.const"() <{value = dense<"0x3D6BD0785C2F95B8BA4AC1421817B9FEB7A6A3EA51D067EBB31C70AA4C9C0C9D2008E6E59D00568CF66D81028B7072D29B20021D897DD288E069D7F6791693AF2101483DA26D20DF7D2D793E87EF873188E31D6E57519A2BFA4DC36F766D122331950859F8F513A4C39C3E8BBB2EA66D4E598286A94DF7C4F4390A9AAEF5126CD995FCA13841F1F67A8FD5455C3D9B24B733D650984EF30ED57BB8EDE1DA7E559E9E7A4105D7739F7660B1D3AA85E42774D01D269757BEAF77003552617B655EEB71B0CE30058A420AFBD204359CB1EFA77A67B4D6795CD13A65CD23BC0F8E6D990356E01A92450F939F8433780C2090074C9015DB003EEC3AB39A626E9898F9"> : tensor<1x2048x1x1xi1>}> : () -> tensor<1x2048x1x1xi1>
    %78 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %79 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x2048x1000xf32>}> : () -> tensor<1x2048x1000xf32>
    %80 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1000xf32>}> : () -> tensor<1000xf32>
    %81 = tosa.transpose %arg0, %12 : (tensor<1x3x224x224xf32>, tensor<4xi64>) -> tensor<1x224x224x3xf32>
    %82 = tosa.conv2d %81, %11, %13 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<32x3x3x3xf32>, tensor<32xf32>) -> tensor<1x111x111x32xf32>
    %83 = tosa.transpose %82, %14 : (tensor<1x111x111x32xf32>, tensor<4xi64>) -> tensor<1x32x111x111xf32>
    %84 = tosa.sub %83, %15 : (tensor<1x32x111x111xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x111x111xf32>
    %85 = tosa.rsqrt %10 : (tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %86 = tosa.mul %84, %85 {shift = 0 : i8} : (tensor<1x32x111x111xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x111x111xf32>
    %87 = tosa.mul %86, %15 {shift = 0 : i8} : (tensor<1x32x111x111xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x111x111xf32>
    %88 = tosa.add %87, %15 : (tensor<1x32x111x111xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x111x111xf32>
    %89 = tosa.clamp %88 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x111x111xf32>) -> tensor<1x32x111x111xf32>
    %90 = tosa.transpose %89, %12 : (tensor<1x32x111x111xf32>, tensor<4xi64>) -> tensor<1x111x111x32xf32>
    %91 = tosa.conv2d %90, %16, %13 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x111x111x32xf32>, tensor<32x3x3x32xf32>, tensor<32xf32>) -> tensor<1x109x109x32xf32>
    %92 = tosa.transpose %91, %14 : (tensor<1x109x109x32xf32>, tensor<4xi64>) -> tensor<1x32x109x109xf32>
    %93 = tosa.sub %92, %15 : (tensor<1x32x109x109xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x109x109xf32>
    %94 = tosa.mul %93, %85 {shift = 0 : i8} : (tensor<1x32x109x109xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x109x109xf32>
    %95 = tosa.mul %94, %15 {shift = 0 : i8} : (tensor<1x32x109x109xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x109x109xf32>
    %96 = tosa.add %95, %15 : (tensor<1x32x109x109xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x109x109xf32>
    %97 = tosa.clamp %96 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x109x109xf32>) -> tensor<1x32x109x109xf32>
    %98 = tosa.transpose %97, %12 : (tensor<1x32x109x109xf32>, tensor<4xi64>) -> tensor<1x109x109x32xf32>
    %99 = tosa.conv2d %98, %17, %18 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x109x109x32xf32>, tensor<64x3x3x32xf32>, tensor<64xf32>) -> tensor<1x109x109x64xf32>
    %100 = tosa.transpose %99, %14 : (tensor<1x109x109x64xf32>, tensor<4xi64>) -> tensor<1x64x109x109xf32>
    %101 = tosa.sub %100, %19 : (tensor<1x64x109x109xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x109x109xf32>
    %102 = tosa.rsqrt %9 : (tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %103 = tosa.mul %101, %102 {shift = 0 : i8} : (tensor<1x64x109x109xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x109x109xf32>
    %104 = tosa.mul %103, %19 {shift = 0 : i8} : (tensor<1x64x109x109xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x109x109xf32>
    %105 = tosa.add %104, %19 : (tensor<1x64x109x109xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x109x109xf32>
    %106 = tosa.clamp %105 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x109x109xf32>) -> tensor<1x64x109x109xf32>
    %107 = tosa.transpose %106, %12 : (tensor<1x64x109x109xf32>, tensor<4xi64>) -> tensor<1x109x109x64xf32>
    %108 = tosa.max_pool2d %107 {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x109x109x64xf32>) -> tensor<1x54x54x64xf32>
    %109 = tosa.conv2d %108, %20, %21 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x64xf32>, tensor<80x1x1x64xf32>, tensor<80xf32>) -> tensor<1x54x54x80xf32>
    %110 = tosa.transpose %109, %14 : (tensor<1x54x54x80xf32>, tensor<4xi64>) -> tensor<1x80x54x54xf32>
    %111 = tosa.sub %110, %22 : (tensor<1x80x54x54xf32>, tensor<1x80x1x1xf32>) -> tensor<1x80x54x54xf32>
    %112 = tosa.rsqrt %8 : (tensor<1x80x1x1xf32>) -> tensor<1x80x1x1xf32>
    %113 = tosa.mul %111, %112 {shift = 0 : i8} : (tensor<1x80x54x54xf32>, tensor<1x80x1x1xf32>) -> tensor<1x80x54x54xf32>
    %114 = tosa.mul %113, %22 {shift = 0 : i8} : (tensor<1x80x54x54xf32>, tensor<1x80x1x1xf32>) -> tensor<1x80x54x54xf32>
    %115 = tosa.add %114, %22 : (tensor<1x80x54x54xf32>, tensor<1x80x1x1xf32>) -> tensor<1x80x54x54xf32>
    %116 = tosa.clamp %115 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x80x54x54xf32>) -> tensor<1x80x54x54xf32>
    %117 = tosa.transpose %116, %12 : (tensor<1x80x54x54xf32>, tensor<4xi64>) -> tensor<1x54x54x80xf32>
    %118 = tosa.conv2d %117, %23, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x54x54x80xf32>, tensor<192x3x3x80xf32>, tensor<192xf32>) -> tensor<1x52x52x192xf32>
    %119 = tosa.transpose %118, %14 : (tensor<1x52x52x192xf32>, tensor<4xi64>) -> tensor<1x192x52x52xf32>
    %120 = tosa.sub %119, %25 : (tensor<1x192x52x52xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x52x52xf32>
    %121 = tosa.rsqrt %7 : (tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %122 = tosa.mul %120, %121 {shift = 0 : i8} : (tensor<1x192x52x52xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x52x52xf32>
    %123 = tosa.mul %122, %25 {shift = 0 : i8} : (tensor<1x192x52x52xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x52x52xf32>
    %124 = tosa.add %123, %25 : (tensor<1x192x52x52xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x52x52xf32>
    %125 = tosa.clamp %124 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x52x52xf32>) -> tensor<1x192x52x52xf32>
    %126 = tosa.transpose %125, %12 : (tensor<1x192x52x52xf32>, tensor<4xi64>) -> tensor<1x52x52x192xf32>
    %127 = tosa.max_pool2d %126 {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x52x52x192xf32>) -> tensor<1x25x25x192xf32>
    %128 = tosa.conv2d %127, %26, %18 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x192xf32>, tensor<64x1x1x192xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %129 = tosa.transpose %128, %14 : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %130 = tosa.sub %129, %19 : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %131 = tosa.mul %130, %102 {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %132 = tosa.mul %131, %19 {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %133 = tosa.add %132, %19 : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %134 = tosa.clamp %133 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %135 = tosa.conv2d %127, %27, %28 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x192xf32>, tensor<48x1x1x192xf32>, tensor<48xf32>) -> tensor<1x25x25x48xf32>
    %136 = tosa.transpose %135, %14 : (tensor<1x25x25x48xf32>, tensor<4xi64>) -> tensor<1x48x25x25xf32>
    %137 = tosa.sub %136, %29 : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %138 = tosa.rsqrt %6 : (tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %139 = tosa.mul %137, %138 {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %140 = tosa.mul %139, %29 {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %141 = tosa.add %140, %29 : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %142 = tosa.clamp %141 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    %143 = tosa.transpose %142, %12 : (tensor<1x48x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x48xf32>
    %144 = tosa.conv2d %143, %30, %18 {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 1, 1>} : (tensor<1x25x25x48xf32>, tensor<64x5x5x48xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %145 = tosa.transpose %144, %14 : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %146 = tosa.sub %145, %19 : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %147 = tosa.mul %146, %102 {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %148 = tosa.mul %147, %19 {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %149 = tosa.add %148, %19 : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %150 = tosa.clamp %149 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %151 = tosa.transpose %134, %12 : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %152 = tosa.conv2d %151, %31, %32 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<96x3x3x64xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %153 = tosa.transpose %152, %14 : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %154 = tosa.sub %153, %33 : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %155 = tosa.rsqrt %5 : (tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %156 = tosa.mul %154, %155 {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %157 = tosa.mul %156, %33 {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %158 = tosa.add %157, %33 : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %159 = tosa.clamp %158 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %160 = tosa.transpose %159, %12 : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %161 = tosa.conv2d %160, %34, %32 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %162 = tosa.transpose %161, %14 : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %163 = tosa.sub %162, %33 : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %164 = tosa.mul %163, %155 {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %165 = tosa.mul %164, %33 {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %166 = tosa.add %165, %33 : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %167 = tosa.clamp %166 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %168 = tosa.avg_pool2d %127 {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x192xf32>) -> tensor<1x25x25x192xf32>
    %169 = tosa.conv2d %168, %35, %13 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x192xf32>, tensor<32x1x1x192xf32>, tensor<32xf32>) -> tensor<1x25x25x32xf32>
    %170 = tosa.transpose %169, %14 : (tensor<1x25x25x32xf32>, tensor<4xi64>) -> tensor<1x32x25x25xf32>
    %171 = tosa.sub %170, %15 : (tensor<1x32x25x25xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x25x25xf32>
    %172 = tosa.mul %171, %85 {shift = 0 : i8} : (tensor<1x32x25x25xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x25x25xf32>
    %173 = tosa.mul %172, %15 {shift = 0 : i8} : (tensor<1x32x25x25xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x25x25xf32>
    %174 = tosa.add %173, %15 : (tensor<1x32x25x25xf32>, tensor<1x32x1x1xf32>) -> tensor<1x32x25x25xf32>
    %175 = tosa.clamp %174 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x25x25xf32>) -> tensor<1x32x25x25xf32>
    %inserted_slice = tensor.insert_slice %134 into %cst[0, 0, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x256x25x25xf32>
    %inserted_slice_5 = tensor.insert_slice %150 into %inserted_slice[0, 64, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x256x25x25xf32>
    %inserted_slice_6 = tensor.insert_slice %167 into %inserted_slice_5[0, 128, 0, 0] [1, 96, 25, 25] [1, 1, 1, 1] : tensor<1x96x25x25xf32> into tensor<1x256x25x25xf32>
    %inserted_slice_7 = tensor.insert_slice %175 into %inserted_slice_6[0, 224, 0, 0] [1, 32, 25, 25] [1, 1, 1, 1] : tensor<1x32x25x25xf32> into tensor<1x256x25x25xf32>
    %176 = tosa.transpose %inserted_slice_7, %12 : (tensor<1x256x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x256xf32>
    %177 = tosa.conv2d %176, %36, %18 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %178 = tosa.transpose %177, %14 : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %179 = tosa.sub %178, %19 : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %180 = tosa.mul %179, %102 {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %181 = tosa.mul %180, %19 {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %182 = tosa.add %181, %19 : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %183 = tosa.clamp %182 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %184 = tosa.conv2d %176, %37, %28 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x256xf32>, tensor<48x1x1x256xf32>, tensor<48xf32>) -> tensor<1x25x25x48xf32>
    %185 = tosa.transpose %184, %14 : (tensor<1x25x25x48xf32>, tensor<4xi64>) -> tensor<1x48x25x25xf32>
    %186 = tosa.sub %185, %29 : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %187 = tosa.mul %186, %138 {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %188 = tosa.mul %187, %29 {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %189 = tosa.add %188, %29 : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %190 = tosa.clamp %189 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    %191 = tosa.transpose %190, %12 : (tensor<1x48x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x48xf32>
    %192 = tosa.conv2d %191, %30, %18 {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 1, 1>} : (tensor<1x25x25x48xf32>, tensor<64x5x5x48xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %193 = tosa.transpose %192, %14 : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %194 = tosa.sub %193, %19 : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %195 = tosa.mul %194, %102 {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %196 = tosa.mul %195, %19 {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %197 = tosa.add %196, %19 : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %198 = tosa.clamp %197 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %199 = tosa.transpose %183, %12 : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %200 = tosa.conv2d %199, %31, %32 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<96x3x3x64xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %201 = tosa.transpose %200, %14 : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %202 = tosa.sub %201, %33 : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %203 = tosa.mul %202, %155 {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %204 = tosa.mul %203, %33 {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %205 = tosa.add %204, %33 : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %206 = tosa.clamp %205 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %207 = tosa.transpose %206, %12 : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %208 = tosa.conv2d %207, %34, %32 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %209 = tosa.transpose %208, %14 : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %210 = tosa.sub %209, %33 : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %211 = tosa.mul %210, %155 {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %212 = tosa.mul %211, %33 {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %213 = tosa.add %212, %33 : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %214 = tosa.clamp %213 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %215 = tosa.avg_pool2d %176 {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x256xf32>) -> tensor<1x25x25x256xf32>
    %216 = tosa.conv2d %215, %36, %18 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %217 = tosa.transpose %216, %14 : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %218 = tosa.sub %217, %19 : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %219 = tosa.mul %218, %102 {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %220 = tosa.mul %219, %19 {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %221 = tosa.add %220, %19 : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %222 = tosa.clamp %221 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %inserted_slice_8 = tensor.insert_slice %183 into %cst_0[0, 0, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_9 = tensor.insert_slice %198 into %inserted_slice_8[0, 64, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_10 = tensor.insert_slice %214 into %inserted_slice_9[0, 128, 0, 0] [1, 96, 25, 25] [1, 1, 1, 1] : tensor<1x96x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_11 = tensor.insert_slice %222 into %inserted_slice_10[0, 224, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %223 = tosa.transpose %inserted_slice_11, %12 : (tensor<1x288x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x288xf32>
    %224 = tosa.conv2d %223, %38, %18 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x288xf32>, tensor<64x1x1x288xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %225 = tosa.transpose %224, %14 : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %226 = tosa.sub %225, %19 : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %227 = tosa.mul %226, %102 {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %228 = tosa.mul %227, %19 {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %229 = tosa.add %228, %19 : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %230 = tosa.clamp %229 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %231 = tosa.conv2d %223, %39, %28 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x288xf32>, tensor<48x1x1x288xf32>, tensor<48xf32>) -> tensor<1x25x25x48xf32>
    %232 = tosa.transpose %231, %14 : (tensor<1x25x25x48xf32>, tensor<4xi64>) -> tensor<1x48x25x25xf32>
    %233 = tosa.sub %232, %29 : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %234 = tosa.mul %233, %138 {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %235 = tosa.mul %234, %29 {shift = 0 : i8} : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %236 = tosa.add %235, %29 : (tensor<1x48x25x25xf32>, tensor<1x48x1x1xf32>) -> tensor<1x48x25x25xf32>
    %237 = tosa.clamp %236 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x48x25x25xf32>) -> tensor<1x48x25x25xf32>
    %238 = tosa.transpose %237, %12 : (tensor<1x48x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x48xf32>
    %239 = tosa.conv2d %238, %30, %18 {dilation = array<i64: 1, 1>, pad = array<i64: 2, 2, 2, 2>, stride = array<i64: 1, 1>} : (tensor<1x25x25x48xf32>, tensor<64x5x5x48xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %240 = tosa.transpose %239, %14 : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %241 = tosa.sub %240, %19 : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %242 = tosa.mul %241, %102 {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %243 = tosa.mul %242, %19 {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %244 = tosa.add %243, %19 : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %245 = tosa.clamp %244 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %246 = tosa.transpose %230, %12 : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %247 = tosa.conv2d %246, %31, %32 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<96x3x3x64xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %248 = tosa.transpose %247, %14 : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %249 = tosa.sub %248, %33 : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %250 = tosa.mul %249, %155 {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %251 = tosa.mul %250, %33 {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %252 = tosa.add %251, %33 : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %253 = tosa.clamp %252 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %254 = tosa.transpose %253, %12 : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %255 = tosa.conv2d %254, %34, %32 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %256 = tosa.transpose %255, %14 : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %257 = tosa.sub %256, %33 : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %258 = tosa.mul %257, %155 {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %259 = tosa.mul %258, %33 {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %260 = tosa.add %259, %33 : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %261 = tosa.clamp %260 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %262 = tosa.avg_pool2d %223 {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x288xf32>) -> tensor<1x25x25x288xf32>
    %263 = tosa.conv2d %262, %38, %18 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x288xf32>, tensor<64x1x1x288xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %264 = tosa.transpose %263, %14 : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %265 = tosa.sub %264, %19 : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %266 = tosa.mul %265, %102 {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %267 = tosa.mul %266, %19 {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %268 = tosa.add %267, %19 : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %269 = tosa.clamp %268 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %inserted_slice_12 = tensor.insert_slice %230 into %cst_0[0, 0, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_13 = tensor.insert_slice %245 into %inserted_slice_12[0, 64, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_14 = tensor.insert_slice %261 into %inserted_slice_13[0, 128, 0, 0] [1, 96, 25, 25] [1, 1, 1, 1] : tensor<1x96x25x25xf32> into tensor<1x288x25x25xf32>
    %inserted_slice_15 = tensor.insert_slice %269 into %inserted_slice_14[0, 224, 0, 0] [1, 64, 25, 25] [1, 1, 1, 1] : tensor<1x64x25x25xf32> into tensor<1x288x25x25xf32>
    %270 = tosa.transpose %inserted_slice_15, %12 : (tensor<1x288x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x288xf32>
    %271 = tosa.conv2d %270, %40, %41 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x25x25x288xf32>, tensor<384x3x3x288xf32>, tensor<384xf32>) -> tensor<1x12x12x384xf32>
    %272 = tosa.transpose %271, %14 : (tensor<1x12x12x384xf32>, tensor<4xi64>) -> tensor<1x384x12x12xf32>
    %273 = tosa.sub %272, %42 : (tensor<1x384x12x12xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x12x12xf32>
    %274 = tosa.rsqrt %4 : (tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %275 = tosa.mul %273, %274 {shift = 0 : i8} : (tensor<1x384x12x12xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x12x12xf32>
    %276 = tosa.mul %275, %42 {shift = 0 : i8} : (tensor<1x384x12x12xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x12x12xf32>
    %277 = tosa.add %276, %42 : (tensor<1x384x12x12xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x12x12xf32>
    %278 = tosa.clamp %277 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x12x12xf32>) -> tensor<1x384x12x12xf32>
    %279 = tosa.conv2d %270, %38, %18 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x25x25x288xf32>, tensor<64x1x1x288xf32>, tensor<64xf32>) -> tensor<1x25x25x64xf32>
    %280 = tosa.transpose %279, %14 : (tensor<1x25x25x64xf32>, tensor<4xi64>) -> tensor<1x64x25x25xf32>
    %281 = tosa.sub %280, %19 : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %282 = tosa.mul %281, %102 {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %283 = tosa.mul %282, %19 {shift = 0 : i8} : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %284 = tosa.add %283, %19 : (tensor<1x64x25x25xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x25x25xf32>
    %285 = tosa.clamp %284 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x25x25xf32>) -> tensor<1x64x25x25xf32>
    %286 = tosa.transpose %285, %12 : (tensor<1x64x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x64xf32>
    %287 = tosa.conv2d %286, %31, %32 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x25x25x64xf32>, tensor<96x3x3x64xf32>, tensor<96xf32>) -> tensor<1x25x25x96xf32>
    %288 = tosa.transpose %287, %14 : (tensor<1x25x25x96xf32>, tensor<4xi64>) -> tensor<1x96x25x25xf32>
    %289 = tosa.sub %288, %33 : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %290 = tosa.mul %289, %155 {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %291 = tosa.mul %290, %33 {shift = 0 : i8} : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %292 = tosa.add %291, %33 : (tensor<1x96x25x25xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x25x25xf32>
    %293 = tosa.clamp %292 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x25x25xf32>) -> tensor<1x96x25x25xf32>
    %294 = tosa.transpose %293, %12 : (tensor<1x96x25x25xf32>, tensor<4xi64>) -> tensor<1x25x25x96xf32>
    %295 = tosa.conv2d %294, %34, %32 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x25x25x96xf32>, tensor<96x3x3x96xf32>, tensor<96xf32>) -> tensor<1x12x12x96xf32>
    %296 = tosa.transpose %295, %14 : (tensor<1x12x12x96xf32>, tensor<4xi64>) -> tensor<1x96x12x12xf32>
    %297 = tosa.sub %296, %33 : (tensor<1x96x12x12xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x12x12xf32>
    %298 = tosa.mul %297, %155 {shift = 0 : i8} : (tensor<1x96x12x12xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x12x12xf32>
    %299 = tosa.mul %298, %33 {shift = 0 : i8} : (tensor<1x96x12x12xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x12x12xf32>
    %300 = tosa.add %299, %33 : (tensor<1x96x12x12xf32>, tensor<1x96x1x1xf32>) -> tensor<1x96x12x12xf32>
    %301 = tosa.clamp %300 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x96x12x12xf32>) -> tensor<1x96x12x12xf32>
    %302 = tosa.max_pool2d %270 {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x25x25x288xf32>) -> tensor<1x12x12x288xf32>
    %303 = tosa.transpose %302, %14 : (tensor<1x12x12x288xf32>, tensor<4xi64>) -> tensor<1x288x12x12xf32>
    %inserted_slice_16 = tensor.insert_slice %278 into %cst_1[0, 0, 0, 0] [1, 384, 12, 12] [1, 1, 1, 1] : tensor<1x384x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_17 = tensor.insert_slice %301 into %inserted_slice_16[0, 384, 0, 0] [1, 96, 12, 12] [1, 1, 1, 1] : tensor<1x96x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_18 = tensor.insert_slice %303 into %inserted_slice_17[0, 480, 0, 0] [1, 288, 12, 12] [1, 1, 1, 1] : tensor<1x288x12x12xf32> into tensor<1x768x12x12xf32>
    %304 = tosa.transpose %inserted_slice_18, %12 : (tensor<1x768x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x768xf32>
    %305 = tosa.conv2d %304, %43, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %306 = tosa.transpose %305, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %307 = tosa.sub %306, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %308 = tosa.mul %307, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %309 = tosa.mul %308, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %310 = tosa.add %309, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %311 = tosa.clamp %310 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %312 = tosa.conv2d %304, %44, %45 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<128x1x1x768xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %313 = tosa.transpose %312, %14 : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %314 = tosa.sub %313, %46 : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %315 = tosa.rsqrt %3 : (tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %316 = tosa.mul %314, %315 {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %317 = tosa.mul %316, %46 {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %318 = tosa.add %317, %46 : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %319 = tosa.clamp %318 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %320 = tosa.transpose %319, %12 : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %321 = tosa.conv2d %320, %47, %45 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x1x7x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %322 = tosa.transpose %321, %14 : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %323 = tosa.sub %322, %46 : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %324 = tosa.mul %323, %315 {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %325 = tosa.mul %324, %46 {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %326 = tosa.add %325, %46 : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %327 = tosa.clamp %326 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %328 = tosa.transpose %327, %12 : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %329 = tosa.conv2d %328, %48, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<192x7x1x128xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %330 = tosa.transpose %329, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %331 = tosa.sub %330, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %332 = tosa.mul %331, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %333 = tosa.mul %332, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %334 = tosa.add %333, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %335 = tosa.clamp %334 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %336 = tosa.conv2d %320, %49, %45 {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x7x1x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %337 = tosa.transpose %336, %14 : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %338 = tosa.sub %337, %46 : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %339 = tosa.mul %338, %315 {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %340 = tosa.mul %339, %46 {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %341 = tosa.add %340, %46 : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %342 = tosa.clamp %341 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %343 = tosa.transpose %342, %12 : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %344 = tosa.conv2d %343, %47, %45 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x1x7x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %345 = tosa.transpose %344, %14 : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %346 = tosa.sub %345, %46 : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %347 = tosa.mul %346, %315 {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %348 = tosa.mul %347, %46 {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %349 = tosa.add %348, %46 : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %350 = tosa.clamp %349 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %351 = tosa.transpose %350, %12 : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %352 = tosa.conv2d %351, %49, %45 {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<128x7x1x128xf32>, tensor<128xf32>) -> tensor<1x12x12x128xf32>
    %353 = tosa.transpose %352, %14 : (tensor<1x12x12x128xf32>, tensor<4xi64>) -> tensor<1x128x12x12xf32>
    %354 = tosa.sub %353, %46 : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %355 = tosa.mul %354, %315 {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %356 = tosa.mul %355, %46 {shift = 0 : i8} : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %357 = tosa.add %356, %46 : (tensor<1x128x12x12xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x12x12xf32>
    %358 = tosa.clamp %357 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x12x12xf32>) -> tensor<1x128x12x12xf32>
    %359 = tosa.transpose %358, %12 : (tensor<1x128x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x128xf32>
    %360 = tosa.conv2d %359, %50, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x128xf32>, tensor<192x1x7x128xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %361 = tosa.transpose %360, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %362 = tosa.sub %361, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %363 = tosa.mul %362, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %364 = tosa.mul %363, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %365 = tosa.add %364, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %366 = tosa.clamp %365 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %367 = tosa.avg_pool2d %304 {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>) -> tensor<1x12x12x768xf32>
    %368 = tosa.conv2d %367, %43, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %369 = tosa.transpose %368, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %370 = tosa.sub %369, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %371 = tosa.mul %370, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %372 = tosa.mul %371, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %373 = tosa.add %372, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %374 = tosa.clamp %373 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %inserted_slice_19 = tensor.insert_slice %311 into %cst_1[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_20 = tensor.insert_slice %335 into %inserted_slice_19[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_21 = tensor.insert_slice %366 into %inserted_slice_20[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_22 = tensor.insert_slice %374 into %inserted_slice_21[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %375 = tosa.transpose %inserted_slice_22, %12 : (tensor<1x768x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x768xf32>
    %376 = tosa.conv2d %375, %43, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %377 = tosa.transpose %376, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %378 = tosa.sub %377, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %379 = tosa.mul %378, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %380 = tosa.mul %379, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %381 = tosa.add %380, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %382 = tosa.clamp %381 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %383 = tosa.conv2d %375, %51, %52 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<160x1x1x768xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %384 = tosa.transpose %383, %14 : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %385 = tosa.sub %384, %53 : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %386 = tosa.rsqrt %2 : (tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %387 = tosa.mul %385, %386 {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %388 = tosa.mul %387, %53 {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %389 = tosa.add %388, %53 : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %390 = tosa.clamp %389 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %391 = tosa.transpose %390, %12 : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %392 = tosa.conv2d %391, %54, %52 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %393 = tosa.transpose %392, %14 : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %394 = tosa.sub %393, %53 : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %395 = tosa.mul %394, %386 {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %396 = tosa.mul %395, %53 {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %397 = tosa.add %396, %53 : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %398 = tosa.clamp %397 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %399 = tosa.transpose %398, %12 : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %400 = tosa.conv2d %399, %55, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<192x7x1x160xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %401 = tosa.transpose %400, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %402 = tosa.sub %401, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %403 = tosa.mul %402, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %404 = tosa.mul %403, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %405 = tosa.add %404, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %406 = tosa.clamp %405 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %407 = tosa.conv2d %391, %56, %52 {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %408 = tosa.transpose %407, %14 : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %409 = tosa.sub %408, %53 : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %410 = tosa.mul %409, %386 {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %411 = tosa.mul %410, %53 {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %412 = tosa.add %411, %53 : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %413 = tosa.clamp %412 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %414 = tosa.transpose %413, %12 : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %415 = tosa.conv2d %414, %54, %52 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %416 = tosa.transpose %415, %14 : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %417 = tosa.sub %416, %53 : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %418 = tosa.mul %417, %386 {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %419 = tosa.mul %418, %53 {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %420 = tosa.add %419, %53 : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %421 = tosa.clamp %420 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %422 = tosa.transpose %421, %12 : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %423 = tosa.conv2d %422, %56, %52 {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %424 = tosa.transpose %423, %14 : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %425 = tosa.sub %424, %53 : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %426 = tosa.mul %425, %386 {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %427 = tosa.mul %426, %53 {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %428 = tosa.add %427, %53 : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %429 = tosa.clamp %428 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %430 = tosa.transpose %429, %12 : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %431 = tosa.conv2d %430, %57, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<192x1x7x160xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %432 = tosa.transpose %431, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %433 = tosa.sub %432, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %434 = tosa.mul %433, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %435 = tosa.mul %434, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %436 = tosa.add %435, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %437 = tosa.clamp %436 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %438 = tosa.avg_pool2d %375 {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>) -> tensor<1x12x12x768xf32>
    %439 = tosa.conv2d %438, %43, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %440 = tosa.transpose %439, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %441 = tosa.sub %440, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %442 = tosa.mul %441, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %443 = tosa.mul %442, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %444 = tosa.add %443, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %445 = tosa.clamp %444 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %inserted_slice_23 = tensor.insert_slice %382 into %cst_1[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_24 = tensor.insert_slice %406 into %inserted_slice_23[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_25 = tensor.insert_slice %437 into %inserted_slice_24[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_26 = tensor.insert_slice %445 into %inserted_slice_25[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %446 = tosa.transpose %inserted_slice_26, %12 : (tensor<1x768x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x768xf32>
    %447 = tosa.conv2d %446, %43, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %448 = tosa.transpose %447, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %449 = tosa.sub %448, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %450 = tosa.mul %449, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %451 = tosa.mul %450, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %452 = tosa.add %451, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %453 = tosa.clamp %452 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %454 = tosa.conv2d %446, %51, %52 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<160x1x1x768xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %455 = tosa.transpose %454, %14 : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %456 = tosa.sub %455, %53 : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %457 = tosa.mul %456, %386 {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %458 = tosa.mul %457, %53 {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %459 = tosa.add %458, %53 : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %460 = tosa.clamp %459 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %461 = tosa.transpose %460, %12 : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %462 = tosa.conv2d %461, %54, %52 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %463 = tosa.transpose %462, %14 : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %464 = tosa.sub %463, %53 : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %465 = tosa.mul %464, %386 {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %466 = tosa.mul %465, %53 {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %467 = tosa.add %466, %53 : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %468 = tosa.clamp %467 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %469 = tosa.transpose %468, %12 : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %470 = tosa.conv2d %469, %55, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<192x7x1x160xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %471 = tosa.transpose %470, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %472 = tosa.sub %471, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %473 = tosa.mul %472, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %474 = tosa.mul %473, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %475 = tosa.add %474, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %476 = tosa.clamp %475 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %477 = tosa.conv2d %461, %56, %52 {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %478 = tosa.transpose %477, %14 : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %479 = tosa.sub %478, %53 : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %480 = tosa.mul %479, %386 {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %481 = tosa.mul %480, %53 {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %482 = tosa.add %481, %53 : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %483 = tosa.clamp %482 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %484 = tosa.transpose %483, %12 : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %485 = tosa.conv2d %484, %54, %52 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x1x7x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %486 = tosa.transpose %485, %14 : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %487 = tosa.sub %486, %53 : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %488 = tosa.mul %487, %386 {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %489 = tosa.mul %488, %53 {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %490 = tosa.add %489, %53 : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %491 = tosa.clamp %490 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %492 = tosa.transpose %491, %12 : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %493 = tosa.conv2d %492, %56, %52 {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<160x7x1x160xf32>, tensor<160xf32>) -> tensor<1x12x12x160xf32>
    %494 = tosa.transpose %493, %14 : (tensor<1x12x12x160xf32>, tensor<4xi64>) -> tensor<1x160x12x12xf32>
    %495 = tosa.sub %494, %53 : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %496 = tosa.mul %495, %386 {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %497 = tosa.mul %496, %53 {shift = 0 : i8} : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %498 = tosa.add %497, %53 : (tensor<1x160x12x12xf32>, tensor<1x160x1x1xf32>) -> tensor<1x160x12x12xf32>
    %499 = tosa.clamp %498 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x160x12x12xf32>) -> tensor<1x160x12x12xf32>
    %500 = tosa.transpose %499, %12 : (tensor<1x160x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x160xf32>
    %501 = tosa.conv2d %500, %57, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x160xf32>, tensor<192x1x7x160xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %502 = tosa.transpose %501, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %503 = tosa.sub %502, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %504 = tosa.mul %503, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %505 = tosa.mul %504, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %506 = tosa.add %505, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %507 = tosa.clamp %506 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %508 = tosa.avg_pool2d %446 {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>) -> tensor<1x12x12x768xf32>
    %509 = tosa.conv2d %508, %43, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %510 = tosa.transpose %509, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %511 = tosa.sub %510, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %512 = tosa.mul %511, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %513 = tosa.mul %512, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %514 = tosa.add %513, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %515 = tosa.clamp %514 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %inserted_slice_27 = tensor.insert_slice %453 into %cst_1[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_28 = tensor.insert_slice %476 into %inserted_slice_27[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_29 = tensor.insert_slice %507 into %inserted_slice_28[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_30 = tensor.insert_slice %515 into %inserted_slice_29[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %516 = tosa.transpose %inserted_slice_30, %12 : (tensor<1x768x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x768xf32>
    %517 = tosa.conv2d %516, %43, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %518 = tosa.transpose %517, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %519 = tosa.sub %518, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %520 = tosa.mul %519, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %521 = tosa.mul %520, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %522 = tosa.add %521, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %523 = tosa.clamp %522 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %524 = tosa.transpose %523, %12 : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %525 = tosa.conv2d %524, %58, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %526 = tosa.transpose %525, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %527 = tosa.sub %526, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %528 = tosa.mul %527, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %529 = tosa.mul %528, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %530 = tosa.add %529, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %531 = tosa.clamp %530 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %532 = tosa.transpose %531, %12 : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %533 = tosa.conv2d %532, %59, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %534 = tosa.transpose %533, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %535 = tosa.sub %534, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %536 = tosa.mul %535, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %537 = tosa.mul %536, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %538 = tosa.add %537, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %539 = tosa.clamp %538 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %540 = tosa.conv2d %524, %59, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %541 = tosa.transpose %540, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %542 = tosa.sub %541, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %543 = tosa.mul %542, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %544 = tosa.mul %543, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %545 = tosa.add %544, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %546 = tosa.clamp %545 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %547 = tosa.transpose %546, %12 : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %548 = tosa.conv2d %547, %58, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %549 = tosa.transpose %548, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %550 = tosa.sub %549, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %551 = tosa.mul %550, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %552 = tosa.mul %551, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %553 = tosa.add %552, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %554 = tosa.clamp %553 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %555 = tosa.transpose %554, %12 : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %556 = tosa.conv2d %555, %59, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %557 = tosa.transpose %556, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %558 = tosa.sub %557, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %559 = tosa.mul %558, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %560 = tosa.mul %559, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %561 = tosa.add %560, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %562 = tosa.clamp %561 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %563 = tosa.transpose %562, %12 : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %564 = tosa.conv2d %563, %58, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %565 = tosa.transpose %564, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %566 = tosa.sub %565, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %567 = tosa.mul %566, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %568 = tosa.mul %567, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %569 = tosa.add %568, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %570 = tosa.clamp %569 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %571 = tosa.avg_pool2d %516 {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>) -> tensor<1x12x12x768xf32>
    %572 = tosa.conv2d %571, %43, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %573 = tosa.transpose %572, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %574 = tosa.sub %573, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %575 = tosa.mul %574, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %576 = tosa.mul %575, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %577 = tosa.add %576, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %578 = tosa.clamp %577 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %inserted_slice_31 = tensor.insert_slice %523 into %cst_1[0, 0, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_32 = tensor.insert_slice %539 into %inserted_slice_31[0, 192, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_33 = tensor.insert_slice %570 into %inserted_slice_32[0, 384, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %inserted_slice_34 = tensor.insert_slice %578 into %inserted_slice_33[0, 576, 0, 0] [1, 192, 12, 12] [1, 1, 1, 1] : tensor<1x192x12x12xf32> into tensor<1x768x12x12xf32>
    %579 = tosa.transpose %inserted_slice_34, %12 : (tensor<1x768x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x768xf32>
    %580 = tosa.conv2d %579, %43, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x768xf32>, tensor<192x1x1x768xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %581 = tosa.transpose %580, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %582 = tosa.sub %581, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %583 = tosa.mul %582, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %584 = tosa.mul %583, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %585 = tosa.add %584, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %586 = tosa.clamp %585 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %587 = tosa.transpose %586, %12 : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %588 = tosa.conv2d %587, %60, %61 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x12x12x192xf32>, tensor<320x3x3x192xf32>, tensor<320xf32>) -> tensor<1x5x5x320xf32>
    %589 = tosa.transpose %588, %14 : (tensor<1x5x5x320xf32>, tensor<4xi64>) -> tensor<1x320x5x5xf32>
    %590 = tosa.sub %589, %62 : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %591 = tosa.rsqrt %1 : (tensor<1x320x1x1xf32>) -> tensor<1x320x1x1xf32>
    %592 = tosa.mul %590, %591 {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %593 = tosa.mul %592, %62 {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %594 = tosa.add %593, %62 : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %595 = tosa.clamp %594 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    %596 = tosa.conv2d %587, %58, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 3, 3>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x1x7x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %597 = tosa.transpose %596, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %598 = tosa.sub %597, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %599 = tosa.mul %598, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %600 = tosa.mul %599, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %601 = tosa.add %600, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %602 = tosa.clamp %601 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %603 = tosa.transpose %602, %12 : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %604 = tosa.conv2d %603, %59, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x12x12x192xf32>, tensor<192x7x1x192xf32>, tensor<192xf32>) -> tensor<1x12x12x192xf32>
    %605 = tosa.transpose %604, %14 : (tensor<1x12x12x192xf32>, tensor<4xi64>) -> tensor<1x192x12x12xf32>
    %606 = tosa.sub %605, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %607 = tosa.mul %606, %121 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %608 = tosa.mul %607, %25 {shift = 0 : i8} : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %609 = tosa.add %608, %25 : (tensor<1x192x12x12xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x12x12xf32>
    %610 = tosa.clamp %609 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %611 = tosa.transpose %610, %12 : (tensor<1x192x12x12xf32>, tensor<4xi64>) -> tensor<1x12x12x192xf32>
    %612 = tosa.conv2d %611, %63, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x12x12x192xf32>, tensor<192x3x3x192xf32>, tensor<192xf32>) -> tensor<1x5x5x192xf32>
    %613 = tosa.transpose %612, %14 : (tensor<1x5x5x192xf32>, tensor<4xi64>) -> tensor<1x192x5x5xf32>
    %614 = tosa.sub %613, %25 : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %615 = tosa.mul %614, %121 {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %616 = tosa.mul %615, %25 {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %617 = tosa.add %616, %25 : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %618 = tosa.clamp %617 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %619 = tosa.max_pool2d %579 {kernel = array<i64: 3, 3>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x12x12x768xf32>) -> tensor<1x5x5x768xf32>
    %620 = tosa.transpose %619, %14 : (tensor<1x5x5x768xf32>, tensor<4xi64>) -> tensor<1x768x5x5xf32>
    %inserted_slice_35 = tensor.insert_slice %595 into %cst_2[0, 0, 0, 0] [1, 320, 5, 5] [1, 1, 1, 1] : tensor<1x320x5x5xf32> into tensor<1x1280x5x5xf32>
    %inserted_slice_36 = tensor.insert_slice %618 into %inserted_slice_35[0, 320, 0, 0] [1, 192, 5, 5] [1, 1, 1, 1] : tensor<1x192x5x5xf32> into tensor<1x1280x5x5xf32>
    %inserted_slice_37 = tensor.insert_slice %620 into %inserted_slice_36[0, 512, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> into tensor<1x1280x5x5xf32>
    %621 = tosa.transpose %inserted_slice_37, %12 : (tensor<1x1280x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x1280xf32>
    %622 = tosa.conv2d %621, %64, %61 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x1280xf32>, tensor<320x1x1x1280xf32>, tensor<320xf32>) -> tensor<1x5x5x320xf32>
    %623 = tosa.transpose %622, %14 : (tensor<1x5x5x320xf32>, tensor<4xi64>) -> tensor<1x320x5x5xf32>
    %624 = tosa.sub %623, %62 : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %625 = tosa.mul %624, %591 {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %626 = tosa.mul %625, %62 {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %627 = tosa.add %626, %62 : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %628 = tosa.clamp %627 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    %629 = tosa.conv2d %621, %65, %41 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x1280xf32>, tensor<384x1x1x1280xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %630 = tosa.transpose %629, %14 : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %631 = tosa.sub %630, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %632 = tosa.mul %631, %274 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %633 = tosa.mul %632, %42 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %634 = tosa.add %633, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %635 = tosa.clamp %634 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %636 = tosa.transpose %635, %12 : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %637 = tosa.conv2d %636, %66, %41 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %638 = tosa.transpose %637, %14 : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %639 = tosa.sub %638, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %640 = tosa.mul %639, %274 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %641 = tosa.mul %640, %42 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %642 = tosa.add %641, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %643 = tosa.clamp %642 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %644 = tosa.conv2d %636, %67, %41 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %645 = tosa.transpose %644, %14 : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %646 = tosa.sub %645, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %647 = tosa.mul %646, %274 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %648 = tosa.mul %647, %42 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %649 = tosa.add %648, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %650 = tosa.clamp %649 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %inserted_slice_38 = tensor.insert_slice %643 into %cst_3[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %inserted_slice_39 = tensor.insert_slice %650 into %inserted_slice_38[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %651 = tosa.conv2d %621, %68, %69 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x1280xf32>, tensor<448x1x1x1280xf32>, tensor<448xf32>) -> tensor<1x5x5x448xf32>
    %652 = tosa.transpose %651, %14 : (tensor<1x5x5x448xf32>, tensor<4xi64>) -> tensor<1x448x5x5xf32>
    %653 = tosa.sub %652, %70 : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %654 = tosa.rsqrt %0 : (tensor<1x448x1x1xf32>) -> tensor<1x448x1x1xf32>
    %655 = tosa.mul %653, %654 {shift = 0 : i8} : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %656 = tosa.mul %655, %70 {shift = 0 : i8} : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %657 = tosa.add %656, %70 : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %658 = tosa.clamp %657 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x448x5x5xf32>) -> tensor<1x448x5x5xf32>
    %659 = tosa.transpose %658, %12 : (tensor<1x448x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x448xf32>
    %660 = tosa.conv2d %659, %71, %41 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x448xf32>, tensor<384x3x3x448xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %661 = tosa.transpose %660, %14 : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %662 = tosa.sub %661, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %663 = tosa.mul %662, %274 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %664 = tosa.mul %663, %42 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %665 = tosa.add %664, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %666 = tosa.clamp %665 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %667 = tosa.transpose %666, %12 : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %668 = tosa.conv2d %667, %66, %41 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %669 = tosa.transpose %668, %14 : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %670 = tosa.sub %669, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %671 = tosa.mul %670, %274 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %672 = tosa.mul %671, %42 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %673 = tosa.add %672, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %674 = tosa.clamp %673 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %675 = tosa.conv2d %667, %67, %41 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %676 = tosa.transpose %675, %14 : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %677 = tosa.sub %676, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %678 = tosa.mul %677, %274 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %679 = tosa.mul %678, %42 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %680 = tosa.add %679, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %681 = tosa.clamp %680 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %inserted_slice_40 = tensor.insert_slice %674 into %cst_3[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %inserted_slice_41 = tensor.insert_slice %681 into %inserted_slice_40[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %682 = tosa.avg_pool2d %621 {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x1280xf32>) -> tensor<1x5x5x1280xf32>
    %683 = tosa.conv2d %682, %72, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x1280xf32>, tensor<192x1x1x1280xf32>, tensor<192xf32>) -> tensor<1x5x5x192xf32>
    %684 = tosa.transpose %683, %14 : (tensor<1x5x5x192xf32>, tensor<4xi64>) -> tensor<1x192x5x5xf32>
    %685 = tosa.sub %684, %25 : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %686 = tosa.mul %685, %121 {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %687 = tosa.mul %686, %25 {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %688 = tosa.add %687, %25 : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %689 = tosa.clamp %688 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %inserted_slice_42 = tensor.insert_slice %628 into %cst_4[0, 0, 0, 0] [1, 320, 5, 5] [1, 1, 1, 1] : tensor<1x320x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_43 = tensor.insert_slice %inserted_slice_39 into %inserted_slice_42[0, 320, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_44 = tensor.insert_slice %inserted_slice_41 into %inserted_slice_43[0, 1088, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_45 = tensor.insert_slice %689 into %inserted_slice_44[0, 1856, 0, 0] [1, 192, 5, 5] [1, 1, 1, 1] : tensor<1x192x5x5xf32> into tensor<1x2048x5x5xf32>
    %690 = tosa.transpose %inserted_slice_45, %12 : (tensor<1x2048x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x2048xf32>
    %691 = tosa.conv2d %690, %73, %61 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>, tensor<320x1x1x2048xf32>, tensor<320xf32>) -> tensor<1x5x5x320xf32>
    %692 = tosa.transpose %691, %14 : (tensor<1x5x5x320xf32>, tensor<4xi64>) -> tensor<1x320x5x5xf32>
    %693 = tosa.sub %692, %62 : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %694 = tosa.mul %693, %591 {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %695 = tosa.mul %694, %62 {shift = 0 : i8} : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %696 = tosa.add %695, %62 : (tensor<1x320x5x5xf32>, tensor<1x320x1x1xf32>) -> tensor<1x320x5x5xf32>
    %697 = tosa.clamp %696 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x320x5x5xf32>) -> tensor<1x320x5x5xf32>
    %698 = tosa.conv2d %690, %74, %41 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>, tensor<384x1x1x2048xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %699 = tosa.transpose %698, %14 : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %700 = tosa.sub %699, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %701 = tosa.mul %700, %274 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %702 = tosa.mul %701, %42 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %703 = tosa.add %702, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %704 = tosa.clamp %703 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %705 = tosa.transpose %704, %12 : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %706 = tosa.conv2d %705, %66, %41 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %707 = tosa.transpose %706, %14 : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %708 = tosa.sub %707, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %709 = tosa.mul %708, %274 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %710 = tosa.mul %709, %42 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %711 = tosa.add %710, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %712 = tosa.clamp %711 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %713 = tosa.conv2d %705, %67, %41 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %714 = tosa.transpose %713, %14 : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %715 = tosa.sub %714, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %716 = tosa.mul %715, %274 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %717 = tosa.mul %716, %42 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %718 = tosa.add %717, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %719 = tosa.clamp %718 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %inserted_slice_46 = tensor.insert_slice %712 into %cst_3[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %inserted_slice_47 = tensor.insert_slice %719 into %inserted_slice_46[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %720 = tosa.conv2d %690, %75, %69 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>, tensor<448x1x1x2048xf32>, tensor<448xf32>) -> tensor<1x5x5x448xf32>
    %721 = tosa.transpose %720, %14 : (tensor<1x5x5x448xf32>, tensor<4xi64>) -> tensor<1x448x5x5xf32>
    %722 = tosa.sub %721, %70 : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %723 = tosa.mul %722, %654 {shift = 0 : i8} : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %724 = tosa.mul %723, %70 {shift = 0 : i8} : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %725 = tosa.add %724, %70 : (tensor<1x448x5x5xf32>, tensor<1x448x1x1xf32>) -> tensor<1x448x5x5xf32>
    %726 = tosa.clamp %725 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x448x5x5xf32>) -> tensor<1x448x5x5xf32>
    %727 = tosa.transpose %726, %12 : (tensor<1x448x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x448xf32>
    %728 = tosa.conv2d %727, %71, %41 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x448xf32>, tensor<384x3x3x448xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %729 = tosa.transpose %728, %14 : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %730 = tosa.sub %729, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %731 = tosa.mul %730, %274 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %732 = tosa.mul %731, %42 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %733 = tosa.add %732, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %734 = tosa.clamp %733 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %735 = tosa.transpose %734, %12 : (tensor<1x384x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x384xf32>
    %736 = tosa.conv2d %735, %66, %41 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x1x3x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %737 = tosa.transpose %736, %14 : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %738 = tosa.sub %737, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %739 = tosa.mul %738, %274 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %740 = tosa.mul %739, %42 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %741 = tosa.add %740, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %742 = tosa.clamp %741 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %743 = tosa.conv2d %735, %67, %41 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x384xf32>, tensor<384x3x1x384xf32>, tensor<384xf32>) -> tensor<1x5x5x384xf32>
    %744 = tosa.transpose %743, %14 : (tensor<1x5x5x384xf32>, tensor<4xi64>) -> tensor<1x384x5x5xf32>
    %745 = tosa.sub %744, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %746 = tosa.mul %745, %274 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %747 = tosa.mul %746, %42 {shift = 0 : i8} : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %748 = tosa.add %747, %42 : (tensor<1x384x5x5xf32>, tensor<1x384x1x1xf32>) -> tensor<1x384x5x5xf32>
    %749 = tosa.clamp %748 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x384x5x5xf32>) -> tensor<1x384x5x5xf32>
    %inserted_slice_48 = tensor.insert_slice %742 into %cst_3[0, 0, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %inserted_slice_49 = tensor.insert_slice %749 into %inserted_slice_48[0, 384, 0, 0] [1, 384, 5, 5] [1, 1, 1, 1] : tensor<1x384x5x5xf32> into tensor<1x768x5x5xf32>
    %750 = tosa.avg_pool2d %690 {acc_type = f32, kernel = array<i64: 3, 3>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>) -> tensor<1x5x5x2048xf32>
    %751 = tosa.conv2d %750, %76, %24 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>, tensor<192x1x1x2048xf32>, tensor<192xf32>) -> tensor<1x5x5x192xf32>
    %752 = tosa.transpose %751, %14 : (tensor<1x5x5x192xf32>, tensor<4xi64>) -> tensor<1x192x5x5xf32>
    %753 = tosa.sub %752, %25 : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %754 = tosa.mul %753, %121 {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %755 = tosa.mul %754, %25 {shift = 0 : i8} : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %756 = tosa.add %755, %25 : (tensor<1x192x5x5xf32>, tensor<1x192x1x1xf32>) -> tensor<1x192x5x5xf32>
    %757 = tosa.clamp %756 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %inserted_slice_50 = tensor.insert_slice %697 into %cst_4[0, 0, 0, 0] [1, 320, 5, 5] [1, 1, 1, 1] : tensor<1x320x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_51 = tensor.insert_slice %inserted_slice_47 into %inserted_slice_50[0, 320, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_52 = tensor.insert_slice %inserted_slice_49 into %inserted_slice_51[0, 1088, 0, 0] [1, 768, 5, 5] [1, 1, 1, 1] : tensor<1x768x5x5xf32> into tensor<1x2048x5x5xf32>
    %inserted_slice_53 = tensor.insert_slice %757 into %inserted_slice_52[0, 1856, 0, 0] [1, 192, 5, 5] [1, 1, 1, 1] : tensor<1x192x5x5xf32> into tensor<1x2048x5x5xf32>
    %758 = tosa.transpose %inserted_slice_53, %12 : (tensor<1x2048x5x5xf32>, tensor<4xi64>) -> tensor<1x5x5x2048xf32>
    %759 = tosa.avg_pool2d %758 {acc_type = f32, kernel = array<i64: 5, 5>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x5x5x2048xf32>) -> tensor<1x1x1x2048xf32>
    %760 = tosa.reshape %759 {new_shape = array<i64: 1, 2048, 1, 1>} : (tensor<1x1x1x2048xf32>) -> tensor<1x2048x1x1xf32>
    %761 = tosa.select %77, %760, %78 : (tensor<1x2048x1x1xi1>, tensor<1x2048x1x1xf32>, tensor<f32>) -> tensor<1x2048x1x1xf32>
    %762 = tosa.reshape %761 {new_shape = array<i64: 1, 1, 2048>} : (tensor<1x2048x1x1xf32>) -> tensor<1x1x2048xf32>
    %763 = tosa.matmul %762, %79 : (tensor<1x1x2048xf32>, tensor<1x2048x1000xf32>) -> tensor<1x1x1000xf32>
    %764 = tosa.add %763, %80 : (tensor<1x1x1000xf32>, tensor<1000xf32>) -> tensor<1x1x1000xf32>
    %765 = tosa.reshape %764 {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    return %765 : tensor<1x1000xf32>
  }
}

