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
    %216 = tosa.conv2d %215, %24, %4 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %217 = tosa.transpose %216, %2 : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %218 = tosa.sub %217, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %219 = tosa.mul %218, %119 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %220 = tosa.mul %219, %31 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %221 = tosa.add %220, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %222 = tosa.clamp %221 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %223 = tosa.transpose %222, %1 : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %224 = tosa.conv2d %223, %29, %4 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %225 = tosa.transpose %224, %2 : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %226 = tosa.sub %225, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %227 = tosa.mul %226, %119 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %228 = tosa.mul %227, %31 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %229 = tosa.add %228, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %230 = tosa.clamp %229 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %231 = tosa.transpose %230, %1 : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %232 = tosa.conv2d %231, %28, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %233 = tosa.sub %232, %27 : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %234 = tosa.mul %233, %136 {shift = 0 : i8} : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %235 = tosa.mul %234, %27 {shift = 0 : i8} : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %236 = tosa.add %235, %27 : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %237 = tosa.add %236, %215 : (tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %238 = tosa.clamp %237 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %239 = tosa.conv2d %238, %24, %4 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %240 = tosa.transpose %239, %2 : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %241 = tosa.sub %240, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %242 = tosa.mul %241, %119 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %243 = tosa.mul %242, %31 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %244 = tosa.add %243, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %245 = tosa.clamp %244 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %246 = tosa.transpose %245, %1 : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %247 = tosa.conv2d %246, %29, %4 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %248 = tosa.transpose %247, %2 : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %249 = tosa.sub %248, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %250 = tosa.mul %249, %119 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %251 = tosa.mul %250, %31 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %252 = tosa.add %251, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %253 = tosa.clamp %252 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %254 = tosa.transpose %253, %1 : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %255 = tosa.conv2d %254, %28, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %256 = tosa.sub %255, %27 : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %257 = tosa.mul %256, %136 {shift = 0 : i8} : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %258 = tosa.mul %257, %27 {shift = 0 : i8} : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %259 = tosa.add %258, %27 : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %260 = tosa.add %259, %238 : (tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %261 = tosa.clamp %260 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %262 = tosa.conv2d %261, %24, %4 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %263 = tosa.transpose %262, %2 : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %264 = tosa.sub %263, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %265 = tosa.mul %264, %119 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %266 = tosa.mul %265, %31 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %267 = tosa.add %266, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %268 = tosa.clamp %267 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %269 = tosa.transpose %268, %1 : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %270 = tosa.conv2d %269, %29, %4 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %271 = tosa.transpose %270, %2 : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %272 = tosa.sub %271, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %273 = tosa.mul %272, %119 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %274 = tosa.mul %273, %31 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %275 = tosa.add %274, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %276 = tosa.clamp %275 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %277 = tosa.transpose %276, %1 : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %278 = tosa.conv2d %277, %28, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %279 = tosa.sub %278, %27 : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %280 = tosa.mul %279, %136 {shift = 0 : i8} : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %281 = tosa.mul %280, %27 {shift = 0 : i8} : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %282 = tosa.add %281, %27 : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %283 = tosa.add %282, %261 : (tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %284 = tosa.clamp %283 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %285 = tosa.conv2d %284, %24, %4 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<128x1x1x512xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %286 = tosa.transpose %285, %2 : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %287 = tosa.sub %286, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %288 = tosa.mul %287, %119 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %289 = tosa.mul %288, %31 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %290 = tosa.add %289, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %291 = tosa.clamp %290 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %292 = tosa.transpose %291, %1 : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %293 = tosa.conv2d %292, %29, %4 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %294 = tosa.transpose %293, %2 : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %295 = tosa.sub %294, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %296 = tosa.mul %295, %119 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %297 = tosa.mul %296, %31 {shift = 0 : i8} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %298 = tosa.add %297, %31 : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %299 = tosa.clamp %298 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %300 = tosa.transpose %299, %1 : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %301 = tosa.conv2d %300, %28, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x128xf32>, tensor<512x1x1x128xf32>, tensor<512xf32>) -> tensor<1x28x28x512xf32>
    %302 = tosa.sub %301, %27 : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %303 = tosa.mul %302, %136 {shift = 0 : i8} : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %304 = tosa.mul %303, %27 {shift = 0 : i8} : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %305 = tosa.add %304, %27 : (tensor<1x28x28x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x28x28x512xf32>
    %306 = tosa.add %305, %284 : (tensor<1x28x28x512xf32>, tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %307 = tosa.clamp %306 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x28x28x512xf32>) -> tensor<1x28x28x512xf32>
    %308 = tosa.conv2d %307, %23, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x28x28x512xf32>, tensor<256x1x1x512xf32>, tensor<256xf32>) -> tensor<1x28x28x256xf32>
    %309 = tosa.sub %308, %35 : (tensor<1x28x28x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x28x28x256xf32>
    %310 = tosa.mul %309, %66 {shift = 0 : i8} : (tensor<1x28x28x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x28x28x256xf32>
    %311 = tosa.mul %310, %35 {shift = 0 : i8} : (tensor<1x28x28x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x28x28x256xf32>
    %312 = tosa.add %311, %35 : (tensor<1x28x28x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x28x28x256xf32>
    %313 = tosa.clamp %312 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x28x28x256xf32>) -> tensor<1x28x28x256xf32>
    %314 = tosa.conv2d %313, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x28x28x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %315 = tosa.sub %314, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %316 = tosa.mul %315, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %317 = tosa.mul %316, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %318 = tosa.add %317, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %319 = tosa.clamp %318 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %320 = tosa.conv2d %319, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %321 = tosa.sub %320, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %322 = tosa.rsqrt %19 : (tensor<1024x1x1xf32>) -> tensor<1024x1x1xf32>
    %323 = tosa.reshape %322 {new_shape = array<i64: 1, 1024, 1, 1>} : (tensor<1024x1x1xf32>) -> tensor<1x1x1x1024xf32>
    %324 = tosa.mul %321, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %325 = tosa.mul %324, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %326 = tosa.add %325, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %327 = tosa.conv2d %307, %18, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x28x28x512xf32>, tensor<1024x1x1x512xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %328 = tosa.sub %327, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %329 = tosa.mul %328, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %330 = tosa.mul %329, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %331 = tosa.add %330, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %332 = tosa.add %326, %331 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %333 = tosa.clamp %332 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %334 = tosa.conv2d %333, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %335 = tosa.sub %334, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %336 = tosa.mul %335, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %337 = tosa.mul %336, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %338 = tosa.add %337, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %339 = tosa.clamp %338 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %340 = tosa.conv2d %339, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %341 = tosa.sub %340, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %342 = tosa.mul %341, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %343 = tosa.mul %342, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %344 = tosa.add %343, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %345 = tosa.clamp %344 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %346 = tosa.conv2d %345, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %347 = tosa.sub %346, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %348 = tosa.mul %347, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %349 = tosa.mul %348, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %350 = tosa.add %349, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %351 = tosa.add %350, %333 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %352 = tosa.clamp %351 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %353 = tosa.conv2d %352, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %354 = tosa.sub %353, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %355 = tosa.mul %354, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %356 = tosa.mul %355, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %357 = tosa.add %356, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %358 = tosa.clamp %357 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %359 = tosa.conv2d %358, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %360 = tosa.sub %359, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %361 = tosa.mul %360, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %362 = tosa.mul %361, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %363 = tosa.add %362, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %364 = tosa.clamp %363 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %365 = tosa.conv2d %364, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %366 = tosa.sub %365, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %367 = tosa.mul %366, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %368 = tosa.mul %367, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %369 = tosa.add %368, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %370 = tosa.add %369, %352 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %371 = tosa.clamp %370 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %372 = tosa.conv2d %371, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %373 = tosa.sub %372, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %374 = tosa.mul %373, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %375 = tosa.mul %374, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %376 = tosa.add %375, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %377 = tosa.clamp %376 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %378 = tosa.conv2d %377, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %379 = tosa.sub %378, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %380 = tosa.mul %379, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %381 = tosa.mul %380, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %382 = tosa.add %381, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %383 = tosa.clamp %382 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %384 = tosa.conv2d %383, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %385 = tosa.sub %384, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %386 = tosa.mul %385, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %387 = tosa.mul %386, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %388 = tosa.add %387, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %389 = tosa.add %388, %371 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %390 = tosa.clamp %389 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %391 = tosa.conv2d %390, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %392 = tosa.sub %391, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %393 = tosa.mul %392, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %394 = tosa.mul %393, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %395 = tosa.add %394, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %396 = tosa.clamp %395 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %397 = tosa.conv2d %396, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %398 = tosa.sub %397, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %399 = tosa.mul %398, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %400 = tosa.mul %399, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %401 = tosa.add %400, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %402 = tosa.clamp %401 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %403 = tosa.conv2d %402, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %404 = tosa.sub %403, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %405 = tosa.mul %404, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %406 = tosa.mul %405, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %407 = tosa.add %406, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %408 = tosa.add %407, %390 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %409 = tosa.clamp %408 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %410 = tosa.conv2d %409, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %411 = tosa.sub %410, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %412 = tosa.mul %411, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %413 = tosa.mul %412, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %414 = tosa.add %413, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %415 = tosa.clamp %414 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %416 = tosa.conv2d %415, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %417 = tosa.sub %416, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %418 = tosa.mul %417, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %419 = tosa.mul %418, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %420 = tosa.add %419, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %421 = tosa.clamp %420 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %422 = tosa.conv2d %421, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %423 = tosa.sub %422, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %424 = tosa.mul %423, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %425 = tosa.mul %424, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %426 = tosa.add %425, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %427 = tosa.add %426, %409 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %428 = tosa.clamp %427 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %429 = tosa.conv2d %428, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %430 = tosa.sub %429, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %431 = tosa.mul %430, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %432 = tosa.mul %431, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %433 = tosa.add %432, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %434 = tosa.clamp %433 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %435 = tosa.conv2d %434, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %436 = tosa.sub %435, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %437 = tosa.mul %436, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %438 = tosa.mul %437, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %439 = tosa.add %438, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %440 = tosa.clamp %439 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %441 = tosa.conv2d %440, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %442 = tosa.sub %441, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %443 = tosa.mul %442, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %444 = tosa.mul %443, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %445 = tosa.add %444, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %446 = tosa.add %445, %428 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %447 = tosa.clamp %446 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %448 = tosa.conv2d %447, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %449 = tosa.sub %448, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %450 = tosa.mul %449, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %451 = tosa.mul %450, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %452 = tosa.add %451, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %453 = tosa.clamp %452 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %454 = tosa.conv2d %453, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %455 = tosa.sub %454, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %456 = tosa.mul %455, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %457 = tosa.mul %456, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %458 = tosa.add %457, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %459 = tosa.clamp %458 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %460 = tosa.conv2d %459, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %461 = tosa.sub %460, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %462 = tosa.mul %461, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %463 = tosa.mul %462, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %464 = tosa.add %463, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %465 = tosa.add %464, %447 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %466 = tosa.clamp %465 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %467 = tosa.conv2d %466, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %468 = tosa.sub %467, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %469 = tosa.mul %468, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %470 = tosa.mul %469, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %471 = tosa.add %470, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %472 = tosa.clamp %471 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %473 = tosa.conv2d %472, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %474 = tosa.sub %473, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %475 = tosa.mul %474, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %476 = tosa.mul %475, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %477 = tosa.add %476, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %478 = tosa.clamp %477 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %479 = tosa.conv2d %478, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %480 = tosa.sub %479, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %481 = tosa.mul %480, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %482 = tosa.mul %481, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %483 = tosa.add %482, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %484 = tosa.add %483, %466 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %485 = tosa.clamp %484 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %486 = tosa.conv2d %485, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %487 = tosa.sub %486, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %488 = tosa.mul %487, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %489 = tosa.mul %488, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %490 = tosa.add %489, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %491 = tosa.clamp %490 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %492 = tosa.conv2d %491, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %493 = tosa.sub %492, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %494 = tosa.mul %493, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %495 = tosa.mul %494, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %496 = tosa.add %495, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %497 = tosa.clamp %496 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %498 = tosa.conv2d %497, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %499 = tosa.sub %498, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %500 = tosa.mul %499, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %501 = tosa.mul %500, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %502 = tosa.add %501, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %503 = tosa.add %502, %485 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %504 = tosa.clamp %503 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %505 = tosa.conv2d %504, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %506 = tosa.sub %505, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %507 = tosa.mul %506, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %508 = tosa.mul %507, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %509 = tosa.add %508, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %510 = tosa.clamp %509 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %511 = tosa.conv2d %510, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %512 = tosa.sub %511, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %513 = tosa.mul %512, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %514 = tosa.mul %513, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %515 = tosa.add %514, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %516 = tosa.clamp %515 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %517 = tosa.conv2d %516, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %518 = tosa.sub %517, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %519 = tosa.mul %518, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %520 = tosa.mul %519, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %521 = tosa.add %520, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %522 = tosa.add %521, %504 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %523 = tosa.clamp %522 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %524 = tosa.conv2d %523, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %525 = tosa.sub %524, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %526 = tosa.mul %525, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %527 = tosa.mul %526, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %528 = tosa.add %527, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %529 = tosa.clamp %528 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %530 = tosa.conv2d %529, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %531 = tosa.sub %530, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %532 = tosa.mul %531, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %533 = tosa.mul %532, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %534 = tosa.add %533, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %535 = tosa.clamp %534 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %536 = tosa.conv2d %535, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %537 = tosa.sub %536, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %538 = tosa.mul %537, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %539 = tosa.mul %538, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %540 = tosa.add %539, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %541 = tosa.add %540, %523 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %542 = tosa.clamp %541 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %543 = tosa.conv2d %542, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %544 = tosa.sub %543, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %545 = tosa.mul %544, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %546 = tosa.mul %545, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %547 = tosa.add %546, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %548 = tosa.clamp %547 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %549 = tosa.conv2d %548, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %550 = tosa.sub %549, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %551 = tosa.mul %550, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %552 = tosa.mul %551, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %553 = tosa.add %552, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %554 = tosa.clamp %553 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %555 = tosa.conv2d %554, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %556 = tosa.sub %555, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %557 = tosa.mul %556, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %558 = tosa.mul %557, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %559 = tosa.add %558, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %560 = tosa.add %559, %542 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %561 = tosa.clamp %560 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %562 = tosa.conv2d %561, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %563 = tosa.sub %562, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %564 = tosa.mul %563, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %565 = tosa.mul %564, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %566 = tosa.add %565, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %567 = tosa.clamp %566 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %568 = tosa.conv2d %567, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %569 = tosa.sub %568, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %570 = tosa.mul %569, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %571 = tosa.mul %570, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %572 = tosa.add %571, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %573 = tosa.clamp %572 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %574 = tosa.conv2d %573, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %575 = tosa.sub %574, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %576 = tosa.mul %575, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %577 = tosa.mul %576, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %578 = tosa.add %577, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %579 = tosa.add %578, %561 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %580 = tosa.clamp %579 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %581 = tosa.conv2d %580, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %582 = tosa.sub %581, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %583 = tosa.mul %582, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %584 = tosa.mul %583, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %585 = tosa.add %584, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %586 = tosa.clamp %585 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %587 = tosa.conv2d %586, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %588 = tosa.sub %587, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %589 = tosa.mul %588, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %590 = tosa.mul %589, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %591 = tosa.add %590, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %592 = tosa.clamp %591 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %593 = tosa.conv2d %592, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %594 = tosa.sub %593, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %595 = tosa.mul %594, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %596 = tosa.mul %595, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %597 = tosa.add %596, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %598 = tosa.add %597, %580 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %599 = tosa.clamp %598 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %600 = tosa.conv2d %599, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %601 = tosa.sub %600, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %602 = tosa.mul %601, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %603 = tosa.mul %602, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %604 = tosa.add %603, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %605 = tosa.clamp %604 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %606 = tosa.conv2d %605, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %607 = tosa.sub %606, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %608 = tosa.mul %607, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %609 = tosa.mul %608, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %610 = tosa.add %609, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %611 = tosa.clamp %610 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %612 = tosa.conv2d %611, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %613 = tosa.sub %612, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %614 = tosa.mul %613, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %615 = tosa.mul %614, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %616 = tosa.add %615, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %617 = tosa.add %616, %599 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %618 = tosa.clamp %617 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %619 = tosa.conv2d %618, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %620 = tosa.sub %619, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %621 = tosa.mul %620, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %622 = tosa.mul %621, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %623 = tosa.add %622, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %624 = tosa.clamp %623 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %625 = tosa.conv2d %624, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %626 = tosa.sub %625, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %627 = tosa.mul %626, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %628 = tosa.mul %627, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %629 = tosa.add %628, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %630 = tosa.clamp %629 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %631 = tosa.conv2d %630, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %632 = tosa.sub %631, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %633 = tosa.mul %632, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %634 = tosa.mul %633, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %635 = tosa.add %634, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %636 = tosa.add %635, %618 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %637 = tosa.clamp %636 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %638 = tosa.conv2d %637, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %639 = tosa.sub %638, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %640 = tosa.mul %639, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %641 = tosa.mul %640, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %642 = tosa.add %641, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %643 = tosa.clamp %642 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %644 = tosa.conv2d %643, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %645 = tosa.sub %644, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %646 = tosa.mul %645, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %647 = tosa.mul %646, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %648 = tosa.add %647, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %649 = tosa.clamp %648 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %650 = tosa.conv2d %649, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %651 = tosa.sub %650, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %652 = tosa.mul %651, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %653 = tosa.mul %652, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %654 = tosa.add %653, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %655 = tosa.add %654, %637 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %656 = tosa.clamp %655 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %657 = tosa.conv2d %656, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %658 = tosa.sub %657, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %659 = tosa.mul %658, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %660 = tosa.mul %659, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %661 = tosa.add %660, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %662 = tosa.clamp %661 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %663 = tosa.conv2d %662, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %664 = tosa.sub %663, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %665 = tosa.mul %664, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %666 = tosa.mul %665, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %667 = tosa.add %666, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %668 = tosa.clamp %667 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %669 = tosa.conv2d %668, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %670 = tosa.sub %669, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %671 = tosa.mul %670, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %672 = tosa.mul %671, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %673 = tosa.add %672, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %674 = tosa.add %673, %656 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %675 = tosa.clamp %674 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %676 = tosa.conv2d %675, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %677 = tosa.sub %676, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %678 = tosa.mul %677, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %679 = tosa.mul %678, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %680 = tosa.add %679, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %681 = tosa.clamp %680 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %682 = tosa.conv2d %681, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %683 = tosa.sub %682, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %684 = tosa.mul %683, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %685 = tosa.mul %684, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %686 = tosa.add %685, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %687 = tosa.clamp %686 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %688 = tosa.conv2d %687, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %689 = tosa.sub %688, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %690 = tosa.mul %689, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %691 = tosa.mul %690, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %692 = tosa.add %691, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %693 = tosa.add %692, %675 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %694 = tosa.clamp %693 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %695 = tosa.conv2d %694, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %696 = tosa.sub %695, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %697 = tosa.mul %696, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %698 = tosa.mul %697, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %699 = tosa.add %698, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %700 = tosa.clamp %699 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %701 = tosa.conv2d %700, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %702 = tosa.sub %701, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %703 = tosa.mul %702, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %704 = tosa.mul %703, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %705 = tosa.add %704, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %706 = tosa.clamp %705 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %707 = tosa.conv2d %706, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %708 = tosa.sub %707, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %709 = tosa.mul %708, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %710 = tosa.mul %709, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %711 = tosa.add %710, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %712 = tosa.add %711, %694 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %713 = tosa.clamp %712 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %714 = tosa.conv2d %713, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %715 = tosa.sub %714, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %716 = tosa.mul %715, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %717 = tosa.mul %716, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %718 = tosa.add %717, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %719 = tosa.clamp %718 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %720 = tosa.conv2d %719, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %721 = tosa.sub %720, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %722 = tosa.mul %721, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %723 = tosa.mul %722, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %724 = tosa.add %723, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %725 = tosa.clamp %724 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %726 = tosa.conv2d %725, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %727 = tosa.sub %726, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %728 = tosa.mul %727, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %729 = tosa.mul %728, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %730 = tosa.add %729, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %731 = tosa.add %730, %713 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %732 = tosa.clamp %731 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %733 = tosa.conv2d %732, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %734 = tosa.sub %733, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %735 = tosa.mul %734, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %736 = tosa.mul %735, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %737 = tosa.add %736, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %738 = tosa.clamp %737 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %739 = tosa.conv2d %738, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %740 = tosa.sub %739, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %741 = tosa.mul %740, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %742 = tosa.mul %741, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %743 = tosa.add %742, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %744 = tosa.clamp %743 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %745 = tosa.conv2d %744, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %746 = tosa.sub %745, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %747 = tosa.mul %746, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %748 = tosa.mul %747, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %749 = tosa.add %748, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %750 = tosa.add %749, %732 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %751 = tosa.clamp %750 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %752 = tosa.conv2d %751, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %753 = tosa.sub %752, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %754 = tosa.mul %753, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %755 = tosa.mul %754, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %756 = tosa.add %755, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %757 = tosa.clamp %756 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %758 = tosa.conv2d %757, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %759 = tosa.sub %758, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %760 = tosa.mul %759, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %761 = tosa.mul %760, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %762 = tosa.add %761, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %763 = tosa.clamp %762 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %764 = tosa.conv2d %763, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %765 = tosa.sub %764, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %766 = tosa.mul %765, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %767 = tosa.mul %766, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %768 = tosa.add %767, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %769 = tosa.add %768, %751 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %770 = tosa.clamp %769 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %771 = tosa.conv2d %770, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %772 = tosa.sub %771, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %773 = tosa.mul %772, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %774 = tosa.mul %773, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %775 = tosa.add %774, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %776 = tosa.clamp %775 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %777 = tosa.conv2d %776, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %778 = tosa.sub %777, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %779 = tosa.mul %778, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %780 = tosa.mul %779, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %781 = tosa.add %780, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %782 = tosa.clamp %781 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %783 = tosa.conv2d %782, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %784 = tosa.sub %783, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %785 = tosa.mul %784, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %786 = tosa.mul %785, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %787 = tosa.add %786, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %788 = tosa.add %787, %770 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %789 = tosa.clamp %788 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %790 = tosa.conv2d %789, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %791 = tosa.sub %790, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %792 = tosa.mul %791, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %793 = tosa.mul %792, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %794 = tosa.add %793, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %795 = tosa.clamp %794 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %796 = tosa.conv2d %795, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %797 = tosa.sub %796, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %798 = tosa.mul %797, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %799 = tosa.mul %798, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %800 = tosa.add %799, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %801 = tosa.clamp %800 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %802 = tosa.conv2d %801, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %803 = tosa.sub %802, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %804 = tosa.mul %803, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %805 = tosa.mul %804, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %806 = tosa.add %805, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %807 = tosa.add %806, %789 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %808 = tosa.clamp %807 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %809 = tosa.conv2d %808, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %810 = tosa.sub %809, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %811 = tosa.mul %810, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %812 = tosa.mul %811, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %813 = tosa.add %812, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %814 = tosa.clamp %813 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %815 = tosa.conv2d %814, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %816 = tosa.sub %815, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %817 = tosa.mul %816, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %818 = tosa.mul %817, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %819 = tosa.add %818, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %820 = tosa.clamp %819 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %821 = tosa.conv2d %820, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %822 = tosa.sub %821, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %823 = tosa.mul %822, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %824 = tosa.mul %823, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %825 = tosa.add %824, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %826 = tosa.add %825, %808 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %827 = tosa.clamp %826 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %828 = tosa.conv2d %827, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %829 = tosa.sub %828, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %830 = tosa.mul %829, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %831 = tosa.mul %830, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %832 = tosa.add %831, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %833 = tosa.clamp %832 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %834 = tosa.conv2d %833, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %835 = tosa.sub %834, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %836 = tosa.mul %835, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %837 = tosa.mul %836, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %838 = tosa.add %837, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %839 = tosa.clamp %838 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %840 = tosa.conv2d %839, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %841 = tosa.sub %840, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %842 = tosa.mul %841, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %843 = tosa.mul %842, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %844 = tosa.add %843, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %845 = tosa.add %844, %827 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %846 = tosa.clamp %845 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %847 = tosa.conv2d %846, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %848 = tosa.sub %847, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %849 = tosa.mul %848, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %850 = tosa.mul %849, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %851 = tosa.add %850, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %852 = tosa.clamp %851 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %853 = tosa.conv2d %852, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %854 = tosa.sub %853, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %855 = tosa.mul %854, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %856 = tosa.mul %855, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %857 = tosa.add %856, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %858 = tosa.clamp %857 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %859 = tosa.conv2d %858, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %860 = tosa.sub %859, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %861 = tosa.mul %860, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %862 = tosa.mul %861, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %863 = tosa.add %862, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %864 = tosa.add %863, %846 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %865 = tosa.clamp %864 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %866 = tosa.conv2d %865, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %867 = tosa.sub %866, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %868 = tosa.mul %867, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %869 = tosa.mul %868, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %870 = tosa.add %869, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %871 = tosa.clamp %870 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %872 = tosa.conv2d %871, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %873 = tosa.sub %872, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %874 = tosa.mul %873, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %875 = tosa.mul %874, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %876 = tosa.add %875, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %877 = tosa.clamp %876 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %878 = tosa.conv2d %877, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %879 = tosa.sub %878, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %880 = tosa.mul %879, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %881 = tosa.mul %880, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %882 = tosa.add %881, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %883 = tosa.add %882, %865 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %884 = tosa.clamp %883 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %885 = tosa.conv2d %884, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %886 = tosa.sub %885, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %887 = tosa.mul %886, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %888 = tosa.mul %887, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %889 = tosa.add %888, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %890 = tosa.clamp %889 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %891 = tosa.conv2d %890, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %892 = tosa.sub %891, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %893 = tosa.mul %892, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %894 = tosa.mul %893, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %895 = tosa.add %894, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %896 = tosa.clamp %895 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %897 = tosa.conv2d %896, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %898 = tosa.sub %897, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %899 = tosa.mul %898, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %900 = tosa.mul %899, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %901 = tosa.add %900, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %902 = tosa.add %901, %884 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %903 = tosa.clamp %902 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %904 = tosa.conv2d %903, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %905 = tosa.sub %904, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %906 = tosa.mul %905, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %907 = tosa.mul %906, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %908 = tosa.add %907, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %909 = tosa.clamp %908 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %910 = tosa.conv2d %909, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %911 = tosa.sub %910, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %912 = tosa.mul %911, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %913 = tosa.mul %912, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %914 = tosa.add %913, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %915 = tosa.clamp %914 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %916 = tosa.conv2d %915, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %917 = tosa.sub %916, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %918 = tosa.mul %917, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %919 = tosa.mul %918, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %920 = tosa.add %919, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %921 = tosa.add %920, %903 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %922 = tosa.clamp %921 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %923 = tosa.conv2d %922, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %924 = tosa.sub %923, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %925 = tosa.mul %924, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %926 = tosa.mul %925, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %927 = tosa.add %926, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %928 = tosa.clamp %927 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %929 = tosa.conv2d %928, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %930 = tosa.sub %929, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %931 = tosa.mul %930, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %932 = tosa.mul %931, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %933 = tosa.add %932, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %934 = tosa.clamp %933 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %935 = tosa.conv2d %934, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %936 = tosa.sub %935, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %937 = tosa.mul %936, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %938 = tosa.mul %937, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %939 = tosa.add %938, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %940 = tosa.add %939, %922 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %941 = tosa.clamp %940 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %942 = tosa.conv2d %941, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %943 = tosa.sub %942, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %944 = tosa.mul %943, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %945 = tosa.mul %944, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %946 = tosa.add %945, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %947 = tosa.clamp %946 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %948 = tosa.conv2d %947, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %949 = tosa.sub %948, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %950 = tosa.mul %949, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %951 = tosa.mul %950, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %952 = tosa.add %951, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %953 = tosa.clamp %952 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %954 = tosa.conv2d %953, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %955 = tosa.sub %954, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %956 = tosa.mul %955, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %957 = tosa.mul %956, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %958 = tosa.add %957, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %959 = tosa.add %958, %941 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %960 = tosa.clamp %959 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %961 = tosa.conv2d %960, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %962 = tosa.sub %961, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %963 = tosa.mul %962, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %964 = tosa.mul %963, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %965 = tosa.add %964, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %966 = tosa.clamp %965 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %967 = tosa.conv2d %966, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %968 = tosa.sub %967, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %969 = tosa.mul %968, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %970 = tosa.mul %969, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %971 = tosa.add %970, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %972 = tosa.clamp %971 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %973 = tosa.conv2d %972, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %974 = tosa.sub %973, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %975 = tosa.mul %974, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %976 = tosa.mul %975, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %977 = tosa.add %976, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %978 = tosa.add %977, %960 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %979 = tosa.clamp %978 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %980 = tosa.conv2d %979, %17, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<256x1x1x1024xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %981 = tosa.sub %980, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %982 = tosa.mul %981, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %983 = tosa.mul %982, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %984 = tosa.add %983, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %985 = tosa.clamp %984 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %986 = tosa.conv2d %985, %22, %3 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %987 = tosa.sub %986, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %988 = tosa.mul %987, %66 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %989 = tosa.mul %988, %35 {shift = 0 : i8} : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %990 = tosa.add %989, %35 : (tensor<1x14x14x256xf32>, tensor<1x1x1x256xf32>) -> tensor<1x14x14x256xf32>
    %991 = tosa.clamp %990 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x256xf32>) -> tensor<1x14x14x256xf32>
    %992 = tosa.conv2d %991, %21, %6 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x256xf32>, tensor<1024x1x1x256xf32>, tensor<1024xf32>) -> tensor<1x14x14x1024xf32>
    %993 = tosa.sub %992, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %994 = tosa.mul %993, %323 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %995 = tosa.mul %994, %20 {shift = 0 : i8} : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %996 = tosa.add %995, %20 : (tensor<1x14x14x1024xf32>, tensor<1x1x1x1024xf32>) -> tensor<1x14x14x1024xf32>
    %997 = tosa.add %996, %979 : (tensor<1x14x14x1024xf32>, tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %998 = tosa.clamp %997 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x1024xf32>) -> tensor<1x14x14x1024xf32>
    %999 = tosa.conv2d %998, %16, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x14x14x1024xf32>, tensor<512x1x1x1024xf32>, tensor<512xf32>) -> tensor<1x14x14x512xf32>
    %1000 = tosa.sub %999, %27 : (tensor<1x14x14x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x14x14x512xf32>
    %1001 = tosa.mul %1000, %136 {shift = 0 : i8} : (tensor<1x14x14x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x14x14x512xf32>
    %1002 = tosa.mul %1001, %27 {shift = 0 : i8} : (tensor<1x14x14x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x14x14x512xf32>
    %1003 = tosa.add %1002, %27 : (tensor<1x14x14x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x14x14x512xf32>
    %1004 = tosa.clamp %1003 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x14x14x512xf32>) -> tensor<1x14x14x512xf32>
    %1005 = tosa.conv2d %1004, %15, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>} : (tensor<1x14x14x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %1006 = tosa.sub %1005, %27 : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %1007 = tosa.mul %1006, %136 {shift = 0 : i8} : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %1008 = tosa.mul %1007, %27 {shift = 0 : i8} : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %1009 = tosa.add %1008, %27 : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %1010 = tosa.clamp %1009 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %1011 = tosa.conv2d %1010, %14, %7 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %1012 = tosa.transpose %1011, %2 : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %1013 = tosa.sub %1012, %13 : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %1014 = tosa.rsqrt %12 : (tensor<2048x1x1xf32>) -> tensor<2048x1x1xf32>
    %1015 = tosa.reshape %1014 {new_shape = array<i64: 1, 2048, 1, 1>} : (tensor<2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %1016 = tosa.mul %1013, %1015 {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %1017 = tosa.mul %1016, %13 {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %1018 = tosa.add %1017, %13 : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %1019 = tosa.conv2d %998, %11, %7 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>} : (tensor<1x14x14x1024xf32>, tensor<2048x1x1x1024xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %1020 = tosa.transpose %1019, %2 : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %1021 = tosa.sub %1020, %13 : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %1022 = tosa.mul %1021, %1015 {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %1023 = tosa.mul %1022, %13 {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %1024 = tosa.add %1023, %13 : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %1025 = tosa.add %1018, %1024 : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %1026 = tosa.clamp %1025 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %1027 = tosa.transpose %1026, %1 : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %1028 = tosa.conv2d %1027, %10, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %1029 = tosa.sub %1028, %27 : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %1030 = tosa.mul %1029, %136 {shift = 0 : i8} : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %1031 = tosa.mul %1030, %27 {shift = 0 : i8} : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %1032 = tosa.add %1031, %27 : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %1033 = tosa.clamp %1032 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %1034 = tosa.conv2d %1033, %15, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %1035 = tosa.sub %1034, %27 : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %1036 = tosa.mul %1035, %136 {shift = 0 : i8} : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %1037 = tosa.mul %1036, %27 {shift = 0 : i8} : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %1038 = tosa.add %1037, %27 : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %1039 = tosa.clamp %1038 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %1040 = tosa.conv2d %1039, %14, %7 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %1041 = tosa.transpose %1040, %2 : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %1042 = tosa.sub %1041, %13 : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %1043 = tosa.mul %1042, %1015 {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %1044 = tosa.mul %1043, %13 {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %1045 = tosa.add %1044, %13 : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %1046 = tosa.add %1045, %1026 : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %1047 = tosa.clamp %1046 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %1048 = tosa.transpose %1047, %1 : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %1049 = tosa.conv2d %1048, %10, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>, tensor<512x1x1x2048xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %1050 = tosa.sub %1049, %27 : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %1051 = tosa.mul %1050, %136 {shift = 0 : i8} : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %1052 = tosa.mul %1051, %27 {shift = 0 : i8} : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %1053 = tosa.add %1052, %27 : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %1054 = tosa.clamp %1053 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %1055 = tosa.conv2d %1054, %15, %5 {dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %1056 = tosa.sub %1055, %27 : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %1057 = tosa.mul %1056, %136 {shift = 0 : i8} : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %1058 = tosa.mul %1057, %27 {shift = 0 : i8} : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %1059 = tosa.add %1058, %27 : (tensor<1x7x7x512xf32>, tensor<1x1x1x512xf32>) -> tensor<1x7x7x512xf32>
    %1060 = tosa.clamp %1059 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x7x7x512xf32>) -> tensor<1x7x7x512xf32>
    %1061 = tosa.conv2d %1060, %14, %7 {dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x512xf32>, tensor<2048x1x1x512xf32>, tensor<2048xf32>) -> tensor<1x7x7x2048xf32>
    %1062 = tosa.transpose %1061, %2 : (tensor<1x7x7x2048xf32>, tensor<4xi32>) -> tensor<1x2048x7x7xf32>
    %1063 = tosa.sub %1062, %13 : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %1064 = tosa.mul %1063, %1015 {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %1065 = tosa.mul %1064, %13 {shift = 0 : i8} : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %1066 = tosa.add %1065, %13 : (tensor<1x2048x7x7xf32>, tensor<1x2048x1x1xf32>) -> tensor<1x2048x7x7xf32>
    %1067 = tosa.add %1066, %1047 : (tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %1068 = tosa.clamp %1067 {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %1069 = tosa.transpose %1068, %1 : (tensor<1x2048x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x2048xf32>
    %1070 = tosa.avg_pool2d %1069 {acc_type = f32, kernel = array<i64: 7, 7>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>} : (tensor<1x7x7x2048xf32>) -> tensor<1x1x1x2048xf32>
    %1071 = tosa.reshape %1070 {new_shape = array<i64: 1, 1, 2048>} : (tensor<1x1x1x2048xf32>) -> tensor<1x1x2048xf32>
    %1072 = tosa.matmul %1071, %9 : (tensor<1x1x2048xf32>, tensor<1x2048x1000xf32>) -> tensor<1x1x1000xf32>
    %1073 = tosa.reshape %1072 {new_shape = array<i64: 1, 1000>} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %1074 = tosa.add %1073, %8 : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %1074 : tensor<1x1000xf32>
  }
}

