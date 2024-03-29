module attributes {torch.debug_module_name = "ResNet"} {
  func.func @forward(%arg0: tensor<1x224x224x3xf32>) -> tensor<1x1000xf32> {
    %0 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<64xf32>}> : () -> tensor<64xf32>
    %1 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %2 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %3 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<256xf32>}> : () -> tensor<256xf32>
    %4 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<128xf32>}> : () -> tensor<128xf32>
    %5 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<512xf32>}> : () -> tensor<512xf32>
    %6 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<1024xf32>}> : () -> tensor<1024xf32>
    %7 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<2048xf32>}> : () -> tensor<2048xf32>
    %8 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x1000xf32>}> : () -> tensor<1x1000xf32>
    %9 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x2048x1000xf32>}> : () -> tensor<1x2048x1000xf32>
    %10 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<512x1x1x2048xf32>}> : () -> tensor<512x1x1x2048xf32>
    %11 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<2048x1x1x1024xf32>}> : () -> tensor<2048x1x1x1024xf32>
    %12 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<2048x1x1xf32>}> : () -> tensor<2048x1x1xf32>
    %13 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x2048x1x1xf32>}> : () -> tensor<1x2048x1x1xf32>
    %14 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<2048x1x1x512xf32>}> : () -> tensor<2048x1x1x512xf32>
    %15 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<512x3x3x512xf32>}> : () -> tensor<512x3x3x512xf32>
    %16 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<512x1x1x1024xf32>}> : () -> tensor<512x1x1x1024xf32>
    %17 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<256x1x1x1024xf32>}> : () -> tensor<256x1x1x1024xf32>
    %18 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1024x1x1x512xf32>}> : () -> tensor<1024x1x1x512xf32>
    %19 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<1024x1x1xf32>}> : () -> tensor<1024x1x1xf32>
    %20 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x1x1x1024xf32>}> : () -> tensor<1x1x1x1024xf32>
    %21 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1024x1x1x256xf32>}> : () -> tensor<1024x1x1x256xf32>
    %22 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<256x3x3x256xf32>}> : () -> tensor<256x3x3x256xf32>
    %23 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<256x1x1x512xf32>}> : () -> tensor<256x1x1x512xf32>
    %24 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x512xf32>}> : () -> tensor<128x1x1x512xf32>
    %25 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<512x1x1x256xf32>}> : () -> tensor<512x1x1x256xf32>
    %26 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<512x1x1xf32>}> : () -> tensor<512x1x1xf32>
    %27 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x1x1x512xf32>}> : () -> tensor<1x1x1x512xf32>
    %28 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<512x1x1x128xf32>}> : () -> tensor<512x1x1x128xf32>
    %29 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x3x3x128xf32>}> : () -> tensor<128x3x3x128xf32>
    %30 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<128x1x1xf32>}> : () -> tensor<128x1x1xf32>
    %31 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x128x1x1xf32>}> : () -> tensor<1x128x1x1xf32>
    %32 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<128x1x1x256xf32>}> : () -> tensor<128x1x1x256xf32>
    %33 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<64x1x1x256xf32>}> : () -> tensor<64x1x1x256xf32>
    %34 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<256x1x1xf32>}> : () -> tensor<256x1x1xf32>
    %35 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x1x1x256xf32>}> : () -> tensor<1x1x1x256xf32>
    %36 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<256x1x1x64xf32>}> : () -> tensor<256x1x1x64xf32>
    %37 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<64x3x3x64xf32>}> : () -> tensor<64x3x3x64xf32>
    %38 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<64x1x1x64xf32>}> : () -> tensor<64x1x1x64xf32>
    %39 = "tosa.const"() <{value = dense<7.778000e-02> : tensor<64x1x1xf32>}> : () -> tensor<64x1x1xf32>
    %40 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<1x1x1x64xf32>}> : () -> tensor<1x1x1x64xf32>
    %41 = "tosa.const"() <{value = dense<7.777000e-02> : tensor<64x7x7x3xf32>}> : () -> tensor<64x7x7x3xf32>
    %42 = tosa.conv2d %arg0, %41, %0 {dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %43 = tosa.sub %42, %40 : (tensor<1x112x112x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x112x112x64xf32>
    %44 = tosa.rsqrt %39 : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %45 = tosa.reshape %44 {new_shape = array<i64: 1, 64, 1, 1>} : (tensor<64x1x1xf32>) -> tensor<1x1x1x64xf32>
    %46 = tosa.mul %43, %45 {shift = 0 : i8} : (tensor<1x112x112x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x112x112x64xf32>
    %47 = tosa.mul %46, %40 {shift = 0 : i8} : (tensor<1x112x112x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x112x112x64xf32>
    %48 = tosa.add %47, %40 : (tensor<1x112x112x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x112x112x64xf32>
    %49 = tosa.clamp %48 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x112x112x64xf32>) -> tensor<1x112x112x64xf32>
    %50 = tosa.max_pool2d %49 {kernel = array<i64: 3, 3>, pad = array<i64: 1, 0, 1, 0>, stride = array<i64: 2, 2>} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    %51 = tosa.conv2d %50, %38, %0 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x1x1x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %52 = tosa.sub %51, %40 : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %53 = tosa.mul %52, %45 {shift = 0 : i8} : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %54 = tosa.mul %53, %40 {shift = 0 : i8} : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %55 = tosa.add %54, %40 : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %56 = tosa.clamp %55 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %57 = tosa.conv2d %56, %37, %0 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %58 = tosa.sub %57, %40 : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %59 = tosa.mul %58, %45 {shift = 0 : i8} : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %60 = tosa.mul %59, %40 {shift = 0 : i8} : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %61 = tosa.add %60, %40 : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %62 = tosa.clamp %61 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %63 = tosa.conv2d %62, %36, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %64 = tosa.sub %63, %35 : (tensor<1x56x56x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x56x56x256xf32>
    %65 = tosa.rsqrt %34 : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %66 = tosa.reshape %65 {new_shape = array<i64: 1, 256, 1, 1>} : (tensor<256x1x1xf32>) -> tensor<1x1x1x256xf32>
    %67 = tosa.mul %64, %66 {shift = 0 : i8} : (tensor<1x56x56x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x56x56x256xf32>
    %68 = tosa.mul %67, %35 {shift = 0 : i8} : (tensor<1x56x56x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x56x56x256xf32>
    %69 = tosa.add %68, %35 : (tensor<1x56x56x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x56x56x256xf32>
    %70 = tosa.conv2d %50, %36, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %71 = tosa.sub %70, %35 : (tensor<1x56x56x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x56x56x256xf32>
    %72 = tosa.mul %71, %66 {shift = 0 : i8} : (tensor<1x56x56x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x56x56x256xf32>
    %73 = tosa.mul %72, %35 {shift = 0 : i8} : (tensor<1x56x56x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x56x56x256xf32>
    %74 = tosa.add %73, %35 : (tensor<1x56x56x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x56x56x256xf32>
    %75 = tosa.add %69, %74 : (tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %76 = tosa.clamp %75 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %77 = tosa.conv2d %76, %33, %0 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %78 = tosa.sub %77, %40 : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %79 = tosa.mul %78, %45 {shift = 0 : i8} : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %80 = tosa.mul %79, %40 {shift = 0 : i8} : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %81 = tosa.add %80, %40 : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %82 = tosa.clamp %81 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %83 = tosa.conv2d %82, %37, %0 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %84 = tosa.sub %83, %40 : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %85 = tosa.mul %84, %45 {shift = 0 : i8} : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %86 = tosa.mul %85, %40 {shift = 0 : i8} : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %87 = tosa.add %86, %40 : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %88 = tosa.clamp %87 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %89 = tosa.conv2d %88, %36, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %90 = tosa.sub %89, %35 : (tensor<1x56x56x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x56x56x256xf32>
    %91 = tosa.mul %90, %66 {shift = 0 : i8} : (tensor<1x56x56x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x56x56x256xf32>
    %92 = tosa.mul %91, %35 {shift = 0 : i8} : (tensor<1x56x56x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x56x56x256xf32>
    %93 = tosa.add %92, %35 : (tensor<1x56x56x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x56x56x256xf32>
    %94 = tosa.add %93, %76 : (tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %95 = tosa.clamp %94 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %96 = tosa.conv2d %95, %33, %0 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<64x1x1x256xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %97 = tosa.sub %96, %40 : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %98 = tosa.mul %97, %45 {shift = 0 : i8} : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %99 = tosa.mul %98, %40 {shift = 0 : i8} : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %100 = tosa.add %99, %40 : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %101 = tosa.clamp %100 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %102 = tosa.conv2d %101, %37, %0 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %103 = tosa.sub %102, %40 : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %104 = tosa.mul %103, %45 {shift = 0 : i8} : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %105 = tosa.mul %104, %40 {shift = 0 : i8} : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %106 = tosa.add %105, %40 : (tensor<1x56x56x64xf32>, tensor<1x1x1x64xf32>) -> tensor<1x56x56x64xf32>
    %107 = tosa.clamp %106 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x56x56x64xf32>) -> tensor<1x56x56x64xf32>
    %108 = tosa.conv2d %107, %36, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x64xf32>, tensor<256x1x1x64xf32>, tensor<256xf32>) -> tensor<1x56x56x256xf32>
    %109 = tosa.sub %108, %35 : (tensor<1x56x56x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x56x56x256xf32>
    %110 = tosa.mul %109, %66 {shift = 0 : i8} : (tensor<1x56x56x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x56x56x256xf32>
    %111 = tosa.mul %110, %35 {shift = 0 : i8} : (tensor<1x56x56x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x56x56x256xf32>
    %112 = tosa.add %111, %35 : (tensor<1x56x56x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x56x56x256xf32>
    %113 = tosa.add %112, %95 : (tensor<1x56x56x256xf32>, tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %114 = tosa.clamp %113 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x56x56x256xf32>) -> tensor<1x56x56x256xf32>
    %115 = tosa.conv2d %114, %32, %4 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x56x56x256xf32>, tensor<128x1x1x256xf32>, tensor<128xf32>) -> tensor<1x56x56x128xf32>
    %116 = tosa.transpose %115, %2 : (tensor<1x56x56x128xf32>, tensor<4xi32>) -> tensor<1x128x56x56xf32>
    %117 = tosa.sub %116, %31 : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %118 = tosa.rsqrt %30 : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %119 = tosa.reshape %118 {new_shape = array<i64: 1, 128, 1, 1>} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %120 = tosa.mul %117, %119 {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %121 = tosa.mul %120, %31 {shift = 0 : i8} : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %122 = tosa.add %121, %31 : (tensor<1x128x56x56xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %123 = tosa.clamp %122 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %124 = tosa.transpose %123, %1 : (tensor<1x128x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x128xf32>
    %125 = tosa.conv2d %124, %29, %4 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x56x56x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %126 = tosa.transpose %125, %2 : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %127 = tosa.sub %126, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %128 = tosa.mul %127, %119 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %129 = tosa.mul %128, %31 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %130 = tosa.add %129, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %131 = tosa.clamp %130 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %132 = tosa.transpose %131, %1 : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %133 = tosa.conv2d %132, %28, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %134 = tosa.sub %133, %27 : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %135 = tosa.rsqrt %26 : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %136 = tosa.reshape %135 {new_shape = array<i64: 1, 512, 1, 1>} : (tensor<512x1x1xf32>) -> tensor<1x1x1x512xf32>
    %137 = tosa.mul %134, %136 {shift = 0 : i8} : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %138 = tosa.mul %137, %27 {shift = 0 : i8} : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %139 = tosa.add %138, %27 : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %140 = tosa.conv2d %114, %25, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x56x56x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %141 = tosa.sub %140, %27 : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %142 = tosa.mul %141, %136 {shift = 0 : i8} : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %143 = tosa.mul %142, %27 {shift = 0 : i8} : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %144 = tosa.add %143, %27 : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %145 = tosa.add %139, %144 : (tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %146 = tosa.clamp %145 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %147 = tosa.conv2d %146, %24, %4 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %148 = tosa.transpose %147, %2 : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %149 = tosa.sub %148, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %150 = tosa.mul %149, %119 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %151 = tosa.mul %150, %31 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %152 = tosa.add %151, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %153 = tosa.clamp %152 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %154 = tosa.transpose %153, %1 : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %155 = tosa.conv2d %154, %29, %4 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %156 = tosa.transpose %155, %2 : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %157 = tosa.sub %156, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %158 = tosa.mul %157, %119 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %159 = tosa.mul %158, %31 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %160 = tosa.add %159, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %161 = tosa.clamp %160 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %162 = tosa.transpose %161, %1 : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %163 = tosa.conv2d %162, %28, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %164 = tosa.sub %163, %27 : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %165 = tosa.mul %164, %136 {shift = 0 : i8} : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %166 = tosa.mul %165, %27 {shift = 0 : i8} : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %167 = tosa.add %166, %27 : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %168 = tosa.add %167, %146 : (tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %169 = tosa.clamp %168 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %170 = tosa.conv2d %169, %24, %4 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %171 = tosa.transpose %170, %2 : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %172 = tosa.sub %171, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %173 = tosa.mul %172, %119 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %174 = tosa.mul %173, %31 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %175 = tosa.add %174, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %176 = tosa.clamp %175 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %177 = tosa.transpose %176, %1 : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %178 = tosa.conv2d %177, %29, %4 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %179 = tosa.transpose %178, %2 : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %180 = tosa.sub %179, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %181 = tosa.mul %180, %119 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %182 = tosa.mul %181, %31 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %183 = tosa.add %182, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %184 = tosa.clamp %183 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %185 = tosa.transpose %184, %1 : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %186 = tosa.conv2d %185, %28, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %187 = tosa.sub %186, %27 : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %188 = tosa.mul %187, %136 {shift = 0 : i8} : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %189 = tosa.mul %188, %27 {shift = 0 : i8} : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %190 = tosa.add %189, %27 : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %191 = tosa.add %190, %169 : (tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %192 = tosa.clamp %191 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %193 = tosa.conv2d %192, %24, %4 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %194 = tosa.transpose %193, %2 : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %195 = tosa.sub %194, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %196 = tosa.mul %195, %119 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %197 = tosa.mul %196, %31 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %198 = tosa.add %197, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %199 = tosa.clamp %198 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %200 = tosa.transpose %199, %1 : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %201 = tosa.conv2d %200, %29, %4 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %202 = tosa.transpose %201, %2 : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %203 = tosa.sub %202, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %204 = tosa.mul %203, %119 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %205 = tosa.mul %204, %31 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %206 = tosa.add %205, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %207 = tosa.clamp %206 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %208 = tosa.transpose %207, %1 : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %209 = tosa.conv2d %208, %28, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %210 = tosa.sub %209, %27 : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %211 = tosa.mul %210, %136 {shift = 0 : i8} : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %212 = tosa.mul %211, %27 {shift = 0 : i8} : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %213 = tosa.add %212, %27 : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %214 = tosa.add %213, %192 : (tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %215 = tosa.clamp %214 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %216 = tosa.conv2d %215, %23, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %217 = tosa.sub %216, %35 : (tensor<1x28x28x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x28x28x256xf32>
    %218 = tosa.mul %217, %66 {shift = 0 : i8} : (tensor<1x28x28x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x28x28x256xf32>
    %219 = tosa.mul %218, %35 {shift = 0 : i8} : (tensor<1x28x28x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x28x28x256xf32>
    %220 = tosa.add %219, %35 : (tensor<1x28x28x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x28x28x256xf32>
    %221 = tosa.clamp %220 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x28x28x256xf32>) -> tensor<1x28x28x256xf32>
    %222 = tosa.conv2d %221, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %223 = tosa.sub %222, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %224 = tosa.mul %223, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %225 = tosa.mul %224, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %226 = tosa.add %225, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %227 = tosa.clamp %226 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %228 = tosa.conv2d %227, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %229 = tosa.sub %228, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %230 = tosa.rsqrt %19 : (tensor<1024x1x1xf32>) -> tensor<1024x1x1xf32>
    %231 = tosa.reshape %230 {new_shape = array<i64: 1, 1024, 1, 1>} : (tensor<1024x1x1xf32>) -> tensor<1x1x1x1024xf32>
    %232 = tosa.mul %229, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %233 = tosa.mul %232, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %234 = tosa.add %233, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %235 = tosa.conv2d %215, %18, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %236 = tosa.sub %235, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %237 = tosa.mul %236, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %238 = tosa.mul %237, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %239 = tosa.add %238, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %240 = tosa.add %234, %239 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %241 = tosa.clamp %240 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %242 = tosa.conv2d %241, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %243 = tosa.sub %242, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %244 = tosa.mul %243, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %245 = tosa.mul %244, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %246 = tosa.add %245, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %247 = tosa.clamp %246 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %248 = tosa.conv2d %247, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %249 = tosa.sub %248, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %250 = tosa.mul %249, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %251 = tosa.mul %250, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %252 = tosa.add %251, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %253 = tosa.clamp %252 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %254 = tosa.conv2d %253, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %255 = tosa.sub %254, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %256 = tosa.mul %255, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %257 = tosa.mul %256, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %258 = tosa.add %257, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %259 = tosa.add %258, %241 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %260 = tosa.clamp %259 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %261 = tosa.conv2d %260, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %262 = tosa.sub %261, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %263 = tosa.mul %262, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %264 = tosa.mul %263, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %265 = tosa.add %264, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %266 = tosa.clamp %265 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %267 = tosa.conv2d %266, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %268 = tosa.sub %267, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %269 = tosa.mul %268, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %270 = tosa.mul %269, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %271 = tosa.add %270, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %272 = tosa.clamp %271 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %273 = tosa.conv2d %272, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %274 = tosa.sub %273, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %275 = tosa.mul %274, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %276 = tosa.mul %275, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %277 = tosa.add %276, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %278 = tosa.add %277, %260 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %279 = tosa.clamp %278 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %280 = tosa.conv2d %279, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %281 = tosa.sub %280, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %282 = tosa.mul %281, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %283 = tosa.mul %282, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %284 = tosa.add %283, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %285 = tosa.clamp %284 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %286 = tosa.conv2d %285, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %287 = tosa.sub %286, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %288 = tosa.mul %287, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %289 = tosa.mul %288, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %290 = tosa.add %289, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %291 = tosa.clamp %290 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %292 = tosa.conv2d %291, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %293 = tosa.sub %292, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %294 = tosa.mul %293, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %295 = tosa.mul %294, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %296 = tosa.add %295, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %297 = tosa.add %296, %279 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %298 = tosa.clamp %297 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %299 = tosa.conv2d %298, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %300 = tosa.sub %299, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %301 = tosa.mul %300, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %302 = tosa.mul %301, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %303 = tosa.add %302, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %304 = tosa.clamp %303 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %305 = tosa.conv2d %304, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %306 = tosa.sub %305, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %307 = tosa.mul %306, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %308 = tosa.mul %307, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %309 = tosa.add %308, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %310 = tosa.clamp %309 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %311 = tosa.conv2d %310, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %312 = tosa.sub %311, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %313 = tosa.mul %312, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %314 = tosa.mul %313, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %315 = tosa.add %314, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %316 = tosa.add %315, %298 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %317 = tosa.clamp %316 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %318 = tosa.conv2d %317, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %319 = tosa.sub %318, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %320 = tosa.mul %319, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %321 = tosa.mul %320, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %322 = tosa.add %321, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %323 = tosa.clamp %322 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %324 = tosa.conv2d %323, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %325 = tosa.sub %324, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %326 = tosa.mul %325, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %327 = tosa.mul %326, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %328 = tosa.add %327, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %329 = tosa.clamp %328 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %330 = tosa.conv2d %329, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %331 = tosa.sub %330, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %332 = tosa.mul %331, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %333 = tosa.mul %332, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %334 = tosa.add %333, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %335 = tosa.add %334, %317 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %336 = tosa.clamp %335 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %337 = tosa.conv2d %336, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %338 = tosa.sub %337, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %339 = tosa.mul %338, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %340 = tosa.mul %339, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %341 = tosa.add %340, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %342 = tosa.clamp %341 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %343 = tosa.conv2d %342, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %344 = tosa.sub %343, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %345 = tosa.mul %344, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %346 = tosa.mul %345, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %347 = tosa.add %346, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %348 = tosa.clamp %347 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %349 = tosa.conv2d %348, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %350 = tosa.sub %349, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %351 = tosa.mul %350, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %352 = tosa.mul %351, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %353 = tosa.add %352, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %354 = tosa.add %353, %336 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %355 = tosa.clamp %354 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %356 = tosa.conv2d %355, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %357 = tosa.sub %356, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %358 = tosa.mul %357, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %359 = tosa.mul %358, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %360 = tosa.add %359, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %361 = tosa.clamp %360 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %362 = tosa.conv2d %361, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %363 = tosa.sub %362, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %364 = tosa.mul %363, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %365 = tosa.mul %364, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %366 = tosa.add %365, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %367 = tosa.clamp %366 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %368 = tosa.conv2d %367, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %369 = tosa.sub %368, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %370 = tosa.mul %369, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %371 = tosa.mul %370, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %372 = tosa.add %371, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %373 = tosa.add %372, %355 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %374 = tosa.clamp %373 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %375 = tosa.conv2d %374, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %376 = tosa.sub %375, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %377 = tosa.mul %376, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %378 = tosa.mul %377, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %379 = tosa.add %378, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %380 = tosa.clamp %379 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %381 = tosa.conv2d %380, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %382 = tosa.sub %381, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %383 = tosa.mul %382, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %384 = tosa.mul %383, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %385 = tosa.add %384, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %386 = tosa.clamp %385 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %387 = tosa.conv2d %386, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %388 = tosa.sub %387, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %389 = tosa.mul %388, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %390 = tosa.mul %389, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %391 = tosa.add %390, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %392 = tosa.add %391, %374 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %393 = tosa.clamp %392 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %394 = tosa.conv2d %393, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %395 = tosa.sub %394, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %396 = tosa.mul %395, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %397 = tosa.mul %396, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %398 = tosa.add %397, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %399 = tosa.clamp %398 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %400 = tosa.conv2d %399, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %401 = tosa.sub %400, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %402 = tosa.mul %401, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %403 = tosa.mul %402, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %404 = tosa.add %403, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %405 = tosa.clamp %404 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %406 = tosa.conv2d %405, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %407 = tosa.sub %406, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %408 = tosa.mul %407, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %409 = tosa.mul %408, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %410 = tosa.add %409, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %411 = tosa.add %410, %393 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %412 = tosa.clamp %411 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %413 = tosa.conv2d %412, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %414 = tosa.sub %413, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %415 = tosa.mul %414, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %416 = tosa.mul %415, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %417 = tosa.add %416, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %418 = tosa.clamp %417 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %419 = tosa.conv2d %418, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %420 = tosa.sub %419, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %421 = tosa.mul %420, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %422 = tosa.mul %421, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %423 = tosa.add %422, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %424 = tosa.clamp %423 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %425 = tosa.conv2d %424, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %426 = tosa.sub %425, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %427 = tosa.mul %426, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %428 = tosa.mul %427, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %429 = tosa.add %428, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %430 = tosa.add %429, %412 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %431 = tosa.clamp %430 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %432 = tosa.conv2d %431, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %433 = tosa.sub %432, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %434 = tosa.mul %433, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %435 = tosa.mul %434, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %436 = tosa.add %435, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %437 = tosa.clamp %436 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %438 = tosa.conv2d %437, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %439 = tosa.sub %438, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %440 = tosa.mul %439, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %441 = tosa.mul %440, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %442 = tosa.add %441, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %443 = tosa.clamp %442 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %444 = tosa.conv2d %443, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %445 = tosa.sub %444, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %446 = tosa.mul %445, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %447 = tosa.mul %446, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %448 = tosa.add %447, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %449 = tosa.add %448, %431 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %450 = tosa.clamp %449 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %451 = tosa.conv2d %450, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %452 = tosa.sub %451, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %453 = tosa.mul %452, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %454 = tosa.mul %453, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %455 = tosa.add %454, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %456 = tosa.clamp %455 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %457 = tosa.conv2d %456, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %458 = tosa.sub %457, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %459 = tosa.mul %458, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %460 = tosa.mul %459, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %461 = tosa.add %460, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %462 = tosa.clamp %461 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %463 = tosa.conv2d %462, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %464 = tosa.sub %463, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %465 = tosa.mul %464, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %466 = tosa.mul %465, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %467 = tosa.add %466, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %468 = tosa.add %467, %450 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %469 = tosa.clamp %468 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %470 = tosa.conv2d %469, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %471 = tosa.sub %470, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %472 = tosa.mul %471, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %473 = tosa.mul %472, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %474 = tosa.add %473, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %475 = tosa.clamp %474 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %476 = tosa.conv2d %475, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %477 = tosa.sub %476, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %478 = tosa.mul %477, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %479 = tosa.mul %478, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %480 = tosa.add %479, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %481 = tosa.clamp %480 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %482 = tosa.conv2d %481, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %483 = tosa.sub %482, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %484 = tosa.mul %483, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %485 = tosa.mul %484, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %486 = tosa.add %485, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %487 = tosa.add %486, %469 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %488 = tosa.clamp %487 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %489 = tosa.conv2d %488, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %490 = tosa.sub %489, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %491 = tosa.mul %490, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %492 = tosa.mul %491, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %493 = tosa.add %492, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %494 = tosa.clamp %493 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %495 = tosa.conv2d %494, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %496 = tosa.sub %495, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %497 = tosa.mul %496, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %498 = tosa.mul %497, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %499 = tosa.add %498, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %500 = tosa.clamp %499 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %501 = tosa.conv2d %500, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %502 = tosa.sub %501, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %503 = tosa.mul %502, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %504 = tosa.mul %503, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %505 = tosa.add %504, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %506 = tosa.add %505, %488 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %507 = tosa.clamp %506 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %508 = tosa.conv2d %507, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %509 = tosa.sub %508, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %510 = tosa.mul %509, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %511 = tosa.mul %510, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %512 = tosa.add %511, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %513 = tosa.clamp %512 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %514 = tosa.conv2d %513, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %515 = tosa.sub %514, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %516 = tosa.mul %515, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %517 = tosa.mul %516, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %518 = tosa.add %517, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %519 = tosa.clamp %518 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %520 = tosa.conv2d %519, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %521 = tosa.sub %520, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %522 = tosa.mul %521, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %523 = tosa.mul %522, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %524 = tosa.add %523, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %525 = tosa.add %524, %507 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %526 = tosa.clamp %525 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %527 = tosa.conv2d %526, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %528 = tosa.sub %527, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %529 = tosa.mul %528, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %530 = tosa.mul %529, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %531 = tosa.add %530, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %532 = tosa.clamp %531 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %533 = tosa.conv2d %532, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %534 = tosa.sub %533, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %535 = tosa.mul %534, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %536 = tosa.mul %535, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %537 = tosa.add %536, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %538 = tosa.clamp %537 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %539 = tosa.conv2d %538, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %540 = tosa.sub %539, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %541 = tosa.mul %540, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %542 = tosa.mul %541, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %543 = tosa.add %542, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %544 = tosa.add %543, %526 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %545 = tosa.clamp %544 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %546 = tosa.conv2d %545, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %547 = tosa.sub %546, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %548 = tosa.mul %547, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %549 = tosa.mul %548, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %550 = tosa.add %549, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %551 = tosa.clamp %550 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %552 = tosa.conv2d %551, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %553 = tosa.sub %552, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %554 = tosa.mul %553, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %555 = tosa.mul %554, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %556 = tosa.add %555, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %557 = tosa.clamp %556 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %558 = tosa.conv2d %557, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %559 = tosa.sub %558, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %560 = tosa.mul %559, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %561 = tosa.mul %560, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %562 = tosa.add %561, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %563 = tosa.add %562, %545 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %564 = tosa.clamp %563 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %565 = tosa.conv2d %564, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %566 = tosa.sub %565, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %567 = tosa.mul %566, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %568 = tosa.mul %567, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %569 = tosa.add %568, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %570 = tosa.clamp %569 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %571 = tosa.conv2d %570, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %572 = tosa.sub %571, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %573 = tosa.mul %572, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %574 = tosa.mul %573, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %575 = tosa.add %574, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %576 = tosa.clamp %575 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %577 = tosa.conv2d %576, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %578 = tosa.sub %577, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %579 = tosa.mul %578, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %580 = tosa.mul %579, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %581 = tosa.add %580, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %582 = tosa.add %581, %564 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %583 = tosa.clamp %582 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %584 = tosa.conv2d %583, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %585 = tosa.sub %584, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %586 = tosa.mul %585, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %587 = tosa.mul %586, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %588 = tosa.add %587, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %589 = tosa.clamp %588 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %590 = tosa.conv2d %589, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %591 = tosa.sub %590, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %592 = tosa.mul %591, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %593 = tosa.mul %592, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %594 = tosa.add %593, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %595 = tosa.clamp %594 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %596 = tosa.conv2d %595, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %597 = tosa.sub %596, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %598 = tosa.mul %597, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %599 = tosa.mul %598, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %600 = tosa.add %599, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %601 = tosa.add %600, %583 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %602 = tosa.clamp %601 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %603 = tosa.conv2d %602, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %604 = tosa.sub %603, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %605 = tosa.mul %604, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %606 = tosa.mul %605, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %607 = tosa.add %606, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %608 = tosa.clamp %607 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %609 = tosa.conv2d %608, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %610 = tosa.sub %609, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %611 = tosa.mul %610, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %612 = tosa.mul %611, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %613 = tosa.add %612, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %614 = tosa.clamp %613 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %615 = tosa.conv2d %614, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %616 = tosa.sub %615, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %617 = tosa.mul %616, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %618 = tosa.mul %617, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %619 = tosa.add %618, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %620 = tosa.add %619, %602 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %621 = tosa.clamp %620 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %622 = tosa.conv2d %621, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %623 = tosa.sub %622, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %624 = tosa.mul %623, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %625 = tosa.mul %624, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %626 = tosa.add %625, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %627 = tosa.clamp %626 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %628 = tosa.conv2d %627, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %629 = tosa.sub %628, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %630 = tosa.mul %629, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %631 = tosa.mul %630, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %632 = tosa.add %631, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %633 = tosa.clamp %632 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %634 = tosa.conv2d %633, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %635 = tosa.sub %634, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %636 = tosa.mul %635, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %637 = tosa.mul %636, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %638 = tosa.add %637, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %639 = tosa.add %638, %621 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %640 = tosa.clamp %639 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %641 = tosa.conv2d %640, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %642 = tosa.sub %641, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %643 = tosa.mul %642, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %644 = tosa.mul %643, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %645 = tosa.add %644, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %646 = tosa.clamp %645 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %647 = tosa.conv2d %646, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %648 = tosa.sub %647, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %649 = tosa.mul %648, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %650 = tosa.mul %649, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %651 = tosa.add %650, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %652 = tosa.clamp %651 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %653 = tosa.conv2d %652, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %654 = tosa.sub %653, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %655 = tosa.mul %654, %231 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %656 = tosa.mul %655, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %657 = tosa.add %656, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %658 = tosa.add %657, %640 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %659 = tosa.clamp %658 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %660 = tosa.conv2d %659, %16, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %661 = tosa.sub %660, %27 : (tensor<1x14x14x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x14x14x512xf32>
    %662 = tosa.mul %661, %136 {shift = 0 : i8} : (tensor<1x14x14x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x14x14x512xf32>
    %663 = tosa.mul %662, %27 {shift = 0 : i8} : (tensor<1x14x14x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x14x14x512xf32>
    %664 = tosa.add %663, %27 : (tensor<1x14x14x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x14x14x512xf32>
    %665 = tosa.clamp %664 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x512xf32>) -> tensor<1x14x14x512xf32>
    %666 = tosa.conv2d %665, %15, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %667 = tosa.sub %666, %27 : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %668 = tosa.mul %667, %136 {shift = 0 : i8} : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %669 = tosa.mul %668, %27 {shift = 0 : i8} : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %670 = tosa.add %669, %27 : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %671 = tosa.clamp %670 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %672 = tosa.conv2d %671, %14, %7 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %673 = tosa.transpose %672, %2 : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %674 = tosa.sub %673, %13 : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %675 = tosa.rsqrt %12 : (tensor<2048x1x1xf32>) -> tensor<2048x1x1xf32>
    %676 = tosa.reshape %675 {new_shape = array<i64: 1, 2048, 1, 1>} : (tensor<2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %677 = tosa.mul %674, %676 {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %678 = tosa.mul %677, %13 {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %679 = tosa.add %678, %13 : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %680 = tosa.conv2d %659, %11, %7 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %681 = tosa.transpose %680, %2 : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %682 = tosa.sub %681, %13 : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %683 = tosa.mul %682, %676 {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %684 = tosa.mul %683, %13 {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %685 = tosa.add %684, %13 : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %686 = tosa.add %679, %685 : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %687 = tosa.clamp %686 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %688 = tosa.transpose %687, %1 : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %689 = tosa.conv2d %688, %10, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %690 = tosa.sub %689, %27 : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %691 = tosa.mul %690, %136 {shift = 0 : i8} : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %692 = tosa.mul %691, %27 {shift = 0 : i8} : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %693 = tosa.add %692, %27 : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %694 = tosa.clamp %693 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %695 = tosa.conv2d %694, %15, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %696 = tosa.sub %695, %27 : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %697 = tosa.mul %696, %136 {shift = 0 : i8} : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %698 = tosa.mul %697, %27 {shift = 0 : i8} : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %699 = tosa.add %698, %27 : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %700 = tosa.clamp %699 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %701 = tosa.conv2d %700, %14, %7 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %702 = tosa.transpose %701, %2 : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %703 = tosa.sub %702, %13 : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %704 = tosa.mul %703, %676 {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %705 = tosa.mul %704, %13 {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %706 = tosa.add %705, %13 : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %707 = tosa.add %706, %687 : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %708 = tosa.clamp %707 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %709 = tosa.transpose %708, %1 : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %710 = tosa.conv2d %709, %10, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %711 = tosa.sub %710, %27 : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %712 = tosa.mul %711, %136 {shift = 0 : i8} : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %713 = tosa.mul %712, %27 {shift = 0 : i8} : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %714 = tosa.add %713, %27 : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %715 = tosa.clamp %714 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %716 = tosa.conv2d %715, %15, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %717 = tosa.sub %716, %27 : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %718 = tosa.mul %717, %136 {shift = 0 : i8} : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %719 = tosa.mul %718, %27 {shift = 0 : i8} : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %720 = tosa.add %719, %27 : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %721 = tosa.clamp %720 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %722 = tosa.conv2d %721, %14, %7 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %723 = tosa.transpose %722, %2 : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %724 = tosa.sub %723, %13 : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %725 = tosa.mul %724, %676 {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %726 = tosa.mul %725, %13 {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %727 = tosa.add %726, %13 : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %728 = tosa.add %727, %708 : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %729 = tosa.clamp %728 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %730 = tosa.transpose %729, %1 : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %731 = tosa.avg_pool2d %730 {acc_type = f32, kernel = array<i64: 7, 7>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>) -> tensor<1x1x1x2048xf32>
    %732 = tosa.reshape %731 {new_shape = array<i64: 1, 1, 2048>} : (tensor<1x1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %733 = tosa.matmul %732, %9 : (tensor<1x1x2048xf32>, tensor<1x2048x1000xf32>) -> tensor<1x1x1000xf32>
    %734 = tosa.reshape %733 {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %735 = tosa.add %734, %8 : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %735 : tensor<1x1000xf32>
  }
}

